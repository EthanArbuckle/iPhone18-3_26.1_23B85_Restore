@interface HUAccessoryRepresentableItemModuleContext
- (BOOL)hideSourceItemDescriptions;
- (BOOL)showFooter;
- (HFAccessoryLikeObjectContainer)accessoryContainer;
- (HFCharacteristicValueSource)valueSource;
- (HUAccessoryRepresentableItemModuleContext)initWithObjectLevel:(unint64_t)a3 accessoryContainer:(id)a4 sectionGroupingType:(int64_t)a5 hideSourceItemDescriptions:(BOOL)a6 showFooter:(BOOL)a7 valueSource:(id)a8 filter:(id)a9 itemFilter:(id)a10;
- (id)filter;
- (id)itemFilter;
- (int64_t)sectionGroupingType;
- (unint64_t)objectLevel;
- (void)setAccessoryContainer:(id)a3;
- (void)setFilter:(id)a3;
- (void)setHideSourceItemDescriptions:(BOOL)a3;
- (void)setItemFilter:(id)a3;
- (void)setObjectLevel:(unint64_t)a3;
- (void)setSectionGroupingType:(int64_t)a3;
- (void)setShowFooter:(BOOL)a3;
- (void)setValueSource:(id)a3;
@end

@implementation HUAccessoryRepresentableItemModuleContext

- (unint64_t)objectLevel
{
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setObjectLevel:(unint64_t)a3
{
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (HFAccessoryLikeObjectContainer)accessoryContainer
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setAccessoryContainer:(id)a3
{
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  swift_beginAccess();
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (int64_t)sectionGroupingType
{
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSectionGroupingType:(int64_t)a3
{
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)hideSourceItemDescriptions
{
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHideSourceItemDescriptions:(BOOL)a3
{
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)showFooter
{
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowFooter:(BOOL)a3
{
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (HFCharacteristicValueSource)valueSource
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setValueSource:(id)a3
{
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
  swift_beginAccess();
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (id)filter
{
  v2 = (self + OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CF87B84;
    aBlock[3] = &block_descriptor_68;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFilter:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_20CF87B7C;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_20CEC8164(v7);
}

- (id)itemFilter
{
  v2 = (self + OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_itemFilter);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CF7FA88;
    aBlock[3] = &block_descriptor_61;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setItemFilter:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_20CF87B7C;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_itemFilter);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_20CEC8164(v7);
}

- (HUAccessoryRepresentableItemModuleContext)initWithObjectLevel:(unint64_t)a3 accessoryContainer:(id)a4 sectionGroupingType:(int64_t)a5 hideSourceItemDescriptions:(BOOL)a6 showFooter:(BOOL)a7 valueSource:(id)a8 filter:(id)a9 itemFilter:(id)a10
{
  v15 = _Block_copy(a9);
  v16 = _Block_copy(a10);
  v17 = v16;
  if (!v15)
  {
    v19 = 0;
    v18 = 0;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = 0;
    goto LABEL_6;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v19 = sub_20CF87988;
  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v17 = sub_20CF87B7C;
LABEL_6:
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = sub_20CF8775C(a3, a4, a5, a6, a7, a8, v19, v18, v17, v20);
  sub_20CEC8164(v17);
  sub_20CEC8164(v19);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v21;
}

@end