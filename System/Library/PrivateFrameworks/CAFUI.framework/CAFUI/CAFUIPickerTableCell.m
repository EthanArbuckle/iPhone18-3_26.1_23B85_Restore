@interface CAFUIPickerTableCell
- (BOOL)canBecomeFocused;
- (_TtC5CAFUI20CAFUIPickerTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation CAFUIPickerTableCell

- (_TtC5CAFUI20CAFUIPickerTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return CAFUIPickerTableCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

- (BOOL)canBecomeFocused
{
  v2 = self;
  v3 = CAFUIPickerTableCell.isHighlightable.getter();

  return v3 & 1;
}

@end