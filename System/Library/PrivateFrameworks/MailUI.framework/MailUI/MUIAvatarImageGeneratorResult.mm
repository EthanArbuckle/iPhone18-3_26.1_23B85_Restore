@interface MUIAvatarImageGeneratorResult
+ (id)circularPlaceholderResult;
- (BOOL)canShowBorder;
- (BOOL)isEqual:(id)equal;
- (BOOL)needsBorderFor:(int64_t)for;
- (CNContact)contact;
- (MUIAvatarImageGeneratorResult)initWithAddress:(id)address image:(id)image style:(int64_t)style type:(int64_t)type;
- (MUIAvatarImageGeneratorResult)initWithContact:(id)contact address:(id)address imageProvider:(id)provider style:(int64_t)style;
- (MUISenderHeaderColors)headerColors;
- (NSString)debugDescription;
- (NSString)description;
- (UIImage)image;
- (id)init:(id)init address:(id)address imageProvider:(id)provider style:(int64_t)style type:(int64_t)type;
- (int64_t)avatarStyle;
- (int64_t)avatarType;
- (int64_t)hash;
- (void)setAvatarStyle:(int64_t)style;
- (void)setAvatarType:(int64_t)type;
- (void)setContact:(id)contact;
- (void)setHeaderColors:(id)colors;
- (void)setImage:(id)image;
@end

@implementation MUIAvatarImageGeneratorResult

- (CNContact)contact
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = MUIAvatarImageGeneratorResult.contact.getter();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (int64_t)avatarStyle
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = MUIAvatarImageGeneratorResult.style.getter();
  MEMORY[0x277D82BD8](self);
  return v5;
}

- (NSString)description
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIAvatarImageGeneratorResult.description.getter();
  MEMORY[0x277D82BD8](self);
  v5 = sub_214CCF544();

  return v5;
}

- (BOOL)needsBorderFor:(int64_t)for
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIAvatarImageGeneratorResult.needsBorder(for:)(for);
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (int64_t)avatarType
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = MUIAvatarImageGeneratorResult.type.getter();
  MEMORY[0x277D82BD8](self);
  return v5;
}

- (void)setContact:(id)contact
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](contact);
  MEMORY[0x277D82BE0](self);
  MUIAvatarImageGeneratorResult.contact.setter(contact);
  MEMORY[0x277D82BD8](self);
}

- (UIImage)image
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = MUIAvatarImageGeneratorResult.image.getter();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)setImage:(id)image
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](image);
  MEMORY[0x277D82BE0](self);
  MUIAvatarImageGeneratorResult.image.setter(image);
  MEMORY[0x277D82BD8](self);
}

- (void)setAvatarStyle:(int64_t)style
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIAvatarImageGeneratorResult.style.setter(style);
  MEMORY[0x277D82BD8](self);
}

- (void)setAvatarType:(int64_t)type
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_214BFEAC4(type);
  MEMORY[0x277D82BD8](self);
}

- (MUISenderHeaderColors)headerColors
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = MUIAvatarImageGeneratorResult.colors.getter();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)setHeaderColors:(id)colors
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](colors);
  MEMORY[0x277D82BE0](self);
  MUIAvatarImageGeneratorResult.colors.setter(colors);
  MEMORY[0x277D82BD8](self);
}

- (MUIAvatarImageGeneratorResult)initWithAddress:(id)address image:(id)image style:(int64_t)style type:(int64_t)type
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](image);
  return MUIAvatarImageGeneratorResult.init(_:image:style:type:)(address, image, style, type);
}

- (MUIAvatarImageGeneratorResult)initWithContact:(id)contact address:(id)address imageProvider:(id)provider style:(int64_t)style
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](contact);
  swift_unknownObjectRetain();
  v9 = _Block_copy(provider);
  v6 = swift_allocObject();
  *(v6 + 16) = v9;
  return MUIAvatarImageGeneratorResult.init(_:address:imageProvider:style:)(contact, address, sub_214BFF924, v6, style);
}

+ (id)circularPlaceholderResult
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v2 = static MUIAvatarImageGeneratorResult.circularPlaceholder()();

  return v2;
}

- (id)init:(id)init address:(id)address imageProvider:(id)provider style:(int64_t)style type:(int64_t)type
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](init);
  swift_unknownObjectRetain();
  v10 = _Block_copy(provider);
  v7 = swift_allocObject();
  *(v7 + 16) = v10;
  return sub_214BFFC1C(init, address, sub_214BFF924, v7, style, type);
}

- (BOOL)canShowBorder
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_214C00198();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (BOOL)isEqual:(id)equal
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  if (equal)
  {
    sub_214CD0054();
    sub_214B11A4C(v6, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  MUIAvatarImageGeneratorResult.isEqual(_:)(v7);
  sub_214A7D24C(v7);
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (int64_t)hash
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = MUIAvatarImageGeneratorResult.hash.getter();
  MEMORY[0x277D82BD8](self);
  return v5;
}

- (NSString)debugDescription
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIAvatarImageGeneratorResult.debugDescription.getter();
  MEMORY[0x277D82BD8](self);
  v5 = sub_214CCF544();

  return v5;
}

@end