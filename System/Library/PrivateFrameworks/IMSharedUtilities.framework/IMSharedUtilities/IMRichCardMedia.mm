@interface IMRichCardMedia
- (BOOL)isEqual:(id)equal;
- (IMRichCardMedia)init;
- (IMRichCardMedia)initWithMediaUrl:(id)url mediaContentType:(id)type mediaFileSize:(id)size thumbnailUrl:(id)thumbnailUrl thumbnailContentType:(id)contentType thumbnailFileSize:(id)fileSize height:(int64_t)height contentDescription:(id)self0;
- (id)dictionaryRepresentation;
- (int64_t)hash;
@end

@implementation IMRichCardMedia

- (IMRichCardMedia)initWithMediaUrl:(id)url mediaContentType:(id)type mediaFileSize:(id)size thumbnailUrl:(id)thumbnailUrl thumbnailContentType:(id)contentType thumbnailFileSize:(id)fileSize height:(int64_t)height contentDescription:(id)self0
{
  v14 = sub_1A88C82E8();
  v36 = v15;
  v37 = v14;
  v35 = sub_1A88C82E8();
  v17 = v16;
  if (thumbnailUrl)
  {
    v18 = sub_1A88C82E8();
    v20 = v19;
    descriptionCopy2 = description;
    if (contentType)
    {
      goto LABEL_3;
    }

LABEL_6:
    v22 = 0;
    heightCopy2 = height;
    if (descriptionCopy2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v26 = 0;
    goto LABEL_8;
  }

  v18 = 0;
  v20 = 0;
  descriptionCopy2 = description;
  if (!contentType)
  {
    goto LABEL_6;
  }

LABEL_3:
  v22 = sub_1A88C82E8();
  contentType = v23;
  heightCopy2 = height;
  if (!descriptionCopy2)
  {
    goto LABEL_7;
  }

LABEL_4:
  descriptionCopy2 = sub_1A88C82E8();
  v26 = v25;
LABEL_8:
  sizeCopy = size;
  fileSizeCopy = fileSize;
  v29 = (self + OBJC_IVAR___IMRichCardMedia_mediaUrl);
  *v29 = v37;
  v29[1] = v36;
  v30 = (self + OBJC_IVAR___IMRichCardMedia_mediaContentType);
  *v30 = v35;
  v30[1] = v17;
  *(self + OBJC_IVAR___IMRichCardMedia_mediaFileSize) = sizeCopy;
  v31 = (self + OBJC_IVAR___IMRichCardMedia_thumbnailUrl);
  *v31 = v18;
  v31[1] = v20;
  v32 = (self + OBJC_IVAR___IMRichCardMedia_thumbnailContentType);
  *v32 = v22;
  v32[1] = contentType;
  *(self + OBJC_IVAR___IMRichCardMedia_thumbnailFileSize) = fileSizeCopy;
  *(self + OBJC_IVAR___IMRichCardMedia_height) = heightCopy2;
  v33 = (self + OBJC_IVAR___IMRichCardMedia_contentDescription);
  *v33 = descriptionCopy2;
  v33[1] = v26;
  v39.receiver = self;
  v39.super_class = IMRichCardMedia;
  return [(IMRichCardMedia *)&v39 init];
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  sub_1A886288C();

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

  v6 = IMRichCardMedia.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
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