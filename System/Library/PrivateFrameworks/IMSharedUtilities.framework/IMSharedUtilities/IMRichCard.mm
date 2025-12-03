@interface IMRichCard
- (BOOL)isEqual:(id)equal;
- (IMRichCard)init;
- (IMRichCard)initWithLayout:(id)layout media:(id)media title:(id)title cardDescription:(id)description chipList:(id)list;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)setUrlToTransferMap:(id)map;
- (void)updateUrlToTransferMap:(id)map;
@end

@implementation IMRichCard

- (void)setUrlToTransferMap:(id)map
{
  v4 = *(self + OBJC_IVAR___IMRichCard_urlToTransferMap);
  *(self + OBJC_IVAR___IMRichCard_urlToTransferMap) = map;
  mapCopy = map;
}

- (IMRichCard)initWithLayout:(id)layout media:(id)media title:(id)title cardDescription:(id)description chipList:(id)list
{
  if (!title)
  {
    v12 = 0;
    v14 = 0;
    if (description)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    v16 = 0;
    goto LABEL_6;
  }

  v12 = sub_1A88C82E8();
  v14 = v13;
  if (!description)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = sub_1A88C82E8();
LABEL_6:
  *(self + OBJC_IVAR___IMRichCard_urlToTransferMap) = 0;
  *(self + OBJC_IVAR___IMRichCard_layout) = layout;
  *(self + OBJC_IVAR___IMRichCard_media) = media;
  v17 = (self + OBJC_IVAR___IMRichCard_title);
  *v17 = v12;
  v17[1] = v14;
  v18 = (self + OBJC_IVAR___IMRichCard_cardDescription);
  *v18 = v15;
  v18[1] = v16;
  *(self + OBJC_IVAR___IMRichCard_chipList) = list;
  v23.receiver = self;
  v23.super_class = IMRichCard;
  layoutCopy = layout;
  mediaCopy = media;
  listCopy = list;
  return [(IMRichCard *)&v23 init];
}

- (void)updateUrlToTransferMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  IMRichCard.update(urlToTransferMap:)(mapCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1A87ABAD4(v6);

  sub_1A870C278(v6, v6[3]);
  v4 = sub_1A88C9388();
  sub_1A85F1084(v6);
  return v4;
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

  v6 = IMRichCard.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = IMRichCard.hash.getter();

  return v3;
}

- (IMRichCard)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end