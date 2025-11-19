@interface _UIDocumentPickerSortOrderView
- (_UIDocumentPickerSortOrderView)initWithFrame:(CGRect)a3;
- (int)value;
- (void)_toggleListMode:(id)a3;
- (void)layoutSubviews;
- (void)setListMode:(int64_t)a3;
- (void)setNeedsLayout;
- (void)setValue:(int)a3;
- (void)updateForListMode;
- (void)valueChanged:(id)a3;
@end

@implementation _UIDocumentPickerSortOrderView

- (_UIDocumentPickerSortOrderView)initWithFrame:(CGRect)a3
{
  v28[3] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = _UIDocumentPickerSortOrderView;
  v3 = [(_UIDocumentPickerSortOrderView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, 44.0];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v5 = [v4 localizedStringForKey:@"Date[sort option]" value:@"Date" table:@"Localizable"];

    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v7 = [v6 localizedStringForKey:@"Name[sort option]" value:@"Name" table:@"Localizable"];

    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v9 = [v8 localizedStringForKey:@"Tags[sort option]" value:@"Tags" table:@"Localizable"];

    v10 = objc_alloc(MEMORY[0x277D75A08]);
    v28[0] = v5;
    v28[1] = v7;
    v28[2] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
    v12 = [v10 initWithItems:v11];
    [(_UIDocumentPickerSortOrderView *)v3 setSortOrder:v12];

    v13 = [(_UIDocumentPickerSortOrderView *)v3 sortOrder];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(_UIDocumentPickerSortOrderView *)v3 sortOrder];
    [(_UIDocumentPickerSortOrderView *)v3 addSubview:v14];

    v15 = [MEMORY[0x277D75220] buttonWithType:1];
    [(_UIDocumentPickerSortOrderView *)v3 setListModeToggle:v15];

    v16 = [(_UIDocumentPickerSortOrderView *)v3 listModeToggle];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = [MEMORY[0x277D755B8] kitImageNamed:@"UIButtonBarListIcon.png"];
    v18 = [v17 imageWithRenderingMode:2];

    v19 = [(_UIDocumentPickerSortOrderView *)v3 listModeToggle];
    [v19 setImage:v18 forState:0];

    v20 = [(_UIDocumentPickerSortOrderView *)v3 listModeToggle];
    [v20 setContentEdgeInsets:{8.0, 8.0, 8.0, 8.0}];

    v21 = [(_UIDocumentPickerSortOrderView *)v3 listModeToggle];
    [(_UIDocumentPickerSortOrderView *)v3 addSubview:v21];

    v22 = [(_UIDocumentPickerSortOrderView *)v3 sortOrder];
    [v22 addTarget:v3 action:sel_valueChanged_ forControlEvents:4096];

    v23 = [(_UIDocumentPickerSortOrderView *)v3 listModeToggle];
    [v23 addTarget:v3 action:sel__toggleListMode_ forControlEvents:64];

    [(_UIDocumentPickerSortOrderView *)v3 updateForListMode];
    v24 = [(_UIDocumentPickerSortOrderView *)v3 heightAnchor];
    v25 = [v24 constraintEqualToConstant:44.0];
    [v25 setActive:1];
  }

  return v3;
}

- (void)setNeedsLayout
{
  v2.receiver = self;
  v2.super_class = _UIDocumentPickerSortOrderView;
  [(_UIDocumentPickerSortOrderView *)&v2 setNeedsLayout];
}

- (void)layoutSubviews
{
  v74[5] = *MEMORY[0x277D85DE8];
  v72.receiver = self;
  v72.super_class = _UIDocumentPickerSortOrderView;
  [(_UIDocumentPickerSortOrderView *)&v72 layoutSubviews];
  [(_UIDocumentPickerSortOrderView *)self size];
  v4 = v3;
  v5 = [(_UIDocumentPickerSortOrderView *)self listModeToggle];
  [v5 size];
  v7 = 0x27ED93000uLL;
  if (v4 > (v6 + 13.0 + 13.0) * 2.0 + 263.0)
  {

    goto LABEL_4;
  }

  listModeToggleHidden = self->_listModeToggleHidden;

  if (listModeToggleHidden)
  {
LABEL_4:
    v9 = [(_UIDocumentPickerSortOrderView *)self leftAlignedConstraints];
    v10 = [v9 firstObject];
    v11 = [v10 isActive];

    if (v11)
    {
      v12 = MEMORY[0x277CCAAD0];
      v13 = [(_UIDocumentPickerSortOrderView *)self leftAlignedConstraints];
      [v12 deactivateConstraints:v13];
    }

    v14 = [(_UIDocumentPickerSortOrderView *)self centeredConstraints];

    if (!v14)
    {
      v70 = [(_UIDocumentPickerSortOrderView *)self sortOrder];
      v68 = [v70 centerXAnchor];
      v66 = [(_UIDocumentPickerSortOrderView *)self centerXAnchor];
      v64 = [v68 constraintEqualToAnchor:v66];
      v73[0] = v64;
      v62 = [(_UIDocumentPickerSortOrderView *)self sortOrder];
      v60 = [v62 centerYAnchor];
      v58 = [(_UIDocumentPickerSortOrderView *)self centerYAnchor];
      v56 = [v60 constraintEqualToAnchor:v58];
      v73[1] = v56;
      v54 = [(_UIDocumentPickerSortOrderView *)self sortOrder];
      v52 = [v54 widthAnchor];
      v50 = [v52 constraintGreaterThanOrEqualToConstant:263.0];
      v73[2] = v50;
      v15 = [(_UIDocumentPickerSortOrderView *)self trailingAnchor];
      v16 = [(_UIDocumentPickerSortOrderView *)self listModeToggle];
      v17 = [v16 trailingAnchor];
      v18 = [v15 constraintEqualToAnchor:v17 constant:13.0];
      v73[3] = v18;
      v19 = [(_UIDocumentPickerSortOrderView *)self listModeToggle];
      v20 = [v19 centerYAnchor];
      v21 = [(_UIDocumentPickerSortOrderView *)self centerYAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      v73[4] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:5];
      [(_UIDocumentPickerSortOrderView *)self setCenteredConstraints:v23];

      v7 = 0x27ED93000;
    }

    v24 = [(_UIDocumentPickerSortOrderView *)self centeredConstraints];
    v25 = [v24 firstObject];
    v26 = [v25 isActive];

    if ((v26 & 1) == 0)
    {
      v27 = MEMORY[0x277CCAAD0];
      v28 = [(_UIDocumentPickerSortOrderView *)self centeredConstraints];
LABEL_16:
      v47 = v28;
      [v27 activateConstraints:v28];

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v29 = [(_UIDocumentPickerSortOrderView *)self centeredConstraints];
  v30 = [v29 firstObject];
  v31 = [v30 isActive];

  if (v31)
  {
    v32 = MEMORY[0x277CCAAD0];
    v33 = [(_UIDocumentPickerSortOrderView *)self centeredConstraints];
    [v32 deactivateConstraints:v33];
  }

  v34 = [(_UIDocumentPickerSortOrderView *)self leftAlignedConstraints];

  if (!v34)
  {
    v71 = [(_UIDocumentPickerSortOrderView *)self sortOrder];
    v69 = [v71 leadingAnchor];
    v67 = [(_UIDocumentPickerSortOrderView *)self leadingAnchor];
    v65 = [v69 constraintEqualToAnchor:v67 constant:8.0];
    v74[0] = v65;
    v63 = [(_UIDocumentPickerSortOrderView *)self sortOrder];
    v61 = [v63 centerYAnchor];
    v59 = [(_UIDocumentPickerSortOrderView *)self centerYAnchor];
    v57 = [v61 constraintEqualToAnchor:v59];
    v74[1] = v57;
    v55 = [(_UIDocumentPickerSortOrderView *)self sortOrder];
    v53 = [v55 widthAnchor];
    v51 = [v53 constraintGreaterThanOrEqualToConstant:263.0];
    v74[2] = v51;
    v35 = [(_UIDocumentPickerSortOrderView *)self trailingAnchor];
    v36 = [(_UIDocumentPickerSortOrderView *)self listModeToggle];
    v37 = [v36 trailingAnchor];
    v38 = [v35 constraintEqualToAnchor:v37 constant:5.0];
    v74[3] = v38;
    v39 = [(_UIDocumentPickerSortOrderView *)self listModeToggle];
    v40 = [v39 centerYAnchor];
    v41 = [(_UIDocumentPickerSortOrderView *)self centerYAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    v74[4] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:5];
    [(_UIDocumentPickerSortOrderView *)self setLeftAlignedConstraints:v43];

    v7 = 0x27ED93000uLL;
  }

  v44 = [(_UIDocumentPickerSortOrderView *)self leftAlignedConstraints];
  v45 = [v44 firstObject];
  v46 = [v45 isActive];

  if ((v46 & 1) == 0)
  {
    v27 = MEMORY[0x277CCAAD0];
    v28 = [(_UIDocumentPickerSortOrderView *)self leftAlignedConstraints];
    goto LABEL_16;
  }

LABEL_17:
  v48 = *(&self->super.super.super.super.isa + *(v7 + 1772));
  v49 = [(_UIDocumentPickerSortOrderView *)self listModeToggle];
  [v49 setHidden:v48];
}

- (void)updateForListMode
{
  v2 = self->_listMode == 2;
  v3 = [(_UIDocumentPickerSortOrderView *)self listModeToggle];
  [v3 setSelected:v2];
}

- (void)setValue:(int)a3
{
  v3 = a3;
  v4 = [(_UIDocumentPickerSortOrderView *)self sortOrder];
  [v4 setSelectedSegmentIndex:v3];
}

- (int)value
{
  v2 = [(_UIDocumentPickerSortOrderView *)self sortOrder];
  v3 = [v2 selectedSegmentIndex];

  return v3;
}

- (void)valueChanged:(id)a3
{
  v4 = [(_UIDocumentPickerSortOrderView *)self sortOrder];
  -[_UIDocumentPickerSortOrderView setValue:](self, "setValue:", [v4 selectedSegmentIndex]);

  [(_UIDocumentPickerSortOrderView *)self sendActionsForControlEvents:4096];
}

- (void)setListMode:(int64_t)a3
{
  if (self->_listMode != a3)
  {
    self->_listMode = a3;
    [(_UIDocumentPickerSortOrderView *)self updateForListMode];
  }
}

- (void)_toggleListMode:(id)a3
{
  if (self->_listMode == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [(_UIDocumentPickerSortOrderView *)self setListMode:v4];

  [(_UIDocumentPickerSortOrderView *)self sendActionsForControlEvents:4096];
}

@end