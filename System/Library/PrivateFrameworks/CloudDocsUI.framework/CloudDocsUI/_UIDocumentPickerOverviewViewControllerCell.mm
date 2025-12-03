@interface _UIDocumentPickerOverviewViewControllerCell
- (BOOL)showNewlyAdded;
- (_UIDocumentPickerOverviewViewControllerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_dotImage;
- (void)prepareForReuse;
- (void)setShowNewlyAdded:(BOOL)added;
@end

@implementation _UIDocumentPickerOverviewViewControllerCell

- (_UIDocumentPickerOverviewViewControllerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v55[3] = *MEMORY[0x277D85DE8];
  v52.receiver = self;
  v52.super_class = _UIDocumentPickerOverviewViewControllerCell;
  v4 = [(_UIDocumentPickerOverviewViewControllerCell *)&v52 initWithStyle:1 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(_UIDocumentPickerOverviewViewControllerCell *)v4 setIconView:v5];

    iconView = [(_UIDocumentPickerOverviewViewControllerCell *)v4 iconView];
    [iconView setContentMode:4];

    iconView2 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 iconView];
    [iconView2 setClipsToBounds:1];

    iconView3 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 iconView];
    [iconView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(_UIDocumentPickerOverviewViewControllerCell *)v4 contentView];
    [contentView addSubview:v4->_iconView];

    v10 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(_UIDocumentPickerOverviewViewControllerCell *)v4 setNewlyAddedView:v10];

    newlyAddedView = [(_UIDocumentPickerOverviewViewControllerCell *)v4 newlyAddedView];
    [newlyAddedView setContentMode:4];

    newlyAddedView2 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 newlyAddedView];
    [newlyAddedView2 setClipsToBounds:1];

    newlyAddedView3 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 newlyAddedView];
    [newlyAddedView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView2 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 contentView];
    [contentView2 addSubview:v4->_newlyAddedView];

    textLabel = [(_UIDocumentPickerOverviewViewControllerCell *)v4 textLabel];
    [textLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = MEMORY[0x277CCAAD0];
    v54[0] = @"_newlyAddedView";
    v55[0] = v4->_newlyAddedView;
    v54[1] = @"label";
    textLabel2 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 textLabel];
    v55[1] = textLabel2;
    v54[2] = @"_iconView";
    v55[2] = v4->_iconView;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:3];
    v19 = [v16 constraintsWithVisualFormat:@"H:[_newlyAddedView]-(dotDistance)-[label]-(menuLabelDistance)-[_iconView(menuIconSize)]-(menuIconInset)-|" options:1024 metrics:&unk_28569A518 views:v18];
    [v16 activateConstraints:v19];

    v43 = MEMORY[0x277CCAAD0];
    textLabel3 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 textLabel];
    leadingAnchor = [textLabel3 leadingAnchor];
    contentView3 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
    v53[0] = v47;
    iconView4 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 iconView];
    heightAnchor = [iconView4 heightAnchor];
    v44 = [heightAnchor constraintEqualToConstant:32.0];
    v53[1] = v44;
    iconView5 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 iconView];
    heightAnchor2 = [iconView5 heightAnchor];
    newlyAddedView4 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 newlyAddedView];
    heightAnchor3 = [newlyAddedView4 heightAnchor];
    v22 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v53[2] = v22;
    iconView6 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 iconView];
    centerYAnchor = [iconView6 centerYAnchor];
    contentView4 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 contentView];
    centerYAnchor2 = [contentView4 centerYAnchor];
    v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v53[3] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
    [v43 activateConstraints:v28];

    if ([(_UIDocumentPickerOverviewViewControllerCell *)v4 _shouldReverseLayoutDirection])
    {
      textLabel4 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 textLabel];
      [textLabel4 setTextAlignment:2];
    }

    textLabel5 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 textLabel];
    lastBaselineAnchor = [textLabel5 lastBaselineAnchor];
    contentView5 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 contentView];
    topAnchor = [contentView5 topAnchor];
    v34 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor constant:28.0];
    [v34 setActive:1];

    textLabel6 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 textLabel];
    lastBaselineAnchor2 = [textLabel6 lastBaselineAnchor];
    contentView6 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 contentView];
    bottomAnchor = [contentView6 bottomAnchor];
    v39 = [lastBaselineAnchor2 constraintEqualToAnchor:bottomAnchor constant:-16.0];
    [v39 setActive:1];
  }

  return v4;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerOverviewViewControllerCell;
  [(_UIDocumentPickerOverviewViewControllerCell *)&v5 prepareForReuse];
  iconView = [(_UIDocumentPickerOverviewViewControllerCell *)self iconView];
  [iconView setImage:0];

  newlyAddedView = [(_UIDocumentPickerOverviewViewControllerCell *)self newlyAddedView];
  [newlyAddedView setImage:0];
}

- (id)_dotImage
{
  v3 = MEMORY[0x277D755B8];
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  traitCollection = [(_UIDocumentPickerOverviewViewControllerCell *)self traitCollection];
  v6 = [v3 imageNamed:@"UIImageNameIndicatorDot" inBundle:v4 compatibleWithTraitCollection:traitCollection];
  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

- (void)setShowNewlyAdded:(BOOL)added
{
  if (added)
  {
    _dotImage = [(_UIDocumentPickerOverviewViewControllerCell *)self _dotImage];
    newlyAddedView = [(_UIDocumentPickerOverviewViewControllerCell *)self newlyAddedView];
    [newlyAddedView setImage:_dotImage];
  }

  else
  {
    _dotImage = [(_UIDocumentPickerOverviewViewControllerCell *)self newlyAddedView];
    [_dotImage setImage:0];
  }
}

- (BOOL)showNewlyAdded
{
  newlyAddedView = [(_UIDocumentPickerOverviewViewControllerCell *)self newlyAddedView];
  image = [newlyAddedView image];
  v4 = image != 0;

  return v4;
}

@end