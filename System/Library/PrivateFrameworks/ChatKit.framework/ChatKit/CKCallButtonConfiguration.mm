@interface CKCallButtonConfiguration
+ (id)configurationForCallMode:(int64_t)mode;
- (NSString)title;
- (_TtC7ChatKit25CKCallButtonConfiguration)init;
- (_TtC7ChatKit25CKCallButtonConfiguration)initWithTitle:(id)title symbolImage:(id)image textColor:(id)color imageColor:(id)imageColor wantsExtraPadding:(BOOL)padding buttonTintColor:(id)tintColor;
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

- (_TtC7ChatKit25CKCallButtonConfiguration)initWithTitle:(id)title symbolImage:(id)image textColor:(id)color imageColor:(id)imageColor wantsExtraPadding:(BOOL)padding buttonTintColor:(id)tintColor
{
  if (title)
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
  *(self + OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_symbolImage) = image;
  *(self + OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_textColor) = color;
  *(self + OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_imageColor) = imageColor;
  *(self + OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_wantsExtraPadding) = padding;
  *(self + OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_buttonTintColor) = tintColor;
  v22.receiver = self;
  v22.super_class = type metadata accessor for CKCallButtonConfiguration();
  imageCopy = image;
  colorCopy = color;
  imageColorCopy = imageColor;
  tintColorCopy = tintColor;
  return [(CKCallButtonConfiguration *)&v22 init];
}

- (_TtC7ChatKit25CKCallButtonConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)configurationForCallMode:(int64_t)mode
{
  v3 = sub_190C49F10(mode);

  return v3;
}

@end