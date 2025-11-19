@interface DynamicTypeLabel
- (NSString)text;
- (_TtC12GameStoreKit16DynamicTypeLabel)initWithFrame:(CGRect)a3;
- (void)buttonShapesDidChange;
- (void)setAttributedText:(id)a3;
- (void)setFont:(id)a3;
- (void)setLineSpacing:(int64_t)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
@end

@implementation DynamicTypeLabel

- (_TtC12GameStoreKit16DynamicTypeLabel)initWithFrame:(CGRect)a3
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
  v2 = self;
  sub_24ED1D2D8();
}

- (void)setFont:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_24ED20028(a3);
}

- (void)setTextAlignment:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = 0;
  v9 = v6;
  v7 = self;
  sub_24ED1ED4C(&v9);
  v8.receiver = v7;
  v8.super_class = type metadata accessor for DynamicTypeLabel();
  [(DynamicTypeLabel *)&v8 setTextAlignment:a3];
}

- (NSString)text
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DynamicTypeLabel();
  v2 = v7.receiver;
  v3 = [(DynamicTypeLabel *)&v7 text];
  if (v3)
  {
    v4 = v3;
    sub_24F92B0D8();

    v5 = sub_24F92B098();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setText:(id)a3
{
  if (a3)
  {
    sub_24F92B0D8();
    v4 = self;
    v5 = sub_24F92B098();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for DynamicTypeLabel();
  [(DynamicTypeLabel *)&v7 setText:v5];

  sub_24ED1E7A0(1);
}

- (void)setLineSpacing:(int64_t)a3
{
  v4 = self;
  sub_24ED1EAFC(a3);
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24ED1E7A0(0);
  v6 = [(DynamicTypeLabel *)v5 lineBreakMode];
  v7.receiver = v5;
  v7.super_class = type metadata accessor for DynamicTypeLabel();
  [(DynamicTypeLabel *)&v7 setAttributedText:v4];
  [(DynamicTypeLabel *)v5 setLineBreakMode:v6];
}

@end