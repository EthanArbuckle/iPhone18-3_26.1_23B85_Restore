@interface CPUIGridTemplateCollectionView
- (CPUIGridTemplateCollectionView)initWithFrame:(CGRect)a3 gridButtons:(id)a4;
- (CPUIGridTemplateCollectionView)initWithFrame:(CGRect)a3 gridButtons:(id)a4 collectionViewLayout:(id)a5;
- (CPUIGridTemplateCollectionView)initWithViewFlowLayout:(id)a3 gridButtons:(id)a4;
- (id)_linearFocusMovementSequences;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)setGridButtons:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPUIGridTemplateCollectionView

- (CPUIGridTemplateCollectionView)initWithFrame:(CGRect)a3 gridButtons:(id)a4 collectionViewLayout:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v17.receiver = self;
  v17.super_class = CPUIGridTemplateCollectionView;
  v12 = [(CPUIGridTemplateCollectionView *)&v17 initWithFrame:a5 collectionViewLayout:x, y, width, height];
  if (v12)
  {
    if (_UISolariumEnabled())
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [MEMORY[0x277D75348] tableBackgroundColor];
    }
    v13 = ;
    [(CPUIGridTemplateCollectionView *)v12 setBackgroundColor:v13];

    v14 = objc_opt_class();
    v15 = +[CPUIGridTemplateCollectionCell reuseIdentifier];
    [(CPUIGridTemplateCollectionView *)v12 registerClass:v14 forCellWithReuseIdentifier:v15];

    [(CPUIGridTemplateCollectionView *)v12 setGridButtons:v11];
    [(CPUIGridTemplateCollectionView *)v12 setDelegate:v12];
    [(CPUIGridTemplateCollectionView *)v12 setDataSource:v12];
    [(CPUIGridTemplateCollectionView *)v12 setScrollEnabled:0];
    [(CPUIGridTemplateCollectionView *)v12 setBounces:0];
  }

  return v12;
}

- (CPUIGridTemplateCollectionView)initWithFrame:(CGRect)a3 gridButtons:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [[CPUIGridTemplateCollectionViewFlowLayout alloc] initWithButtons:v9 fittingRect:x, y, width, height];
  [(CPUIGridTemplateCollectionViewFlowLayout *)v10 setFillsHeight:1];
  v11 = [(CPUIGridTemplateCollectionView *)self initWithFrame:v9 gridButtons:v10 collectionViewLayout:x, y, width, height];

  return v11;
}

- (CPUIGridTemplateCollectionView)initWithViewFlowLayout:(id)a3 gridButtons:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 frame];
  v8 = [(CPUIGridTemplateCollectionView *)self initWithFrame:v6 gridButtons:v7 collectionViewLayout:?];

  return v8;
}

- (void)setGridButtons:(id)a3
{
  v7 = a3;
  v5 = [(CPUIGridTemplateCollectionView *)self gridButtons];
  v6 = [v5 isEqualToArray:v7];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_gridButtons, a3);
    [(CPUIGridTemplateCollectionView *)self reloadData];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPUIGridTemplateCollectionView;
  [(CPUIGridTemplateCollectionView *)&v5 traitCollectionDidChange:a3];
  v4 = [(CPUIGridTemplateCollectionView *)self collectionViewLayout];
  [v4 invalidateLayout];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(CPUIGridTemplateCollectionView *)self gridButtons:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CPUIGridTemplateCollectionCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  v10 = [(CPUIGridTemplateCollectionView *)self gridButtons];
  v11 = [v6 row];

  v12 = [v10 objectAtIndex:v11];
  [v9 setButton:v12];

  return v9;
}

- (id)_linearFocusMovementSequences
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75F88]);
  v4 = [(CPUIGridTemplateCollectionView *)self gridButtons];
  v5 = [v3 initWithItems:v4 loops:0 restrictEnteringSequence:1];

  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

@end