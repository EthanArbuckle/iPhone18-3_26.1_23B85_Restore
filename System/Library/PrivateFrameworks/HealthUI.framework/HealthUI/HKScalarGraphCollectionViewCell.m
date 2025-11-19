@interface HKScalarGraphCollectionViewCell
- (HKLollipopController)lollipopController;
- (HKScalarGraphCollectionViewCell)initWithFrame:(CGRect)a3;
- (HKScalarGraphViewController)graphViewController;
- (UIView)header;
- (void)graphView:(id)a3 didUpdateSelectedPoint:(id)a4;
- (void)graphViewDidEndSelection:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation HKScalarGraphCollectionViewCell

- (HKScalarGraphCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = HKScalarGraphCollectionViewCell;
  v3 = [(HKScalarGraphCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(HKScalarGraphCollectionViewCell *)v3 contentView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
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
  v11 = [(HKScalarGraphCollectionViewCell *)self graphViewController];
  v12 = [v11 view];
  [v12 setFrame:{v4, v6, v8, v10}];
}

- (void)graphView:(id)a3 didUpdateSelectedPoint:(id)a4
{
  v17 = a4;
  if ([HKLollipopController pointSelectionContextsHaveUserInfo:?])
  {
    v5 = [(HKScalarGraphCollectionViewCell *)self lollipopController];
    v6 = [v5 isVisible];

    if (v6)
    {
      v7 = [(HKScalarGraphCollectionViewCell *)self lollipopController];
      [v7 updateWithPointContexts:v17];
    }

    else
    {
      v8 = [(HKScalarGraphCollectionViewCell *)self header];
      [v8 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v7 = [(HKScalarGraphCollectionViewCell *)self lollipopController];
      [v7 setVisibleWithRect:v17 pointContexts:1 animated:{v10, v12, v14, v16}];
    }
  }
}

- (void)graphViewDidEndSelection:(id)a3
{
  v3 = [(HKScalarGraphCollectionViewCell *)self lollipopController];
  [v3 setInvisibleAnimated:1];
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