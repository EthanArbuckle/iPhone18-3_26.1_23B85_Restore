@interface HUAccessoryRepresentableItemModuleContext
- (BOOL)hideSourceItemDescriptions;
- (BOOL)showFooter;
- (HFAccessoryLikeObjectContainer)accessoryContainer;
- (HFCharacteristicValueSource)valueSource;
- (HUAccessoryRepresentableItemModuleContext)initWithObjectLevel:(unint64_t)level accessoryContainer:(id)container sectionGroupingType:(int64_t)type hideSourceItemDescriptions:(BOOL)descriptions showFooter:(BOOL)footer valueSource:(id)source filter:(id)filter itemFilter:(id)self0;
- (id)filter;
- (id)itemFilter;
- (int64_t)sectionGroupingType;
- (unint64_t)objectLevel;
- (void)setAccessoryContainer:(id)container;
- (void)setFilter:(id)filter;
- (void)setHideSourceItemDescriptions:(BOOL)descriptions;
- (void)setItemFilter:(id)filter;
- (void)setObjectLevel:(unint64_t)level;
- (void)setSectionGroupingType:(int64_t)type;
- (void)setShowFooter:(BOOL)footer;
- (void)setValueSource:(id)source;
@end

@implementation HUAccessoryRepresentableItemModuleContext

- (unint64_t)objectLevel
{
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setObjectLevel:(unint64_t)level
{
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  swift_beginAccess();
  *(self + v5) = level;
}

- (HFAccessoryLikeObjectContainer)accessoryContainer
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setAccessoryContainer:(id)container
{
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  swift_beginAccess();
  *(self + v5) = container;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (int64_t)sectionGroupingType
{
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSectionGroupingType:(int64_t)type
{
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (BOOL)hideSourceItemDescriptions
{
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHideSourceItemDescriptions:(BOOL)descriptions
{
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  swift_beginAccess();
  *(self + v5) = descriptions;
}

- (BOOL)showFooter
{
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowFooter:(BOOL)footer
{
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  swift_beginAccess();
  *(self + v5) = footer;
}

- (HFCharacteristicValueSource)valueSource
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setValueSource:(id)source
{
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
  swift_beginAccess();
  *(self + v5) = source;
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

- (void)setFilter:(id)filter
{
  v4 = _Block_copy(filter);
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
  selfCopy = self;
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

- (void)setItemFilter:(id)filter
{
  v4 = _Block_copy(filter);
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
  selfCopy = self;
  sub_20CEC8164(v7);
}

- (HUAccessoryRepresentableItemModuleContext)initWithObjectLevel:(unint64_t)level accessoryContainer:(id)container sectionGroupingType:(int64_t)type hideSourceItemDescriptions:(BOOL)descriptions showFooter:(BOOL)footer valueSource:(id)source filter:(id)filter itemFilter:(id)self0
{
  v15 = _Block_copy(filter);
  v16 = _Block_copy(itemFilter);
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
  v21 = sub_20CF8775C(level, container, type, descriptions, footer, source, v19, v18, v17, v20);
  sub_20CEC8164(v17);
  sub_20CEC8164(v19);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v21;
}

@end