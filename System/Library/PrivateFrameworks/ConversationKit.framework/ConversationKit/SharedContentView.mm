@interface SharedContentView
- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space;
- (void)layoutSubviews;
@end

@implementation SharedContentView

- (void)layoutSubviews
{
  selfCopy = self;
  SharedContentView.layoutSubviews()();
}

- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space
{
  swift_unknownObjectRetain();
  selfCopy = self;
  SharedContentView.convert(_:to:)(space);
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