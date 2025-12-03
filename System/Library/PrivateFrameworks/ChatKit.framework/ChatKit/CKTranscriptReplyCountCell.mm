@interface CKTranscriptReplyCountCell
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
@end

@implementation CKTranscriptReplyCountCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  v9.receiver = self;
  v9.super_class = CKTranscriptReplyCountCell;
  [(CKTranscriptStatusCell *)&v9 configureForChatItem:item context:context animated:animated animationDuration:curve animationCurve:duration];
  statusButton = [(CKTranscriptStatusCell *)self statusButton];
  [statusButton setUserInteractionEnabled:1];
}

@end