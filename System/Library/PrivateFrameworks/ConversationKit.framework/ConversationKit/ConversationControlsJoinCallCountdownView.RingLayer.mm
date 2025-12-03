@interface ConversationControlsJoinCallCountdownView.RingLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (id)actionForKey:(id)key;
- (void)drawInContext:(CGContext *)context;
- (void)setPercentage:(double)percentage;
@end

@implementation ConversationControlsJoinCallCountdownView.RingLayer

- (void)setPercentage:(double)percentage
{
  selfCopy = self;
  ConversationControlsJoinCallCountdownView.RingLayer.percentage.setter(percentage);
}

+ (BOOL)needsDisplayForKey:(id)key
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v3 = static ConversationControlsJoinCallCountdownView.RingLayer.needsDisplay(forKey:)();

  return v3 & 1;
}

- (id)actionForKey:(id)key
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = ConversationControlsJoinCallCountdownView.RingLayer.action(forKey:)(v4, v6);

  return v8;
}

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  ConversationControlsJoinCallCountdownView.RingLayer.draw(in:)(contextCopy);
}

@end