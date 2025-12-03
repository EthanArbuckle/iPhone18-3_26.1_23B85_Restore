@interface CPUIGridTemplateCollectionView
- (CPUIGridTemplateCollectionView)initWithFrame:(CGRect)frame gridButtons:(id)buttons;
- (CPUIGridTemplateCollectionView)initWithFrame:(CGRect)frame gridButtons:(id)buttons collectionViewLayout:(id)layout;
- (CPUIGridTemplateCollectionView)initWithViewFlowLayout:(id)layout gridButtons:(id)buttons;
- (id)_linearFocusMovementSequences;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)setGridButtons:(id)buttons;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPUIGridTemplateCollectionView

- (CPUIGridTemplateCollectionView)initWithFrame:(CGRect)frame gridButtons:(id)buttons collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  buttonsCopy = buttons;
  v17.receiver = self;
  v17.super_class = CPUIGridTemplateCollectionView;
  height = [(CPUIGridTemplateCollectionView *)&v17 initWithFrame:layout collectionViewLayout:x, y, width, height];
  if (height)
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
    [(CPUIGridTemplateCollectionView *)height setBackgroundColor:v13];

    v14 = objc_opt_class();
    v15 = +[CPUIGridTemplateCollectionCell reuseIdentifier];
    [(CPUIGridTemplateCollectionView *)height registerClass:v14 forCellWithReuseIdentifier:v15];

    [(CPUIGridTemplateCollectionView *)height setGridButtons:buttonsCopy];
    [(CPUIGridTemplateCollectionView *)height setDelegate:height];
    [(CPUIGridTemplateCollectionView *)height setDataSource:height];
    [(CPUIGridTemplateCollectionView *)height setScrollEnabled:0];
    [(CPUIGridTemplateCollectionView *)height setBounces:0];
  }

  return height;
}

- (CPUIGridTemplateCollectionView)initWithFrame:(CGRect)frame gridButtons:(id)buttons
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  buttonsCopy = buttons;
  height = [[CPUIGridTemplateCollectionViewFlowLayout alloc] initWithButtons:buttonsCopy fittingRect:x, y, width, height];
  [(CPUIGridTemplateCollectionViewFlowLayout *)height setFillsHeight:1];
  height2 = [(CPUIGridTemplateCollectionView *)self initWithFrame:buttonsCopy gridButtons:height collectionViewLayout:x, y, width, height];

  return height2;
}

- (CPUIGridTemplateCollectionView)initWithViewFlowLayout:(id)layout gridButtons:(id)buttons
{
  buttonsCopy = buttons;
  layoutCopy = layout;
  [layoutCopy frame];
  v8 = [(CPUIGridTemplateCollectionView *)self initWithFrame:buttonsCopy gridButtons:layoutCopy collectionViewLayout:?];

  return v8;
}

- (void)setGridButtons:(id)buttons
{
  buttonsCopy = buttons;
  gridButtons = [(CPUIGridTemplateCollectionView *)self gridButtons];
  v6 = [gridButtons isEqualToArray:buttonsCopy];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_gridButtons, buttons);
    [(CPUIGridTemplateCollectionView *)self reloadData];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = CPUIGridTemplateCollectionView;
  [(CPUIGridTemplateCollectionView *)&v5 traitCollectionDidChange:change];
  collectionViewLayout = [(CPUIGridTemplateCollectionView *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(CPUIGridTemplateCollectionView *)self gridButtons:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CPUIGridTemplateCollectionCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  gridButtons = [(CPUIGridTemplateCollectionView *)self gridButtons];
  v11 = [pathCopy row];

  v12 = [gridButtons objectAtIndex:v11];
  [v9 setButton:v12];

  return v9;
}

- (id)_linearFocusMovementSequences
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75F88]);
  gridButtons = [(CPUIGridTemplateCollectionView *)self gridButtons];
  v5 = [v3 initWithItems:gridButtons loops:0 restrictEnteringSequence:1];

  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

@end