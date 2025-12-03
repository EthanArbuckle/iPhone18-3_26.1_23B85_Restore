@interface MRUEqualizerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRUEqualizerView)initWithNumberOfBars:(unint64_t)bars width:(double)width spacing:(double)spacing;
- (void)layoutSubviews;
- (void)setAnimating:(BOOL)animating;
- (void)setFrame:(CGRect)frame;
- (void)setStylingProvider:(id)provider;
- (void)setVisualStyle:(int64_t)style;
- (void)startAnimating;
- (void)stopAnimating;
- (void)updateBarHeights;
- (void)updateVisualStyling;
@end

@implementation MRUEqualizerView

- (MRUEqualizerView)initWithNumberOfBars:(unint64_t)bars width:(double)width spacing:(double)spacing
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = MRUEqualizerView;
  v8 = [(MRUEqualizerView *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_width = width;
    v8->_spacing = spacing;
    v8->_visualStyle = 0;
    for (i = [MEMORY[0x1E695DF70] arrayWithCapacity:bars];
    {
      v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
      layer = [v11 layer];
      [layer setAnchorPoint:{0.5, 1.0}];

      layer2 = [v11 layer];
      [layer2 setCornerRadius:1.0];

      [(MRUEqualizerView *)v9 addSubview:v11];
      [i addObject:v11];
    }

    v14 = [i copy];
    barViews = v9->_barViews;
    v9->_barViews = v14;

    v20[0] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v17 = [(MRUEqualizerView *)v9 registerForTraitChanges:v16 withAction:sel_updateVisualStyling];
  }

  return v9;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MRUEqualizerView;
  [(MRUEqualizerView *)&v3 layoutSubviews];
  if (!self->_animating)
  {
    [(MRUEqualizerView *)self updateBarHeights];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(MRUEqualizerView *)self bounds];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = MRUEqualizerView;
  [(MRUEqualizerView *)&v15 setFrame:x, y, width, height];
  if (self->_animating)
  {
    [(MRUEqualizerView *)self bounds];
    if (v13 != v9 || v12 != v11)
    {
      [(MRUEqualizerView *)self startAnimating];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  v5 = [(NSArray *)self->_barViews count];
  v6 = self->_spacing * (v5 - 1);
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  v7 = v6 + v5 * self->_width;
  v8 = height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setAnimating:(BOOL)animating
{
  if (self->_animating != animating)
  {
    self->_animating = animating;
    if (animating)
    {
      [(MRUEqualizerView *)self startAnimating];
    }

    else
    {
      [(MRUEqualizerView *)self stopAnimating];
    }
  }
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUEqualizerView *)self updateVisualStyling];
    providerCopy = v6;
  }
}

- (void)setVisualStyle:(int64_t)style
{
  if (self->_visualStyle != style)
  {
    self->_visualStyle = style;
    [(MRUEqualizerView *)self updateVisualStyling];
  }
}

- (void)updateVisualStyling
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = self->_barViews;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        stylingProvider = self->_stylingProvider;
        visualStyle = self->_visualStyle;
        traitCollection = [(MRUEqualizerView *)self traitCollection];
        [(MRUVisualStylingProvider *)stylingProvider applyStyle:visualStyle toView:v7 traitCollection:traitCollection];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (void)updateBarHeights
{
  animating = self->_animating;
  [(MRUEqualizerView *)self bounds];
  Height = CGRectGetHeight(v7);
  barViews = self->_barViews;
  v6[1] = 3221225472;
  v6[0] = MEMORY[0x1E69E9820];
  v6[2] = __36__MRUEqualizerView_updateBarHeights__block_invoke;
  v6[3] = &unk_1E7664900;
  if (!animating)
  {
    Height = Height * 0.3;
  }

  v6[4] = self;
  *&v6[5] = Height;
  [(NSArray *)barViews enumerateObjectsUsingBlock:v6];
}

void __36__MRUEqualizerView_updateBarHeights__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = (v4[54] + v4[55]) * a3;
  v6 = a2;
  [v4 bounds];
  [v6 setFrame:{v5, CGRectGetHeight(v8) - *(a1 + 40), *(*(a1 + 32) + 432)}];
}

- (void)startAnimating
{
  [(MRUEqualizerView *)self updateBarHeights];
  barViews = self->_barViews;

  [(NSArray *)barViews enumerateObjectsUsingBlock:&__block_literal_global_19];
}

void __34__MRUEqualizerView_startAnimating__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v4 = a2;
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v9 = objc_alloc_init(MEMORY[0x1E6979390]);
  v10 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v6, v8 * 7.0 / 12.0}];
  v18[0] = v10;
  v11 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v6, v8}];
  v18[1] = v11;
  v12 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v6, v8 * 5.0 / 12.0}];
  v18[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  [v9 setValues:v13];

  [v9 setKeyPath:@"bounds"];
  [v9 setKeyTimes:&unk_1F148B370];
  [v9 setDuration:2.0];
  *&v14 = a3 + 1.0;
  [v9 setSpeed:v14];
  LODWORD(v15) = 2139095040;
  [v9 setRepeatCount:v15];
  v16 = [v4 layer];

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BarAnimation_%ld", a3 + 1];
  [v16 addAnimation:v9 forKey:v17];
}

- (void)stopAnimating
{
  [(MRUEqualizerView *)self updateBarHeights];
  barViews = self->_barViews;

  [(NSArray *)barViews enumerateObjectsUsingBlock:&__block_literal_global_22];
}

void __33__MRUEqualizerView_stopAnimating__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = a2;
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v18 = objc_alloc_init(MEMORY[0x1E6979318]);
  v9 = MEMORY[0x1E696B098];
  v10 = [v4 layer];
  v11 = [v10 presentationLayer];
  [v11 bounds];
  v12 = [v9 valueWithCGRect:?];
  [v18 setFromValue:v12];

  v13 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v6, v8}];
  [v18 setToValue:v13];

  [v18 setKeyPath:@"bounds"];
  [v18 setDuration:0.25];
  *&v14 = a3 + 1.0;
  [v18 setSpeed:v14];
  LODWORD(v15) = 1.0;
  [v18 setRepeatCount:v15];
  v16 = [v4 layer];

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BarAnimation_%ld", a3 + 1];
  [v16 addAnimation:v18 forKey:v17];
}

@end