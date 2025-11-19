@interface CSAdaptiveFontLayoutContext
+ (CSAdaptiveFontLayoutContext)layoutContextWithPortrait:(BOOL)a3 deviceCategory:(unint64_t)a4;
+ (CSAdaptiveFontLayoutContext)layoutContextWithPortrait:(BOOL)a3 deviceCategory:(unint64_t)a4 maximumWidthPortrait:(id)a5 maximumWidthLandscape:(id)a6 text:(id)a7;
- (BOOL)isEqual:(id)a3;
- (CSAdaptiveFontLayoutContext)init;
@end

@implementation CSAdaptiveFontLayoutContext

+ (CSAdaptiveFontLayoutContext)layoutContextWithPortrait:(BOOL)a3 deviceCategory:(unint64_t)a4
{
  v4 = sub_1A2D9CAC8(a3, a4);

  return v4;
}

+ (CSAdaptiveFontLayoutContext)layoutContextWithPortrait:(BOOL)a3 deviceCategory:(unint64_t)a4 maximumWidthPortrait:(id)a5 maximumWidthLandscape:(id)a6 text:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = sub_1A2D9CCE8(a3, a4, a5, a6, a7);

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1A2D9FCD0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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