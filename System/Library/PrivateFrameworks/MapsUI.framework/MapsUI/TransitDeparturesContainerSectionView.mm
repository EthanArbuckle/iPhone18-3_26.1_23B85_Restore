@interface TransitDeparturesContainerSectionView
- (NSDirectionalEdgeInsets)_resolvedBottomSeparatorInsetsForView:(id)view;
- (_TtC6MapsUI37TransitDeparturesContainerSectionView)initWithCoder:(id)coder;
- (_TtC6MapsUI37TransitDeparturesContainerSectionView)initWithConfiguration:(id)configuration;
- (_TtC6MapsUI37TransitDeparturesContainerSectionView)initWithFrame:(CGRect)frame;
- (void)verticalCardContainerView:(id)view didSelectRow:(id)row atIndex:(int64_t)index;
@end

@implementation TransitDeparturesContainerSectionView

- (void)verticalCardContainerView:(id)view didSelectRow:(id)row atIndex:(int64_t)index
{
  viewCopy = view;
  rowCopy = row;
  selfCopy = self;
  sub_1C5641140(rowCopy);
}

- (NSDirectionalEdgeInsets)_resolvedBottomSeparatorInsetsForView:(id)view
{
  ObjectType = swift_getObjectType();
  sub_1C5626E40(0, &qword_1EC16DC70, 0x1E696F3C0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  viewCopy = view;
  selfCopy = self;
  if ([viewCopy isKindOfClass_])
  {
    v9 = *MEMORY[0x1E69DC5C0];
    v10 = *(MEMORY[0x1E69DC5C0] + 8);
    v11 = *(MEMORY[0x1E69DC5C0] + 16);
    v12 = *(MEMORY[0x1E69DC5C0] + 24);
  }

  else
  {
    v21.receiver = selfCopy;
    v21.super_class = ObjectType;
    [(MUPlaceVerticalCardContainerView *)&v21 _resolvedBottomSeparatorInsetsForView:viewCopy];
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

- (_TtC6MapsUI37TransitDeparturesContainerSectionView)initWithConfiguration:(id)configuration
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
  return [(MUPlaceVerticalCardContainerView *)&v8 initWithConfiguration:configuration];
}

- (_TtC6MapsUI37TransitDeparturesContainerSectionView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC6MapsUI37TransitDeparturesContainerSectionView)initWithCoder:(id)coder
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
  coderCopy = coder;
  v8 = [(TransitDeparturesContainerSectionView *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end