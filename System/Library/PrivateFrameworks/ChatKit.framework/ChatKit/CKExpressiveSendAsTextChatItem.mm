@interface CKExpressiveSendAsTextChatItem
- (id)loadTranscriptText;
@end

@implementation CKExpressiveSendAsTextChatItem

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 transcriptRegularFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 transcriptEmphasizedFontAttributes];

  v7 = [(CKChatItem *)self IMChatItem];
  v8 = [v7 text];

  v14 = CKAttributedFormatString(v4, v6, v8, v9, v10, v11, v12, v13, 0);

  return v14;
}

@end