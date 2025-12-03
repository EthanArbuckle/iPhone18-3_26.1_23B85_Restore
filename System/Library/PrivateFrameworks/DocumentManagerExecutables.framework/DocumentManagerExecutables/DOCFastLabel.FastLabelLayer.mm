@interface DOCFastLabel.FastLabelLayer
- (_TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer)init;
- (_TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer)initWithLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
@end

@implementation DOCFastLabel.FastLabelLayer

- (_TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer_traitCollection) = 0;
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer_labelInformation;
  v4 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCFastLabel.FastLabelLayer(0);
  v5 = [(DOCFastLabel.FastLabelLayer *)&v7 init];
  [(DOCFastLabel.FastLabelLayer *)v5 setOpaque:0];
  [(DOCFastLabel.FastLabelLayer *)v5 setContentsFormat:*MEMORY[0x277CDA0C0]];

  return v5;
}

- (_TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return DOCFastLabel.FastLabelLayer.init(layer:)(v4);
}

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  DOCFastLabel.FastLabelLayer.draw(in:)(contextCopy);
}

@end