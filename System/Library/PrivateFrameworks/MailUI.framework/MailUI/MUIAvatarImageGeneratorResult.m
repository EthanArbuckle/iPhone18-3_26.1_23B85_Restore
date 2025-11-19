@interface MUIAvatarImageGeneratorResult
+ (id)circularPlaceholderResult;
- (BOOL)canShowBorder;
- (BOOL)isEqual:(id)a3;
- (BOOL)needsBorderFor:(int64_t)a3;
- (CNContact)contact;
- (MUIAvatarImageGeneratorResult)initWithAddress:(id)a3 image:(id)a4 style:(int64_t)a5 type:(int64_t)a6;
- (MUIAvatarImageGeneratorResult)initWithContact:(id)a3 address:(id)a4 imageProvider:(id)a5 style:(int64_t)a6;
- (MUISenderHeaderColors)headerColors;
- (NSString)debugDescription;
- (NSString)description;
- (UIImage)image;
- (id)init:(id)a3 address:(id)a4 imageProvider:(id)a5 style:(int64_t)a6 type:(int64_t)a7;
- (int64_t)avatarStyle;
- (int64_t)avatarType;
- (int64_t)hash;
- (void)setAvatarStyle:(int64_t)a3;
- (void)setAvatarType:(int64_t)a3;
- (void)setContact:(id)a3;
- (void)setHeaderColors:(id)a3;
- (void)setImage:(id)a3;
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

- (BOOL)needsBorderFor:(int64_t)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIAvatarImageGeneratorResult.needsBorder(for:)(a3);
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

- (void)setContact:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  MUIAvatarImageGeneratorResult.contact.setter(a3);
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

- (void)setImage:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  MUIAvatarImageGeneratorResult.image.setter(a3);
  MEMORY[0x277D82BD8](self);
}

- (void)setAvatarStyle:(int64_t)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIAvatarImageGeneratorResult.style.setter(a3);
  MEMORY[0x277D82BD8](self);
}

- (void)setAvatarType:(int64_t)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_214BFEAC4(a3);
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

- (void)setHeaderColors:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  MUIAvatarImageGeneratorResult.colors.setter(a3);
  MEMORY[0x277D82BD8](self);
}

- (MUIAvatarImageGeneratorResult)initWithAddress:(id)a3 image:(id)a4 style:(int64_t)a5 type:(int64_t)a6
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a4);
  return MUIAvatarImageGeneratorResult.init(_:image:style:type:)(a3, a4, a5, a6);
}

- (MUIAvatarImageGeneratorResult)initWithContact:(id)a3 address:(id)a4 imageProvider:(id)a5 style:(int64_t)a6
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  swift_unknownObjectRetain();
  v9 = _Block_copy(a5);
  v6 = swift_allocObject();
  *(v6 + 16) = v9;
  return MUIAvatarImageGeneratorResult.init(_:address:imageProvider:style:)(a3, a4, sub_214BFF924, v6, a6);
}

+ (id)circularPlaceholderResult
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v2 = static MUIAvatarImageGeneratorResult.circularPlaceholder()();

  return v2;
}

- (id)init:(id)a3 address:(id)a4 imageProvider:(id)a5 style:(int64_t)a6 type:(int64_t)a7
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  swift_unknownObjectRetain();
  v10 = _Block_copy(a5);
  v7 = swift_allocObject();
  *(v7 + 16) = v10;
  return sub_214BFFC1C(a3, a4, sub_214BFF924, v7, a6, a7);
}

- (BOOL)canShowBorder
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_214C00198();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (BOOL)isEqual:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  if (a3)
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