@interface CKTapbackPileLayout
- (CGSize)pilePositioningSize;
- (CKTapbackPileLayout)init;
- (CKTapbackPileLayout)initWithSourcePoint:(CGPoint)a3 viewModel:(id)a4;
@end

@implementation CKTapbackPileLayout

- (CKTapbackPileLayout)initWithSourcePoint:(CGPoint)a3 viewModel:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  v7 = sub_190CB74C0(v6, x, y);

  return v7;
}

- (CGSize)pilePositioningSize
{
  v2 = self;
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