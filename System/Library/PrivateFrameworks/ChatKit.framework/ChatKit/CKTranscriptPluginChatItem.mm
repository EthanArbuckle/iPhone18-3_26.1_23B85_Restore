@interface CKTranscriptPluginChatItem
- (BOOL)canCopy;
- (BOOL)canForward;
- (BOOL)canInlineReply;
- (BOOL)canPerformQuickAction;
- (BOOL)canSendTapbacks;
- (BOOL)hasTail;
- (BOOL)isPlayed;
- (BOOL)isSaved;
- (BOOL)shouldAllowExtraTallHeightForBundleID:(id)d;
- (BOOL)shouldShowGroupAvatar;
- (BOOL)shouldSnapshot;
- (BOOL)wantsPendingMessageStyle;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CKTranscriptPluginChatItem)initWithIMChatItem:(id)item maxWidth:(double)width;
- (Class)balloonViewClass;
- (NSString)bundleIdentifier;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)pluginInsets;
- (UIEdgeInsets)textAlignmentInsets;
- (char)transcriptOrientation;
- (double)balloonCornerRadius;
- (id)balloonControllerForContext:(id)context;
- (id)cellIdentifier;
- (id)compositionWithContext:(id)context;
- (id)contact;
- (id)contentViewControllerForContext:(id)context;
- (id)dragItemProvider;
- (id)extensibleViewControllerForContext:(id)context;
- (id)extensibleViewForContext:(id)context;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
- (id)loadTranscriptDrawerText;
- (id)message;
- (id)pluginDisplayContainerForContext:(id)context;
- (id)rtfDocumentItemsWithFormatString:(id)string selectedTextRange:(_NSRange)range;
- (id)sender;
- (id)snapshotGUIDForPluginPayload:(id)payload;
- (unint64_t)layoutType;
- (void)_cacheConversationID:(id)d recipients:(id)recipients isBusiness:(BOOL)business;
- (void)_configureBalloonController:(id)controller conversationID:(id)d recipients:(id)recipients isBusiness:(BOOL)business;
- (void)configureWithConversationID:(id)d recipients:(id)recipients isBusiness:(BOOL)business context:(id)context;
- (void)performHostAppResumeWithContext:(id)context;
- (void)releaseBalloonControllerIfNeededForContext:(id)context;
- (void)relinquishBalloonControllerForContext:(id)context;
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

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  height = override.height;
  width = override.width;
  environmentCopy = environment;
  itemsCopy = items;
  supplementryItemsCopy = supplementryItems;
  if ([(CKTranscriptPluginChatItem *)self isAppearing])
  {
    if (index >= 1 && ([itemsCopy objectAtIndex:index - 1], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v17 = v16;
      height = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v16 topSpacing:0.0 bottomSpacing:0.0];
    }

    else
    {
      height = 0;
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CKTranscriptPluginChatItem;
    height = [(CKChatItem *)&v20 layoutItemSpacingWithEnvironment:environmentCopy datasourceItemIndex:index allDatasourceItems:itemsCopy supplementryItems:supplementryItemsCopy sizeOverride:width, height];
  }

  return height;
}

- (id)compositionWithContext:(id)context
{
  v3 = [(CKTranscriptPluginChatItem *)self pluginDisplayContainerForContext:context];
  v4 = [CKComposition compositionWithPluginDisplayContainer:v3 subject:0];

  return v4;
}

- (CKTranscriptPluginChatItem)initWithIMChatItem:(id)item maxWidth:(double)width
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = CKTranscriptPluginChatItem;
  v7 = [(CKMessagePartChatItem *)&v11 initWithIMChatItem:itemCopy maxWidth:width];
  v8 = v7;
  if (v7)
  {
    [(CKTranscriptPluginChatItem *)v7 setImTranscriptPluginChatItem:itemCopy];
    type = [itemCopy type];
    v8->_isHandwriting = [type isEqualToString:*MEMORY[0x1E69A69E0]];
  }

  return v8;
}

- (id)extensibleViewForContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v5 = [(CKTranscriptPluginChatItem *)self balloonControllerForContext:contextCopy];
    pluginContentView = [v5 pluginContentView];
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

    pluginContentView = 0;
  }

  return pluginContentView;
}

- (id)extensibleViewControllerForContext:(id)context
{
  v3 = [(CKTranscriptPluginChatItem *)self balloonControllerForContext:context];
  if (objc_opt_respondsToSelector())
  {
    pluginContentViewController = [v3 pluginContentViewController];
  }

  else
  {
    pluginContentViewController = 0;
  }

  return pluginContentViewController;
}

- (id)contentViewControllerForContext:(id)context
{
  v3 = [(CKTranscriptPluginChatItem *)self balloonControllerForContext:context];
  if (objc_opt_respondsToSelector())
  {
    contentViewController = [v3 contentViewController];
  }

  else
  {
    contentViewController = 0;
  }

  return contentViewController;
}

- (double)balloonCornerRadius
{
  imTranscriptPluginChatItem = [(CKTranscriptPluginChatItem *)self imTranscriptPluginChatItem];
  dataSource = [imTranscriptPluginChatItem dataSource];

  bundleID = [dataSource bundleID];
  v6 = IMBalloonExtensionIDWithSuffix();
  v7 = [bundleID isEqualToString:v6];

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

- (id)balloonControllerForContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
    imTranscriptPluginChatItem = [(CKTranscriptPluginChatItem *)self imTranscriptPluginChatItem];
    v7 = [mEMORY[0x1E69A5AD0] balloonControllerForIMChatItem:imTranscriptPluginChatItem contextIdentifier:contextCopy];

    if (v7)
    {
      conversationID = [(CKTranscriptPluginChatItem *)self conversationID];
      recipients = [(CKTranscriptPluginChatItem *)self recipients];
      [(CKTranscriptPluginChatItem *)self _configureBalloonController:v7 conversationID:conversationID recipients:recipients isBusiness:[(CKTranscriptPluginChatItem *)self isBusiness]];

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

- (void)configureWithConversationID:(id)d recipients:(id)recipients isBusiness:(BOOL)business context:(id)context
{
  businessCopy = business;
  contextCopy = context;
  recipientsCopy = recipients;
  dCopy = d;
  [(CKTranscriptPluginChatItem *)self _cacheConversationID:dCopy recipients:recipientsCopy isBusiness:businessCopy];
  v13 = [(CKTranscriptPluginChatItem *)self balloonControllerForContext:contextCopy];

  [(CKTranscriptPluginChatItem *)self _configureBalloonController:v13 conversationID:dCopy recipients:recipientsCopy isBusiness:businessCopy];
}

- (void)_configureBalloonController:(id)controller conversationID:(id)d recipients:(id)recipients isBusiness:(BOOL)business
{
  businessCopy = business;
  controllerCopy = controller;
  dCopy = d;
  recipientsCopy = recipients;
  if (businessCopy)
  {
    iMChatItem = [(CKChatItem *)self IMChatItem];
    isAllowlistedRichLinkSender = [iMChatItem isAllowlistedRichLinkSender];

    if (isAllowlistedRichLinkSender)
    {
      if (objc_opt_respondsToSelector())
      {
        [controllerCopy setAllowsOpeningSensitiveURLs:1];
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [controllerCopy configureWithConversationID:dCopy recipients:recipientsCopy];
  }
}

- (void)_cacheConversationID:(id)d recipients:(id)recipients isBusiness:(BOOL)business
{
  businessCopy = business;
  recipientsCopy = recipients;
  [(CKTranscriptPluginChatItem *)self setConversationID:d];
  [(CKTranscriptPluginChatItem *)self setRecipients:recipientsCopy];

  [(CKTranscriptPluginChatItem *)self setIsBusiness:businessCopy];
}

- (NSString)bundleIdentifier
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  dataSource = [iMChatItem dataSource];
  pluginPayload = [dataSource pluginPayload];

  pluginBundleID = [pluginPayload pluginBundleID];

  return pluginBundleID;
}

- (BOOL)canPerformQuickAction
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    iMChatItem2 = [(CKChatItem *)self IMChatItem];
    messageItem = [iMChatItem2 messageItem];

    swyBundleID = [messageItem swyBundleID];
    if (swyBundleID)
    {
      mEMORY[0x1E69A8288] = [MEMORY[0x1E69A8288] sharedManager];
      v9 = [mEMORY[0x1E69A8288] showPinningStatusTextForBundleID:swyBundleID];

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
  iMChatItem = [(CKChatItem *)self IMChatItem];
  type = [iMChatItem type];
  v5 = [type containsString:*MEMORY[0x1E69A69F0]];

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
  iMChatItem = [(CKChatItem *)self IMChatItem];
  type = [iMChatItem type];
  v5 = [type containsString:*MEMORY[0x1E69A69F0]];

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
  iMChatItem = [(CKChatItem *)self IMChatItem];
  if ([iMChatItem canReply])
  {
    if ([(CKMessagePartChatItem *)self isReply])
    {
      v4 = 1;
    }

    else
    {
      iMChatItem2 = [(CKChatItem *)self IMChatItem];
      type = [iMChatItem2 type];
      v4 = [type containsString:*MEMORY[0x1E69A6A18]];
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
  iMChatItem = [(CKChatItem *)self IMChatItem];
  message = [iMChatItem message];

  return message;
}

- (id)pluginDisplayContainerForContext:(id)context
{
  v78 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy)
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

  iMChatItem = [(CKChatItem *)self IMChatItem];
  dataSource = [iMChatItem dataSource];
  pluginPayload = [dataSource pluginPayload];

  if (!pluginPayload)
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

  cleansedCopy = [pluginPayload cleansedCopy];

  v9 = [(CKTranscriptPluginChatItem *)self snapshotGUIDForPluginPayload:cleansedCopy];
  v10 = [CKSnapshotUtilities snapshotForGUID:v9];
  image = [v10 image];

  if (image && ([v10 image], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v14 = [(CKTranscriptPluginChatItem *)self extensibleViewForContext:contextCopy];
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
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v30 = v29;
      v81.width = v25;
      v81.height = v27;
      UIGraphicsBeginImageContextWithOptions(v81, 0, v30);

      v57 = [(CKTranscriptPluginChatItem *)self balloonControllerForContext:contextCopy];
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
  transcriptTraitCollection = [(CKChatItem *)self transcriptTraitCollection];
  v42 = CKBackgroundLevelForTraitCollection(transcriptTraitCollection);
  userInterfaceStyle = [transcriptTraitCollection userInterfaceStyle];
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
  v72 = userInterfaceStyle;
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
  v23 = [CKPluginDisplayContainer pluginDisplayContainerWithPluginPayload:cleansedCopy composeImage:v55];

LABEL_35:

  return v23;
}

- (id)rtfDocumentItemsWithFormatString:(id)string selectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  transcriptIdentifier = [(CKChatItem *)self transcriptIdentifier];
  v9 = [(CKTranscriptPluginChatItem *)self pluginDisplayContainerForContext:transcriptIdentifier];

  v10 = [v9 rtfDocumentItemsWithFormatString:stringCopy selectedTextRange:{location, length}];

  return v10;
}

- (id)sender
{
  message = [(CKTranscriptPluginChatItem *)self message];
  sender = [message sender];

  return sender;
}

- (id)contact
{
  sender = [(CKTranscriptPluginChatItem *)self sender];
  v3 = [[CKEntity alloc] initWithIMHandle:sender];
  cnContact = [(CKEntity *)v3 cnContact];

  return cnContact;
}

- (id)cellIdentifier
{
  balloonViewClass = [(CKTranscriptPluginChatItem *)self balloonViewClass];

  return NSStringFromClass(balloonViewClass);
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
  imTranscriptPluginChatItem = [(CKTranscriptPluginChatItem *)self imTranscriptPluginChatItem];
  dataSource = [imTranscriptPluginChatItem dataSource];

  pluginPayload = [dataSource pluginPayload];
  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  pluginBundleID = [pluginPayload pluginBundleID];
  v8 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:pluginBundleID];

  bundleID = [dataSource bundleID];
  v10 = IMBalloonExtensionIDWithSuffix();
  v11 = [bundleID isEqualToString:v10];

  if (v11 & 1) != 0 || ([v8 linkedBeforeSDKVersion:@"19.0"])
  {
    hasTail = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CKTranscriptPluginChatItem;
    hasTail = [(CKChatItem *)&v14 hasTail];
  }

  return hasTail;
}

- (BOOL)shouldShowGroupAvatar
{
  v3.receiver = self;
  v3.super_class = CKTranscriptPluginChatItem;
  return [(CKChatItem *)&v3 hasTail];
}

- (BOOL)shouldSnapshot
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  dataSource = [iMChatItem dataSource];
  pluginPayload = [dataSource pluginPayload];

  imTranscriptPluginChatItem = [(CKTranscriptPluginChatItem *)self imTranscriptPluginChatItem];
  dataSource2 = [imTranscriptPluginChatItem dataSource];
  supportsDynamicSize = [dataSource2 supportsDynamicSize];

  v9 = [(CKTranscriptPluginChatItem *)self snapshotGUIDForPluginPayload:pluginPayload];
  v10 = (supportsDynamicSize & 1) == 0 && [CKSnapshotUtilities snapshotExistsForGUID:v9];

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

- (id)snapshotGUIDForPluginPayload:(id)payload
{
  payloadCopy = payload;
  messageGUID = [payloadCopy messageGUID];
  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  pluginBundleID = [payloadCopy pluginBundleID];

  v7 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:pluginBundleID];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    isEnabled = [v8 isEnabled];
    if (CKShouldShowSURF())
    {
      if (isEnabled)
      {
LABEL_10:
        v11 = @"-enabled";
        goto LABEL_11;
      }
    }

    else
    {
      identifier = [v8 identifier];
      if (![identifier hasSuffix:*MEMORY[0x1E69A6A38]])
      {
        identifier2 = [v8 identifier];
        v13 = [identifier2 hasSuffix:*MEMORY[0x1E69A6A40]];

        v11 = @"-disabled";
        if (v13 & 1) != 0 || ((isEnabled ^ 1))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    v11 = @"-disabled";
LABEL_11:
    v14 = [messageGUID stringByAppendingString:v11];

    messageGUID = v14;
  }

  return messageGUID;
}

- (char)transcriptOrientation
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isFromMe = [iMChatItem isFromMe];

  if (isFromMe)
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
  messageItem = [(CKMessagePartChatItem *)self messageItem];
  isPendingSatelliteSend = [messageItem isPendingSatelliteSend];

  if (isPendingSatelliteSend)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    messageItem2 = [(CKMessagePartChatItem *)self messageItem];
    scheduleType = [messageItem2 scheduleType];

    if (scheduleType == 2)
    {
      messageItem3 = [(CKMessagePartChatItem *)self messageItem];
      scheduleState = [messageItem3 scheduleState];

      v5 = 0x36u >> scheduleState;
      if (scheduleState > 5)
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

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  v66 = *MEMORY[0x1E69E9840];
  if (insets)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    *&insets->top = *MEMORY[0x1E69DDCE0];
    *&insets->bottom = v7;
  }

  iMChatItem = [(CKChatItem *)self IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    iMChatItem2 = [(CKChatItem *)self IMChatItem];
  }

  else
  {
    iMChatItem2 = 0;
  }

  chatInScrutinyMode = [iMChatItem2 chatInScrutinyMode];
  if (chatInScrutinyMode)
  {
    guid = [iMChatItem2 guid];
    guid2 = [iMChatItem2 guid];
    v13 = [guid substringWithRange:{3, objc_msgSend(guid2, "length") - 3}];

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

  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if (![mEMORY[0x1E69A60F0] isInternalInstall]|| !IMGetCachedDomainBoolForKey())
  {
    goto LABEL_25;
  }

  if (iMChatItem2)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        isCorrupt = [iMChatItem2 isCorrupt];
        v18 = @"NO";
        if (isCorrupt)
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

    isCorrupt2 = [iMChatItem2 isCorrupt];
    v20 = IMOSLoggingEnabled();
    if (!isCorrupt2)
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
      mEMORY[0x1E69A60F0] = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(mEMORY[0x1E69A60F0], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, mEMORY[0x1E69A60F0], OS_LOG_TYPE_INFO, "Plugin: We are corrupt already, not crashing", buf, 2u);
      }

LABEL_25:
    }
  }

  imTranscriptPluginChatItem = [(CKTranscriptPluginChatItem *)self imTranscriptPluginChatItem];
  dataSource = [imTranscriptPluginChatItem dataSource];

  if ([dataSource supportsDynamicSize])
  {
    v23 = 0;
  }

  else
  {
    v23 = [dataSource parentChatHasAllUnknownRecipients] ^ 1;
  }

  v24 = +[CKChatItemSizeCache sharedInstance];
  v25 = MEMORY[0x1E695F060];
  v52 = *MEMORY[0x1E695F060];
  v60 = *MEMORY[0x1E695F060];
  if ((v23 & [v24 cachedSizeForChatItem:self size:&v60 textAlignmentInsets:0 fittingSize:{width, height}]) == 1)
  {
    if (v13)
    {
      v26 = chatInScrutinyMode;
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
    bundleID = [dataSource bundleID];
    v31 = [(CKTranscriptPluginChatItem *)self shouldAllowExtraWidthForBundleID:bundleID];

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
    if (dataSource)
    {
      v34 = objc_opt_class();
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __67__CKTranscriptPluginChatItem_loadSizeThatFits_textAlignmentInsets___block_invoke;
      v55[3] = &unk_1E72F88B0;
      v56 = dataSource;
      selfCopy = self;
      v59 = v33;
      v58 = buf;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __67__CKTranscriptPluginChatItem_loadSizeThatFits_textAlignmentInsets___block_invoke_2;
      v53[3] = &unk_1E72F88D8;
      v54 = v56;
      CKEnforceAveragePerformanceOfBlock(20, v34, v55, v53, 2.0);
    }

    suggestedActionsList = [(CKMessagePartChatItem *)self suggestedActionsList];
    if (suggestedActionsList)
    {
      v36 = *(*&buf[8] + 40) == v25[1] && *(*&buf[8] + 32) == *v25;

      if (!v36)
      {
        cachedChatBotActionButton = [(CKTranscriptPluginChatItem *)self cachedChatBotActionButton];
        v38 = cachedChatBotActionButton == 0;

        if (v38)
        {
          v39 = [CKChatBotActionButton alloc];
          suggestedActionsList2 = [(CKMessagePartChatItem *)self suggestedActionsList];
          v41 = [(CKChatBotActionButton *)v39 initWithActions:suggestedActionsList2 delegate:self backgroundStyle:1 showTitle:1];
          [(CKTranscriptPluginChatItem *)self setCachedChatBotActionButton:v41];
        }

        cachedChatBotActionButton2 = [(CKTranscriptPluginChatItem *)self cachedChatBotActionButton];
        [cachedChatBotActionButton2 setBounds:{0.0, 0.0, width, height}];

        v43 = +[CKUIBehavior sharedBehaviors];
        cachedChatBotActionButton3 = [(CKTranscriptPluginChatItem *)self cachedChatBotActionButton];
        [v43 suggestedActionsMenuAdditionalHeightWithChatBotActionButton:cachedChatBotActionButton3];
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
      v47 = chatInScrutinyMode;
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
  bundleIdentifier = [(CKTranscriptPluginChatItem *)self bundleIdentifier];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [bundleIdentifier isEqualToString:v4];

  if (v5)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = CKTranscriptPluginChatItem;
  return [(CKMessagePartChatItem *)&v7 canSendTapbacks];
}

- (BOOL)shouldAllowExtraTallHeightForBundleID:(id)d
{
  v11[6] = *MEMORY[0x1E69E9840];
  v11[0] = *MEMORY[0x1E69A68E8];
  dCopy = d;
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

  LOBYTE(v4) = [v9 containsObject:dCopy];
  return v4;
}

- (id)loadTranscriptDrawerText
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  timestampDateFormatter = [v3 timestampDateFormatter];

  time = [(CKMessagePartChatItem *)self time];
  v6 = [timestampDateFormatter stringFromDate:time];

  v7 = +[CKUIBehavior sharedBehaviors];
  drawerTranscriptTextAttributes = [v7 drawerTranscriptTextAttributes];

  if (v6)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:drawerTranscriptTextAttributes];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        time2 = [(CKMessagePartChatItem *)self time];
        iMChatItem = [(CKChatItem *)self IMChatItem];
        guid = [iMChatItem guid];
        v15 = 138412546;
        v16 = time2;
        v17 = 2112;
        v18 = guid;
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
  iMChatItem = [(CKChatItem *)self IMChatItem];
  dataSource = [iMChatItem dataSource];

  if (dataSource)
  {
    pluginPayload = [dataSource pluginPayload];
    v6 = pluginPayload;
    if (pluginPayload)
    {
      pluginBundleID = [pluginPayload pluginBundleID];
      v8 = [pluginBundleID isEqualToString:*MEMORY[0x1E69A6A18]];

      pluginBundleID2 = [v6 pluginBundleID];
      LODWORD(pluginBundleID) = [pluginBundleID2 isEqualToString:*MEMORY[0x1E69A69A8]];

      pluginBundleID3 = [v6 pluginBundleID];
      v11 = [pluginBundleID3 isEqualToString:*MEMORY[0x1E69A69E0]];

      if (((v8 | pluginBundleID) & 1) != 0 || v11)
      {
        transcriptIdentifier = [(CKChatItem *)self transcriptIdentifier];
        v13 = [(CKTranscriptPluginChatItem *)self pluginDisplayContainerForContext:transcriptIdentifier];

        if (!v13 && IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            transcriptIdentifier2 = [(CKChatItem *)self transcriptIdentifier];
            v21 = 138412546;
            v22 = dataSource;
            v23 = 2112;
            v24 = transcriptIdentifier2;
            _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Got nil displayContainer for datasource %@ identifier %@", &v21, 0x16u);
          }
        }

        pasteboardItemProvider = [v13 pasteboardItemProvider];
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v21 = 136315650;
            v22 = "[CKTranscriptPluginChatItem dragItemProvider]";
            v23 = 2112;
            v24 = pasteboardItemProvider;
            v25 = 2112;
            v26 = dataSource;
            _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "%s generated itemProvider %@ for %@", &v21, 0x20u);
          }
        }

        if (pasteboardItemProvider)
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
          v22 = dataSource;
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

    pasteboardItemProvider = 0;
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

  pasteboardItemProvider = 0;
LABEL_30:

  return pasteboardItemProvider;
}

- (BOOL)isPlayed
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isPlayed = [iMChatItem isPlayed];

  return isPlayed;
}

- (BOOL)isSaved
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isSaved = [iMChatItem isSaved];

  return isSaved;
}

- (void)relinquishBalloonControllerForContext:(id)context
{
  contextCopy = context;
  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  iMChatItem = [(CKChatItem *)self IMChatItem];
  type = [iMChatItem type];
  v7 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:type];

  iMChatItem2 = [(CKChatItem *)self IMChatItem];
  dataSource = [iMChatItem2 dataSource];
  messageGUID = [dataSource messageGUID];
  v11 = [v7 existingBalloonControllerWithMessageGUID:messageGUID contextIdentifier:contextCopy];

  if (v11)
  {
    if ([v7 supportsControllerReuse])
    {
      [mEMORY[0x1E69A5AD0] pluginChatItem:iMChatItem didRelinquishReusableController:v11 contextIdentifier:contextCopy];
    }

    else if (CKIsRunningInMessagesTranscriptExtension())
    {
      [mEMORY[0x1E69A5AD0] pluginChatItem:iMChatItem didRelenquishNonResuableController:v11 contextIdentifier:contextCopy];
    }
  }
}

- (void)releaseBalloonControllerIfNeededForContext:(id)context
{
  contextCopy = context;
  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  iMChatItem = [(CKChatItem *)self IMChatItem];
  type = [iMChatItem type];
  v7 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:type];

  iMChatItem2 = [(CKChatItem *)self IMChatItem];
  dataSource = [iMChatItem2 dataSource];
  messageGUID = [dataSource messageGUID];
  v11 = [v7 existingBalloonControllerWithMessageGUID:messageGUID contextIdentifier:contextCopy];

  if (v11 && ([v7 supportsControllerReuse] & 1) == 0)
  {
    [mEMORY[0x1E69A5AD0] pluginChatItem:iMChatItem didRelenquishNonResuableController:v11 contextIdentifier:contextCopy];
  }
}

- (void)performHostAppResumeWithContext:(id)context
{
  v4 = MEMORY[0x1E69A5AD0];
  contextCopy = context;
  sharedInstance = [v4 sharedInstance];
  iMChatItem = [(CKChatItem *)self IMChatItem];
  type = [iMChatItem type];
  v8 = [sharedInstance balloonPluginForBundleID:type];

  iMChatItem2 = [(CKChatItem *)self IMChatItem];
  dataSource = [iMChatItem2 dataSource];
  messageGUID = [dataSource messageGUID];
  v12 = [v8 existingBalloonControllerWithMessageGUID:messageGUID contextIdentifier:contextCopy];

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