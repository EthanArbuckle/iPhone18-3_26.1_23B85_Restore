@interface CKBlockedConversationChatItem
- (BOOL)hasMultipleBlockedRecipients;
- (BOOL)isGroupChat;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (NSAttributedString)transcriptButtonText;
- (NSString)blockedRecipients;
- (id)loadTranscriptText;
@end

@implementation CKBlockedConversationChatItem

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
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
  v4 = [v3 transcriptEmphasizedFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 transcriptRegularPreferredFontAttributes];

  v7 = [(CKBlockedConversationChatItem *)self blockedRecipients];
  if ([(CKBlockedConversationChatItem *)self isGroupChat]&& v7)
  {
    v8 = [(CKBlockedConversationChatItem *)self hasMultipleBlockedRecipients];
    v9 = CKFrameworkBundle();
    v10 = v9;
    if (v8)
    {
      v11 = @"BLOCKED_CONVERSATION_GROUP_PLURAL";
    }

    else
    {
      v11 = @"BLOCKED_CONVERSATION_GROUP_SINGULAR";
    }

    v12 = [v9 localizedStringForKey:v11 value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(v6, v4, v12, v18, v19, v20, v21, v22, v7);
  }

  else
  {
    v10 = CKFrameworkBundle();
    v12 = [v10 localizedStringForKey:@"BLOCKED_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(v6, v4, v12, v13, v14, v15, v16, v17, 0);
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
    v5 = [v4 centerTranscriptButtonTextAttributes];

    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"LEAVE_CONVERSATION_TRANSCRIPT" value:&stru_1F04268F8 table:@"ChatKit"];
    v9 = [v6 initWithString:v8 attributes:v5];
    v10 = self->_transcriptButtonText;
    self->_transcriptButtonText = v9;

    transcriptButtonText = self->_transcriptButtonText;
  }

  return transcriptButtonText;
}

- (BOOL)isGroupChat
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 isGroupMessage];

  return v3;
}

- (BOOL)hasMultipleBlockedRecipients
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 blockedRecipients];
  v4 = [v3 count] > 1;

  return v4;
}

- (NSString)blockedRecipients
{
  v2 = self;
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