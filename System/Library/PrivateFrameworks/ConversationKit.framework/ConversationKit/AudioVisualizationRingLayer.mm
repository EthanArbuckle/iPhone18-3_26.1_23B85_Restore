@interface AudioVisualizationRingLayer
- (CGRect)bounds;
- (_TtC15ConversationKit27AudioVisualizationRingLayer)initWithLayer:(id)layer;
- (float)opacity;
- (void)setBounds:(CGRect)bounds;
- (void)setOpacity:(float)opacity;
@end

@implementation AudioVisualizationRingLayer

- (_TtC15ConversationKit27AudioVisualizationRingLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return AudioVisualizationRingLayer.init(layer:)(&v4);
}

- (float)opacity
{
  selfCopy = self;
  v3 = AudioVisualizationRingLayer.opacity.getter();

  return v3;
}

- (void)setOpacity:(float)opacity
{
  selfCopy = self;
  AudioVisualizationRingLayer.opacity.setter(opacity);
}

- (CGRect)bounds
{
  selfCopy = self;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  AudioVisualizationRingLayer.bounds.setter(x, y, width, height);
}

@end