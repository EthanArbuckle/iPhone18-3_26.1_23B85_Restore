@interface IMRichCardLayout
- (BOOL)isEqual:(id)a3;
- (IMRichCardLayout)init;
- (IMRichCardLayout)initWithOrientation:(int64_t)a3 imageAlignment:(int64_t)a4 width:(int64_t)a5 titleStyle:(id)a6 descriptionStyle:(id)a7 cardStyleUrl:(id)a8;
- (NSString)cardStyleUrl;
- (id)dictionaryRepresentation;
- (int64_t)hash;
@end

@implementation IMRichCardLayout

- (NSString)cardStyleUrl
{
  if (*(self + OBJC_IVAR___IMRichCardLayout_cardStyleUrl + 8))
  {

    v2 = sub_1A88C82A8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (IMRichCardLayout)initWithOrientation:(int64_t)a3 imageAlignment:(int64_t)a4 width:(int64_t)a5 titleStyle:(id)a6 descriptionStyle:(id)a7 cardStyleUrl:(id)a8
{
  if (a8)
  {
    v14 = sub_1A88C82E8();
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  *(self + OBJC_IVAR___IMRichCardLayout_orientation) = a3;
  *(self + OBJC_IVAR___IMRichCardLayout_imageAlignment) = a4;
  *(self + OBJC_IVAR___IMRichCardLayout_width) = a5;
  *(self + OBJC_IVAR___IMRichCardLayout_titleStyle) = a6;
  *(self + OBJC_IVAR___IMRichCardLayout_descriptionStyle) = a7;
  v16 = (self + OBJC_IVAR___IMRichCardLayout_cardStyleUrl);
  *v16 = v14;
  v16[1] = v15;
  v20.receiver = self;
  v20.super_class = IMRichCardLayout;
  v17 = a6;
  v18 = a7;
  return [(IMRichCardLayout *)&v20 init];
}

- (id)dictionaryRepresentation
{
  v2 = self;
  sub_1A882F3A4();

  v3 = sub_1A88C8188();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = IMRichCardLayout.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = IMRichCardLayout.hash.getter();

  return v3;
}

- (IMRichCardLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end