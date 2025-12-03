@interface HUTileCell
- (BOOL)isRearranging;
- (BOOL)prefixLabelShouldFeather;
- (BOOL)primaryLabelShouldFeather;
- (BOOL)recognizeDoubleClickGesture;
- (BOOL)reorderable;
- (BOOL)secondaryLabelShouldFeather;
- (BOOL)showPrefixLabel;
- (BOOL)toggleable;
- (BOOL)useMutedIconOffColors;
- (CGRect)bounds;
- (CGRect)iconViewTileFrame;
- (CGRect)prefixLabelTileFrame;
- (CGRect)primaryLabelTileFrame;
- (CGRect)secondaryLabelTileFrame;
- (CGRect)tileFrame;
- (HFItem)item;
- (HUBackgroundEffectViewGrouping)backgroundEffectGrouper;
- (HUGridSize)gridSize;
- (UICellConfigurationState)_bridgedConfigurationState;
- (UIColor)backgroundColor;
- (double)backgroundCornerRadius;
- (id)baseIconViewConfiguration;
- (id)createBackgroundBlurView;
- (id)prefixLabelFont;
- (id)prefixLabelTextColor;
- (id)primaryLabelFont;
- (id)primaryLabelTextColor;
- (id)secondaryAttributedString;
- (id)secondaryLabelFont;
- (id)secondaryLabelTextColor;
- (id)tappableAreaForPoint:(CGPoint)point;
- (unint64_t)backgroundDisplayStyle;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)configureDragItem:(id)item;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundDisplayStyle:(unint64_t)style;
- (void)setBackgroundEffectGrouper:(id)grouper;
- (void)setBounds:(CGRect)bounds;
- (void)setGridSize:(HUGridSize)size;
- (void)setItem:(id)item;
- (void)setRearranging:(BOOL)rearranging;
- (void)setReorderable:(BOOL)reorderable;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HUTileCell

- (HFItem)item
{
  v3 = OBJC_IVAR___HUTileCell_item;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_20D001BD8(item);
}

- (BOOL)showPrefixLabel
{
  v3 = OBJC_IVAR___HUTileCell_showPrefixLabel;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (BOOL)toggleable
{
  v3 = OBJC_IVAR___HUTileCell_toggleable;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (BOOL)useMutedIconOffColors
{
  v3 = OBJC_IVAR___HUTileCell_useMutedIconOffColors;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (HUBackgroundEffectViewGrouping)backgroundEffectGrouper
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setBackgroundEffectGrouper:(id)grouper
{
  v5 = OBJC_IVAR___HUTileCell_backgroundEffectGrouper;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = grouper;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRelease();
  [(HUTileCell *)selfCopy setNeedsUpdateConfiguration];
  swift_unknownObjectRelease();
}

- (unint64_t)backgroundDisplayStyle
{
  v3 = OBJC_IVAR___HUTileCell_backgroundDisplayStyle;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setBackgroundDisplayStyle:(unint64_t)style
{
  v5 = OBJC_IVAR___HUTileCell_backgroundDisplayStyle;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = style;
  if (v6 != style)
  {
    [(HUTileCell *)self setNeedsUpdateConfiguration];
  }
}

- (HUGridSize)gridSize
{
  v2 = (self + OBJC_IVAR___HUTileCell__gridSize);
  if (*(&self->super.super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR___HUTileCell__gridSize) == 1)
  {
    selfCopy = self;
    v4 = sub_20D005CF8(selfCopy);
    v6 = v5;

    v7 = v6;
    v8 = v4;
  }

  else
  {
    v8 = *v2;
    v7 = v2[1];
  }

  result.columnsAcross = v7;
  result.rowsDown = v8;
  return result;
}

- (void)setGridSize:(HUGridSize)size
{
  v3 = (self + OBJC_IVAR___HUTileCell__gridSize);
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___HUTileCell__gridSize);
  v5 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR___HUTileCell__gridSize);
  v6 = *(&self->super.super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR___HUTileCell__gridSize);
  *v3 = size;
  LOBYTE(v3[1].rowsDown) = 0;
  if ((v6 & 1) != 0 || (size.rowsDown == v4 ? (v7 = size.columnsAcross == v5) : (v7 = 0), !v7))
  {
    [(HUTileCell *)self setNeedsUpdateConfiguration];
  }
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TileCell();
  [(HUTileCell *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  sub_20D006098(x, y, width, height);
}

- (id)tappableAreaForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  v6 = sub_20D00325C(x, y);

  return v6;
}

- (UICellConfigurationState)_bridgedConfigurationState
{
  v3 = sub_20D5660D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_20D0063CC(v6);

  v8 = sub_20D5660B8();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_20D006B4C();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_20D5660D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D5660C8();
  selfCopy = self;
  sub_20D0070A8(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TileCell();
  changeCopy = change;
  v5 = v6.receiver;
  [(HUTileCell *)&v6 traitCollectionDidChange:changeCopy];
  [v5 setNeedsUpdateConfiguration];
}

- (BOOL)isRearranging
{
  v3 = OBJC_IVAR___HUTileCell_isRearranging;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setRearranging:(BOOL)rearranging
{
  selfCopy = self;
  sub_20D003578(rearranging);
}

- (BOOL)reorderable
{
  v3 = OBJC_IVAR___HUTileCell_reorderable;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setReorderable:(BOOL)reorderable
{
  selfCopy = self;
  sub_20D0038D4(reorderable);
}

- (void)layoutSubviews
{
  selfCopy = self;
  contentView = [(HUTileCell *)selfCopy contentView];
  v4 = (selfCopy + OBJC_IVAR___HUTileCell_contentScale);
  swift_beginAccess();
  if (v4[1])
  {
    v5 = xmmword_20D5C4670;
    v6 = xmmword_20D5C4680;
    v7 = 0uLL;
  }

  else
  {
    v8 = *v4;
    v12.a = 1.0;
    v12.b = 0.0;
    v12.c = 0.0;
    v12.d = 1.0;
    v12.tx = 0.0;
    v12.ty = 0.0;
    CGAffineTransformScale(&v10, &v12, v8, v8);
    v6 = *&v10.a;
    v5 = *&v10.c;
    v7 = *&v10.tx;
  }

  *&v12.a = v6;
  *&v12.c = v5;
  *&v12.tx = v7;
  [contentView setTransform_];

  v9 = type metadata accessor for TileCell();
  v11.receiver = selfCopy;
  v11.super_class = v9;
  [(HUTileCell *)&v11 layoutSubviews];
}

- (void)configureDragItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  TileCell.configureDragItem(_:)(itemCopy);
}

- (id)secondaryAttributedString
{
  selfCopy = self;
  v3 = TileCell.secondaryAttributedString()();

  return v3;
}

- (CGRect)iconViewTileFrame
{
  v2 = sub_20D009BA8(self, a2, &OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)prefixLabelTileFrame
{
  v2 = sub_20D009BA8(self, a2, &OBJC_IVAR____TtC6HomeUI19TileCellContentView_prefixLabel);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)primaryLabelTileFrame
{
  v2 = sub_20D009BA8(self, a2, &OBJC_IVAR____TtC6HomeUI19TileCellContentView_titleLabel);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)secondaryLabelTileFrame
{
  v2 = sub_20D009BA8(self, a2, &OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)prefixLabelShouldFeather
{
  selfCopy = self;
  v3 = TileCell.prefixLabelShouldFeather()();

  return v3;
}

- (BOOL)primaryLabelShouldFeather
{
  selfCopy = self;
  v3 = TileCell.primaryLabelShouldFeather()();

  return v3;
}

- (BOOL)secondaryLabelShouldFeather
{
  selfCopy = self;
  v3 = TileCell.secondaryLabelShouldFeather()();

  return v3;
}

- (id)prefixLabelFont
{
  selfCopy = self;
  v3 = TileCell.prefixLabelFont()();

  return v3;
}

- (id)primaryLabelFont
{
  selfCopy = self;
  v3 = TileCell.primaryLabelFont()();

  return v3;
}

- (id)secondaryLabelFont
{
  selfCopy = self;
  v3 = TileCell.secondaryLabelFont()();

  return v3;
}

- (id)prefixLabelTextColor
{
  selfCopy = self;
  v3 = TileCell.prefixLabelTextColor()();

  return v3;
}

- (id)primaryLabelTextColor
{
  selfCopy = self;
  v3 = TileCell.primaryLabelTextColor()();

  return v3;
}

- (id)secondaryLabelTextColor
{
  selfCopy = self;
  v3 = TileCell.secondaryLabelTextColor()();

  return v3;
}

- (UIColor)backgroundColor
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E080);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  selfCopy = self;
  MEMORY[0x20F31D5D0]();
  v7 = sub_20D5661A8();
  if ((*(*(v7 - 8) + 48))(v5, 1, v7))
  {

    v8 = 0;
  }

  else
  {
    v8 = sub_20D566148();
  }

  sub_20CEF928C(v5, &unk_27C81E080);

  return v8;
}

- (void)setBackgroundColor:(id)color
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E080);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  colorCopy = color;
  selfCopy = self;
  MEMORY[0x20F31D5D0]();
  v13 = sub_20D5661A8();
  if ((*(*(v13 - 8) + 48))(v10, 1, v13))
  {
    sub_20CEF9178(v10, v7, &unk_27C81E080);
    MEMORY[0x20F31D5E0](v7);

    sub_20CEF928C(v10, &unk_27C81E080);
  }

  else
  {
    v14 = colorCopy;
    sub_20D566158();
    MEMORY[0x20F31D5E0](v10);
  }
}

- (CGRect)tileFrame
{
  [(HUTileCell *)self bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)backgroundCornerRadius
{
  selfCopy = self;
  v3 = TileCell.backgroundCornerRadius()();

  return v3;
}

- (id)createBackgroundBlurView
{
  selfCopy = self;
  TileCell.createBackgroundBlurView()(v3);
  v5 = v4;

  return v5;
}

- (BOOL)recognizeDoubleClickGesture
{
  v2 = objc_opt_self();

  return [v2 isAnIPad];
}

- (id)baseIconViewConfiguration
{
  selfCopy = self;
  TileCell.baseIconViewConfiguration()(v11);

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