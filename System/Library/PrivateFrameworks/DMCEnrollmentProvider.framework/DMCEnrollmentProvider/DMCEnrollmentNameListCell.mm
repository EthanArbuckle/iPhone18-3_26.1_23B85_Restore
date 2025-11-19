@interface DMCEnrollmentNameListCell
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (DMCEnrollmentNameListCell)initWithNames:(id)a3 numberOfColumns:(unint64_t)a4;
- (double)cellHeight;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)layoutSubviews;
@end

@implementation DMCEnrollmentNameListCell

- (DMCEnrollmentNameListCell)initWithNames:(id)a3 numberOfColumns:(unint64_t)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v28.receiver = self;
  v28.super_class = DMCEnrollmentNameListCell;
  v9 = [(DMCEnrollmentNameListCell *)&v28 initWithStyle:0 reuseIdentifier:v8];

  if (v9)
  {
    [(DMCEnrollmentNameListCell *)v9 setSelectionStyle:0];
    [(DMCEnrollmentNameListCell *)v9 setUserInteractionEnabled:0];
    v10 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(DMCEnrollmentNameListCell *)v9 setBackgroundColor:v10];

    v11 = [v6 copy];
    names = v9->_names;
    v9->_names = v11;

    v9->_numberOfColumns = a4;
    v13 = objc_alloc_init(MEMORY[0x277D752F0]);
    v14 = objc_alloc(MEMORY[0x277D752A0]);
    v15 = [v14 initWithFrame:v13 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v15 setDelegate:v9];
    [v15 setDataSource:v9];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setScrollEnabled:0];
    [v15 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"DMCEnrollmentNameItemCell"];
    v16 = [(DMCEnrollmentNameListCell *)v9 contentView];
    [v16 addSubview:v15];

    v30 = @"collectionView";
    v31[0] = v15;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v18 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|-0-[collectionView]-0-|" options:0 metrics:0 views:v17];
    v19 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-0-[collectionView]-0-|" options:0 metrics:0 views:v17];
    v20 = [(DMCEnrollmentNameListCell *)v9 contentView];
    [v20 addConstraints:v18];

    v21 = [(DMCEnrollmentNameListCell *)v9 contentView];
    [v21 addConstraints:v19];

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
  v3 = [(DMCEnrollmentNameListCell *)self collectionView];
  [v3 sizeToFit];

  [(DMCEnrollmentNameListCell *)self bounds];
  [(DMCEnrollmentNameListCell *)self setSeparatorInset:0.0, CGRectGetWidth(v5), 0.0, 0.0];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"DMCEnrollmentNameItemCell" forIndexPath:v6];
  v8 = [(DMCEnrollmentNameListCell *)self names];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];
  v11 = [v7 textLabel];
  [v11 setText:v10];

  v12 = [v7 textLabel];
  [v12 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  [(DMCEnrollmentNameListCell *)self setCellHeight:v13];

  return v7;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(DMCEnrollmentNameListCell *)self names:a3];
  v5 = [v4 count];

  return v5;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v31[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a3;
  v9 = [(DMCEnrollmentNameListCell *)self names];
  v10 = [v7 row];

  v11 = [v9 objectAtIndexedSubscript:v10];
  v30 = *MEMORY[0x277D740A8];
  v12 = +[DMCEnrollmentNameItemCell _titleFont];
  v31[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  [v11 boundingRectWithSize:0 options:v13 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v15 = v14;

  v16 = [(DMCEnrollmentNameListCell *)self names];
  v17 = [v16 count];
  [v8 frame];
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
  v3 = [(DMCEnrollmentNameListCell *)self names];
  v4 = [v3 count];

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
    v9 = [(DMCEnrollmentNameListCell *)self names];
    v10 = [v9 objectAtIndexedSubscript:v5];
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
    v14 = [(DMCEnrollmentNameListCell *)self names];
    v15 = [v14 count];
  }

  while (v15 > v6);
  return v8;
}

@end