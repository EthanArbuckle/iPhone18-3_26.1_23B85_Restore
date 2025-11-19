@interface AudioVisualizationRingLayer
- (CGRect)bounds;
- (_TtC15ConversationKit27AudioVisualizationRingLayer)initWithLayer:(id)a3;
- (float)opacity;
- (void)setBounds:(CGRect)a3;
- (void)setOpacity:(float)a3;
@end

@implementation AudioVisualizationRingLayer

- (_TtC15ConversationKit27AudioVisualizationRingLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return AudioVisualizationRingLayer.init(layer:)(&v4);
}

- (float)opacity
{
  v2 = self;
  v3 = AudioVisualizationRingLayer.opacity.getter();

  return v3;
}

- (void)setOpacity:(float)a3
{
  v4 = self;
  AudioVisualizationRingLayer.opacity.setter(a3);
}

- (CGRect)bounds
{
  v2 = self;
  AudioVisualizationRingLayer.bounds.getter();
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
  AudioVisualizationRingLayer.bounds.setter(x, y, width, height);
}

@end