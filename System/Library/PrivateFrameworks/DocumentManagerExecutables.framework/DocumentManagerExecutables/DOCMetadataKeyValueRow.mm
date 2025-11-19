@interface DOCMetadataKeyValueRow
- (UILabel)accessibilityElementWithLabel;
- (UILabel)accessibilityElementWithValue;
- (_TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)a3;
@end

@implementation DOCMetadataKeyValueRow

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  DOCMetadataKeyValueRow.draw(_:)(v9);
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCMetadataKeyValueRow();
  v2 = v4.receiver;
  [(DOCMetadataKeyValueRow *)&v4 didMoveToWindow];
  v3 = [v2 window];
  if (v3)
  {

    DOCMetadataKeyValueRow.updateLabelLayout()();
  }
}

- (_TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UILabel)accessibilityElementWithLabel
{
  v2 = self;
  v3 = DOCMetadataKeyValueRow.label.getter();

  return v3;
}

- (UILabel)accessibilityElementWithValue
{
  v2 = self;
  v3 = DOCMetadataKeyValueRow.value.getter();

  v4 = *(v3 + 24);

  return v4;
}

@end