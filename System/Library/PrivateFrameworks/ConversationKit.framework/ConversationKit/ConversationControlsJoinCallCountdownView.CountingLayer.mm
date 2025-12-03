@interface ConversationControlsJoinCallCountdownView.CountingLayer
- (void)setValue:(int64_t)value;
@end

@implementation ConversationControlsJoinCallCountdownView.CountingLayer

- (void)setValue:(int64_t)value
{
  selfCopy = self;
  ConversationControlsJoinCallCountdownView.CountingLayer.value.setter(value);
}

@end