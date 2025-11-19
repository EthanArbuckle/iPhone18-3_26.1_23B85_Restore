@interface CKTranscriptPluginChatItem
- (BOOL)canCopy;
- (BOOL)canForward;
- (BOOL)canInlineReply;
- (BOOL)canPerformQuickAction;
- (BOOL)canSendTapbacks;
- (BOOL)hasTail;
- (BOOL)isPlayed;
- (BOOL)isSaved;
- (BOOL)shouldAllowExtraTallHeightForBundleID:(id)a3;
- (BOOL)shouldShowGroupAvatar;
- (BOOL)shouldSnapshot;
- (BOOL)wantsPendingMessageStyle;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CKTranscriptPluginChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4;
- (Class)balloonViewClass;
- (NSString)bundleIdentifier;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)pluginInsets;
- (UIEdgeInsets)textAlignmentInsets;
- (char)transcriptOrientation;
- (double)balloonCornerRadius;
- (id)balloonControllerForContext:(id)a3;
- (id)cellIdentifier;
- (id)compositionWithContext:(id)a3;
- (id)contact;
- (id)contentViewControllerForContext:(id)a3;
- (id)dragItemProvider;
- (id)extensibleViewControllerForContext:(id)a3;
- (id)extensibleViewForContext:(id)a3;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)loadTranscriptDrawerText;
- (id)message;
- (id)pluginDisplayContainerForContext:(id)a3;
- (id)rtfDocumentItemsWithFormatString:(id)a3 selectedTextRange:(_NSRange)a4;
- (id)sender;
- (id)snapshotGUIDForPluginPayload:(id)a3;
- (unint64_t)layoutType;
- (void)_cacheConversationID:(id)a3 recipients:(id)a4 isBusiness:(BOOL)a5;
- (void)_configureBalloonController:(id)a3 conversationID:(id)a4 recipients:(id)a5 isBusiness:(BOOL)a6;
- (void)configureWithConversationID:(id)a3 recipients:(id)a4 isBusiness:(BOOL)a5 context:(id)a6;
- (void)performHostAppResumeWithContext:(id)a3;
- (void)releaseBalloonControllerIfNeededForContext:(id)a3;
- (void)relinquishBalloonControllerForContext:(id)a3;
@end

@implementation CKTranscriptPluginChatItem

- (unint64_t)layoutType
{
  if ([(CKChatItem *)self itemIsReply])
  {
    return 13;
  }

  else
  {
    return 1;
  }
}

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  if ([(CKTranscriptPluginChatItem *)self isAppearing])
  {
    if (a4 >= 1 && ([v14 objectAtIndex:a4 - 1], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v17 = v16;
      v18 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v16 topSpacing:0.0 bottomSpacing:0.0];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CKTranscriptPluginChatItem;
    v18 = [(CKChatItem *)&v20 layoutItemSpacingWithEnvironment:v13 datasourceItemIndex:a4 allDatasourceItems:v14 supplementryItems:v15 sizeOverride:width, height];
  }

  return v18;
}

- (id)compositionWithContext:(id)a3
{
  v3 = [(CKTranscriptPluginChatItem *)self pluginDisplayContainerForContext:a3];
  v4 = [CKComposition compositionWithPluginDisplayContainer:v3 subject:0];

  return v4;
}

- (CKTranscriptPluginChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CKTranscriptPluginChatItem;
  v7 = [(CKMessagePartChatItem *)&v11 initWithIMChatItem:v6 maxWidth:a4];
  v8 = v7;
  if (v7)
  {
    [(CKTranscriptPluginChatItem *)v7 setImTranscriptPluginChatItem:v6];
    v9 = [v6 type];
    v8->_isHandwriting = [v9 isEqualToString:*MEMORY[0x1E69A69E0]];
  }

  return v8;
}

- (id)extensibleViewForContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CKTranscriptPluginChatItem *)self balloonControllerForContext:v4];
    v6 = [v5 pluginContentView];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Context identifier is nil, unable to get plugin view", v9, 2u);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (id)extensibleViewControllerForContext:(id)a3
{
  v3 = [(CKTranscriptPluginChatItem *)self balloonControllerForContext:a3];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 pluginContentViewController];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)contentViewControllerForContext:(id)a3
{
  v3 = [(CKTranscriptPluginChatItem *)self balloonControllerForContext:a3];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 contentViewController];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)balloonCornerRadius
{
  v3 = [(CKTranscriptPluginChatItem *)self imTranscriptPluginChatItem];
  v4 = [v3 dataSource];

  v5 = [v4 bundleID];
  v6 = IMBalloonExtensionIDWithSuffix();
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 pollsEntryViewCornerRadius];
    v10 = v9;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CKTranscriptPluginChatItem;
    [(CKBalloonChatItem *)&v13 balloonCornerRadius];
    v10 = v11;
  }

  return v10;
}

- (id)balloonControllerForContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v6 = [(CKTranscriptPluginChatItem *)self imTranscriptPluginChatItem];
    v7 = [v5 balloonControllerForIMChatItem:v6 contextIdentifier:v4];

    if (v7)
    {
      v8 = [(CKTranscriptPluginChatItem *)self conversationID];
      v9 = [(CKTranscriptPluginChatItem *)self recipients];
      [(CKTranscriptPluginChatItem *)self _configureBalloonController:v7 conversationID:v8 recipients:v9 isBusiness:[(CKTranscriptPluginChatItem *)self isBusiness]];

      v10 = v7;
    }

    else if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Failed to get balloon plugin controller from balloon plugin manager", v14, 2u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Context identifier is nil, unable to get plugin controller!", buf, 2u);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (void)configureWithConversationID:(id)a3 recipients:(id)a4 isBusiness:(BOOL)a5 context:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  [(CKTranscriptPluginChatItem *)self _cacheConversationID:v12 recipients:v11 isBusiness:v6];
  v13 = [(CKTranscriptPluginChatItem *)self balloonControllerForContext:v10];

  [(CKTranscriptPluginChatItem *)self _configureBalloonController:v13 conversationID:v12 recipients:v11 isBusiness:v6];
}

- (void)_configureBalloonController:(id)a3 conversationID:(id)a4 recipients:(id)a5 isBusiness:(BOOL)a6
{
  v6 = a6;
  v14 = a3;
  v10 = a4;
  v11 = a5;
  if (v6)
  {
    v12 = [(CKChatItem *)self IMChatItem];
    v13 = [v12 isAllowlistedRichLinkSender];

    if (v13)
    {
      if (objc_opt_respondsToSelector())
      {
        [v14 setAllowsOpeningSensitiveURLs:1];
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v14 configureWithConversationID:v10 recipients:v11];
  }
}

- (void)_cacheConversationID:(id)a3 recipients:(id)a4 isBusiness:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  [(CKTranscriptPluginChatItem *)self setConversationID:a3];
  [(CKTranscriptPluginChatItem *)self setRecipients:v8];

  [(CKTranscriptPluginChatItem *)self setIsBusiness:v5];
}

- (NSString)bundleIdentifier
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 dataSource];
  v4 = [v3 pluginPayload];

  v5 = [v4 pluginBundleID];

  return v5;
}

- (BOOL)canPerformQuickAction
{
  v3 = [(CKChatItem *)self IMChatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CKChatItem *)self IMChatItem];
    v6 = [v5 messageItem];

    v7 = [v6 swyBundleID];
    if (v7)
    {
      v8 = [MEMORY[0x1E69A8288] sharedManager];
      v9 = [v8 showPinningStatusTextForBundleID:v7];

      v10 = ![(CKChatItem *)self isHighlighted]& v9;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)canCopy
{
  v3 = [(CKChatItem *)self IMChatItem];
  v4 = [v3 type];
  v5 = [v4 containsString:*MEMORY[0x1E69A69F0]];

  if (v5)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = CKTranscriptPluginChatItem;
  return [(CKMessagePartChatItem *)&v7 canCopy];
}

- (BOOL)canForward
{
  v3 = [(CKChatItem *)self IMChatItem];
  v4 = [v3 type];
  v5 = [v4 containsString:*MEMORY[0x1E69A69F0]];

  if (v5)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = CKTranscriptPluginChatItem;
  return [(CKMessagePartChatItem *)&v7 canForward];
}

- (BOOL)canInlineReply
{
  v3 = [(CKChatItem *)self IMChatItem];
  if ([v3 canReply])
  {
    if ([(CKMessagePartChatItem *)self isReply])
    {
      v4 = 1;
    }

    else
    {
      v5 = [(CKChatItem *)self IMChatItem];
      v6 = [v5 type];
      v4 = [v6 containsString:*MEMORY[0x1E69A6A18]];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)message
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 message];

  return v3;
}

- (id)pluginDisplayContainerForContext:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Context identifier is nil, unable to get plugin container", buf, 2u);
      }

      goto LABEL_24;
    }

LABEL_25:
    v23 = 0;
    goto LABEL_35;
  }

  v5 = [(CKChatItem *)self IMChatItem];
  v6 = [v5 dataSource];
  v7 = [v6 pluginPayload];

  if (!v7)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Unable to get plugin payload from data source!", buf, 2u);
      }

LABEL_24:

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v8 = [v7 cleansedCopy];

  v9 = [(CKTranscriptPluginChatItem *)self snapshotGUIDForPluginPayload:v8];
  v10 = [CKSnapshotUtilities snapshotForGUID:v9];
  v11 = [v10 image];

  if (v11 && ([v10 image], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v14 = [(CKTranscriptPluginChatItem *)self extensibleViewForContext:v4];
    v15 = v14;
    if (!v14 || ([v14 bounds], v17 == *MEMORY[0x1E695F060]) && v16 == *(MEMORY[0x1E695F060] + 8))
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          if (v15)
          {
            v19 = @"NO";
          }

          else
          {
            v19 = @"YES";
          }

          [v15 bounds];
          v80.width = v20;
          v80.height = v21;
          v22 = NSStringFromCGSize(v80);
          *buf = 138412546;
          *v59 = v19;
          *&v59[8] = 2112;
          *&v59[10] = v22;
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Error with pluginView, was nil %@, size %@", buf, 0x16u);
        }
      }

      v12 = 0;
    }

    else
    {
      [v15 bounds];
      v25 = v24;
      v27 = v26;
      v28 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v28 scale];
      v30 = v29;
      v81.width = v25;
      v81.height = v27;
      UIGraphicsBeginImageContextWithOptions(v81, 0, v30);

      v57 = [(CKTranscriptPluginChatItem *)self balloonControllerForContext:v4];
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([v57 messageTintColor], (v31 = objc_claimAutoreleasedReturnValue()) != 0) || (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "theme"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "balloonColorsForColorType:", 0xFFFFFFFFLL), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "lastObject"), v31 = objc_claimAutoreleasedReturnValue(), v34, v33, v32, v31))
      {
        CurrentContext = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(CurrentContext, [v31 CGColor]);
        [v15 bounds];
        v37 = v36;
        [v15 bounds];
        v83.origin.x = 0.0;
        v83.origin.y = 0.0;
        v83.size.width = v37;
        CGContextFillRect(CurrentContext, v83);
      }

      [v15 bounds];
      [v15 drawViewHierarchyInRect:0 afterScreenUpdates:?];
      v12 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }

    if (!v12)
    {
      v55 = 0;
      goto LABEL_34;
    }
  }

  v38 = +[CKUIBehavior sharedBehaviors];
  [v38 balloonCornerRadius];
  v40 = v39;
  v41 = [(CKChatItem *)self transcriptTraitCollection];
  v42 = CKBackgroundLevelForTraitCollection(v41);
  v43 = [v41 userInterfaceStyle];
  v44 = *MEMORY[0x1E69A6E08];
  v45 = *(MEMORY[0x1E69A6E08] + 8);
  v46 = *(MEMORY[0x1E69A6E08] + 16);
  v47 = *(MEMORY[0x1E69A6E08] + 24);
  memset(v61, 0, sizeof(v61));
  memset(v71, 0, sizeof(v71));
  v76 = 0;
  v77 = 0;
  *buf = 0x1000000;
  *v59 = 0;
  *&v59[4] = -1;
  *&v59[12] = v40;
  v60 = -2;
  v62 = v44;
  v63 = v45;
  v64 = v46;
  v65 = v47;
  v66 = v44;
  v67 = v45;
  v68 = v46;
  v69 = v47;
  v70 = 0;
  v72 = v43;
  v73 = v42;
  v75 = 0;
  v74 = 0;
  v48 = CKResizableBalloonMask(buf);
  [v12 size];
  UIGraphicsBeginImageContextWithOptions(v82, 0, 0.0);
  [v12 size];
  v50 = v49;
  [v12 size];
  [v48 drawInRect:{0.0, 0.0, v50, v51}];
  [v12 size];
  v53 = v52;
  [v12 size];
  [v12 drawInRect:18 blendMode:0.0 alpha:{0.0, v53, v54, 1.0}];
  v55 = UIGraphicsGetImageFromCurrentImageContext();

  UIGraphicsEndImageContext();
LABEL_34:
  v23 = [CKPluginDisplayContainer pluginDisplayContainerWithPluginPayload:v8 composeImage:v55];

LABEL_35:

  return v23;
}

- (id)rtfDocumentItemsWithFormatString:(id)a3 selectedTextRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(CKChatItem *)self transcriptIdentifier];
  v9 = [(CKTranscriptPluginChatItem *)self pluginDisplayContainerForContext:v8];

  v10 = [v9 rtfDocumentItemsWithFormatString:v7 selectedTextRange:{location, length}];

  return v10;
}

- (id)sender
{
  v2 = [(CKTranscriptPluginChatItem *)self message];
  v3 = [v2 sender];

  return v3;
}

- (id)contact
{
  v2 = [(CKTranscriptPluginChatItem *)self sender];
  v3 = [[CKEntity alloc] initWithIMHandle:v2];
  v4 = [(CKEntity *)v3 cnContact];

  return v4;
}

- (id)cellIdentifier
{
  v2 = [(CKTranscriptPluginChatItem *)self balloonViewClass];

  return NSStringFromClass(v2);
}

- (Class)balloonViewClass
{
  if (![(CKTranscriptPluginChatItem *)self isHandwriting])
  {
    [(CKTranscriptPluginChatItem *)self shouldSnapshot];
  }

  v3 = objc_opt_class();

  return v3;
}

- (BOOL)hasTail
{
  v3 = [(CKTranscriptPluginChatItem *)self imTranscriptPluginChatItem];
  v4 = [v3 dataSource];

  v5 = [v4 pluginPayload];
  v6 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v7 = [v5 pluginBundleID];
  v8 = [v6 balloonPluginForBundleID:v7];

  v9 = [v4 bundleID];
  v10 = IMBalloonExtensionIDWithSuffix();
  v11 = [v9 isEqualToString:v10];

  if (v11 & 1) != 0 || ([v8 linkedBeforeSDKVersion:@"19.0"])
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CKTranscriptPluginChatItem;
    v12 = [(CKChatItem *)&v14 hasTail];
  }

  return v12;
}

- (BOOL)shouldShowGroupAvatar
{
  v3.receiver = self;
  v3.super_class = CKTranscriptPluginChatItem;
  return [(CKChatItem *)&v3 hasTail];
}

- (BOOL)shouldSnapshot
{
  v3 = [(CKChatItem *)self IMChatItem];
  v4 = [v3 dataSource];
  v5 = [v4 pluginPayload];

  v6 = [(CKTranscriptPluginChatItem *)self imTranscriptPluginChatItem];
  v7 = [v6 dataSource];
  v8 = [v7 supportsDynamicSize];

  v9 = [(CKTranscriptPluginChatItem *)self snapshotGUIDForPluginPayload:v5];
  v10 = (v8 & 1) == 0 && [CKSnapshotUtilities snapshotExistsForGUID:v9];

  return v10;
}

- (UIEdgeInsets)textAlignmentInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)snapshotGUIDForPluginPayload:(id)a3
{
  v3 = a3;
  v4 = [v3 messageGUID];
  v5 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v6 = [v3 pluginBundleID];

  v7 = [v5 balloonPluginForBundleID:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 isEnabled];
    if (CKShouldShowSURF())
    {
      if (v9)
      {
LABEL_10:
        v11 = @"-enabled";
        goto LABEL_11;
      }
    }

    else
    {
      v10 = [v8 identifier];
      if (![v10 hasSuffix:*MEMORY[0x1E69A6A38]])
      {
        v12 = [v8 identifier];
        v13 = [v12 hasSuffix:*MEMORY[0x1E69A6A40]];

        v11 = @"-disabled";
        if (v13 & 1) != 0 || ((v9 ^ 1))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    v11 = @"-disabled";
LABEL_11:
    v14 = [v4 stringByAppendingString:v11];

    v4 = v14;
  }

  return v4;
}

- (char)transcriptOrientation
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 isFromMe];

  if (v3)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)wantsPendingMessageStyle
{
  v3 = [(CKMessagePartChatItem *)self messageItem];
  v4 = [v3 isPendingSatelliteSend];

  if (v4)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = [(CKMessagePartChatItem *)self messageItem];
    v7 = [v6 scheduleType];

    if (v7 == 2)
    {
      v8 = [(CKMessagePartChatItem *)self messageItem];
      v9 = [v8 scheduleState];

      v5 = 0x36u >> v9;
      if (v9 > 5)
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

- (UIEdgeInsets)pluginInsets
{
  if ([(CKTranscriptPluginChatItem *)self wantsPendingMessageStyle])
  {
    v2 = +[CKUIBehavior sharedBehaviors];
    [v2 linkPreviewSendLaterInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = *MEMORY[0x1E69DDCE0];
    v6 = *(MEMORY[0x1E69DDCE0] + 8);
    v8 = *(MEMORY[0x1E69DDCE0] + 16);
    v10 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  v66 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    *&a4->top = *MEMORY[0x1E69DDCE0];
    *&a4->bottom = v7;
  }

  v8 = [(CKChatItem *)self IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(CKChatItem *)self IMChatItem];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 chatInScrutinyMode];
  if (v10)
  {
    v11 = [v9 guid];
    v12 = [v9 guid];
    v13 = [v11 substringWithRange:{3, objc_msgSend(v12, "length") - 3}];

    [MEMORY[0x1E69A5AE0] storeGUIDInAttemptingListInScrutinyMode:v13];
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Plugin: Storing attempt guid %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = [MEMORY[0x1E69A60F0] sharedInstance];
  if (![v15 isInternalInstall]|| !IMGetCachedDomainBoolForKey())
  {
    goto LABEL_25;
  }

  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v9 isCorrupt];
        v18 = @"NO";
        if (v17)
        {
          v18 = @"YES";
        }

        *buf = 138412546;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "DEBUG: Plugin:  message %@ isCorrupt %@", buf, 0x16u);
      }
    }

    v19 = [v9 isCorrupt];
    v20 = IMOSLoggingEnabled();
    if (!v19)
    {
      if (v20)
      {
        v51 = OSLogHandleForIMFoundationCategory();
        [CKTranscriptPluginChatItem loadSizeThatFits:v51 textAlignmentInsets:?];
      }

      abort();
    }

    if (v20)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Plugin: We are corrupt already, not crashing", buf, 2u);
      }

LABEL_25:
    }
  }

  v21 = [(CKTranscriptPluginChatItem *)self imTranscriptPluginChatItem];
  v22 = [v21 dataSource];

  if ([v22 supportsDynamicSize])
  {
    v23 = 0;
  }

  else
  {
    v23 = [v22 parentChatHasAllUnknownRecipients] ^ 1;
  }

  v24 = +[CKChatItemSizeCache sharedInstance];
  v25 = MEMORY[0x1E695F060];
  v52 = *MEMORY[0x1E695F060];
  v60 = *MEMORY[0x1E695F060];
  if ((v23 & [v24 cachedSizeForChatItem:self size:&v60 textAlignmentInsets:0 fittingSize:{width, height}]) == 1)
  {
    if (v13)
    {
      v26 = v10;
    }

    else
    {
      v26 = 0;
    }

    if (v26 == 1)
    {
      [MEMORY[0x1E69A5AE0] removeGUIDInAttemptingListInScrutinyMode:v13];
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v13;
          _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Plugin: Marked %@ as safe", buf, 0xCu);
        }
      }
    }

    v29 = *(&v60 + 1);
    v28 = *&v60;
  }

  else
  {
    v30 = [v22 bundleID];
    v31 = [(CKTranscriptPluginChatItem *)self shouldAllowExtraWidthForBundleID:v30];

    if (v31)
    {
      [(CKChatItem *)self originalMaxWidth];
    }

    else
    {
      [(CKChatItem *)self maxWidth];
    }

    v33 = v32;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3010000000;
    v64 = &unk_190F92BB2;
    v65 = v52;
    if (v22)
    {
      v34 = objc_opt_class();
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __67__CKTranscriptPluginChatItem_loadSizeThatFits_textAlignmentInsets___block_invoke;
      v55[3] = &unk_1E72F88B0;
      v56 = v22;
      v57 = self;
      v59 = v33;
      v58 = buf;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __67__CKTranscriptPluginChatItem_loadSizeThatFits_textAlignmentInsets___block_invoke_2;
      v53[3] = &unk_1E72F88D8;
      v54 = v56;
      CKEnforceAveragePerformanceOfBlock(20, v34, v55, v53, 2.0);
    }

    v35 = [(CKMessagePartChatItem *)self suggestedActionsList];
    if (v35)
    {
      v36 = *(*&buf[8] + 40) == v25[1] && *(*&buf[8] + 32) == *v25;

      if (!v36)
      {
        v37 = [(CKTranscriptPluginChatItem *)self cachedChatBotActionButton];
        v38 = v37 == 0;

        if (v38)
        {
          v39 = [CKChatBotActionButton alloc];
          v40 = [(CKMessagePartChatItem *)self suggestedActionsList];
          v41 = [(CKChatBotActionButton *)v39 initWithActions:v40 delegate:self backgroundStyle:1 showTitle:1];
          [(CKTranscriptPluginChatItem *)self setCachedChatBotActionButton:v41];
        }

        v42 = [(CKTranscriptPluginChatItem *)self cachedChatBotActionButton];
        [v42 setBounds:{0.0, 0.0, width, height}];

        v43 = +[CKUIBehavior sharedBehaviors];
        v44 = [(CKTranscriptPluginChatItem *)self cachedChatBotActionButton];
        [v43 suggestedActionsMenuAdditionalHeightWithChatBotActionButton:v44];
        v52 = v45;

        v46.f64[0] = 0.0;
        *&v46.f64[1] = v52;
        *(*&buf[8] + 32) = vaddq_f64(v46, *(*&buf[8] + 32));
      }
    }

    if (v23 && (*(*&buf[8] + 32) != *v25 || *(*&buf[8] + 40) != v25[1]))
    {
      [v24 setCachedSizeForChatItem:self size:v52 textAlignmentInsets:? fittingSize:?];
    }

    if (v13)
    {
      v47 = v10;
    }

    else
    {
      v47 = 0;
    }

    if (v47 == 1)
    {
      [MEMORY[0x1E69A5AE0] removeGUIDInAttemptingListInScrutinyMode:v13];
      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *v61 = 138412290;
          v62 = v13;
          _os_log_impl(&dword_19020E000, v48, OS_LOG_TYPE_INFO, "Plugin: Marked %@ as safe", v61, 0xCu);
        }
      }
    }

    v28 = *(*&buf[8] + 32);
    v29 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  v49 = v28;
  v50 = v29;
  result.height = v50;
  result.width = v49;
  return result;
}

void __67__CKTranscriptPluginChatItem_loadSizeThatFits_textAlignmentInsets___block_invoke(uint64_t a1)
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 extensionBalloonMaximumHeight];
  v4 = v3;

  v5 = [*(a1 + 32) bundleID];
  v6 = IMBalloonExtensionIDWithSuffix();
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v4 = 1.79769313e308;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) bundleID];
    LODWORD(v8) = [v8 shouldAllowExtraTallHeightForBundleID:v9];

    if (v8)
    {
      v10 = +[CKUIBehavior sharedBehaviors];
      [v10 extraTallExtensionBalloonMaximumHeight];
      v4 = v11;
    }
  }

  v12 = *(a1 + 56);
  [*(a1 + 40) pluginInsets];
  [*(a1 + 32) sizeThatFits:{v12 - (v13 + v14), v4 - (v15 + v16)}];
  v18 = v17;
  v20 = v19;
  [*(a1 + 40) pluginInsets];
  v25 = *(*(a1 + 48) + 8);
  *(v25 + 32) = v18 + v21 + v22;
  *(v25 + 40) = v20 + v23 + v24;
  v26 = *(*(a1 + 48) + 8);
  v27 = *(v26 + 32);
  if (v27 >= *(a1 + 56))
  {
    v27 = *(a1 + 56);
  }

  *(v26 + 32) = v27;
  v29 = +[CKUIBehavior sharedBehaviors];
  [v29 balloonMaskTailHeight];
  *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 48) + 8) + 40) - v28;
}

- (BOOL)canSendTapbacks
{
  v3 = [(CKTranscriptPluginChatItem *)self bundleIdentifier];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = CKTranscriptPluginChatItem;
  return [(CKMessagePartChatItem *)&v7 canSendTapbacks];
}

- (BOOL)shouldAllowExtraTallHeightForBundleID:(id)a3
{
  v11[6] = *MEMORY[0x1E69E9840];
  v11[0] = *MEMORY[0x1E69A68E8];
  v3 = a3;
  v4 = IMBalloonExtensionIDWithSuffix();
  v11[1] = v4;
  v5 = IMBalloonExtensionIDWithSuffix();
  v11[2] = v5;
  v6 = IMBalloonExtensionIDWithSuffix();
  v11[3] = v6;
  v7 = IMBalloonExtensionIDWithSuffix();
  v11[4] = v7;
  v8 = IMBalloonExtensionIDWithSuffix();
  v11[5] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  LOBYTE(v4) = [v9 containsObject:v3];
  return v4;
}

- (id)loadTranscriptDrawerText
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 timestampDateFormatter];

  v5 = [(CKMessagePartChatItem *)self time];
  v6 = [v4 stringFromDate:v5];

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 drawerTranscriptTextAttributes];

  if (v6)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:v8];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(CKMessagePartChatItem *)self time];
        v12 = [(CKChatItem *)self IMChatItem];
        v13 = [v12 guid];
        v15 = 138412546;
        v16 = v11;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "loadTranscriptDrawerText: nil timestamp for time: %@, IMChatItem guid: %@", &v15, 0x16u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (UIEdgeInsets)contentInsets
{
  if ([(CKTranscriptPluginChatItem *)self isHandwriting])
  {
    v3 = *MEMORY[0x1E69DDCE0];
    v4 = *(MEMORY[0x1E69DDCE0] + 8);
    v5 = *(MEMORY[0x1E69DDCE0] + 16);
    v6 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CKTranscriptPluginChatItem;
    [(CKBalloonChatItem *)&v7 contentInsets];
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)dragItemProvider
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(CKChatItem *)self IMChatItem];
  v4 = [v3 dataSource];

  if (v4)
  {
    v5 = [v4 pluginPayload];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 pluginBundleID];
      v8 = [v7 isEqualToString:*MEMORY[0x1E69A6A18]];

      v9 = [v6 pluginBundleID];
      LODWORD(v7) = [v9 isEqualToString:*MEMORY[0x1E69A69A8]];

      v10 = [v6 pluginBundleID];
      v11 = [v10 isEqualToString:*MEMORY[0x1E69A69E0]];

      if (((v8 | v7) & 1) != 0 || v11)
      {
        v12 = [(CKChatItem *)self transcriptIdentifier];
        v13 = [(CKTranscriptPluginChatItem *)self pluginDisplayContainerForContext:v12];

        if (!v13 && IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [(CKChatItem *)self transcriptIdentifier];
            v21 = 138412546;
            v22 = v4;
            v23 = 2112;
            v24 = v15;
            _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Got nil displayContainer for datasource %@ identifier %@", &v21, 0x16u);
          }
        }

        v16 = [v13 pasteboardItemProvider];
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v21 = 136315650;
            v22 = "[CKTranscriptPluginChatItem dragItemProvider]";
            v23 = 2112;
            v24 = v16;
            v25 = 2112;
            v26 = v4;
            _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "%s generated itemProvider %@ for %@", &v21, 0x20u);
          }
        }

        if (v16)
        {
          goto LABEL_29;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v21 = 138412290;
          v22 = v4;
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Got nil item provider from %@", &v21, 0xCu);
        }

LABEL_27:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Plugin chat item datasource payload is nil", &v21, 2u);
      }

      goto LABEL_27;
    }

    v16 = 0;
LABEL_29:

    goto LABEL_30;
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Plugin Chat item data source is nil!", &v21, 2u);
    }
  }

  v16 = 0;
LABEL_30:

  return v16;
}

- (BOOL)isPlayed
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 isPlayed];

  return v3;
}

- (BOOL)isSaved
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 isSaved];

  return v3;
}

- (void)relinquishBalloonControllerForContext:(id)a3
{
  v12 = a3;
  v4 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v5 = [(CKChatItem *)self IMChatItem];
  v6 = [v5 type];
  v7 = [v4 balloonPluginForBundleID:v6];

  v8 = [(CKChatItem *)self IMChatItem];
  v9 = [v8 dataSource];
  v10 = [v9 messageGUID];
  v11 = [v7 existingBalloonControllerWithMessageGUID:v10 contextIdentifier:v12];

  if (v11)
  {
    if ([v7 supportsControllerReuse])
    {
      [v4 pluginChatItem:v5 didRelinquishReusableController:v11 contextIdentifier:v12];
    }

    else if (CKIsRunningInMessagesTranscriptExtension())
    {
      [v4 pluginChatItem:v5 didRelenquishNonResuableController:v11 contextIdentifier:v12];
    }
  }
}

- (void)releaseBalloonControllerIfNeededForContext:(id)a3
{
  v12 = a3;
  v4 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v5 = [(CKChatItem *)self IMChatItem];
  v6 = [v5 type];
  v7 = [v4 balloonPluginForBundleID:v6];

  v8 = [(CKChatItem *)self IMChatItem];
  v9 = [v8 dataSource];
  v10 = [v9 messageGUID];
  v11 = [v7 existingBalloonControllerWithMessageGUID:v10 contextIdentifier:v12];

  if (v11 && ([v7 supportsControllerReuse] & 1) == 0)
  {
    [v4 pluginChatItem:v5 didRelenquishNonResuableController:v11 contextIdentifier:v12];
  }
}

- (void)performHostAppResumeWithContext:(id)a3
{
  v4 = MEMORY[0x1E69A5AD0];
  v5 = a3;
  v13 = [v4 sharedInstance];
  v6 = [(CKChatItem *)self IMChatItem];
  v7 = [v6 type];
  v8 = [v13 balloonPluginForBundleID:v7];

  v9 = [(CKChatItem *)self IMChatItem];
  v10 = [v9 dataSource];
  v11 = [v10 messageGUID];
  v12 = [v8 existingBalloonControllerWithMessageGUID:v11 contextIdentifier:v5];

  if (objc_opt_respondsToSelector())
  {
    [v12 performHostAppResume];
  }
}

- (void)loadSizeThatFits:(NSObject *)a1 textAlignmentInsets:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_19020E000, a1, OS_LOG_TYPE_INFO, "Plugin: INTERNAL POISON PILL PLUGIN TEST DETECTED - Crashing", v2, 2u);
  }
}

@end