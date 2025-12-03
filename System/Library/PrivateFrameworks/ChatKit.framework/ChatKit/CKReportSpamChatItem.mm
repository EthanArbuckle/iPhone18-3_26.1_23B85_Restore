@interface CKReportSpamChatItem
- (BOOL)canUnsubscribe;
- (BOOL)hasMultipleMessages;
- (BOOL)isBusinessChat;
- (BOOL)isGroupChat;
- (BOOL)showReportSMSSpam;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (NSAttributedString)internalPhishingWarning;
- (NSAttributedString)transcriptButtonText;
- (id)filterExtension;
- (id)loadTranscriptText;
- (id)transcriptTextForSpam:(BOOL)spam;
@end

@implementation CKReportSpamChatItem

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  sizingCell = self->_sizingCell;
  if (!sizingCell)
  {
    v8 = objc_alloc_init(CKTranscriptReportSpamCell);
    v9 = self->_sizingCell;
    self->_sizingCell = v8;

    sizingCell = self->_sizingCell;
  }

  [(CKTranscriptReportSpamCell *)sizingCell configureForChatItem:self context:0 animated:0 animationDuration:3 animationCurve:0.0];
  v10 = self->_sizingCell;

  [(CKTranscriptReportSpamCell *)v10 sizeThatFits:width, height];
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v3 transcriptEmphasizedFontAttributes];

  if ([(CKReportSpamChatItem *)self isGroupChat])
  {
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    v6 = CKFrameworkBundle();
    v7 = v6;
    v8 = @"REPORT_SPAM_GROUP_STATUS";
  }

  else if ([(CKReportSpamChatItem *)self isBusinessChat])
  {
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    v6 = CKFrameworkBundle();
    v7 = v6;
    v8 = @"REPORT_SPAM_BUSINESS_STATUS";
  }

  else
  {
    filterExtension = [(CKReportSpamChatItem *)self filterExtension];

    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (filterExtension)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = CKFrameworkBundle();
      v12 = [v11 localizedStringForKey:@"REPORT_SPAM_FILTER_EXTENSION" value:&stru_1F04268F8 table:@"ChatKit"];
      filterExtension2 = [(CKReportSpamChatItem *)self filterExtension];
      v14 = [v10 stringWithFormat:v12, filterExtension2];

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection == 1)
      {
        v17 = @"\u200F";
      }

      else
      {
        v17 = @"\u200E";
      }

      v7 = [(__CFString *)v17 stringByAppendingString:v14];

      v18 = [v5 initWithString:v7 attributes:transcriptEmphasizedFontAttributes];
      goto LABEL_12;
    }

    v6 = CKFrameworkBundle();
    v7 = v6;
    v8 = @"REPORT_SPAM_STATUS";
  }

  v19 = [v6 localizedStringForKey:v8 value:&stru_1F04268F8 table:@"ChatKit"];
  v18 = [v5 initWithString:v19 attributes:transcriptEmphasizedFontAttributes];

LABEL_12:

  return v18;
}

- (id)transcriptTextForSpam:(BOOL)spam
{
  if ([(CKReportSpamChatItem *)self isGroupChat])
  {
    v5 = CKFrameworkBundle();
    if (!spam)
    {
      v6 = @"REPORT_SPAM_GROUP_STATUS";
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  isBusinessChat = [(CKReportSpamChatItem *)self isBusinessChat];
  v5 = CKFrameworkBundle();
  if (isBusinessChat)
  {
    if (!spam)
    {
      v6 = @"REPORT_SPAM_BUSINESS_STATUS";
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (spam)
  {
LABEL_8:
    v6 = @"REPORTED_SPAM_STATUS";
    goto LABEL_9;
  }

  v6 = @"REPORT_SPAM_STATUS";
LABEL_9:
  v8 = [v5 localizedStringForKey:v6 value:&stru_1F04268F8 table:@"ChatKit"];

  return v8;
}

- (NSAttributedString)transcriptButtonText
{
  transcriptButtonText = self->_transcriptButtonText;
  if (!transcriptButtonText)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    centerTranscriptButtonTextAttributes = [v4 centerTranscriptButtonTextAttributes];

    if ([(CKReportSpamChatItem *)self showReportSMSSpam])
    {
      if (![(CKReportSpamChatItem *)self hasMultipleMessages])
      {
        v7 = objc_alloc(MEMORY[0x1E696AAB0]);
        v11 = CKFrameworkBundle();
        v8 = v11;
        v9 = @"REPORT_SPAM_SMS_BUTTON_TITLE_SINGULAR";
LABEL_11:
        v12 = [v11 localizedStringForKey:v9 value:&stru_1F04268F8 table:@"ChatKit"];
        v13 = [v7 initWithString:v12 attributes:centerTranscriptButtonTextAttributes];
        v14 = self->_transcriptButtonText;
        self->_transcriptButtonText = v13;

        transcriptButtonText = self->_transcriptButtonText;
        goto LABEL_12;
      }

      canUnsubscribe = [(CKReportSpamChatItem *)self canUnsubscribe];
      v7 = objc_alloc(MEMORY[0x1E696AAB0]);
      v8 = CKFrameworkBundle();
      if (!canUnsubscribe)
      {
        v9 = @"REPORT_SPAM_SMS_BUTTON_TITLE_ALL";
LABEL_10:
        v11 = v8;
        goto LABEL_11;
      }
    }

    else
    {
      canUnsubscribe2 = [(CKReportSpamChatItem *)self canUnsubscribe];
      v7 = objc_alloc(MEMORY[0x1E696AAB0]);
      v8 = CKFrameworkBundle();
      if (!canUnsubscribe2)
      {
        v9 = @"REPORT_SPAM_BUTTON_TITLE";
        goto LABEL_10;
      }
    }

    v9 = @"UNSUBSCRIBE_REPORT_SPAM_BUTTON_TITLE";
    goto LABEL_10;
  }

LABEL_12:

  return transcriptButtonText;
}

- (NSAttributedString)internalPhishingWarning
{
  v2 = +[CKUIBehavior sharedBehaviors];
  phishingWarningTextAttributes = [v2 phishingWarningTextAttributes];

  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v5 = [v4 initWithString:*MEMORY[0x1E69A7DC8] attributes:phishingWarningTextAttributes];

  return v5;
}

- (BOOL)isGroupChat
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isGroupMessage = [iMChatItem isGroupMessage];

  return isGroupMessage;
}

- (BOOL)hasMultipleMessages
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  hasMultipleMessages = [iMChatItem hasMultipleMessages];

  return hasMultipleMessages;
}

- (BOOL)showReportSMSSpam
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  showReportSMSSpam = [iMChatItem showReportSMSSpam];

  return showReportSMSSpam;
}

- (BOOL)isBusinessChat
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isBusinessChat = [iMChatItem isBusinessChat];

  return isBusinessChat;
}

- (BOOL)canUnsubscribe
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isReportJunkEverywhereEnabled = [mEMORY[0x1E69A8070] isReportJunkEverywhereEnabled];

  if (!isReportJunkEverywhereEnabled)
  {
    return 0;
  }

  iMChatItem = [(CKChatItem *)self IMChatItem];
  canUnsubscribe = [iMChatItem canUnsubscribe];

  return canUnsubscribe;
}

- (id)filterExtension
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  filterExtension = [iMChatItem filterExtension];

  return filterExtension;
}

@end