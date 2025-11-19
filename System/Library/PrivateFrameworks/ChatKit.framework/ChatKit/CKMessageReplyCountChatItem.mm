@interface CKMessageReplyCountChatItem
- (char)transcriptOrientation;
- (id)_loadTranscriptButtonTextForReplyCountButtonType;
- (unint64_t)replyCount;
@end

@implementation CKMessageReplyCountChatItem

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

- (id)_loadTranscriptButtonTextForReplyCountButtonType
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{-[CKMessageReplyCountChatItem replyCount](self, "replyCount")}];
  v4 = MEMORY[0x1E696AEC0];
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"REPLY_COUNT" value:&stru_1F04268F8 table:@"ChatKit"];
  v7 = [v4 localizedStringWithFormat:v6, v3];

  v8 = [MEMORY[0x1E69DC668] sharedApplication];
  v9 = [v8 userInterfaceLayoutDirection];

  if (v9 == 1)
  {
    v10 = @"\u200F";
  }

  else
  {
    v10 = @"\u200E";
  }

  v11 = [(__CFString *)v10 stringByAppendingString:v7];

  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 theme];
  v14 = [v13 transcriptMessageStatusButtonTextColor];

  v22[0] = *MEMORY[0x1E69DB648];
  v15 = +[CKUIBehavior sharedBehaviors];
  v16 = [v15 transcriptBoldFont];
  v22[1] = *MEMORY[0x1E69DB650];
  v23[0] = v16;
  v23[1] = v14;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v18 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v11 attributes:v17];
  v19 = [(CKChatItem *)self transcriptTraitCollection];
  LODWORD(v16) = [v19 isTranscriptBackgroundActive];

  if (v16)
  {
    [CKMessageStatusChatItem appendChevronToStatusText:v18 withButtonTextColor:v14 textAttributes:v17];
  }

  v20 = [v18 copy];

  return v20;
}

- (unint64_t)replyCount
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 count];

  return v3;
}

@end