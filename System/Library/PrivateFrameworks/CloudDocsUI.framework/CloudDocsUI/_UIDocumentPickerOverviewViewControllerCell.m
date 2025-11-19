@interface _UIDocumentPickerOverviewViewControllerCell
- (BOOL)showNewlyAdded;
- (_UIDocumentPickerOverviewViewControllerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_dotImage;
- (void)prepareForReuse;
- (void)setShowNewlyAdded:(BOOL)a3;
@end

@implementation _UIDocumentPickerOverviewViewControllerCell

- (_UIDocumentPickerOverviewViewControllerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v55[3] = *MEMORY[0x277D85DE8];
  v52.receiver = self;
  v52.super_class = _UIDocumentPickerOverviewViewControllerCell;
  v4 = [(_UIDocumentPickerOverviewViewControllerCell *)&v52 initWithStyle:1 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(_UIDocumentPickerOverviewViewControllerCell *)v4 setIconView:v5];

    v6 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 iconView];
    [v6 setContentMode:4];

    v7 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 iconView];
    [v7 setClipsToBounds:1];

    v8 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 iconView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 contentView];
    [v9 addSubview:v4->_iconView];

    v10 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(_UIDocumentPickerOverviewViewControllerCell *)v4 setNewlyAddedView:v10];

    v11 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 newlyAddedView];
    [v11 setContentMode:4];

    v12 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 newlyAddedView];
    [v12 setClipsToBounds:1];

    v13 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 newlyAddedView];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 contentView];
    [v14 addSubview:v4->_newlyAddedView];

    v15 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 textLabel];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = MEMORY[0x277CCAAD0];
    v54[0] = @"_newlyAddedView";
    v55[0] = v4->_newlyAddedView;
    v54[1] = @"label";
    v17 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 textLabel];
    v55[1] = v17;
    v54[2] = @"_iconView";
    v55[2] = v4->_iconView;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:3];
    v19 = [v16 constraintsWithVisualFormat:@"H:[_newlyAddedView]-(dotDistance)-[label]-(menuLabelDistance)-[_iconView(menuIconSize)]-(menuIconInset)-|" options:1024 metrics:&unk_28569A518 views:v18];
    [v16 activateConstraints:v19];

    v43 = MEMORY[0x277CCAAD0];
    v51 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 textLabel];
    v49 = [v51 leadingAnchor];
    v50 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 contentView];
    v48 = [v50 leadingAnchor];
    v47 = [v49 constraintEqualToAnchor:v48 constant:15.0];
    v53[0] = v47;
    v46 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 iconView];
    v45 = [v46 heightAnchor];
    v44 = [v45 constraintEqualToConstant:32.0];
    v53[1] = v44;
    v42 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 iconView];
    v41 = [v42 heightAnchor];
    v20 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 newlyAddedView];
    v21 = [v20 heightAnchor];
    v22 = [v41 constraintEqualToAnchor:v21];
    v53[2] = v22;
    v23 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 iconView];
    v24 = [v23 centerYAnchor];
    v25 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 contentView];
    v26 = [v25 centerYAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    v53[3] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
    [v43 activateConstraints:v28];

    if ([(_UIDocumentPickerOverviewViewControllerCell *)v4 _shouldReverseLayoutDirection])
    {
      v29 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 textLabel];
      [v29 setTextAlignment:2];
    }

    v30 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 textLabel];
    v31 = [v30 lastBaselineAnchor];
    v32 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 contentView];
    v33 = [v32 topAnchor];
    v34 = [v31 constraintEqualToAnchor:v33 constant:28.0];
    [v34 setActive:1];

    v35 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 textLabel];
    v36 = [v35 lastBaselineAnchor];
    v37 = [(_UIDocumentPickerOverviewViewControllerCell *)v4 contentView];
    v38 = [v37 bottomAnchor];
    v39 = [v36 constraintEqualToAnchor:v38 constant:-16.0];
    [v39 setActive:1];
  }

  return v4;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerOverviewViewControllerCell;
  [(_UIDocumentPickerOverviewViewControllerCell *)&v5 prepareForReuse];
  v3 = [(_UIDocumentPickerOverviewViewControllerCell *)self iconView];
  [v3 setImage:0];

  v4 = [(_UIDocumentPickerOverviewViewControllerCell *)self newlyAddedView];
  [v4 setImage:0];
}

- (id)_dotImage
{
  v3 = MEMORY[0x277D755B8];
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v5 = [(_UIDocumentPickerOverviewViewControllerCell *)self traitCollection];
  v6 = [v3 imageNamed:@"UIImageNameIndicatorDot" inBundle:v4 compatibleWithTraitCollection:v5];
  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

- (void)setShowNewlyAdded:(BOOL)a3
{
  if (a3)
  {
    v5 = [(_UIDocumentPickerOverviewViewControllerCell *)self _dotImage];
    v4 = [(_UIDocumentPickerOverviewViewControllerCell *)self newlyAddedView];
    [v4 setImage:v5];
  }

  else
  {
    v5 = [(_UIDocumentPickerOverviewViewControllerCell *)self newlyAddedView];
    [v5 setImage:0];
  }
}

- (BOOL)showNewlyAdded
{
  v2 = [(_UIDocumentPickerOverviewViewControllerCell *)self newlyAddedView];
  v3 = [v2 image];
  v4 = v3 != 0;

  return v4;
}

@end