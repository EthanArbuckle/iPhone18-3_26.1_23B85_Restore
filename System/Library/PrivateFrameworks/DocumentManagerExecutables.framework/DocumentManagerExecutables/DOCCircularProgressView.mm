@interface DOCCircularProgressView
- (_TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView)initWithFrame:(CGRect)frame;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)tintColorDidChange;
@end

@implementation DOCCircularProgressView

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCCircularProgressView();
  v2 = v3.receiver;
  [(DOCCircularProgressView *)&v3 tintColorDidChange];
  DOCCircularProgressView.updateColors()();
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  DOCCircularProgressView.layoutSublayers(of:)(layerCopy);
}

- (_TtC26DocumentManagerExecutablesP33_37D8B6C95894D6D839B43B1D63EDC43423DOCCircularProgressView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end