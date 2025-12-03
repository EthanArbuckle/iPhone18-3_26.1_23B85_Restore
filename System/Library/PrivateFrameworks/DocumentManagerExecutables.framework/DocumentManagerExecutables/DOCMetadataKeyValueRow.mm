@interface DOCMetadataKeyValueRow
- (UILabel)accessibilityElementWithLabel;
- (UILabel)accessibilityElementWithValue;
- (_TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)rect;
@end

@implementation DOCMetadataKeyValueRow

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
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
  window = [v2 window];
  if (window)
  {

    DOCMetadataKeyValueRow.updateLabelLayout()();
  }
}

- (_TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UILabel)accessibilityElementWithLabel
{
  selfCopy = self;
  v3 = DOCMetadataKeyValueRow.label.getter();

  return v3;
}

- (UILabel)accessibilityElementWithValue
{
  selfCopy = self;
  v3 = DOCMetadataKeyValueRow.value.getter();

  v4 = *(v3 + 24);

  return v4;
}

@end