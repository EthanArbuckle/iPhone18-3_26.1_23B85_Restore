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

    v6 = [(HUGridActionSetPlaceholderCell *)self contentView];
    [v6 addSubview:self->_iconView];

    [(HUIconView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUIconView *)self->_iconView setContentMode:1];
    v7 = [(HUGridCell *)self contentEffect];
    [(HUIconView *)self->_iconView setVibrancyEffect:v7];

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
  v4 = [(HUGridCell *)self gridBackgroundView];
  [v4 setOverrideBackgroundEffect:v3];
}

- (void)updateConstraints
{
  v3 = [(HUGridActionSetCell *)self actionSetCellConstraints];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(HUGridActionSetPlaceholderCell *)self iconView];
    v6 = [v5 leadingAnchor];
    v7 = [(HUGridActionSetPlaceholderCell *)self contentView];
    v8 = [v7 leadingAnchor];
    v9 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
    [v9 iconInnerHorizontalMargin];
    v10 = [v6 constraintEqualToAnchor:v8 constant:?];
    [v4 addObject:v10];

    v11 = [(HUGridActionSetPlaceholderCell *)self iconView];
    v12 = [v11 centerYAnchor];
    v13 = [(HUGridActionSetPlaceholderCell *)self contentView];
    v14 = [v13 centerYAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v4 addObject:v15];

    v16 = [(HUGridActionSetPlaceholderCell *)self iconView];
    v17 = [v16 widthAnchor];
    v18 = [(HUGridCell *)self layoutOptions];
    [v18 iconSize];
    v19 = [v17 constraintEqualToConstant:?];
    [v4 addObject:v19];

    v20 = [(HUGridActionSetPlaceholderCell *)self iconView];
    v21 = [v20 heightAnchor];
    v22 = [(HUGridCell *)self layoutOptions];
    [v22 iconSize];
    v23 = [v21 constraintEqualToConstant:?];
    [v4 addObject:v23];

    v24 = [(HUGridActionSetCell *)self titleAndDescriptionView];
    v25 = [v24 leadingAnchor];
    v26 = [(HUGridActionSetPlaceholderCell *)self iconView];
    v27 = [v26 trailingAnchor];
    v28 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
    [v28 iconInnerHorizontalMargin];
    v29 = [v25 constraintEqualToAnchor:v27 constant:?];
    [v4 addObject:v29];

    v30 = [(HUGridActionSetCell *)self titleAndDescriptionView];
    v31 = [v30 centerYAnchor];
    v32 = [(HUGridActionSetPlaceholderCell *)self contentView];
    v33 = [v32 centerYAnchor];
    v34 = [v31 constraintEqualToAnchor:v33];
    [v4 addObject:v34];

    v35 = [(HUGridActionSetCell *)self accessoryView];

    v36 = [(HUGridActionSetCell *)self titleAndDescriptionView];
    v37 = [v36 trailingAnchor];
    if (v35)
    {
      v38 = [(HUGridActionSetCell *)self accessoryView];
      [v38 leadingAnchor];
    }

    else
    {
      v38 = [(HUGridActionSetPlaceholderCell *)self contentView];
      [v38 trailingAnchor];
    }
    v39 = ;
    v40 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
    [v40 iconInnerHorizontalMargin];
    v42 = [v37 constraintEqualToAnchor:v39 constant:-v41];

    LODWORD(v43) = 1148829696;
    [v42 setPriority:v43];
    [v4 addObject:v42];
    v44 = [(HUGridActionSetCell *)self accessoryView];

    if (v44)
    {
      v45 = [(HUGridActionSetCell *)self accessoryView];
      v46 = [v45 centerYAnchor];
      v47 = [(HUGridActionSetPlaceholderCell *)self contentView];
      v48 = [v47 centerYAnchor];
      v49 = [v46 constraintEqualToAnchor:v48];
      [v4 addObject:v49];

      v50 = [(HUGridActionSetCell *)self accessoryView];
      v51 = [v50 trailingAnchor];
      v52 = [(HUGridActionSetPlaceholderCell *)self contentView];
      v53 = [v52 trailingAnchor];
      v54 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
      [v54 iconInnerHorizontalMargin];
      v56 = [v51 constraintEqualToAnchor:v53 constant:-v55];
      [v4 addObject:v56];

      v57 = [(HUGridActionSetCell *)self accessoryView];
      v58 = [v57 heightAnchor];
      v59 = [(HUGridActionSetPlaceholderCell *)self contentView];
      v60 = [v59 heightAnchor];
      v61 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
      [v61 iconInnerHorizontalMargin];
      v63 = [v58 constraintLessThanOrEqualToAnchor:v60 constant:v62 * -2.0];
      [v4 addObject:v63];

      v64 = [(HUGridActionSetCell *)self accessoryView];
      LODWORD(v65) = 1144750080;
      [v64 setContentHuggingPriority:0 forAxis:v65];
    }

    [(HUGridActionSetCell *)self setActionSetCellConstraints:v4];
    v66 = MEMORY[0x277CCAAD0];
    v67 = [(HUGridActionSetCell *)self actionSetCellConstraints];
    [v66 activateConstraints:v67];
  }

  v68.receiver = self;
  v68.super_class = HUGridActionSetPlaceholderCell;
  [(HUGridActionSetCell *)&v68 updateConstraints];
}

@end