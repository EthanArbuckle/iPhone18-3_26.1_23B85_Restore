@interface CAMMetalView
- (CAMMetalView)initWithCoder:(id)coder;
- (CAMMetalView)initWithFrame:(CGRect)frame;
- (CAMMetalViewDelegate)metalViewDelegate;
- (void)_registerForTraitCollectionChanges;
- (void)layoutSubviews;
@end

@implementation CAMMetalView

- (CAMMetalView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CAMMetalView;
  v3 = [(CAMMetalView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMMetalView *)v3 _registerForTraitCollectionChanges];
  }

  return v4;
}

- (CAMMetalView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CAMMetalView;
  v3 = [(CAMMetalView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CAMMetalView *)v3 _registerForTraitCollectionChanges];
  }

  return v4;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = CAMMetalView;
  [(CAMMetalView *)&v17 layoutSubviews];
  metalLayer = [(CAMMetalView *)self metalLayer];
  [metalLayer bounds];
  v5 = v4;
  v7 = v6;
  traitCollection = [(CAMMetalView *)self traitCollection];
  [traitCollection displayScale];
  v10 = v9;

  [metalLayer setContentsScale:v10];
  v11 = round(v5 * v10);
  v12 = round(v7 * v10);
  [metalLayer drawableSize];
  if (v11 != v14 || v12 != v13)
  {
    [metalLayer setDrawableSize:{v11, v12}];
    metalViewDelegate = [(CAMMetalView *)self metalViewDelegate];
    [metalViewDelegate metalViewDidChangeDrawableSize:self];
  }
}

- (void)_registerForTraitCollectionChanges
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v4 = [(CAMMetalView *)self registerForTraitChanges:v3 withAction:sel_setNeedsLayout];
}

- (CAMMetalViewDelegate)metalViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_metalViewDelegate);

  return WeakRetained;
}

@end