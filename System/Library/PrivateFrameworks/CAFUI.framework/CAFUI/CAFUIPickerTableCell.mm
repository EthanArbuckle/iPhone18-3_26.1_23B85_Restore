@interface CAFUIPickerTableCell
- (BOOL)canBecomeFocused;
- (_TtC5CAFUI20CAFUIPickerTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CAFUIPickerTableCell

- (_TtC5CAFUI20CAFUIPickerTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return CAFUIPickerTableCell.init(style:reuseIdentifier:)(style, identifier, v6);
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v3 = CAFUIPickerTableCell.isHighlightable.getter();

  return v3 & 1;
}

@end