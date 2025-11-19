@interface CKGenerateButtonBackground
- (_TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation CKGenerateButtonBackground

- (_TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminated) = 0;
  v4 = OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_defaultBackdropFilters;
  sub_190A0AB44();
  *(&self->super.super.super.isa + v4) = v5;
  v6 = OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminatedBackdropFilters;
  sub_190A0AE00();
  *(&self->super.super.super.isa + v6) = v7;
  v8 = OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminatedPlusLighterLayer;
  v9 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  if (qword_1EAD51B40 != -1)
  {
    swift_once();
  }

  [v9 setBackgroundColor_];
  [v9 setCompositingFilter_];
  *(&self->super.super.super.isa + v8) = v9;
  v10 = OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminatedPlusDarkerLayer;
  v11 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  if (qword_1EAD51B48 != -1)
  {
    swift_once();
  }

  [v11 setBackgroundColor_];
  [v11 setCompositingFilter_];
  *(&self->super.super.super.isa + v10) = v11;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_190A0B7F4();
}

@end