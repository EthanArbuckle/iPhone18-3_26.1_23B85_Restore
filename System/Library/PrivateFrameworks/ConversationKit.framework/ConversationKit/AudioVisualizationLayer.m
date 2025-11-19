@interface AudioVisualizationLayer
- (CGRect)bounds;
- (_TtC15ConversationKit23AudioVisualizationLayer)initWithLayer:(id)a3;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)setBounds:(CGRect)a3;
@end

@implementation AudioVisualizationLayer

- (_TtC15ConversationKit23AudioVisualizationLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return AudioVisualizationLayer.init(layer:)(&v4);
}

- (CGRect)bounds
{
  v2 = self;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  AudioVisualizationLayer.bounds.setter(x, y, width, height);
}

- (void)addAnimation:(id)a3 forKey:(id)a4
{
  if (a4)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  v13.super.isa = v9;
  v13._attr = v6;
  v13._flags = v8;
  AudioVisualizationLayer.add(_:forKey:)(v13, v11);
}

@end