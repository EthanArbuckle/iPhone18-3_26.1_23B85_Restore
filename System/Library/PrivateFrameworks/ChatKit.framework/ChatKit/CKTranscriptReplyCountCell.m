@interface CKTranscriptReplyCountCell
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
@end

@implementation CKTranscriptReplyCountCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9.receiver = self;
  v9.super_class = CKTranscriptReplyCountCell;
  [(CKTranscriptStatusCell *)&v9 configureForChatItem:a3 context:a4 animated:a5 animationDuration:a7 animationCurve:a6];
  v8 = [(CKTranscriptStatusCell *)self statusButton];
  [v8 setUserInteractionEnabled:1];
}

@end