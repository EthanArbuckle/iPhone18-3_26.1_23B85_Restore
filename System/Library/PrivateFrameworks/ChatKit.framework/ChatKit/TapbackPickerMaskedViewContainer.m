@interface TapbackPickerMaskedViewContainer
- (_TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer)initWithCoder:(id)a3;
- (_TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation TapbackPickerMaskedViewContainer

- (_TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer_wantsMaterialBackground) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (_TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer_wantsMaterialBackground) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for TapbackPickerMaskedViewContainer();
  v7 = [(TapbackPickerMaskedViewContainer *)&v11 initWithFrame:x, y, width, height];
  v8 = *((*MEMORY[0x1E69E7D40] & v7->super.super.super.isa) + 0x70);
  v9 = v7;
  v8();

  return v9;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_19092F70C();
}

@end