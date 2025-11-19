@interface HKBarButtonItemControl
- (CGSize)intrinsicContentSize;
- (HKBarButtonItemControl)initWithSystemItem:(int64_t)a3 preferredHeight:(double)a4 collapseHeight:(BOOL)a5;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setHorizontalMargin:(double)a3;
- (void)setTintColor:(id)a3;
@end

@implementation HKBarButtonItemControl

- (HKBarButtonItemControl)initWithSystemItem:(int64_t)a3 preferredHeight:(double)a4 collapseHeight:(BOOL)a5
{
  v22.receiver = self;
  v22.super_class = HKBarButtonItemControl;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [(HKBarButtonItemControl *)&v22 initWithFrame:*MEMORY[0x1E695F058], v9, v10, v11];
  v13 = v12;
  if (v12)
  {
    v14 = 44.0;
    if (a4 > 0.0)
    {
      v14 = a4;
    }

    v12->_preferredHeight = v14;
    v12->_collapseHeight = a5;
    v12->_horizontalMargin = 2.0;
    v15 = [objc_alloc(MEMORY[0x1E69DD180]) initWithFrame:{v8, v9, v10, v11}];
    toolbar = v13->_toolbar;
    v13->_toolbar = v15;

    v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:a3 target:0 action:0];
    barButtonItem = v13->_barButtonItem;
    v13->_barButtonItem = v17;

    v19 = [(UIBarButtonItem *)v13->_barButtonItem createViewForToolbar:v13->_toolbar];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v13->_barButtonItemControl, v19);
      [(UIControl *)v13->_barButtonItemControl addTarget:v13 action:sel__barButtonAction_ forControlEvents:0x2000];
      [(HKBarButtonItemControl *)v13 addSubview:v13->_barButtonItemControl];
    }

    [(HKBarButtonItemControl *)v13 setClipsToBounds:1];
    v20 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(HKBarButtonItemControl *)v13 setBackgroundColor:v20];
  }

  return v13;
}

- (void)setBackgroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKBarButtonItemControl;
  v4 = a3;
  [(HKBarButtonItemControl *)&v5 setBackgroundColor:v4];
  [(UIControl *)self->_barButtonItemControl setBackgroundColor:v4, v5.receiver, v5.super_class];
}

- (void)setTintColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKBarButtonItemControl;
  v4 = a3;
  [(HKBarButtonItemControl *)&v5 setTintColor:v4];
  [(UIControl *)self->_barButtonItemControl setTintColor:v4, v5.receiver, v5.super_class];
}

- (void)setHorizontalMargin:(double)a3
{
  self->_horizontalMargin = a3;
  [(HKBarButtonItemControl *)self invalidateIntrinsicContentSize];

  [(HKBarButtonItemControl *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  [(HKBarButtonItemControl *)self bounds];
  barButtonItemControl = self->_barButtonItemControl;

  [(UIControl *)barButtonItemControl setFrame:0.0, 0.0];
}

- (CGSize)intrinsicContentSize
{
  [(UIControl *)self->_barButtonItemControl frame];
  v4 = v3 + self->_horizontalMargin * 2.0;
  preferredHeight = self->_preferredHeight;
  result.height = preferredHeight;
  result.width = v4;
  return result;
}

@end