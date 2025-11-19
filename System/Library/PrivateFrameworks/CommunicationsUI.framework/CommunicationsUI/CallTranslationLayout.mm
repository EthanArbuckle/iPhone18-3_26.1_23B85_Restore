@interface CallTranslationLayout
- (_TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout)initWithSection:(id)a3;
- (_TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout)initWithSection:(id)a3 configuration:(id)a4;
- (_TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout)initWithSectionProvider:(id)a3;
- (_TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout)initWithSectionProvider:(id)a3 configuration:(id)a4;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareLayout;
@end

@implementation CallTranslationLayout

- (void)prepareLayout
{
  v2 = self;
  sub_1C2CA1D1C();
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C2CA1F58(v4);
}

- (_TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout)initWithSection:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_didUpdate);
  *v6 = 0;
  v6[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_bottomInset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_ignoreContentSizeUpdate) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_needsUpdateOffset) = 0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(CallTranslationLayout *)&v8 initWithSection:a3];
}

- (_TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout)initWithSection:(id)a3 configuration:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_didUpdate);
  *v8 = 0;
  v8[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_bottomInset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_ignoreContentSizeUpdate) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_needsUpdateOffset) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(CallTranslationLayout *)&v10 initWithSection:a3 configuration:a4];
}

- (_TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout)initWithSectionProvider:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_1C2CA2204(sub_1C2CA3D0C, v4);
}

- (_TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout)initWithSectionProvider:(id)a3 configuration:(id)a4
{
  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_1C2CA2378(sub_1C2CA39BC, v6, a4);
}

@end