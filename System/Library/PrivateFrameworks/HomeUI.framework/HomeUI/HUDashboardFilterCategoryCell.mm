@interface HUDashboardFilterCategoryCell
+ (Class)layoutOptionsClass;
- (BOOL)areCellContentsHidden;
- (BOOL)isRearranging;
- (HFItem)item;
- (HUBackgroundEffectViewGrouping)backgroundEffectGrouper;
- (HUDashboardFilterCategoryCell)initWithFrame:(CGRect)frame;
- (HUGridCellLayoutOptions)layoutOptions;
- (UICellConfigurationState)_bridgedConfigurationState;
- (unint64_t)backgroundDisplayStyle;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)prepareForReuse;
- (void)setBackgroundDisplayStyle:(unint64_t)style;
- (void)setBackgroundEffectGrouper:(id)grouper;
- (void)setCellContentsHidden:(BOOL)hidden;
- (void)setItem:(id)item;
- (void)setLayoutOptions:(id)options;
- (void)setRearranging:(BOOL)rearranging;
@end

@implementation HUDashboardFilterCategoryCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_20CF0766C();
}

- (UICellConfigurationState)_bridgedConfigurationState
{
  v3 = sub_20D5660D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DashboardFilterCategoryCell();
  v16.receiver = self;
  v16.super_class = v7;
  selfCopy = self;
  _bridgedConfigurationState = [(HUDashboardFilterCategoryCell *)&v16 _bridgedConfigurationState];
  sub_20D5660C8();

  v10 = sub_20D566098();
  if (qword_28111FD88 != -1)
  {
    v14 = v10;
    swift_once();
    v10 = v14;
  }

  v15[7] = v10 & 1;
  v11 = qword_28111FD90;
  sub_20D5687F8();
  sub_20D566088();

  v12 = sub_20D5660B8();
  (*(v4 + 8))(v6, v3);

  return v12;
}

- (HUGridCellLayoutOptions)layoutOptions
{
  v3 = OBJC_IVAR___HUDashboardFilterCategoryCell_layoutOptions;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setLayoutOptions:(id)options
{
  v5 = OBJC_IVAR___HUDashboardFilterCategoryCell_layoutOptions;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.super.isa + v5) = options;
  optionsCopy = options;
}

- (BOOL)areCellContentsHidden
{
  v3 = OBJC_IVAR___HUDashboardFilterCategoryCell_areCellContentsHidden;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setCellContentsHidden:(BOOL)hidden
{
  v5 = OBJC_IVAR___HUDashboardFilterCategoryCell_areCellContentsHidden;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = hidden;
}

- (HFItem)item
{
  v3 = OBJC_IVAR___HUDashboardFilterCategoryCell_item;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setItem:(id)item
{
  v5 = OBJC_IVAR___HUDashboardFilterCategoryCell_item;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.super.isa + v5) = item;
  itemCopy = item;
  selfCopy = self;

  [(HUDashboardFilterCategoryCell *)selfCopy setNeedsUpdateConfiguration];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_20D5660D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D5660C8();
  selfCopy = self;
  v9 = sub_20D5660B8();
  v10 = type metadata accessor for DashboardFilterCategoryCell();
  v11.receiver = selfCopy;
  v11.super_class = v10;
  [(HUDashboardFilterCategoryCell *)&v11 _bridgedUpdateConfigurationUsingState:v9];

  sub_20CF0875C(v7);
  sub_20CF08AE8(v7);

  (*(v5 + 8))(v7, v4);
}

- (unint64_t)backgroundDisplayStyle
{
  v3 = OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundDisplayStyle;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setBackgroundDisplayStyle:(unint64_t)style
{
  v5 = OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundDisplayStyle;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = style;
}

- (HUBackgroundEffectViewGrouping)backgroundEffectGrouper
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setBackgroundEffectGrouper:(id)grouper
{
  v5 = OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundEffectGrouper;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.super.isa + v5) = grouper;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_20CF0855C(v6);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

- (BOOL)isRearranging
{
  v3 = OBJC_IVAR___HUDashboardFilterCategoryCell_isRearranging;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setRearranging:(BOOL)rearranging
{
  selfCopy = self;
  sub_20CF092D8(rearranging);
}

- (HUDashboardFilterCategoryCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUDashboardFilterCategoryCell_layoutOptions) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUDashboardFilterCategoryCell_areCellContentsHidden) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUDashboardFilterCategoryCell_item) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundDisplayStyle) = 1;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundEffectGrouper) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUDashboardFilterCategoryCell_isRearranging) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DashboardFilterCategoryCell();
  return [(HUDashboardFilterCategoryCell *)&v8 initWithFrame:x, y, width, height];
}

+ (Class)layoutOptionsClass
{
  sub_20CF09C88();

  return swift_getObjCClassFromMetadata();
}

@end