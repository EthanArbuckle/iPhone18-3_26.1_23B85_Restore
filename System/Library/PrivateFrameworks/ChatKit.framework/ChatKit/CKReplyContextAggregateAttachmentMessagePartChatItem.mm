@interface CKReplyContextAggregateAttachmentMessagePartChatItem
- (BOOL)replyIsFromMe;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
@end

@implementation CKReplyContextAggregateAttachmentMessagePartChatItem

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  v20.receiver = self;
  v20.super_class = CKReplyContextAggregateAttachmentMessagePartChatItem;
  [(CKAggregateAttachmentMessagePartChatItem *)&v20 loadSizeThatFits:a4 textAlignmentInsets:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 textBalloonMinHeight];
  v10 = v9 + v9;

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 replyPreviewBalloonMinWidth];
  v13 = v12 + v12;

  if (v13 < v5 || v10 < v7)
  {
    v15 = v13 / v5;
    v16 = 0.0;
    if (v5 == 0.0)
    {
      v15 = 0.0;
    }

    if (v7 != 0.0)
    {
      v16 = v10 / v7;
    }

    v17 = fmax(v15, v16);
    v13 = ceil(v5 * v17);
    v10 = ceil(v7 * v17);
  }

  v18 = v13;
  v19 = v10;
  result.height = v19;
  result.width = v18;
  return result;
}

- (BOOL)replyIsFromMe
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 replyIsFromMe];

  return v3;
}

@end