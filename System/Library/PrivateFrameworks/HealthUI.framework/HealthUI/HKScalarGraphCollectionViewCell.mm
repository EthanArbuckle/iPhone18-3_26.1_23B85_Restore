@interface HKScalarGraphCollectionViewCell
- (HKLollipopController)lollipopController;
- (HKScalarGraphCollectionViewCell)initWithFrame:(CGRect)frame;
- (HKScalarGraphViewController)graphViewController;
- (UIView)header;
- (void)graphView:(id)view didUpdateSelectedPoint:(id)point;
- (void)graphViewDidEndSelection:(id)selection;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation HKScalarGraphCollectionViewCell

- (HKScalarGraphCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = HKScalarGraphCollectionViewCell;
  v3 = [(HKScalarGraphCollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(HKScalarGraphCollectionViewCell *)v3 contentView];
    [contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HKScalarGraphCollectionViewCell;
  [(HKScalarGraphCollectionViewCell *)&v3 prepareForReuse];
  [(HKScalarGraphCollectionViewCell *)self setGraphSeries:MEMORY[0x1E695E0F0]];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = HKScalarGraphCollectionViewCell;
  [(HKScalarGraphCollectionViewCell *)&v13 layoutSubviews];
  [(HKScalarGraphCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  graphViewController = [(HKScalarGraphCollectionViewCell *)self graphViewController];
  view = [graphViewController view];
  [view setFrame:{v4, v6, v8, v10}];
}

- (void)graphView:(id)view didUpdateSelectedPoint:(id)point
{
  pointCopy = point;
  if ([HKLollipopController pointSelectionContextsHaveUserInfo:?])
  {
    lollipopController = [(HKScalarGraphCollectionViewCell *)self lollipopController];
    isVisible = [lollipopController isVisible];

    if (isVisible)
    {
      lollipopController2 = [(HKScalarGraphCollectionViewCell *)self lollipopController];
      [lollipopController2 updateWithPointContexts:pointCopy];
    }

    else
    {
      header = [(HKScalarGraphCollectionViewCell *)self header];
      [header frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      lollipopController2 = [(HKScalarGraphCollectionViewCell *)self lollipopController];
      [lollipopController2 setVisibleWithRect:pointCopy pointContexts:1 animated:{v10, v12, v14, v16}];
    }
  }
}

- (void)graphViewDidEndSelection:(id)selection
{
  lollipopController = [(HKScalarGraphCollectionViewCell *)self lollipopController];
  [lollipopController setInvisibleAnimated:1];
}

- (HKScalarGraphViewController)graphViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_graphViewController);

  return WeakRetained;
}

- (HKLollipopController)lollipopController
{
  WeakRetained = objc_loadWeakRetained(&self->_lollipopController);

  return WeakRetained;
}

- (UIView)header
{
  WeakRetained = objc_loadWeakRetained(&self->_header);

  return WeakRetained;
}

@end