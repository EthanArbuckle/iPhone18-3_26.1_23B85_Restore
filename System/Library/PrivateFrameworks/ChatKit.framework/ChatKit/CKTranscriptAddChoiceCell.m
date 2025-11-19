@interface CKTranscriptAddChoiceCell
- (double)statusItemInsetFromBalloonEdge;
@end

@implementation CKTranscriptAddChoiceCell

- (double)statusItemInsetFromBalloonEdge
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 addChoiceStatusItemInsetFromBalloonEdge];
  v4 = v3;

  return v4;
}

@end