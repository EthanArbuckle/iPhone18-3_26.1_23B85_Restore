@interface IMRichCard
- (BOOL)isEqual:(id)a3;
- (IMRichCard)init;
- (IMRichCard)initWithLayout:(id)a3 media:(id)a4 title:(id)a5 cardDescription:(id)a6 chipList:(id)a7;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)setUrlToTransferMap:(id)a3;
- (void)updateUrlToTransferMap:(id)a3;
@end

@implementation IMRichCard

- (void)setUrlToTransferMap:(id)a3
{
  v4 = *(self + OBJC_IVAR___IMRichCard_urlToTransferMap);
  *(self + OBJC_IVAR___IMRichCard_urlToTransferMap) = a3;
  v3 = a3;
}

- (IMRichCard)initWithLayout:(id)a3 media:(id)a4 title:(id)a5 cardDescription:(id)a6 chipList:(id)a7
{
  if (!a5)
  {
    v12 = 0;
    v14 = 0;
    if (a6)
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
  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = sub_1A88C82E8();
LABEL_6:
  *(self + OBJC_IVAR___IMRichCard_urlToTransferMap) = 0;
  *(self + OBJC_IVAR___IMRichCard_layout) = a3;
  *(self + OBJC_IVAR___IMRichCard_media) = a4;
  v17 = (self + OBJC_IVAR___IMRichCard_title);
  *v17 = v12;
  v17[1] = v14;
  v18 = (self + OBJC_IVAR___IMRichCard_cardDescription);
  *v18 = v15;
  v18[1] = v16;
  *(self + OBJC_IVAR___IMRichCard_chipList) = a7;
  v23.receiver = self;
  v23.super_class = IMRichCard;
  v19 = a3;
  v20 = a4;
  v21 = a7;
  return [(IMRichCard *)&v23 init];
}

- (void)updateUrlToTransferMap:(id)a3
{
  v4 = a3;
  v5 = self;
  IMRichCard.update(urlToTransferMap:)(v4);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_1A87ABAD4(v6);

  sub_1A870C278(v6, v6[3]);
  v4 = sub_1A88C9388();
  sub_1A85F1084(v6);
  return v4;
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

  v6 = IMRichCard.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
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