@interface AudioVisualizationLayer
- (CGRect)bounds;
- (_TtC15ConversationKit23AudioVisualizationLayer)initWithLayer:(id)layer;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)setBounds:(CGRect)bounds;
@end

@implementation AudioVisualizationLayer

- (_TtC15ConversationKit23AudioVisualizationLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return AudioVisualizationLayer.init(layer:)(&v4);
}

- (CGRect)bounds
{
  selfCopy = self;
  AudioVisualizationLayer.bounds.getter();
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  AudioVisualizationLayer.bounds.setter(x, y, width, height);
}

- (void)addAnimation:(id)animation forKey:(id)key
{
  if (key)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  animationCopy = animation;
  selfCopy = self;
  v13.super.isa = animationCopy;
  v13._attr = v6;
  v13._flags = v8;
  AudioVisualizationLayer.add(_:forKey:)(v13, v11);
}

@end