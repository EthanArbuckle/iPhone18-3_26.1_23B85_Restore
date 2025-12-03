@interface IMRichCardLayout
- (BOOL)isEqual:(id)equal;
- (IMRichCardLayout)init;
- (IMRichCardLayout)initWithOrientation:(int64_t)orientation imageAlignment:(int64_t)alignment width:(int64_t)width titleStyle:(id)style descriptionStyle:(id)descriptionStyle cardStyleUrl:(id)url;
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

- (IMRichCardLayout)initWithOrientation:(int64_t)orientation imageAlignment:(int64_t)alignment width:(int64_t)width titleStyle:(id)style descriptionStyle:(id)descriptionStyle cardStyleUrl:(id)url
{
  if (url)
  {
    v14 = sub_1A88C82E8();
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  *(self + OBJC_IVAR___IMRichCardLayout_orientation) = orientation;
  *(self + OBJC_IVAR___IMRichCardLayout_imageAlignment) = alignment;
  *(self + OBJC_IVAR___IMRichCardLayout_width) = width;
  *(self + OBJC_IVAR___IMRichCardLayout_titleStyle) = style;
  *(self + OBJC_IVAR___IMRichCardLayout_descriptionStyle) = descriptionStyle;
  v16 = (self + OBJC_IVAR___IMRichCardLayout_cardStyleUrl);
  *v16 = v14;
  v16[1] = v15;
  v20.receiver = self;
  v20.super_class = IMRichCardLayout;
  styleCopy = style;
  descriptionStyleCopy = descriptionStyle;
  return [(IMRichCardLayout *)&v20 init];
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  sub_1A882F3A4();

  v3 = sub_1A88C8188();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = IMRichCardLayout.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
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