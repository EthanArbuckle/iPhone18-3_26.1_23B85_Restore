@interface HUSectionHeaderFooterCell
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (HUSectionHeaderFooterCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation HUSectionHeaderFooterCell

- (HUSectionHeaderFooterCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v43[4] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v42.receiver = self;
  v42.super_class = HUSectionHeaderFooterCell;
  v7 = [(HUSectionHeaderFooterCell *)&v42 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = [[HUItemTableSectionHeaderFooterView alloc] initWithReuseIdentifier:identifierCopy];
    headerFooterView = v7->_headerFooterView;
    v7->_headerFooterView = v8;

    v10 = *MEMORY[0x277D768C8];
    v11 = *(MEMORY[0x277D768C8] + 8);
    v12 = *(MEMORY[0x277D768C8] + 16);
    v13 = *(MEMORY[0x277D768C8] + 24);
    headerFooterView = [(HUSectionHeaderFooterCell *)v7 headerFooterView];
    [headerFooterView setIndentationInset:{v10, v11, v12, v13}];

    contentView = [(HUSectionHeaderFooterCell *)v7 contentView];
    [(HUSectionHeaderFooterCell *)v7 headerFooterView];
    v16 = v41 = identifierCopy;
    [contentView naui_addAutoLayoutSubview:v16];

    v31 = MEMORY[0x277CCAAD0];
    contentView2 = [(HUSectionHeaderFooterCell *)v7 contentView];
    leadingAnchor = [contentView2 leadingAnchor];
    headerFooterView2 = [(HUSectionHeaderFooterCell *)v7 headerFooterView];
    leadingAnchor2 = [headerFooterView2 leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v43[0] = v36;
    contentView3 = [(HUSectionHeaderFooterCell *)v7 contentView];
    trailingAnchor = [contentView3 trailingAnchor];
    headerFooterView3 = [(HUSectionHeaderFooterCell *)v7 headerFooterView];
    trailingAnchor2 = [headerFooterView3 trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v43[1] = v30;
    contentView4 = [(HUSectionHeaderFooterCell *)v7 contentView];
    topAnchor = [contentView4 topAnchor];
    headerFooterView4 = [(HUSectionHeaderFooterCell *)v7 headerFooterView];
    topAnchor2 = [headerFooterView4 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v43[2] = v19;
    contentView5 = [(HUSectionHeaderFooterCell *)v7 contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    headerFooterView5 = [(HUSectionHeaderFooterCell *)v7 headerFooterView];
    bottomAnchor2 = [headerFooterView5 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v43[3] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
    [v31 activateConstraints:v25];

    identifierCopy = v41;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(HUSectionHeaderFooterCell *)v7 setBackgroundColor:clearColor];
  }

  return v7;
}

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  v9.receiver = self;
  v9.super_class = HUSectionHeaderFooterCell;
  [(HUSectionHeaderFooterCell *)&v9 willMoveToSuperview:superviewCopy];
  objc_opt_class();
  v5 = superviewCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  headerFooterView = [(HUSectionHeaderFooterCell *)self headerFooterView];
  [headerFooterView setTableView:v7];

  [(HUSectionHeaderFooterCell *)self invalidateIntrinsicContentSize];
  [(HUSectionHeaderFooterCell *)self setNeedsUpdateConstraints];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  headerFooterView = [(HUSectionHeaderFooterCell *)self headerFooterView];
  *&v10 = priority;
  *&v11 = fittingPriority;
  [headerFooterView systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)intrinsicContentSize
{
  LODWORD(v2) = 1148846080;
  LODWORD(v3) = 1148846080;
  [(HUSectionHeaderFooterCell *)self systemLayoutSizeFittingSize:*MEMORY[0x277CBF3A8] withHorizontalFittingPriority:*(MEMORY[0x277CBF3A8] + 8) verticalFittingPriority:v2, v3];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)prepareForReuse
{
  headerFooterView = [(HUSectionHeaderFooterCell *)self headerFooterView];
  [headerFooterView prepareForReuse];

  v4.receiver = self;
  v4.super_class = HUSectionHeaderFooterCell;
  [(HUSectionHeaderFooterCell *)&v4 prepareForReuse];
}

@end