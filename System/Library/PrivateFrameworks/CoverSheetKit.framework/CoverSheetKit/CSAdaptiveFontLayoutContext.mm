@interface CSAdaptiveFontLayoutContext
+ (CSAdaptiveFontLayoutContext)layoutContextWithPortrait:(BOOL)portrait deviceCategory:(unint64_t)category;
+ (CSAdaptiveFontLayoutContext)layoutContextWithPortrait:(BOOL)portrait deviceCategory:(unint64_t)category maximumWidthPortrait:(id)widthPortrait maximumWidthLandscape:(id)landscape text:(id)text;
- (BOOL)isEqual:(id)equal;
- (CSAdaptiveFontLayoutContext)init;
@end

@implementation CSAdaptiveFontLayoutContext

+ (CSAdaptiveFontLayoutContext)layoutContextWithPortrait:(BOOL)portrait deviceCategory:(unint64_t)category
{
  v4 = sub_1A2D9CAC8(portrait, category);

  return v4;
}

+ (CSAdaptiveFontLayoutContext)layoutContextWithPortrait:(BOOL)portrait deviceCategory:(unint64_t)category maximumWidthPortrait:(id)widthPortrait maximumWidthLandscape:(id)landscape text:(id)text
{
  widthPortraitCopy = widthPortrait;
  landscapeCopy = landscape;
  textCopy = text;
  v15 = sub_1A2D9CCE8(portrait, category, widthPortrait, landscape, text);

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1A2D9FCD0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = AdaptiveFontLayoutContext.isEqual(_:)(v8);

  sub_1A2D8FE7C(v8, &qword_1EB0B36E0);
  return v6;
}

- (CSAdaptiveFontLayoutContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end