@interface HUSectionHeaderFooterCell
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (HUSectionHeaderFooterCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation HUSectionHeaderFooterCell

- (HUSectionHeaderFooterCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v43[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v42.receiver = self;
  v42.super_class = HUSectionHeaderFooterCell;
  v7 = [(HUSectionHeaderFooterCell *)&v42 initWithStyle:a3 reuseIdentifier:v6];
  if (v7)
  {
    v8 = [[HUItemTableSectionHeaderFooterView alloc] initWithReuseIdentifier:v6];
    headerFooterView = v7->_headerFooterView;
    v7->_headerFooterView = v8;

    v10 = *MEMORY[0x277D768C8];
    v11 = *(MEMORY[0x277D768C8] + 8);
    v12 = *(MEMORY[0x277D768C8] + 16);
    v13 = *(MEMORY[0x277D768C8] + 24);
    v14 = [(HUSectionHeaderFooterCell *)v7 headerFooterView];
    [v14 setIndentationInset:{v10, v11, v12, v13}];

    v15 = [(HUSectionHeaderFooterCell *)v7 contentView];
    [(HUSectionHeaderFooterCell *)v7 headerFooterView];
    v16 = v41 = v6;
    [v15 naui_addAutoLayoutSubview:v16];

    v31 = MEMORY[0x277CCAAD0];
    v40 = [(HUSectionHeaderFooterCell *)v7 contentView];
    v38 = [v40 leadingAnchor];
    v39 = [(HUSectionHeaderFooterCell *)v7 headerFooterView];
    v37 = [v39 leadingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v43[0] = v36;
    v35 = [(HUSectionHeaderFooterCell *)v7 contentView];
    v33 = [v35 trailingAnchor];
    v34 = [(HUSectionHeaderFooterCell *)v7 headerFooterView];
    v32 = [v34 trailingAnchor];
    v30 = [v33 constraintEqualToAnchor:v32];
    v43[1] = v30;
    v29 = [(HUSectionHeaderFooterCell *)v7 contentView];
    v28 = [v29 topAnchor];
    v17 = [(HUSectionHeaderFooterCell *)v7 headerFooterView];
    v18 = [v17 topAnchor];
    v19 = [v28 constraintEqualToAnchor:v18];
    v43[2] = v19;
    v20 = [(HUSectionHeaderFooterCell *)v7 contentView];
    v21 = [v20 bottomAnchor];
    v22 = [(HUSectionHeaderFooterCell *)v7 headerFooterView];
    v23 = [v22 bottomAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    v43[3] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
    [v31 activateConstraints:v25];

    v6 = v41;
    v26 = [MEMORY[0x277D75348] clearColor];
    [(HUSectionHeaderFooterCell *)v7 setBackgroundColor:v26];
  }

  return v7;
}

- (void)willMoveToSuperview:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HUSectionHeaderFooterCell;
  [(HUSectionHeaderFooterCell *)&v9 willMoveToSuperview:v4];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(HUSectionHeaderFooterCell *)self headerFooterView];
  [v8 setTableView:v7];

  [(HUSectionHeaderFooterCell *)self invalidateIntrinsicContentSize];
  [(HUSectionHeaderFooterCell *)self setNeedsUpdateConstraints];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = [(HUSectionHeaderFooterCell *)self headerFooterView];
  *&v10 = a4;
  *&v11 = a5;
  [v9 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
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
  v3 = [(HUSectionHeaderFooterCell *)self headerFooterView];
  [v3 prepareForReuse];

  v4.receiver = self;
  v4.super_class = HUSectionHeaderFooterCell;
  [(HUSectionHeaderFooterCell *)&v4 prepareForReuse];
}

@end