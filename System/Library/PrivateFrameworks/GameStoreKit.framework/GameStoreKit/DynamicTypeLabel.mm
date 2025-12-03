@interface DynamicTypeLabel
- (NSString)text;
- (_TtC12GameStoreKit16DynamicTypeLabel)initWithFrame:(CGRect)frame;
- (void)buttonShapesDidChange;
- (void)setAttributedText:(id)text;
- (void)setFont:(id)font;
- (void)setLineSpacing:(int64_t)spacing;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
@end

@implementation DynamicTypeLabel

- (_TtC12GameStoreKit16DynamicTypeLabel)initWithFrame:(CGRect)frame
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  ObjectType = swift_getObjectType();
  v7 = sub_24F922378();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v11 = 0;
  v8 = (*(ObjectType + 144))(v5, 2, 0, 1, 0, &v11, 0, 0);
  swift_deallocPartialClassInstance();
  return v8;
}

- (void)buttonShapesDidChange
{
  selfCopy = self;
  sub_24ED1D2D8();
}

- (void)setFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  sub_24ED20028(font);
}

- (void)setTextAlignment:(int64_t)alignment
{
  v5 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = 0;
  v9 = v6;
  selfCopy = self;
  sub_24ED1ED4C(&v9);
  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for DynamicTypeLabel();
  [(DynamicTypeLabel *)&v8 setTextAlignment:alignment];
}

- (NSString)text
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DynamicTypeLabel();
  v2 = v7.receiver;
  text = [(DynamicTypeLabel *)&v7 text];
  if (text)
  {
    v4 = text;
    sub_24F92B0D8();

    v5 = sub_24F92B098();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setText:(id)text
{
  if (text)
  {
    sub_24F92B0D8();
    selfCopy = self;
    v5 = sub_24F92B098();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for DynamicTypeLabel();
  [(DynamicTypeLabel *)&v7 setText:v5];

  sub_24ED1E7A0(1);
}

- (void)setLineSpacing:(int64_t)spacing
{
  selfCopy = self;
  sub_24ED1EAFC(spacing);
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  selfCopy = self;
  sub_24ED1E7A0(0);
  lineBreakMode = [(DynamicTypeLabel *)selfCopy lineBreakMode];
  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for DynamicTypeLabel();
  [(DynamicTypeLabel *)&v7 setAttributedText:textCopy];
  [(DynamicTypeLabel *)selfCopy setLineBreakMode:lineBreakMode];
}

@end