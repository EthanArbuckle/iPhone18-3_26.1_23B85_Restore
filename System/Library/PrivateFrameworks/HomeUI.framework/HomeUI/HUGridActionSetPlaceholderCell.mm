@interface HUGridActionSetPlaceholderCell
- (id)iconView;
- (void)_setupActionSetCell;
- (void)updateConstraints;
@end

@implementation HUGridActionSetPlaceholderCell

- (id)iconView
{
  iconView = self->_iconView;
  if (!iconView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D180D0]);
    v5 = self->_iconView;
    self->_iconView = v4;

    contentView = [(HUGridActionSetPlaceholderCell *)self contentView];
    [contentView addSubview:self->_iconView];

    [(HUIconView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUIconView *)self->_iconView setContentMode:1];
    contentEffect = [(HUGridCell *)self contentEffect];
    [(HUIconView *)self->_iconView setVibrancyEffect:contentEffect];

    iconView = self->_iconView;
  }

  return iconView;
}

- (void)_setupActionSetCell
{
  v5.receiver = self;
  v5.super_class = HUGridActionSetPlaceholderCell;
  [(HUGridActionSetCell *)&v5 _setupActionSetCell];
  v3 = [MEMORY[0x277D75210] effectWithStyle:6];
  gridBackgroundView = [(HUGridCell *)self gridBackgroundView];
  [gridBackgroundView setOverrideBackgroundEffect:v3];
}

- (void)updateConstraints
{
  actionSetCellConstraints = [(HUGridActionSetCell *)self actionSetCellConstraints];

  if (!actionSetCellConstraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    iconView = [(HUGridActionSetPlaceholderCell *)self iconView];
    leadingAnchor = [iconView leadingAnchor];
    contentView = [(HUGridActionSetPlaceholderCell *)self contentView];
    leadingAnchor2 = [contentView leadingAnchor];
    sceneCellLayoutOptions = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
    [sceneCellLayoutOptions iconInnerHorizontalMargin];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    [array addObject:v10];

    iconView2 = [(HUGridActionSetPlaceholderCell *)self iconView];
    centerYAnchor = [iconView2 centerYAnchor];
    contentView2 = [(HUGridActionSetPlaceholderCell *)self contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v15];

    iconView3 = [(HUGridActionSetPlaceholderCell *)self iconView];
    widthAnchor = [iconView3 widthAnchor];
    layoutOptions = [(HUGridCell *)self layoutOptions];
    [layoutOptions iconSize];
    v19 = [widthAnchor constraintEqualToConstant:?];
    [array addObject:v19];

    iconView4 = [(HUGridActionSetPlaceholderCell *)self iconView];
    heightAnchor = [iconView4 heightAnchor];
    layoutOptions2 = [(HUGridCell *)self layoutOptions];
    [layoutOptions2 iconSize];
    v23 = [heightAnchor constraintEqualToConstant:?];
    [array addObject:v23];

    titleAndDescriptionView = [(HUGridActionSetCell *)self titleAndDescriptionView];
    leadingAnchor3 = [titleAndDescriptionView leadingAnchor];
    iconView5 = [(HUGridActionSetPlaceholderCell *)self iconView];
    trailingAnchor = [iconView5 trailingAnchor];
    sceneCellLayoutOptions2 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
    [sceneCellLayoutOptions2 iconInnerHorizontalMargin];
    v29 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:?];
    [array addObject:v29];

    titleAndDescriptionView2 = [(HUGridActionSetCell *)self titleAndDescriptionView];
    centerYAnchor3 = [titleAndDescriptionView2 centerYAnchor];
    contentView3 = [(HUGridActionSetPlaceholderCell *)self contentView];
    centerYAnchor4 = [contentView3 centerYAnchor];
    v34 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [array addObject:v34];

    accessoryView = [(HUGridActionSetCell *)self accessoryView];

    titleAndDescriptionView3 = [(HUGridActionSetCell *)self titleAndDescriptionView];
    trailingAnchor2 = [titleAndDescriptionView3 trailingAnchor];
    if (accessoryView)
    {
      accessoryView2 = [(HUGridActionSetCell *)self accessoryView];
      [accessoryView2 leadingAnchor];
    }

    else
    {
      accessoryView2 = [(HUGridActionSetPlaceholderCell *)self contentView];
      [accessoryView2 trailingAnchor];
    }
    v39 = ;
    sceneCellLayoutOptions3 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
    [sceneCellLayoutOptions3 iconInnerHorizontalMargin];
    v42 = [trailingAnchor2 constraintEqualToAnchor:v39 constant:-v41];

    LODWORD(v43) = 1148829696;
    [v42 setPriority:v43];
    [array addObject:v42];
    accessoryView3 = [(HUGridActionSetCell *)self accessoryView];

    if (accessoryView3)
    {
      accessoryView4 = [(HUGridActionSetCell *)self accessoryView];
      centerYAnchor5 = [accessoryView4 centerYAnchor];
      contentView4 = [(HUGridActionSetPlaceholderCell *)self contentView];
      centerYAnchor6 = [contentView4 centerYAnchor];
      v49 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
      [array addObject:v49];

      accessoryView5 = [(HUGridActionSetCell *)self accessoryView];
      trailingAnchor3 = [accessoryView5 trailingAnchor];
      contentView5 = [(HUGridActionSetPlaceholderCell *)self contentView];
      trailingAnchor4 = [contentView5 trailingAnchor];
      sceneCellLayoutOptions4 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
      [sceneCellLayoutOptions4 iconInnerHorizontalMargin];
      v56 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v55];
      [array addObject:v56];

      accessoryView6 = [(HUGridActionSetCell *)self accessoryView];
      heightAnchor2 = [accessoryView6 heightAnchor];
      contentView6 = [(HUGridActionSetPlaceholderCell *)self contentView];
      heightAnchor3 = [contentView6 heightAnchor];
      sceneCellLayoutOptions5 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
      [sceneCellLayoutOptions5 iconInnerHorizontalMargin];
      v63 = [heightAnchor2 constraintLessThanOrEqualToAnchor:heightAnchor3 constant:v62 * -2.0];
      [array addObject:v63];

      accessoryView7 = [(HUGridActionSetCell *)self accessoryView];
      LODWORD(v65) = 1144750080;
      [accessoryView7 setContentHuggingPriority:0 forAxis:v65];
    }

    [(HUGridActionSetCell *)self setActionSetCellConstraints:array];
    v66 = MEMORY[0x277CCAAD0];
    actionSetCellConstraints2 = [(HUGridActionSetCell *)self actionSetCellConstraints];
    [v66 activateConstraints:actionSetCellConstraints2];
  }

  v68.receiver = self;
  v68.super_class = HUGridActionSetPlaceholderCell;
  [(HUGridActionSetCell *)&v68 updateConstraints];
}

@end