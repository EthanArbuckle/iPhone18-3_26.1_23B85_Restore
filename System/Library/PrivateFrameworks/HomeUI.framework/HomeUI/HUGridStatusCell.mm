@interface HUGridStatusCell
+ (Class)layoutOptionsClass;
- (BOOL)areCellContentsHidden;
- (CGRect)iconViewTileFrame;
- (CGRect)prefixLabelTileFrame;
- (CGRect)primaryLabelTileFrame;
- (CGRect)secondaryLabelTileFrame;
- (CGRect)tileFrame;
- (HFItem)item;
- (HUGridCellLayoutOptions)layoutOptions;
- (HUGridStatusCell)initWithCoder:(id)coder;
- (id)baseIconViewConfiguration;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)prepareForReuse;
- (void)setCellContentsHidden:(BOOL)hidden;
- (void)setItem:(id)item;
- (void)setLayoutOptions:(id)options;
@end

@implementation HUGridStatusCell

+ (Class)layoutOptionsClass
{
  sub_20CECF940(0, &qword_27C821580);

  return swift_getObjCClassFromMetadata();
}

- (BOOL)areCellContentsHidden
{
  v3 = OBJC_IVAR___HUGridStatusCell_areCellContentsHidden;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setCellContentsHidden:(BOOL)hidden
{
  v5 = OBJC_IVAR___HUGridStatusCell_areCellContentsHidden;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = hidden;
}

- (HUGridCellLayoutOptions)layoutOptions
{
  v3 = OBJC_IVAR___HUGridStatusCell_layoutOptions;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setLayoutOptions:(id)options
{
  v5 = OBJC_IVAR___HUGridStatusCell_layoutOptions;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = options;
  optionsCopy = options;
}

- (HFItem)item
{
  v3 = OBJC_IVAR___HUGridStatusCell_item;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setItem:(id)item
{
  v5 = OBJC_IVAR___HUGridStatusCell_item;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = item;
  itemCopy = item;
  selfCopy = self;

  [(HUGridStatusCell *)selfCopy setNeedsUpdateConfiguration];
}

- (HUGridStatusCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___HUGridStatusCell_areCellContentsHidden) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___HUGridStatusCell_layoutOptions) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___HUGridStatusCell_item) = 0;
  result = sub_20D568A58();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v3 = OBJC_IVAR___HUGridStatusCell_areCellContentsHidden;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v3) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for GridStatusCell();
  [(HUGridStatusCell *)&v4 prepareForReuse];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_20D5660D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D5660C8();
  selfCopy = self;
  sub_20D0FC81C(v7);

  (*(v5 + 8))(v7, v4);
}

- (CGRect)iconViewTileFrame
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)prefixLabelTileFrame
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)primaryLabelTileFrame
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)secondaryLabelTileFrame
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)tileFrame
{
  [(HUGridStatusCell *)self frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)baseIconViewConfiguration
{
  selfCopy = self;
  GridStatusCell.baseIconViewConfiguration()(v11);

  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_20D568BD8();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end