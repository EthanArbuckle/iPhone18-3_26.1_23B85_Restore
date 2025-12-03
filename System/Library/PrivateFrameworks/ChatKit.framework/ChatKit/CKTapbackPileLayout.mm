@interface CKTapbackPileLayout
- (CGSize)pilePositioningSize;
- (CKTapbackPileLayout)init;
- (CKTapbackPileLayout)initWithSourcePoint:(CGPoint)point viewModel:(id)model;
@end

@implementation CKTapbackPileLayout

- (CKTapbackPileLayout)initWithSourcePoint:(CGPoint)point viewModel:(id)model
{
  y = point.y;
  x = point.x;
  modelCopy = model;
  v7 = sub_190CB74C0(modelCopy, x, y);

  return v7;
}

- (CGSize)pilePositioningSize
{
  selfCopy = self;
  sub_190CB6EE8();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CKTapbackPileLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end