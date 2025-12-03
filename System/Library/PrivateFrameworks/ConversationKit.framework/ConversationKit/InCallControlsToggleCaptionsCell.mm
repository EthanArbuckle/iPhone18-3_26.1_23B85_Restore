@interface InCallControlsToggleCaptionsCell
- (void)didToggleCaptions;
@end

@implementation InCallControlsToggleCaptionsCell

- (void)didToggleCaptions
{
  selfCopy = self;
  InCallControlsToggleCaptionsCell.didToggleCaptions()();
}

@end