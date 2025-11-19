@interface CKCallButtonConfiguration
+ (id)configurationForCallMode:(int64_t)a3;
- (NSString)title;
- (_TtC7ChatKit25CKCallButtonConfiguration)init;
- (_TtC7ChatKit25CKCallButtonConfiguration)initWithTitle:(id)a3 symbolImage:(id)a4 textColor:(id)a5 imageColor:(id)a6 wantsExtraPadding:(BOOL)a7 buttonTintColor:(id)a8;
@end

@implementation CKCallButtonConfiguration

- (NSString)title
{
  if (*(self + OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_title + 8))
  {
    sub_190D52690();
    v2 = sub_190D56ED0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_TtC7ChatKit25CKCallButtonConfiguration)initWithTitle:(id)a3 symbolImage:(id)a4 textColor:(id)a5 imageColor:(id)a6 wantsExtraPadding:(BOOL)a7 buttonTintColor:(id)a8
{
  if (a3)
  {
    v14 = sub_190D56F10();
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v16 = (self + OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_title);
  *v16 = v14;
  v16[1] = v15;
  *(self + OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_symbolImage) = a4;
  *(self + OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_textColor) = a5;
  *(self + OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_imageColor) = a6;
  *(self + OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_wantsExtraPadding) = a7;
  *(self + OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_buttonTintColor) = a8;
  v22.receiver = self;
  v22.super_class = type metadata accessor for CKCallButtonConfiguration();
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  return [(CKCallButtonConfiguration *)&v22 init];
}

- (_TtC7ChatKit25CKCallButtonConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)configurationForCallMode:(int64_t)a3
{
  v3 = sub_190C49F10(a3);

  return v3;
}

@end