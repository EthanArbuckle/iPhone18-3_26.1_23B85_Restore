@interface CKSearchAnalytics
+ (BOOL)searchAnalyticsEnabled;
+ (CKSearchAnalytics)sharedInstance;
- (BOOL)_invalidateSessionIDIfNeeded;
- (CKSearchAnalytics)init;
- (NSNumber)millisecondsSinceSessionStarted;
- (id)_dimensionContext;
- (id)_productType;
- (id)_systemVersion;
- (int)_buildType:(BOOL)a3;
- (int)_sectionTypeForContentType:(int64_t)a3;
- (int)_seeAllPageTypeForContentType:(int64_t)a3;
- (int)_tokenTypeForSearchFilterContentType:(unint64_t)a3;
- (unint64_t)sessionStartTimestampInSeconds;
- (void)_incrementQueryID;
- (void)_logEvent:(id)a3;
- (void)_logSearchButtonInteractionWithVisualComponentType:(int)a3 mode:(unint64_t)a4;
- (void)logSearchDismissalWithReason:(int64_t)a3;
- (void)logSearchPresentationWithReason:(int64_t)a3;
- (void)logSearchResultDisplayEvent:(int64_t)a3 index:(unint64_t)a4 mode:(unint64_t)a5 displayEventType:(int64_t)a6 scrollVelocity:(double)a7;
- (void)logSearchResultInteraction:(int64_t)a3 index:(unint64_t)a4 mode:(unint64_t)a5 interactionType:(int64_t)a6;
- (void)logSearchResultsReceivedInMode:(unint64_t)a3 conversations:(unint64_t)a4 tokens:(unint64_t)a5 messages:(unint64_t)a6 links:(unint64_t)a7 photos:(unint64_t)a8 location:(unint64_t)a9 attachments:(unint64_t)a10 wallet:(unint64_t)a11 collaboration:(unint64_t)a12 highlights:(unint64_t)a13;
- (void)logShowAllInteraction:(int64_t)a3;
- (void)logUserInputChanged:(unint64_t)a3 input:(id)a4 tokens:(id)a5;
@end

@implementation CKSearchAnalytics

+ (CKSearchAnalytics)sharedInstance
{
  if (sharedInstance_onceToken_11 != -1)
  {
    +[CKSearchAnalytics sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance_2;

  return v3;
}

void __35__CKSearchAnalytics_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKSearchAnalytics);
  v1 = sharedInstance_sSharedInstance_2;
  sharedInstance_sSharedInstance_2 = v0;
}

- (CKSearchAnalytics)init
{
  v11.receiver = self;
  v11.super_class = CKSearchAnalytics;
  v2 = [(CKSearchAnalytics *)&v11 init];
  if (v2)
  {
    if ([objc_opt_class() searchAnalyticsEnabled])
    {
      v3 = BiomeLibrary();
      v4 = [v3 Messages];
      v5 = [v4 Search];
      v6 = [v5 Event];
      eventStream = v2->_eventStream;
      v2->_eventStream = v6;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v10 = 0;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Logging disabled per D&U, clearing session state if present", v10, 2u);
        }
      }

      v3 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v3 setValue:0 forKey:@"SearchAnalyticsSessionStartDate"];
      [v3 setValue:0 forKey:@"SearchAnalyticsSessionSessionID"];
      [v3 setInteger:0 forKey:@"SearchAnalyticsSessionQueryID"];
    }
  }

  return v2;
}

+ (BOOL)searchAnalyticsEnabled
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE40]] == 1;

  return v3;
}

- (void)logSearchPresentationWithReason:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() searchAnalyticsEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v18 = a3;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Request to log presentation with reason %lu", buf, 0xCu);
      }
    }

    [(CKSearchAnalytics *)self setPreviousPresentationReason:a3];
    v6 = [(CKSearchAnalytics *)self _invalidateSessionIDIfNeeded];
    v7 = (a3 - 3) < 0xFFFFFFFFFFFFFFFELL || v6;
    if ((v7 & 1) == 0)
    {
      [(CKSearchAnalytics *)self _incrementQueryID];
    }

    if (a3 == 2)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    if (a3 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = [objc_alloc(MEMORY[0x1E698ED50]) initWithSearchViewAppearedReason:v9];
    v11 = objc_alloc(MEMORY[0x1E698ED58]);
    v12 = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
    v13 = [(CKSearchAnalytics *)self sessionID];
    v14 = [(CKSearchAnalytics *)self queryIDString];
    v15 = [v11 initWithMillisecondsSinceSessionStarted:v12 sessionId:v13 queryId:v14 appeared:v10 disappeared:0];

    v16 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:0 displayContext:0 searchViewContext:v15 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
    [(CKSearchAnalytics *)self _logEvent:v16];
  }
}

- (void)logSearchDismissalWithReason:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() searchAnalyticsEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v15 = a3;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Request to log dismissal with reason %lu", buf, 0xCu);
      }
    }

    [(CKSearchAnalytics *)self _invalidateSessionIDIfNeeded];
    [(CKSearchAnalytics *)self setPreviousPresentationReason:0];
    if (a3 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2 * (a3 == 2);
    }

    v7 = [objc_alloc(MEMORY[0x1E698ED60]) initWithSearchViewDisappearedReason:v6];
    v8 = objc_alloc(MEMORY[0x1E698ED58]);
    v9 = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
    v10 = [(CKSearchAnalytics *)self sessionID];
    v11 = [(CKSearchAnalytics *)self queryIDString];
    v12 = [v8 initWithMillisecondsSinceSessionStarted:v9 sessionId:v10 queryId:v11 appeared:0 disappeared:v7];

    v13 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:0 displayContext:0 searchViewContext:v12 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
    [(CKSearchAnalytics *)self _logEvent:v13];
  }
}

- (void)logUserInputChanged:(unint64_t)a3 input:(id)a4 tokens:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v41 = a4;
  v8 = a5;
  if (![objc_opt_class() searchAnalyticsEnabled])
  {
    goto LABEL_38;
  }

  if (a3 == 2)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Request to log user input ignored, current mode is Show All!", buf, 2u);
      }
    }

    goto LABEL_38;
  }

  v39 = a3;
  v40 = v8;
  v10 = [(CKSearchAnalytics *)self _invalidateSessionIDIfNeeded];
  if ([(CKSearchAnalytics *)self previousPresentationReason]== 1)
  {
    v11 = 1;
    goto LABEL_10;
  }

  v11 = [(CKSearchAnalytics *)self previousPresentationReason]== 2;
  if (v11 || v10)
  {
LABEL_10:
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = @"NO";
        if (v10)
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        if (v11)
        {
          v13 = @"YES";
        }

        *buf = 138412546;
        v48 = v14;
        v49 = 2112;
        v50 = v13;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Not incrementing queryID on input changed received, didInvalidate %@ or previous presentation was search %@", buf, 0x16u);
      }
    }

    goto LABEL_20;
  }

  [(CKSearchAnalytics *)self _incrementQueryID];
LABEL_20:
  [(CKSearchAnalytics *)self setPreviousPresentationReason:0];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Request to log user input changed", buf, 2u);
    }
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v41 length])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v41, "length")}];
    v18 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v19 = [v41 componentsSeparatedByCharactersInSet:v18];

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v19, "count")}];
    v21 = [objc_alloc(MEMORY[0x1E698ED88]) initWithTokenType:1 wordCount:v20 charCount:v17];
    [v16 addObject:v21];
  }

  if ([v40 count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v22 = v40;
    v23 = [v22 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v23)
    {
      v24 = *v43;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v43 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v42 + 1) + 8 * i);
          v27 = [v26 representedObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v29 = [v26 representedObject];
            v30 = [v29 contentType];
            v31 = [objc_alloc(MEMORY[0x1E698ED88]) initWithTokenType:-[CKSearchAnalytics _tokenTypeForSearchFilterContentType:](self wordCount:"_tokenTypeForSearchFilterContentType:" charCount:{v30), 0, 0}];
            [v16 addObject:v31];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v23);
    }
  }

  v32 = objc_alloc(MEMORY[0x1E698ED30]);
  v33 = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
  v34 = [(CKSearchAnalytics *)self sessionID];
  v35 = [(CKSearchAnalytics *)self queryIDString];
  v36 = [MEMORY[0x1E696AD98] numberWithBool:v39 == 1];
  v37 = [v32 initWithMillisecondsSinceSessionStarted:v33 sessionId:v34 queryId:v35 isZkw:v36 token:v16];

  v38 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:v37 userInteractionDetected:0 displayContext:0 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
  [(CKSearchAnalytics *)self _logEvent:v38];

  v8 = v40;
LABEL_38:
}

- (void)logSearchResultsReceivedInMode:(unint64_t)a3 conversations:(unint64_t)a4 tokens:(unint64_t)a5 messages:(unint64_t)a6 links:(unint64_t)a7 photos:(unint64_t)a8 location:(unint64_t)a9 attachments:(unint64_t)a10 wallet:(unint64_t)a11 collaboration:(unint64_t)a12 highlights:(unint64_t)a13
{
  if ([objc_opt_class() searchAnalyticsEnabled])
  {
    v18 = a6;
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Request to log results received", buf, 2u);
      }
    }

    v34 = self;
    [(CKSearchAnalytics *)self _invalidateSessionIDIfNeeded];
    v32 = objc_alloc(MEMORY[0x1E698ED48]);
    v29 = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
    v36 = [(CKSearchAnalytics *)self sessionID];
    v35 = [(CKSearchAnalytics *)self queryIDString];
    v20 = [MEMORY[0x1E696AD98] numberWithBool:a5 + a4 + v18 + a7 + a8 + a9 + a10 + a11 + a12 + a13 == 0];
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4];
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a5];
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v18];
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a7];
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a8];
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a9];
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a10];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a11];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a12];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a13];
    v38 = [v32 initWithMillisecondsSinceSessionStarted:v29 sessionId:v36 queryId:v35 noResultReceived:v20 totalConversations:v33 totalTokens:v30 totalMessages:v28 totalLinks:v27 totalPhotos:v26 totalLocation:v31 totalAttachments:v21 totalWallet:v22 totalCollaboration:v23 totalHighlights:v24];

    v25 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:0 displayContext:0 searchViewContext:0 resultReceived:v38 messagesAppViewContext:0 sessionIdResetContext:0];
    [(CKSearchAnalytics *)v34 _logEvent:v25];
  }
}

- (void)logSearchResultInteraction:(int64_t)a3 index:(unint64_t)a4 mode:(unint64_t)a5 interactionType:(int64_t)a6
{
  if ([objc_opt_class() searchAnalyticsEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Request to log search result interaction", buf, 2u);
      }
    }

    [(CKSearchAnalytics *)self _invalidateSessionIDIfNeeded];
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4 + 1];
    v12 = [objc_alloc(MEMORY[0x1E698ED40]) initWithResultPositionIndex:v27];
    v13 = [(CKSearchAnalytics *)self _sectionTypeForContentType:a3];
    if (a5 == 2)
    {
      v15 = [(CKSearchAnalytics *)self _seeAllPageTypeForContentType:a3];
    }

    else
    {
      if (a5)
      {
        v14 = 0;
      }

      else
      {
        v14 = 2;
      }

      if (a5 == 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }
    }

    if (a6 == 1)
    {
      v16 = 3;
    }

    else
    {
      v16 = 0;
    }

    if (a6)
    {
      v17 = v16;
    }

    else
    {
      v17 = 1;
    }

    v18 = [objc_alloc(MEMORY[0x1E698ED68]) initWithSectionType:v13];
    v19 = [objc_alloc(MEMORY[0x1E698ED38]) initWithPageType:v15];
    v20 = [objc_alloc(MEMORY[0x1E698ED98]) initWithComponentType:1 resultAttribute:v12 sectionAttribute:v18 pageAttribute:v19];
    v21 = objc_alloc(MEMORY[0x1E698ED90]);
    v22 = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
    v23 = [(CKSearchAnalytics *)self sessionID];
    v24 = [(CKSearchAnalytics *)self queryIDString];
    v25 = [v21 initWithMillisecondsSinceSessionStarted:v22 sessionId:v23 queryId:v24 visualComponent:v20 interactionType:v17];

    v26 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:v25 displayContext:0 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
    [(CKSearchAnalytics *)self _logEvent:v26];
  }
}

- (void)logSearchResultDisplayEvent:(int64_t)a3 index:(unint64_t)a4 mode:(unint64_t)a5 displayEventType:(int64_t)a6 scrollVelocity:(double)a7
{
  v35[1] = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() searchAnalyticsEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Request to log search result display event", buf, 2u);
      }
    }

    [(CKSearchAnalytics *)self _invalidateSessionIDIfNeeded];
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4 + 1];
    v31 = [objc_alloc(MEMORY[0x1E698ED40]) initWithResultPositionIndex:v32];
    v14 = [(CKSearchAnalytics *)self _sectionTypeForContentType:a3];
    if (a5 == 2)
    {
      v15 = [(CKSearchAnalytics *)self _seeAllPageTypeForContentType:a3];
    }

    else if (a5 == 1)
    {
      v15 = 1;
    }

    else if (a5)
    {
      v15 = 0;
    }

    else
    {
      v15 = 2;
    }

    v16 = [objc_alloc(MEMORY[0x1E698ED68]) initWithSectionType:v14];
    v17 = [objc_alloc(MEMORY[0x1E698ED38]) initWithPageType:v15];
    v18 = [objc_alloc(MEMORY[0x1E698ED98]) initWithComponentType:1 resultAttribute:v31 sectionAttribute:v16 pageAttribute:v17];
    if (a6 == 1)
    {
      if (a7 <= 0.01)
      {
        if (a7 < 0.01)
        {
          v20 = 2;
        }

        else
        {
          v20 = 1;
        }
      }

      else
      {
        v20 = 3;
      }

      v22 = [objc_alloc(MEMORY[0x1E698ED20]) initWithReason:v20];
      v29 = objc_alloc(MEMORY[0x1E698ED18]);
      v24 = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
      v25 = [(CKSearchAnalytics *)self sessionID];
      v26 = [(CKSearchAnalytics *)self queryIDString];
      v34 = v18;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
      v28 = [v29 initWithMillisecondsSinceSessionStarted:v24 sessionId:v25 queryId:v26 visualComponent:v27 started:0 ended:v22];
    }

    else
    {
      if (a6)
      {
        v21 = 0;
LABEL_29:
        v30 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:0 displayContext:v21 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
        [(CKSearchAnalytics *)self _logEvent:v30];

        return;
      }

      if (a7 <= 0.01)
      {
        if (a7 < 0.01)
        {
          v19 = 2;
        }

        else
        {
          v19 = 1;
        }
      }

      else
      {
        v19 = 3;
      }

      v22 = [objc_alloc(MEMORY[0x1E698ED28]) initWithReason:v19];
      v23 = objc_alloc(MEMORY[0x1E698ED18]);
      v24 = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
      v25 = [(CKSearchAnalytics *)self sessionID];
      v26 = [(CKSearchAnalytics *)self queryIDString];
      v35[0] = v18;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
      v28 = [v23 initWithMillisecondsSinceSessionStarted:v24 sessionId:v25 queryId:v26 visualComponent:v27 started:v22 ended:0];
    }

    v21 = v28;

    goto LABEL_29;
  }
}

- (void)logShowAllInteraction:(int64_t)a3
{
  if ([objc_opt_class() searchAnalyticsEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Request to log show all interaction", buf, 2u);
      }
    }

    [(CKSearchAnalytics *)self _invalidateSessionIDIfNeeded];
    v6 = [(CKSearchAnalytics *)self _sectionTypeForContentType:a3];
    v7 = [objc_alloc(MEMORY[0x1E698ED68]) initWithSectionType:v6];
    v8 = [(CKSearchAnalytics *)self _seeAllPageTypeForContentType:a3];
    v9 = [objc_alloc(MEMORY[0x1E698ED38]) initWithPageType:v8];
    v10 = [objc_alloc(MEMORY[0x1E698ED98]) initWithComponentType:2 resultAttribute:0 sectionAttribute:v7 pageAttribute:v9];
    v11 = objc_alloc(MEMORY[0x1E698ED90]);
    v12 = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
    v13 = [(CKSearchAnalytics *)self sessionID];
    v14 = [(CKSearchAnalytics *)self queryIDString];
    v15 = [v11 initWithMillisecondsSinceSessionStarted:v12 sessionId:v13 queryId:v14 visualComponent:v10 interactionType:1];

    v16 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:v15 displayContext:0 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
    [(CKSearchAnalytics *)self _logEvent:v16];
  }
}

- (void)_logSearchButtonInteractionWithVisualComponentType:(int)a3 mode:(unint64_t)a4
{
  v5 = *&a3;
  if ([objc_opt_class() searchAnalyticsEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Request to log search button interaction", buf, 2u);
      }
    }

    [(CKSearchAnalytics *)self _invalidateSessionIDIfNeeded];
    if (a4)
    {
      v8 = a4 == 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = [objc_alloc(MEMORY[0x1E698ED38]) initWithPageType:v8];
    v10 = [objc_alloc(MEMORY[0x1E698ED98]) initWithComponentType:v5 resultAttribute:0 sectionAttribute:0 pageAttribute:v9];
    v11 = objc_alloc(MEMORY[0x1E698ED90]);
    v12 = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
    v13 = [(CKSearchAnalytics *)self sessionID];
    v14 = [(CKSearchAnalytics *)self queryIDString];
    v15 = [v11 initWithMillisecondsSinceSessionStarted:v12 sessionId:v13 queryId:v14 visualComponent:v10 interactionType:1];

    v16 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:v15 displayContext:0 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
    [(CKSearchAnalytics *)self _logEvent:v16];
  }
}

- (int)_sectionTypeForContentType:(int64_t)a3
{
  if (a3 > 0xA)
  {
    return 0;
  }

  else
  {
    return dword_190DD1CF8[a3];
  }
}

- (int)_seeAllPageTypeForContentType:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return dword_190DD1D24[a3 - 1];
  }
}

- (int)_tokenTypeForSearchFilterContentType:(unint64_t)a3
{
  if (a3 > 7)
  {
    return 0;
  }

  else
  {
    return dword_190DD1D44[a3];
  }
}

- (unint64_t)sessionStartTimestampInSeconds
{
  v2 = [(CKSearchAnalytics *)self sessionStartedDate];
  [v2 timeIntervalSince1970];
  v4 = v3;

  return v4;
}

- (NSNumber)millisecondsSinceSessionStarted
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [(CKSearchAnalytics *)self sessionStartedDate];
  [v4 timeIntervalSinceDate:v5];
  v7 = [v3 numberWithUnsignedLong:(v6 * 1000.0)];

  return v7;
}

- (BOOL)_invalidateSessionIDIfNeeded
{
  if ([objc_opt_class() searchAnalyticsEnabled])
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v3 valueForKey:@"SearchAnalyticsSessionStartDate"];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DF00] date];
      [v5 timeIntervalSinceDate:v4];
      v7 = v6;

      if (v7 <= 86400.0)
      {
        v12 = 0;
LABEL_15:
        v13 = [v3 valueForKey:@"SearchAnalyticsSessionSessionID"];
        v14 = v13;
        if ((v12 & 1) == 0)
        {
          if ([v13 length])
          {
            v15 = 0;
            goto LABEL_19;
          }

          if (IMOSLoggingEnabled())
          {
            v46 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              *v54 = 0;
              _os_log_impl(&dword_19020E000, v46, OS_LOG_TYPE_INFO, "SessionID not persisted, invalidating", v54, 2u);
            }
          }
        }

        v15 = 1;
LABEL_19:
        v16 = [v3 integerForKey:@"SearchAnalyticsSessionQueryID"];
        v17 = v16;
        if ((v15 & 1) != 0 || v16 > 0)
        {
          if (!v15)
          {
            if (IMOSLoggingEnabled())
            {
              v44 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
              {
                *v51 = 0;
                _os_log_impl(&dword_19020E000, v44, OS_LOG_TYPE_INFO, "session is valid", v51, 2u);
              }
            }

            objc_storeStrong(&self->_sessionStartedDate, v4);
            objc_storeStrong(&self->_sessionID, v14);
            v11 = 0;
            self->_queryID = v17;
            goto LABEL_40;
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *v53 = 0;
            _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "QueryID not persisted, invalidating", v53, 2u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *v52 = 0;
            _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Invalidating sessionID", v52, 2u);
          }
        }

        v49 = v4;
        v50 = v3;
        v48 = v14;
        v20 = [v14 length];
        if (v20)
        {
          v21 = objc_alloc(MEMORY[0x1E698ED80]);
          v22 = [MEMORY[0x1E696AD98] numberWithBool:1];
          v23 = [v21 initWithIsInSearchView:v22];

          v24 = objc_alloc(MEMORY[0x1E698ED70]);
          v25 = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
          v26 = [(CKSearchAnalytics *)self sessionID];
          v27 = [(CKSearchAnalytics *)self queryIDString];
          v28 = [v24 initWithMillisecondsSinceSessionStarted:v25 sessionId:v26 queryId:v27 started:v23 ended:0];

          v29 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:0 displayContext:0 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:v28];
          [(CKSearchAnalytics *)self _logEvent:v29];
        }

        v30 = [MEMORY[0x1E695DF00] date];
        v31 = [MEMORY[0x1E696AFB0] UUID];
        v32 = [v31 UUIDString];

        [v50 setValue:v30 forKey:@"SearchAnalyticsSessionStartDate"];
        [v50 setValue:v32 forKey:@"SearchAnalyticsSessionSessionID"];
        [v50 setInteger:1 forKey:@"SearchAnalyticsSessionQueryID"];
        objc_storeStrong(&self->_sessionStartedDate, v30);
        objc_storeStrong(&self->_sessionID, v32);
        self->_queryID = 1;
        v33 = [(CKSearchAnalytics *)self _dimensionContext];
        v34 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:v33 inputDetected:0 userInteractionDetected:0 displayContext:0 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
        [(CKSearchAnalytics *)self _logEvent:v34];
        if (v20)
        {
          v35 = objc_alloc(MEMORY[0x1E698ED78]);
          v36 = [MEMORY[0x1E696AD98] numberWithBool:1];
          v47 = v30;
          v37 = [v35 initWithIsInSearchView:v36];

          v38 = objc_alloc(MEMORY[0x1E698ED70]);
          v39 = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
          v40 = [(CKSearchAnalytics *)self sessionID];
          v41 = [(CKSearchAnalytics *)self queryIDString];
          v42 = [v38 initWithMillisecondsSinceSessionStarted:v39 sessionId:v40 queryId:v41 started:0 ended:v37];

          v43 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:0 displayContext:0 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:v42];
          [(CKSearchAnalytics *)self _logEvent:v43];

          v30 = v47;
        }

        v11 = 1;
        v4 = v49;
        v3 = v50;
        v14 = v48;
LABEL_40:

        return v11;
      }

      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v56 = 0;
          v9 = "SessionID TTL rolled, invalidating";
          v10 = &v56;
LABEL_11:
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, v9, v10, 2u);
          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v9 = "SessionID TTL not persisted, invalidating";
        v10 = buf;
        goto LABEL_11;
      }

LABEL_12:
    }

    v12 = 1;
    goto LABEL_15;
  }

  return 0;
}

- (void)_incrementQueryID
{
  v7 = *MEMORY[0x1E69E9840];
  self->_queryID = [(CKSearchAnalytics *)self queryID]+ 1;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = [(CKSearchAnalytics *)self queryID];
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "QueryID incremented: %lu", &v5, 0xCu);
    }
  }

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setInteger:-[CKSearchAnalytics queryID](self forKey:{"queryID"), @"SearchAnalyticsSessionQueryID"}];
}

- (id)_dimensionContext
{
  if ([objc_opt_class() searchAnalyticsEnabled])
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[CKSearchAnalytics sessionStartTimestampInSeconds](self, "sessionStartTimestampInSeconds")}];
    v3 = [MEMORY[0x1E695DF58] currentLocale];
    v4 = [v3 localeIdentifier];

    Helper_x8__OBJC_CLASS___GEOCountryConfiguration = gotLoadHelper_x8__OBJC_CLASS___GEOCountryConfiguration(v5);
    v8 = [*(v7 + 3288) sharedConfiguration];
    v9 = [v8 countryCode];

    v10 = [(CKSearchAnalytics *)self _systemVersion];
    v11 = [(CKSearchAnalytics *)self _productType];
    v12 = [MEMORY[0x1E69A60F0] sharedInstance];
    v13 = [v12 isInternalInstall];

    v14 = [(CKSearchAnalytics *)self _buildType:v13];
    v15 = CKIsRunningInMacCatalyst();
    v16 = @"macOS";
    if (!v15)
    {
      v16 = @"iOS";
    }

    v17 = MEMORY[0x1E698ED10];
    v18 = v16;
    v19 = [v17 alloc];
    v20 = [(CKSearchAnalytics *)self sessionID];
    v21 = [MEMORY[0x1E696AD98] numberWithBool:v13];
    LODWORD(v24) = v14;
    v22 = [v19 initWithSessionStartTimestampInSeconds:v25 sessionId:v20 systemLocale:v4 currentCountry:v9 build:v10 osType:v18 productType:v11 buildType:v24 isLiveOn:v21];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_logEvent:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([objc_opt_class() searchAnalyticsEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Logging event: %@", buf, 0xCu);
      }
    }

    v6 = IMBiomeQueue();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __31__CKSearchAnalytics__logEvent___block_invoke;
    v7[3] = &unk_1E72EB8D0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

void __31__CKSearchAnalytics__logEvent___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) eventStream];
  v2 = [v3 source];
  [v2 sendEvent:*(a1 + 40)];
}

- (id)_systemVersion
{
  if (_systemVersion_onceToken_0 != -1)
  {
    [CKSearchAnalytics _systemVersion];
  }

  v3 = _systemVersion_sSystemVersion_0;

  return v3;
}

void __35__CKSearchAnalytics__systemVersion__block_invoke()
{
  v2 = [MEMORY[0x1E699BE70] sharedInstance];
  v0 = [v2 productBuildVersion];
  v1 = _systemVersion_sSystemVersion_0;
  _systemVersion_sSystemVersion_0 = v0;
}

- (id)_productType
{
  if (_productType_onceToken != -1)
  {
    [CKSearchAnalytics _productType];
  }

  v3 = _productType_sProductType;

  return v3;
}

void __33__CKSearchAnalytics__productType__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = _productType_sProductType;
  _productType_sProductType = v0;
}

- (int)_buildType:(BOOL)a3
{
  if (a3)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

@end