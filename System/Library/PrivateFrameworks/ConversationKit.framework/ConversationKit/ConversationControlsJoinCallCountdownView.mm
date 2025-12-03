@interface ConversationControlsJoinCallCountdownView
- (CGRect)frame;
- (void)initializeCountdownWithInitialValue:(double)value fullValue:(double)fullValue;
- (void)setFrame:(CGRect)frame;
- (void)startCountdown;
@end

@implementation ConversationControlsJoinCallCountdownView

- (CGRect)frame
{
  selfCopy = self;
  ConversationControlsJoinCallCountdownView.frame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  selfCopy = self;
  ConversationControlsJoinCallCountdownView.frame.setter();
}

- (void)initializeCountdownWithInitialValue:(double)value fullValue:(double)fullValue
{
  selfCopy = self;
  ConversationControlsJoinCallCountdownView.initializeCountdown(with:fullValue:)(value, fullValue);
}

- (void)startCountdown
{
  selfCopy = self;
  ConversationControlsJoinCallCountdownView.startCountdown()();
}

@end