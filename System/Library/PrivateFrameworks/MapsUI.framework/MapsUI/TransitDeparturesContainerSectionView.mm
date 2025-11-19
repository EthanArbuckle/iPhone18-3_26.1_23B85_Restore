@interface TransitDeparturesContainerSectionView
- (NSDirectionalEdgeInsets)_resolvedBottomSeparatorInsetsForView:(id)a3;
- (_TtC6MapsUI37TransitDeparturesContainerSectionView)initWithCoder:(id)a3;
- (_TtC6MapsUI37TransitDeparturesContainerSectionView)initWithConfiguration:(id)a3;
- (_TtC6MapsUI37TransitDeparturesContainerSectionView)initWithFrame:(CGRect)a3;
- (void)verticalCardContainerView:(id)a3 didSelectRow:(id)a4 atIndex:(int64_t)a5;
@end

@implementation TransitDeparturesContainerSectionView

- (void)verticalCardContainerView:(id)a3 didSelectRow:(id)a4 atIndex:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1C5641140(v8);
}

- (NSDirectionalEdgeInsets)_resolvedBottomSeparatorInsetsForView:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_1C5626E40(0, &qword_1EC16DC70, 0x1E696F3C0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = a3;
  v8 = self;
  if ([v7 isKindOfClass_])
  {
    v9 = *MEMORY[0x1E69DC5C0];
    v10 = *(MEMORY[0x1E69DC5C0] + 8);
    v11 = *(MEMORY[0x1E69DC5C0] + 16);
    v12 = *(MEMORY[0x1E69DC5C0] + 24);
  }

  else
  {
    v21.receiver = v8;
    v21.super_class = ObjectType;
    [(MUPlaceVerticalCardContainerView *)&v21 _resolvedBottomSeparatorInsetsForView:v7];
    v9 = v13;
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  result.trailing = v20;
  result.bottom = v19;
  result.leading = v18;
  result.top = v17;
  return result;
}

- (_TtC6MapsUI37TransitDeparturesContainerSectionView)initWithConfiguration:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI37TransitDeparturesContainerSectionView_rowFeedbackDelegate) = 0;
  swift_unknownObjectWeakInit();
  v6 = self + OBJC_IVAR____TtC6MapsUI37TransitDeparturesContainerSectionView_departuresContainer;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(MUPlaceVerticalCardContainerView *)&v8 initWithConfiguration:a3];
}

- (_TtC6MapsUI37TransitDeparturesContainerSectionView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI37TransitDeparturesContainerSectionView_rowFeedbackDelegate) = 0;
  swift_unknownObjectWeakInit();
  v9 = self + OBJC_IVAR____TtC6MapsUI37TransitDeparturesContainerSectionView_departuresContainer;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(MUStackView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC6MapsUI37TransitDeparturesContainerSectionView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI37TransitDeparturesContainerSectionView_rowFeedbackDelegate) = 0;
  swift_unknownObjectWeakInit();
  v6 = self + OBJC_IVAR____TtC6MapsUI37TransitDeparturesContainerSectionView_departuresContainer;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(TransitDeparturesContainerSectionView *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end