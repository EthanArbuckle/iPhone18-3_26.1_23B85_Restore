@interface TSEditorialItem
- (NSArray)attributes;
- (NSURL)actionURL;
- (TSEditorialItem)init;
- (TSEditorialItem)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle subtitleColor:(id)color attributes:(id)attributes actionURL:(id)l thumbnailImage:(id)image backingTag:(id)self0 headline:(id)self1;
- (UIImage)thumbnailImage;
- (void)setActionURL:(id)l;
- (void)setAttributes:(id)attributes;
- (void)setThumbnailImage:(id)image;
@end

@implementation TSEditorialItem

- (NSArray)attributes
{
  swift_beginAccess();

  v2 = sub_219BF5904();

  return v2;
}

- (void)setAttributes:(id)attributes
{
  v4 = sub_219BF5924();
  v5 = OBJC_IVAR___TSEditorialItem_attributes;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (NSURL)actionURL
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___TSEditorialItem_actionURL;
  swift_beginAccess();
  sub_2188383F8(self + v6, v5);
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_219BDB854();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setActionURL:(id)l
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (l)
  {
    sub_219BDB8B4();
    v8 = sub_219BDB954();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_219BDB954();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR___TSEditorialItem_actionURL;
  swift_beginAccess();
  selfCopy = self;
  sub_218FA6590(v7, self + v10);
  swift_endAccess();
}

- (UIImage)thumbnailImage
{
  v3 = OBJC_IVAR___TSEditorialItem_thumbnailImage;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setThumbnailImage:(id)image
{
  v5 = OBJC_IVAR___TSEditorialItem_thumbnailImage;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = image;
  imageCopy = image;
}

- (TSEditorialItem)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle subtitleColor:(id)color attributes:(id)attributes actionURL:(id)l thumbnailImage:(id)image backingTag:(id)self0 headline:(id)self1
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF5414();
  v19 = v18;
  v20 = sub_219BF5414();
  v41 = v21;
  v42 = v20;
  if (subtitle)
  {
    v22 = sub_219BF5414();
    v39 = v23;
    v40 = v22;
    if (color)
    {
LABEL_3:
      color = sub_219BF5414();
      v38 = v24;
      goto LABEL_6;
    }
  }

  else
  {
    v39 = 0;
    v40 = 0;
    if (color)
    {
      goto LABEL_3;
    }
  }

  v38 = 0;
LABEL_6:
  v25 = sub_219BF5924();
  if (l)
  {
    sub_219BDB8B4();
    v26 = sub_219BDB954();
    v27 = *(v26 - 8);
    colorCopy = color;
    v28 = v17;
    v29 = *(v27 + 56);
    v36 = v25;
    imageCopy = image;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v29(v16, 0, 1, v26);
    v17 = v28;
    v25 = v36;
    color = colorCopy;
  }

  else
  {
    v31 = sub_219BDB954();
    (*(*(v31 - 8) + 56))(v16, 1, 1, v31);
    imageCopy2 = image;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  v33 = sub_218FA72AC(v17, v19, v42, v41, v40, v39, color, v38, v25, v16, image, tag, headline);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v33;
}

- (TSEditorialItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end