@interface CAMMetalView
- (CAMMetalView)initWithCoder:(id)a3;
- (CAMMetalView)initWithFrame:(CGRect)a3;
- (CAMMetalViewDelegate)metalViewDelegate;
- (void)_registerForTraitCollectionChanges;
- (void)layoutSubviews;
@end

@implementation CAMMetalView

- (CAMMetalView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAMMetalView;
  v3 = [(CAMMetalView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMMetalView *)v3 _registerForTraitCollectionChanges];
  }

  return v4;
}

- (CAMMetalView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CAMMetalView;
  v3 = [(CAMMetalView *)&v6 initWithCoder:a3];
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
  v3 = [(CAMMetalView *)self metalLayer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v8 = [(CAMMetalView *)self traitCollection];
  [v8 displayScale];
  v10 = v9;

  [v3 setContentsScale:v10];
  v11 = round(v5 * v10);
  v12 = round(v7 * v10);
  [v3 drawableSize];
  if (v11 != v14 || v12 != v13)
  {
    [v3 setDrawableSize:{v11, v12}];
    v16 = [(CAMMetalView *)self metalViewDelegate];
    [v16 metalViewDidChangeDrawableSize:self];
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