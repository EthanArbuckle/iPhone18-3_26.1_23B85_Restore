@interface TapbackPickerMaskedViewContainer
- (_TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer)initWithCoder:(id)coder;
- (_TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation TapbackPickerMaskedViewContainer

- (_TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer_wantsMaterialBackground) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (_TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer_wantsMaterialBackground) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for TapbackPickerMaskedViewContainer();
  height = [(TapbackPickerMaskedViewContainer *)&v11 initWithFrame:x, y, width, height];
  v8 = *((*MEMORY[0x1E69E7D40] & height->super.super.super.isa) + 0x70);
  v9 = height;
  v8();

  return v9;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_19092F70C();
}

@end