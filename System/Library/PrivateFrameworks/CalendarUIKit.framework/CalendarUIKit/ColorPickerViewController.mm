@interface ColorPickerViewController
- (_TtC13CalendarUIKit25ColorPickerViewController)init;
- (_TtC13CalendarUIKit25ColorPickerViewController)initWithCoder:(id)coder;
@end

@implementation ColorPickerViewController

- (_TtC13CalendarUIKit25ColorPickerViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ColorPickerViewController();
  return [(UIColorPickerViewController *)&v3 init];
}

- (_TtC13CalendarUIKit25ColorPickerViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ColorPickerViewController();
  coderCopy = coder;
  v5 = [(UIColorPickerViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end