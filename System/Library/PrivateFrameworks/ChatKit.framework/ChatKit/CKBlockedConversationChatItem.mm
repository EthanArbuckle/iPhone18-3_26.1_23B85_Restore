@interface CKBlockedConversationChatItem
- (BOOL)hasMultipleBlockedRecipients;
- (BOOL)isGroupChat;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (NSAttributedString)transcriptButtonText;
- (NSString)blockedRecipients;
- (id)loadTranscriptText;
@end

@implementation CKBlockedConversationChatItem

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  sizingCell = self->_sizingCell;
  if (!sizingCell)
  {
    v8 = objc_alloc_init(CKTranscriptBlockedConversationCell);
    v9 = self->_sizingCell;
    self->_sizingCell = v8;

    sizingCell = self->_sizingCell;
  }

  [(CKTranscriptBlockedConversationCell *)sizingCell configureForChatItem:self context:0 animated:0 animationDuration:3 animationCurve:0.0];
  v10 = self->_sizingCell;

  [(CKTranscriptBlockedConversationCell *)v10 sizeThatFits:width, height];
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v3 transcriptEmphasizedFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularPreferredFontAttributes = [v5 transcriptRegularPreferredFontAttributes];

  blockedRecipients = [(CKBlockedConversationChatItem *)self blockedRecipients];
  if ([(CKBlockedConversationChatItem *)self isGroupChat]&& blockedRecipients)
  {
    hasMultipleBlockedRecipients = [(CKBlockedConversationChatItem *)self hasMultipleBlockedRecipients];
    v9 = CKFrameworkBundle();
    v10 = v9;
    if (hasMultipleBlockedRecipients)
    {
      v11 = @"BLOCKED_CONVERSATION_GROUP_PLURAL";
    }

    else
    {
      v11 = @"BLOCKED_CONVERSATION_GROUP_SINGULAR";
    }

    v12 = [v9 localizedStringForKey:v11 value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(transcriptRegularPreferredFontAttributes, transcriptEmphasizedFontAttributes, v12, v18, v19, v20, v21, v22, blockedRecipients);
  }

  else
  {
    v10 = CKFrameworkBundle();
    v12 = [v10 localizedStringForKey:@"BLOCKED_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(transcriptRegularPreferredFontAttributes, transcriptEmphasizedFontAttributes, v12, v13, v14, v15, v16, v17, 0);
  }
  v23 = ;

  return v23;
}

- (NSAttributedString)transcriptButtonText
{
  transcriptButtonText = self->_transcriptButtonText;
  if (!transcriptButtonText)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    centerTranscriptButtonTextAttributes = [v4 centerTranscriptButtonTextAttributes];

    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"LEAVE_CONVERSATION_TRANSCRIPT" value:&stru_1F04268F8 table:@"ChatKit"];
    v9 = [v6 initWithString:v8 attributes:centerTranscriptButtonTextAttributes];
    v10 = self->_transcriptButtonText;
    self->_transcriptButtonText = v9;

    transcriptButtonText = self->_transcriptButtonText;
  }

  return transcriptButtonText;
}

- (BOOL)isGroupChat
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isGroupMessage = [iMChatItem isGroupMessage];

  return isGroupMessage;
}

- (BOOL)hasMultipleBlockedRecipients
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  blockedRecipients = [iMChatItem blockedRecipients];
  v4 = [blockedRecipients count] > 1;

  return v4;
}

- (NSString)blockedRecipients
{
  selfCopy = self;
  sub_190864C34();
  v4 = v3;

  if (v4)
  {
    v5 = sub_190D56ED0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end