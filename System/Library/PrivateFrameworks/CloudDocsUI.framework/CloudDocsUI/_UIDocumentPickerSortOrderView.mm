@interface _UIDocumentPickerSortOrderView
- (_UIDocumentPickerSortOrderView)initWithFrame:(CGRect)frame;
- (int)value;
- (void)_toggleListMode:(id)mode;
- (void)layoutSubviews;
- (void)setListMode:(int64_t)mode;
- (void)setNeedsLayout;
- (void)setValue:(int)value;
- (void)updateForListMode;
- (void)valueChanged:(id)changed;
@end

@implementation _UIDocumentPickerSortOrderView

- (_UIDocumentPickerSortOrderView)initWithFrame:(CGRect)frame
{
  v28[3] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = _UIDocumentPickerSortOrderView;
  v3 = [(_UIDocumentPickerSortOrderView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, 44.0];
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

    sortOrder = [(_UIDocumentPickerSortOrderView *)v3 sortOrder];
    [sortOrder setTranslatesAutoresizingMaskIntoConstraints:0];

    sortOrder2 = [(_UIDocumentPickerSortOrderView *)v3 sortOrder];
    [(_UIDocumentPickerSortOrderView *)v3 addSubview:sortOrder2];

    v15 = [MEMORY[0x277D75220] buttonWithType:1];
    [(_UIDocumentPickerSortOrderView *)v3 setListModeToggle:v15];

    listModeToggle = [(_UIDocumentPickerSortOrderView *)v3 listModeToggle];
    [listModeToggle setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = [MEMORY[0x277D755B8] kitImageNamed:@"UIButtonBarListIcon.png"];
    v18 = [v17 imageWithRenderingMode:2];

    listModeToggle2 = [(_UIDocumentPickerSortOrderView *)v3 listModeToggle];
    [listModeToggle2 setImage:v18 forState:0];

    listModeToggle3 = [(_UIDocumentPickerSortOrderView *)v3 listModeToggle];
    [listModeToggle3 setContentEdgeInsets:{8.0, 8.0, 8.0, 8.0}];

    listModeToggle4 = [(_UIDocumentPickerSortOrderView *)v3 listModeToggle];
    [(_UIDocumentPickerSortOrderView *)v3 addSubview:listModeToggle4];

    sortOrder3 = [(_UIDocumentPickerSortOrderView *)v3 sortOrder];
    [sortOrder3 addTarget:v3 action:sel_valueChanged_ forControlEvents:4096];

    listModeToggle5 = [(_UIDocumentPickerSortOrderView *)v3 listModeToggle];
    [listModeToggle5 addTarget:v3 action:sel__toggleListMode_ forControlEvents:64];

    [(_UIDocumentPickerSortOrderView *)v3 updateForListMode];
    heightAnchor = [(_UIDocumentPickerSortOrderView *)v3 heightAnchor];
    v25 = [heightAnchor constraintEqualToConstant:44.0];
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
  listModeToggle = [(_UIDocumentPickerSortOrderView *)self listModeToggle];
  [listModeToggle size];
  v7 = 0x27ED93000uLL;
  if (v4 > (v6 + 13.0 + 13.0) * 2.0 + 263.0)
  {

    goto LABEL_4;
  }

  listModeToggleHidden = self->_listModeToggleHidden;

  if (listModeToggleHidden)
  {
LABEL_4:
    leftAlignedConstraints = [(_UIDocumentPickerSortOrderView *)self leftAlignedConstraints];
    firstObject = [leftAlignedConstraints firstObject];
    isActive = [firstObject isActive];

    if (isActive)
    {
      v12 = MEMORY[0x277CCAAD0];
      leftAlignedConstraints2 = [(_UIDocumentPickerSortOrderView *)self leftAlignedConstraints];
      [v12 deactivateConstraints:leftAlignedConstraints2];
    }

    centeredConstraints = [(_UIDocumentPickerSortOrderView *)self centeredConstraints];

    if (!centeredConstraints)
    {
      sortOrder = [(_UIDocumentPickerSortOrderView *)self sortOrder];
      centerXAnchor = [sortOrder centerXAnchor];
      centerXAnchor2 = [(_UIDocumentPickerSortOrderView *)self centerXAnchor];
      v64 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v73[0] = v64;
      sortOrder2 = [(_UIDocumentPickerSortOrderView *)self sortOrder];
      centerYAnchor = [sortOrder2 centerYAnchor];
      centerYAnchor2 = [(_UIDocumentPickerSortOrderView *)self centerYAnchor];
      v56 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v73[1] = v56;
      sortOrder3 = [(_UIDocumentPickerSortOrderView *)self sortOrder];
      widthAnchor = [sortOrder3 widthAnchor];
      v50 = [widthAnchor constraintGreaterThanOrEqualToConstant:263.0];
      v73[2] = v50;
      trailingAnchor = [(_UIDocumentPickerSortOrderView *)self trailingAnchor];
      listModeToggle2 = [(_UIDocumentPickerSortOrderView *)self listModeToggle];
      trailingAnchor2 = [listModeToggle2 trailingAnchor];
      v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:13.0];
      v73[3] = v18;
      listModeToggle3 = [(_UIDocumentPickerSortOrderView *)self listModeToggle];
      centerYAnchor3 = [listModeToggle3 centerYAnchor];
      centerYAnchor4 = [(_UIDocumentPickerSortOrderView *)self centerYAnchor];
      v22 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v73[4] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:5];
      [(_UIDocumentPickerSortOrderView *)self setCenteredConstraints:v23];

      v7 = 0x27ED93000;
    }

    centeredConstraints2 = [(_UIDocumentPickerSortOrderView *)self centeredConstraints];
    firstObject2 = [centeredConstraints2 firstObject];
    isActive2 = [firstObject2 isActive];

    if ((isActive2 & 1) == 0)
    {
      v27 = MEMORY[0x277CCAAD0];
      centeredConstraints3 = [(_UIDocumentPickerSortOrderView *)self centeredConstraints];
LABEL_16:
      v47 = centeredConstraints3;
      [v27 activateConstraints:centeredConstraints3];

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  centeredConstraints4 = [(_UIDocumentPickerSortOrderView *)self centeredConstraints];
  firstObject3 = [centeredConstraints4 firstObject];
  isActive3 = [firstObject3 isActive];

  if (isActive3)
  {
    v32 = MEMORY[0x277CCAAD0];
    centeredConstraints5 = [(_UIDocumentPickerSortOrderView *)self centeredConstraints];
    [v32 deactivateConstraints:centeredConstraints5];
  }

  leftAlignedConstraints3 = [(_UIDocumentPickerSortOrderView *)self leftAlignedConstraints];

  if (!leftAlignedConstraints3)
  {
    sortOrder4 = [(_UIDocumentPickerSortOrderView *)self sortOrder];
    leadingAnchor = [sortOrder4 leadingAnchor];
    leadingAnchor2 = [(_UIDocumentPickerSortOrderView *)self leadingAnchor];
    v65 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
    v74[0] = v65;
    sortOrder5 = [(_UIDocumentPickerSortOrderView *)self sortOrder];
    centerYAnchor5 = [sortOrder5 centerYAnchor];
    centerYAnchor6 = [(_UIDocumentPickerSortOrderView *)self centerYAnchor];
    v57 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v74[1] = v57;
    sortOrder6 = [(_UIDocumentPickerSortOrderView *)self sortOrder];
    widthAnchor2 = [sortOrder6 widthAnchor];
    v51 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:263.0];
    v74[2] = v51;
    trailingAnchor3 = [(_UIDocumentPickerSortOrderView *)self trailingAnchor];
    listModeToggle4 = [(_UIDocumentPickerSortOrderView *)self listModeToggle];
    trailingAnchor4 = [listModeToggle4 trailingAnchor];
    v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:5.0];
    v74[3] = v38;
    listModeToggle5 = [(_UIDocumentPickerSortOrderView *)self listModeToggle];
    centerYAnchor7 = [listModeToggle5 centerYAnchor];
    centerYAnchor8 = [(_UIDocumentPickerSortOrderView *)self centerYAnchor];
    v42 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v74[4] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:5];
    [(_UIDocumentPickerSortOrderView *)self setLeftAlignedConstraints:v43];

    v7 = 0x27ED93000uLL;
  }

  leftAlignedConstraints4 = [(_UIDocumentPickerSortOrderView *)self leftAlignedConstraints];
  firstObject4 = [leftAlignedConstraints4 firstObject];
  isActive4 = [firstObject4 isActive];

  if ((isActive4 & 1) == 0)
  {
    v27 = MEMORY[0x277CCAAD0];
    centeredConstraints3 = [(_UIDocumentPickerSortOrderView *)self leftAlignedConstraints];
    goto LABEL_16;
  }

LABEL_17:
  v48 = *(&self->super.super.super.super.isa + *(v7 + 1772));
  listModeToggle6 = [(_UIDocumentPickerSortOrderView *)self listModeToggle];
  [listModeToggle6 setHidden:v48];
}

- (void)updateForListMode
{
  v2 = self->_listMode == 2;
  listModeToggle = [(_UIDocumentPickerSortOrderView *)self listModeToggle];
  [listModeToggle setSelected:v2];
}

- (void)setValue:(int)value
{
  valueCopy = value;
  sortOrder = [(_UIDocumentPickerSortOrderView *)self sortOrder];
  [sortOrder setSelectedSegmentIndex:valueCopy];
}

- (int)value
{
  sortOrder = [(_UIDocumentPickerSortOrderView *)self sortOrder];
  selectedSegmentIndex = [sortOrder selectedSegmentIndex];

  return selectedSegmentIndex;
}

- (void)valueChanged:(id)changed
{
  sortOrder = [(_UIDocumentPickerSortOrderView *)self sortOrder];
  -[_UIDocumentPickerSortOrderView setValue:](self, "setValue:", [sortOrder selectedSegmentIndex]);

  [(_UIDocumentPickerSortOrderView *)self sendActionsForControlEvents:4096];
}

- (void)setListMode:(int64_t)mode
{
  if (self->_listMode != mode)
  {
    self->_listMode = mode;
    [(_UIDocumentPickerSortOrderView *)self updateForListMode];
  }
}

- (void)_toggleListMode:(id)mode
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