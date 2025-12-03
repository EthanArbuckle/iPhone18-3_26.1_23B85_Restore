@interface DMCEnrollmentNameListCell
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (DMCEnrollmentNameListCell)initWithNames:(id)names numberOfColumns:(unint64_t)columns;
- (double)cellHeight;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)layoutSubviews;
@end

@implementation DMCEnrollmentNameListCell

- (DMCEnrollmentNameListCell)initWithNames:(id)names numberOfColumns:(unint64_t)columns
{
  v31[1] = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v28.receiver = self;
  v28.super_class = DMCEnrollmentNameListCell;
  v9 = [(DMCEnrollmentNameListCell *)&v28 initWithStyle:0 reuseIdentifier:v8];

  if (v9)
  {
    [(DMCEnrollmentNameListCell *)v9 setSelectionStyle:0];
    [(DMCEnrollmentNameListCell *)v9 setUserInteractionEnabled:0];
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(DMCEnrollmentNameListCell *)v9 setBackgroundColor:secondarySystemBackgroundColor];

    v11 = [namesCopy copy];
    names = v9->_names;
    v9->_names = v11;

    v9->_numberOfColumns = columns;
    v13 = objc_alloc_init(MEMORY[0x277D752F0]);
    v14 = objc_alloc(MEMORY[0x277D752A0]);
    v15 = [v14 initWithFrame:v13 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v15 setDelegate:v9];
    [v15 setDataSource:v9];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setScrollEnabled:0];
    [v15 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"DMCEnrollmentNameItemCell"];
    contentView = [(DMCEnrollmentNameListCell *)v9 contentView];
    [contentView addSubview:v15];

    v30 = @"collectionView";
    v31[0] = v15;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v18 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|-0-[collectionView]-0-|" options:0 metrics:0 views:v17];
    v19 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-0-[collectionView]-0-|" options:0 metrics:0 views:v17];
    contentView2 = [(DMCEnrollmentNameListCell *)v9 contentView];
    [contentView2 addConstraints:v18];

    contentView3 = [(DMCEnrollmentNameListCell *)v9 contentView];
    [contentView3 addConstraints:v19];

    objc_storeStrong(&v9->_collectionView, v15);
    objc_initWeak(&location, v9);
    v29 = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __59__DMCEnrollmentNameListCell_initWithNames_numberOfColumns___block_invoke;
    v25[3] = &unk_278EE7C08;
    objc_copyWeak(&v26, &location);
    v23 = [(DMCEnrollmentNameListCell *)v9 registerForTraitChanges:v22 withHandler:v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __59__DMCEnrollmentNameListCell_initWithNames_numberOfColumns___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained collectionView];
  [v1 reloadData];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = DMCEnrollmentNameListCell;
  [(DMCEnrollmentNameListCell *)&v4 layoutSubviews];
  collectionView = [(DMCEnrollmentNameListCell *)self collectionView];
  [collectionView sizeToFit];

  [(DMCEnrollmentNameListCell *)self bounds];
  [(DMCEnrollmentNameListCell *)self setSeparatorInset:0.0, CGRectGetWidth(v5), 0.0, 0.0];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"DMCEnrollmentNameItemCell" forIndexPath:pathCopy];
  names = [(DMCEnrollmentNameListCell *)self names];
  v9 = [pathCopy row];

  v10 = [names objectAtIndexedSubscript:v9];
  textLabel = [v7 textLabel];
  [textLabel setText:v10];

  textLabel2 = [v7 textLabel];
  [textLabel2 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  [(DMCEnrollmentNameListCell *)self setCellHeight:v13];

  return v7;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(DMCEnrollmentNameListCell *)self names:view];
  v5 = [v4 count];

  return v5;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v31[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  viewCopy = view;
  names = [(DMCEnrollmentNameListCell *)self names];
  v10 = [pathCopy row];

  v11 = [names objectAtIndexedSubscript:v10];
  v30 = *MEMORY[0x277D740A8];
  v12 = +[DMCEnrollmentNameItemCell _titleFont];
  v31[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  [v11 boundingRectWithSize:0 options:v13 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v15 = v14;

  names2 = [(DMCEnrollmentNameListCell *)self names];
  v17 = [names2 count];
  [viewCopy frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v33.origin.x = v19;
  v33.origin.y = v21;
  v33.size.width = v23;
  v33.size.height = v25;
  Width = CGRectGetWidth(v33);
  if (v17 >= 2)
  {
    v27 = Width + ([(DMCEnrollmentNameListCell *)self numberOfColumns]- 1) * -5.0;
    Width = v27 / [(DMCEnrollmentNameListCell *)self numberOfColumns];
  }

  v28 = Width;
  v29 = v15;
  result.height = v29;
  result.width = v28;
  return result;
}

- (double)cellHeight
{
  v18[1] = *MEMORY[0x277D85DE8];
  names = [(DMCEnrollmentNameListCell *)self names];
  v4 = [names count];

  if (!v4)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *MEMORY[0x277D740A8];
  v8 = 0.0;
  do
  {
    names2 = [(DMCEnrollmentNameListCell *)self names];
    v10 = [names2 objectAtIndexedSubscript:v5];
    v17 = v7;
    v11 = +[DMCEnrollmentNameItemCell _titleFont];
    v18[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v10 boundingRectWithSize:0 options:v12 attributes:0 context:{1.79769313e308, 1.79769313e308}];
    v8 = v8 + v13;

    if (v6)
    {
      v8 = v8 + 5.0;
    }

    v6 += [(DMCEnrollmentNameListCell *)self numberOfColumns];
    v5 = v6;
    names3 = [(DMCEnrollmentNameListCell *)self names];
    v15 = [names3 count];
  }

  while (v15 > v6);
  return v8;
}

@end