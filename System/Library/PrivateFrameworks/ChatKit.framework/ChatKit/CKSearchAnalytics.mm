@interface CKSearchAnalytics
+ (BOOL)searchAnalyticsEnabled;
+ (CKSearchAnalytics)sharedInstance;
- (BOOL)_invalidateSessionIDIfNeeded;
- (CKSearchAnalytics)init;
- (NSNumber)millisecondsSinceSessionStarted;
- (id)_dimensionContext;
- (id)_productType;
- (id)_systemVersion;
- (int)_buildType:(BOOL)type;
- (int)_sectionTypeForContentType:(int64_t)type;
- (int)_seeAllPageTypeForContentType:(int64_t)type;
- (int)_tokenTypeForSearchFilterContentType:(unint64_t)type;
- (unint64_t)sessionStartTimestampInSeconds;
- (void)_incrementQueryID;
- (void)_logEvent:(id)event;
- (void)_logSearchButtonInteractionWithVisualComponentType:(int)type mode:(unint64_t)mode;
- (void)logSearchDismissalWithReason:(int64_t)reason;
- (void)logSearchPresentationWithReason:(int64_t)reason;
- (void)logSearchResultDisplayEvent:(int64_t)event index:(unint64_t)index mode:(unint64_t)mode displayEventType:(int64_t)type scrollVelocity:(double)velocity;
- (void)logSearchResultInteraction:(int64_t)interaction index:(unint64_t)index mode:(unint64_t)mode interactionType:(int64_t)type;
- (void)logSearchResultsReceivedInMode:(unint64_t)mode conversations:(unint64_t)conversations tokens:(unint64_t)tokens messages:(unint64_t)messages links:(unint64_t)links photos:(unint64_t)photos location:(unint64_t)location attachments:(unint64_t)self0 wallet:(unint64_t)self1 collaboration:(unint64_t)self2 highlights:(unint64_t)self3;
- (void)logShowAllInteraction:(int64_t)interaction;
- (void)logUserInputChanged:(unint64_t)changed input:(id)input tokens:(id)tokens;
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
      standardUserDefaults = BiomeLibrary();
      messages = [standardUserDefaults Messages];
      search = [messages Search];
      event = [search Event];
      eventStream = v2->_eventStream;
      v2->_eventStream = event;
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

      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults setValue:0 forKey:@"SearchAnalyticsSessionStartDate"];
      [standardUserDefaults setValue:0 forKey:@"SearchAnalyticsSessionSessionID"];
      [standardUserDefaults setInteger:0 forKey:@"SearchAnalyticsSessionQueryID"];
    }
  }

  return v2;
}

+ (BOOL)searchAnalyticsEnabled
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADE40]] == 1;

  return v3;
}

- (void)logSearchPresentationWithReason:(int64_t)reason
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
        reasonCopy = reason;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Request to log presentation with reason %lu", buf, 0xCu);
      }
    }

    [(CKSearchAnalytics *)self setPreviousPresentationReason:reason];
    _invalidateSessionIDIfNeeded = [(CKSearchAnalytics *)self _invalidateSessionIDIfNeeded];
    v7 = (reason - 3) < 0xFFFFFFFFFFFFFFFELL || _invalidateSessionIDIfNeeded;
    if ((v7 & 1) == 0)
    {
      [(CKSearchAnalytics *)self _incrementQueryID];
    }

    if (reason == 2)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    if (reason == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = [objc_alloc(MEMORY[0x1E698ED50]) initWithSearchViewAppearedReason:v9];
    v11 = objc_alloc(MEMORY[0x1E698ED58]);
    millisecondsSinceSessionStarted = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
    sessionID = [(CKSearchAnalytics *)self sessionID];
    queryIDString = [(CKSearchAnalytics *)self queryIDString];
    v15 = [v11 initWithMillisecondsSinceSessionStarted:millisecondsSinceSessionStarted sessionId:sessionID queryId:queryIDString appeared:v10 disappeared:0];

    v16 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:0 displayContext:0 searchViewContext:v15 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
    [(CKSearchAnalytics *)self _logEvent:v16];
  }
}

- (void)logSearchDismissalWithReason:(int64_t)reason
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
        reasonCopy = reason;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Request to log dismissal with reason %lu", buf, 0xCu);
      }
    }

    [(CKSearchAnalytics *)self _invalidateSessionIDIfNeeded];
    [(CKSearchAnalytics *)self setPreviousPresentationReason:0];
    if (reason == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2 * (reason == 2);
    }

    v7 = [objc_alloc(MEMORY[0x1E698ED60]) initWithSearchViewDisappearedReason:v6];
    v8 = objc_alloc(MEMORY[0x1E698ED58]);
    millisecondsSinceSessionStarted = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
    sessionID = [(CKSearchAnalytics *)self sessionID];
    queryIDString = [(CKSearchAnalytics *)self queryIDString];
    v12 = [v8 initWithMillisecondsSinceSessionStarted:millisecondsSinceSessionStarted sessionId:sessionID queryId:queryIDString appeared:0 disappeared:v7];

    v13 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:0 displayContext:0 searchViewContext:v12 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
    [(CKSearchAnalytics *)self _logEvent:v13];
  }
}

- (void)logUserInputChanged:(unint64_t)changed input:(id)input tokens:(id)tokens
{
  v51 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  tokensCopy = tokens;
  if (![objc_opt_class() searchAnalyticsEnabled])
  {
    goto LABEL_38;
  }

  if (changed == 2)
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

  changedCopy = changed;
  v40 = tokensCopy;
  _invalidateSessionIDIfNeeded = [(CKSearchAnalytics *)self _invalidateSessionIDIfNeeded];
  if ([(CKSearchAnalytics *)self previousPresentationReason]== 1)
  {
    v11 = 1;
    goto LABEL_10;
  }

  v11 = [(CKSearchAnalytics *)self previousPresentationReason]== 2;
  if (v11 || _invalidateSessionIDIfNeeded)
  {
LABEL_10:
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = @"NO";
        if (_invalidateSessionIDIfNeeded)
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
  if ([inputCopy length])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(inputCopy, "length")}];
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v19 = [inputCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

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
          representedObject = [v26 representedObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            representedObject2 = [v26 representedObject];
            contentType = [representedObject2 contentType];
            v31 = [objc_alloc(MEMORY[0x1E698ED88]) initWithTokenType:-[CKSearchAnalytics _tokenTypeForSearchFilterContentType:](self wordCount:"_tokenTypeForSearchFilterContentType:" charCount:{contentType), 0, 0}];
            [v16 addObject:v31];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v23);
    }
  }

  v32 = objc_alloc(MEMORY[0x1E698ED30]);
  millisecondsSinceSessionStarted = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
  sessionID = [(CKSearchAnalytics *)self sessionID];
  queryIDString = [(CKSearchAnalytics *)self queryIDString];
  v36 = [MEMORY[0x1E696AD98] numberWithBool:changedCopy == 1];
  v37 = [v32 initWithMillisecondsSinceSessionStarted:millisecondsSinceSessionStarted sessionId:sessionID queryId:queryIDString isZkw:v36 token:v16];

  v38 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:v37 userInteractionDetected:0 displayContext:0 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
  [(CKSearchAnalytics *)self _logEvent:v38];

  tokensCopy = v40;
LABEL_38:
}

- (void)logSearchResultsReceivedInMode:(unint64_t)mode conversations:(unint64_t)conversations tokens:(unint64_t)tokens messages:(unint64_t)messages links:(unint64_t)links photos:(unint64_t)photos location:(unint64_t)location attachments:(unint64_t)self0 wallet:(unint64_t)self1 collaboration:(unint64_t)self2 highlights:(unint64_t)self3
{
  if ([objc_opt_class() searchAnalyticsEnabled])
  {
    messagesCopy = messages;
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Request to log results received", buf, 2u);
      }
    }

    selfCopy = self;
    [(CKSearchAnalytics *)self _invalidateSessionIDIfNeeded];
    v32 = objc_alloc(MEMORY[0x1E698ED48]);
    millisecondsSinceSessionStarted = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
    sessionID = [(CKSearchAnalytics *)self sessionID];
    queryIDString = [(CKSearchAnalytics *)self queryIDString];
    v20 = [MEMORY[0x1E696AD98] numberWithBool:tokens + conversations + messagesCopy + links + photos + location + attachments + wallet + collaboration + highlights == 0];
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:conversations];
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:tokens];
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:messagesCopy];
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:links];
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:photos];
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:location];
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:attachments];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:wallet];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:collaboration];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:highlights];
    v38 = [v32 initWithMillisecondsSinceSessionStarted:millisecondsSinceSessionStarted sessionId:sessionID queryId:queryIDString noResultReceived:v20 totalConversations:v33 totalTokens:v30 totalMessages:v28 totalLinks:v27 totalPhotos:v26 totalLocation:v31 totalAttachments:v21 totalWallet:v22 totalCollaboration:v23 totalHighlights:v24];

    v25 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:0 displayContext:0 searchViewContext:0 resultReceived:v38 messagesAppViewContext:0 sessionIdResetContext:0];
    [(CKSearchAnalytics *)selfCopy _logEvent:v25];
  }
}

- (void)logSearchResultInteraction:(int64_t)interaction index:(unint64_t)index mode:(unint64_t)mode interactionType:(int64_t)type
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
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:index + 1];
    v12 = [objc_alloc(MEMORY[0x1E698ED40]) initWithResultPositionIndex:v27];
    v13 = [(CKSearchAnalytics *)self _sectionTypeForContentType:interaction];
    if (mode == 2)
    {
      v15 = [(CKSearchAnalytics *)self _seeAllPageTypeForContentType:interaction];
    }

    else
    {
      if (mode)
      {
        v14 = 0;
      }

      else
      {
        v14 = 2;
      }

      if (mode == 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }
    }

    if (type == 1)
    {
      v16 = 3;
    }

    else
    {
      v16 = 0;
    }

    if (type)
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
    millisecondsSinceSessionStarted = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
    sessionID = [(CKSearchAnalytics *)self sessionID];
    queryIDString = [(CKSearchAnalytics *)self queryIDString];
    v25 = [v21 initWithMillisecondsSinceSessionStarted:millisecondsSinceSessionStarted sessionId:sessionID queryId:queryIDString visualComponent:v20 interactionType:v17];

    v26 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:v25 displayContext:0 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
    [(CKSearchAnalytics *)self _logEvent:v26];
  }
}

- (void)logSearchResultDisplayEvent:(int64_t)event index:(unint64_t)index mode:(unint64_t)mode displayEventType:(int64_t)type scrollVelocity:(double)velocity
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
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:index + 1];
    v31 = [objc_alloc(MEMORY[0x1E698ED40]) initWithResultPositionIndex:v32];
    v14 = [(CKSearchAnalytics *)self _sectionTypeForContentType:event];
    if (mode == 2)
    {
      v15 = [(CKSearchAnalytics *)self _seeAllPageTypeForContentType:event];
    }

    else if (mode == 1)
    {
      v15 = 1;
    }

    else if (mode)
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
    if (type == 1)
    {
      if (velocity <= 0.01)
      {
        if (velocity < 0.01)
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
      millisecondsSinceSessionStarted = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
      sessionID = [(CKSearchAnalytics *)self sessionID];
      queryIDString = [(CKSearchAnalytics *)self queryIDString];
      v34 = v18;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
      v28 = [v29 initWithMillisecondsSinceSessionStarted:millisecondsSinceSessionStarted sessionId:sessionID queryId:queryIDString visualComponent:v27 started:0 ended:v22];
    }

    else
    {
      if (type)
      {
        v21 = 0;
LABEL_29:
        v30 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:0 displayContext:v21 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
        [(CKSearchAnalytics *)self _logEvent:v30];

        return;
      }

      if (velocity <= 0.01)
      {
        if (velocity < 0.01)
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
      millisecondsSinceSessionStarted = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
      sessionID = [(CKSearchAnalytics *)self sessionID];
      queryIDString = [(CKSearchAnalytics *)self queryIDString];
      v35[0] = v18;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
      v28 = [v23 initWithMillisecondsSinceSessionStarted:millisecondsSinceSessionStarted sessionId:sessionID queryId:queryIDString visualComponent:v27 started:v22 ended:0];
    }

    v21 = v28;

    goto LABEL_29;
  }
}

- (void)logShowAllInteraction:(int64_t)interaction
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
    v6 = [(CKSearchAnalytics *)self _sectionTypeForContentType:interaction];
    v7 = [objc_alloc(MEMORY[0x1E698ED68]) initWithSectionType:v6];
    v8 = [(CKSearchAnalytics *)self _seeAllPageTypeForContentType:interaction];
    v9 = [objc_alloc(MEMORY[0x1E698ED38]) initWithPageType:v8];
    v10 = [objc_alloc(MEMORY[0x1E698ED98]) initWithComponentType:2 resultAttribute:0 sectionAttribute:v7 pageAttribute:v9];
    v11 = objc_alloc(MEMORY[0x1E698ED90]);
    millisecondsSinceSessionStarted = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
    sessionID = [(CKSearchAnalytics *)self sessionID];
    queryIDString = [(CKSearchAnalytics *)self queryIDString];
    v15 = [v11 initWithMillisecondsSinceSessionStarted:millisecondsSinceSessionStarted sessionId:sessionID queryId:queryIDString visualComponent:v10 interactionType:1];

    v16 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:v15 displayContext:0 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
    [(CKSearchAnalytics *)self _logEvent:v16];
  }
}

- (void)_logSearchButtonInteractionWithVisualComponentType:(int)type mode:(unint64_t)mode
{
  v5 = *&type;
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
    if (mode)
    {
      v8 = mode == 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = [objc_alloc(MEMORY[0x1E698ED38]) initWithPageType:v8];
    v10 = [objc_alloc(MEMORY[0x1E698ED98]) initWithComponentType:v5 resultAttribute:0 sectionAttribute:0 pageAttribute:v9];
    v11 = objc_alloc(MEMORY[0x1E698ED90]);
    millisecondsSinceSessionStarted = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
    sessionID = [(CKSearchAnalytics *)self sessionID];
    queryIDString = [(CKSearchAnalytics *)self queryIDString];
    v15 = [v11 initWithMillisecondsSinceSessionStarted:millisecondsSinceSessionStarted sessionId:sessionID queryId:queryIDString visualComponent:v10 interactionType:1];

    v16 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:v15 displayContext:0 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
    [(CKSearchAnalytics *)self _logEvent:v16];
  }
}

- (int)_sectionTypeForContentType:(int64_t)type
{
  if (type > 0xA)
  {
    return 0;
  }

  else
  {
    return dword_190DD1CF8[type];
  }
}

- (int)_seeAllPageTypeForContentType:(int64_t)type
{
  if ((type - 1) > 7)
  {
    return 0;
  }

  else
  {
    return dword_190DD1D24[type - 1];
  }
}

- (int)_tokenTypeForSearchFilterContentType:(unint64_t)type
{
  if (type > 7)
  {
    return 0;
  }

  else
  {
    return dword_190DD1D44[type];
  }
}

- (unint64_t)sessionStartTimestampInSeconds
{
  sessionStartedDate = [(CKSearchAnalytics *)self sessionStartedDate];
  [sessionStartedDate timeIntervalSince1970];
  v4 = v3;

  return v4;
}

- (NSNumber)millisecondsSinceSessionStarted
{
  v3 = MEMORY[0x1E696AD98];
  date = [MEMORY[0x1E695DF00] date];
  sessionStartedDate = [(CKSearchAnalytics *)self sessionStartedDate];
  [date timeIntervalSinceDate:sessionStartedDate];
  v7 = [v3 numberWithUnsignedLong:(v6 * 1000.0)];

  return v7;
}

- (BOOL)_invalidateSessionIDIfNeeded
{
  if ([objc_opt_class() searchAnalyticsEnabled])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [standardUserDefaults valueForKey:@"SearchAnalyticsSessionStartDate"];
    if (v4)
    {
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceDate:v4];
      v7 = v6;

      if (v7 <= 86400.0)
      {
        v12 = 0;
LABEL_15:
        v13 = [standardUserDefaults valueForKey:@"SearchAnalyticsSessionSessionID"];
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
        v16 = [standardUserDefaults integerForKey:@"SearchAnalyticsSessionQueryID"];
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
        v50 = standardUserDefaults;
        v48 = v14;
        v20 = [v14 length];
        if (v20)
        {
          v21 = objc_alloc(MEMORY[0x1E698ED80]);
          v22 = [MEMORY[0x1E696AD98] numberWithBool:1];
          v23 = [v21 initWithIsInSearchView:v22];

          v24 = objc_alloc(MEMORY[0x1E698ED70]);
          millisecondsSinceSessionStarted = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
          sessionID = [(CKSearchAnalytics *)self sessionID];
          queryIDString = [(CKSearchAnalytics *)self queryIDString];
          v28 = [v24 initWithMillisecondsSinceSessionStarted:millisecondsSinceSessionStarted sessionId:sessionID queryId:queryIDString started:v23 ended:0];

          v29 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:0 displayContext:0 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:v28];
          [(CKSearchAnalytics *)self _logEvent:v29];
        }

        date2 = [MEMORY[0x1E695DF00] date];
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];

        [v50 setValue:date2 forKey:@"SearchAnalyticsSessionStartDate"];
        [v50 setValue:uUIDString forKey:@"SearchAnalyticsSessionSessionID"];
        [v50 setInteger:1 forKey:@"SearchAnalyticsSessionQueryID"];
        objc_storeStrong(&self->_sessionStartedDate, date2);
        objc_storeStrong(&self->_sessionID, uUIDString);
        self->_queryID = 1;
        _dimensionContext = [(CKSearchAnalytics *)self _dimensionContext];
        v34 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:_dimensionContext inputDetected:0 userInteractionDetected:0 displayContext:0 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:0];
        [(CKSearchAnalytics *)self _logEvent:v34];
        if (v20)
        {
          v35 = objc_alloc(MEMORY[0x1E698ED78]);
          v36 = [MEMORY[0x1E696AD98] numberWithBool:1];
          v47 = date2;
          v37 = [v35 initWithIsInSearchView:v36];

          v38 = objc_alloc(MEMORY[0x1E698ED70]);
          millisecondsSinceSessionStarted2 = [(CKSearchAnalytics *)self millisecondsSinceSessionStarted];
          sessionID2 = [(CKSearchAnalytics *)self sessionID];
          queryIDString2 = [(CKSearchAnalytics *)self queryIDString];
          v42 = [v38 initWithMillisecondsSinceSessionStarted:millisecondsSinceSessionStarted2 sessionId:sessionID2 queryId:queryIDString2 started:0 ended:v37];

          v43 = [objc_alloc(MEMORY[0x1E698ED08]) initWithDimensionContext:0 inputDetected:0 userInteractionDetected:0 displayContext:0 searchViewContext:0 resultReceived:0 messagesAppViewContext:0 sessionIdResetContext:v42];
          [(CKSearchAnalytics *)self _logEvent:v43];

          date2 = v47;
        }

        v11 = 1;
        v4 = v49;
        standardUserDefaults = v50;
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
      queryID = [(CKSearchAnalytics *)self queryID];
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "QueryID incremented: %lu", &v5, 0xCu);
    }
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setInteger:-[CKSearchAnalytics queryID](self forKey:{"queryID"), @"SearchAnalyticsSessionQueryID"}];
}

- (id)_dimensionContext
{
  if ([objc_opt_class() searchAnalyticsEnabled])
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[CKSearchAnalytics sessionStartTimestampInSeconds](self, "sessionStartTimestampInSeconds")}];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    Helper_x8__OBJC_CLASS___GEOCountryConfiguration = gotLoadHelper_x8__OBJC_CLASS___GEOCountryConfiguration(v5);
    sharedConfiguration = [*(v7 + 3288) sharedConfiguration];
    countryCode = [sharedConfiguration countryCode];

    _systemVersion = [(CKSearchAnalytics *)self _systemVersion];
    _productType = [(CKSearchAnalytics *)self _productType];
    mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
    isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

    v14 = [(CKSearchAnalytics *)self _buildType:isInternalInstall];
    v15 = CKIsRunningInMacCatalyst();
    v16 = @"macOS";
    if (!v15)
    {
      v16 = @"iOS";
    }

    v17 = MEMORY[0x1E698ED10];
    v18 = v16;
    v19 = [v17 alloc];
    sessionID = [(CKSearchAnalytics *)self sessionID];
    v21 = [MEMORY[0x1E696AD98] numberWithBool:isInternalInstall];
    LODWORD(v24) = v14;
    v22 = [v19 initWithSessionStartTimestampInSeconds:v25 sessionId:sessionID systemLocale:localeIdentifier currentCountry:countryCode build:_systemVersion osType:v18 productType:_productType buildType:v24 isLiveOn:v21];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_logEvent:(id)event
{
  v11 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if ([objc_opt_class() searchAnalyticsEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v10 = eventCopy;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Logging event: %@", buf, 0xCu);
      }
    }

    v6 = IMBiomeQueue();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __31__CKSearchAnalytics__logEvent___block_invoke;
    v7[3] = &unk_1E72EB8D0;
    v7[4] = self;
    v8 = eventCopy;
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

- (int)_buildType:(BOOL)type
{
  if (type)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

@end