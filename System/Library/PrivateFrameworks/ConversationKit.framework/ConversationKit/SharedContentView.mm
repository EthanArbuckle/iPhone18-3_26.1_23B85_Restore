@interface SharedContentView
- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4;
- (void)layoutSubviews;
@end

@implementation SharedContentView

- (void)layoutSubviews
{
  v2 = self;
  SharedContentView.layoutSubviews()();
}

- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  SharedContentView.convert(_:to:)(a4);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

@end