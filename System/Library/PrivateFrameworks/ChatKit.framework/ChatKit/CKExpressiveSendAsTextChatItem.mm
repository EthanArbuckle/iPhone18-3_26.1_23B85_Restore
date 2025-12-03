@interface CKExpressiveSendAsTextChatItem
- (id)loadTranscriptText;
@end

@implementation CKExpressiveSendAsTextChatItem

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularFontAttributes = [v3 transcriptRegularFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v5 transcriptEmphasizedFontAttributes];

  iMChatItem = [(CKChatItem *)self IMChatItem];
  text = [iMChatItem text];

  v14 = CKAttributedFormatString(transcriptRegularFontAttributes, transcriptEmphasizedFontAttributes, text, v9, v10, v11, v12, v13, 0);

  return v14;
}

@end