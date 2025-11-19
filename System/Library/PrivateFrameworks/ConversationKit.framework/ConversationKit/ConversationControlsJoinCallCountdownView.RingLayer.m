@interface ConversationControlsJoinCallCountdownView.RingLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (id)actionForKey:(id)a3;
- (void)drawInContext:(CGContext *)a3;
- (void)setPercentage:(double)a3;
@end

@implementation ConversationControlsJoinCallCountdownView.RingLayer

- (void)setPercentage:(double)a3
{
  v4 = self;
  ConversationControlsJoinCallCountdownView.RingLayer.percentage.setter(a3);
}

+ (BOOL)needsDisplayForKey:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v3 = static ConversationControlsJoinCallCountdownView.RingLayer.needsDisplay(forKey:)();

  return v3 & 1;
}

- (id)actionForKey:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = ConversationControlsJoinCallCountdownView.RingLayer.action(forKey:)(v4, v6);

  return v8;
}

- (void)drawInContext:(CGContext *)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsJoinCallCountdownView.RingLayer.draw(in:)(v4);
}

@end