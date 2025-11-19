@interface ConversationControlsJoinCallCountdownView
- (CGRect)frame;
- (void)initializeCountdownWithInitialValue:(double)a3 fullValue:(double)a4;
- (void)setFrame:(CGRect)a3;
- (void)startCountdown;
@end

@implementation ConversationControlsJoinCallCountdownView

- (CGRect)frame
{
  v2 = self;
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

- (void)setFrame:(CGRect)a3
{
  v3 = self;
  ConversationControlsJoinCallCountdownView.frame.setter();
}

- (void)initializeCountdownWithInitialValue:(double)a3 fullValue:(double)a4
{
  v6 = self;
  ConversationControlsJoinCallCountdownView.initializeCountdown(with:fullValue:)(a3, a4);
}

- (void)startCountdown
{
  v2 = self;
  ConversationControlsJoinCallCountdownView.startCountdown()();
}

@end