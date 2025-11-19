@interface IMRichCardMedia
- (BOOL)isEqual:(id)a3;
- (IMRichCardMedia)init;
- (IMRichCardMedia)initWithMediaUrl:(id)a3 mediaContentType:(id)a4 mediaFileSize:(id)a5 thumbnailUrl:(id)a6 thumbnailContentType:(id)a7 thumbnailFileSize:(id)a8 height:(int64_t)a9 contentDescription:(id)a10;
- (id)dictionaryRepresentation;
- (int64_t)hash;
@end

@implementation IMRichCardMedia

- (IMRichCardMedia)initWithMediaUrl:(id)a3 mediaContentType:(id)a4 mediaFileSize:(id)a5 thumbnailUrl:(id)a6 thumbnailContentType:(id)a7 thumbnailFileSize:(id)a8 height:(int64_t)a9 contentDescription:(id)a10
{
  v14 = sub_1A88C82E8();
  v36 = v15;
  v37 = v14;
  v35 = sub_1A88C82E8();
  v17 = v16;
  if (a6)
  {
    v18 = sub_1A88C82E8();
    v20 = v19;
    v21 = a10;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v22 = 0;
    v24 = a9;
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_7:
    v26 = 0;
    goto LABEL_8;
  }

  v18 = 0;
  v20 = 0;
  v21 = a10;
  if (!a7)
  {
    goto LABEL_6;
  }

LABEL_3:
  v22 = sub_1A88C82E8();
  a7 = v23;
  v24 = a9;
  if (!v21)
  {
    goto LABEL_7;
  }

LABEL_4:
  v21 = sub_1A88C82E8();
  v26 = v25;
LABEL_8:
  v27 = a5;
  v28 = a8;
  v29 = (self + OBJC_IVAR___IMRichCardMedia_mediaUrl);
  *v29 = v37;
  v29[1] = v36;
  v30 = (self + OBJC_IVAR___IMRichCardMedia_mediaContentType);
  *v30 = v35;
  v30[1] = v17;
  *(self + OBJC_IVAR___IMRichCardMedia_mediaFileSize) = v27;
  v31 = (self + OBJC_IVAR___IMRichCardMedia_thumbnailUrl);
  *v31 = v18;
  v31[1] = v20;
  v32 = (self + OBJC_IVAR___IMRichCardMedia_thumbnailContentType);
  *v32 = v22;
  v32[1] = a7;
  *(self + OBJC_IVAR___IMRichCardMedia_thumbnailFileSize) = v28;
  *(self + OBJC_IVAR___IMRichCardMedia_height) = v24;
  v33 = (self + OBJC_IVAR___IMRichCardMedia_contentDescription);
  *v33 = v21;
  v33[1] = v26;
  v39.receiver = self;
  v39.super_class = IMRichCardMedia;
  return [(IMRichCardMedia *)&v39 init];
}

- (id)dictionaryRepresentation
{
  v2 = self;
  sub_1A886288C();

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

  v6 = IMRichCardMedia.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = IMRichCardMedia.hash.getter();

  return v3;
}

- (IMRichCardMedia)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end