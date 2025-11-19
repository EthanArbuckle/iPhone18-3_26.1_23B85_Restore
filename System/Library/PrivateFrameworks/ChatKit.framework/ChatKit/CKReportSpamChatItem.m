@interface CKReportSpamChatItem
- (BOOL)canUnsubscribe;
- (BOOL)hasMultipleMessages;
- (BOOL)isBusinessChat;
- (BOOL)isGroupChat;
- (BOOL)showReportSMSSpam;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (NSAttributedString)internalPhishingWarning;
- (NSAttributedString)transcriptButtonText;
- (id)filterExtension;
- (id)loadTranscriptText;
- (id)transcriptTextForSpam:(BOOL)a3;
@end

@implementation CKReportSpamChatItem

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
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
  v4 = [v3 transcriptEmphasizedFontAttributes];

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
    v9 = [(CKReportSpamChatItem *)self filterExtension];

    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (v9)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = CKFrameworkBundle();
      v12 = [v11 localizedStringForKey:@"REPORT_SPAM_FILTER_EXTENSION" value:&stru_1F04268F8 table:@"ChatKit"];
      v13 = [(CKReportSpamChatItem *)self filterExtension];
      v14 = [v10 stringWithFormat:v12, v13];

      v15 = [MEMORY[0x1E69DC668] sharedApplication];
      v16 = [v15 userInterfaceLayoutDirection];

      if (v16 == 1)
      {
        v17 = @"\u200F";
      }

      else
      {
        v17 = @"\u200E";
      }

      v7 = [(__CFString *)v17 stringByAppendingString:v14];

      v18 = [v5 initWithString:v7 attributes:v4];
      goto LABEL_12;
    }

    v6 = CKFrameworkBundle();
    v7 = v6;
    v8 = @"REPORT_SPAM_STATUS";
  }

  v19 = [v6 localizedStringForKey:v8 value:&stru_1F04268F8 table:@"ChatKit"];
  v18 = [v5 initWithString:v19 attributes:v4];

LABEL_12:

  return v18;
}

- (id)transcriptTextForSpam:(BOOL)a3
{
  if ([(CKReportSpamChatItem *)self isGroupChat])
  {
    v5 = CKFrameworkBundle();
    if (!a3)
    {
      v6 = @"REPORT_SPAM_GROUP_STATUS";
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = [(CKReportSpamChatItem *)self isBusinessChat];
  v5 = CKFrameworkBundle();
  if (v7)
  {
    if (!a3)
    {
      v6 = @"REPORT_SPAM_BUSINESS_STATUS";
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a3)
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
    v5 = [v4 centerTranscriptButtonTextAttributes];

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
        v13 = [v7 initWithString:v12 attributes:v5];
        v14 = self->_transcriptButtonText;
        self->_transcriptButtonText = v13;

        transcriptButtonText = self->_transcriptButtonText;
        goto LABEL_12;
      }

      v6 = [(CKReportSpamChatItem *)self canUnsubscribe];
      v7 = objc_alloc(MEMORY[0x1E696AAB0]);
      v8 = CKFrameworkBundle();
      if (!v6)
      {
        v9 = @"REPORT_SPAM_SMS_BUTTON_TITLE_ALL";
LABEL_10:
        v11 = v8;
        goto LABEL_11;
      }
    }

    else
    {
      v10 = [(CKReportSpamChatItem *)self canUnsubscribe];
      v7 = objc_alloc(MEMORY[0x1E696AAB0]);
      v8 = CKFrameworkBundle();
      if (!v10)
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
  v3 = [v2 phishingWarningTextAttributes];

  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v5 = [v4 initWithString:*MEMORY[0x1E69A7DC8] attributes:v3];

  return v5;
}

- (BOOL)isGroupChat
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 isGroupMessage];

  return v3;
}

- (BOOL)hasMultipleMessages
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 hasMultipleMessages];

  return v3;
}

- (BOOL)showReportSMSSpam
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 showReportSMSSpam];

  return v3;
}

- (BOOL)isBusinessChat
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 isBusinessChat];

  return v3;
}

- (BOOL)canUnsubscribe
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isReportJunkEverywhereEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CKChatItem *)self IMChatItem];
  v6 = [v5 canUnsubscribe];

  return v6;
}

- (id)filterExtension
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 filterExtension];

  return v3;
}

@end