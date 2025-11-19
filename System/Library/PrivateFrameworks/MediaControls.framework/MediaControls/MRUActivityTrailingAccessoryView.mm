@interface MRUActivityTrailingAccessoryView
- (MRUActivityTrailingAccessoryView)initWithSize:(CGSize)a3;
- (void)layoutSubviews;
- (void)setHapticView:(id)a3;
- (void)setShowHaptic:(BOOL)a3;
- (void)setShowWaveform:(BOOL)a3;
- (void)setStylingProvider:(id)a3;
- (void)setWaveformView:(id)a3;
- (void)updateVisibilty;
- (void)updateVisualStyling;
@end

@implementation MRUActivityTrailingAccessoryView

- (MRUActivityTrailingAccessoryView)initWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v6 setContentMode:1];
  v7 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:16.0];
  [v6 setSymbolConfiguration:v7];

  v12[0] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v9 = [(MRUActivityTrailingAccessoryView *)self registerForTraitChanges:v8 withAction:sel_updateVisualStyling];

  v10 = [(MRUActivityAccessoryView *)self initWithContentView:v6 size:width, height];
  [(MRUActivityTrailingAccessoryView *)v10 setImageView:v6];

  return v10;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = MRUActivityTrailingAccessoryView;
  [(MRUActivityAccessoryView *)&v27 layoutSubviews];
  [(MRUActivityTrailingAccessoryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MRUActivityAccessoryView *)self contentInsets];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  [(MRUActivityAccessoryView *)self contentOffset];
  v20 = v19;
  [(MRUActivityAccessoryView *)self contentOffset];
  v22 = v21;
  v28.origin.x = v12;
  v28.origin.y = v14;
  v28.size.width = v16;
  v28.size.height = v18;
  v29 = CGRectOffset(v28, v20, v22);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  [(MRUWaveformView *)self->_waveformView setFrame:?];
  [(MRUHapticView *)self->_hapticView setFrame:x, y, width, height];
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUActivityTrailingAccessoryView *)self updateVisualStyling];
    v5 = v6;
  }
}

- (void)setWaveformView:(id)a3
{
  v4 = a3;
  [(MRUWaveformView *)self->_waveformView removeFromSuperview];
  waveformView = self->_waveformView;
  self->_waveformView = v4;
  v6 = v4;

  [(MRUActivityTrailingAccessoryView *)self addSubview:v6];
  [(MRUActivityTrailingAccessoryView *)self setNeedsLayout];

  [(MRUActivityTrailingAccessoryView *)self updateVisibilty];
}

- (void)setHapticView:(id)a3
{
  v4 = a3;
  [(MRUHapticView *)self->_hapticView removeFromSuperview];
  hapticView = self->_hapticView;
  self->_hapticView = v4;
  v6 = v4;

  [(MRUActivityTrailingAccessoryView *)self addSubview:v6];
  [(MRUActivityTrailingAccessoryView *)self setNeedsLayout];

  [(MRUActivityTrailingAccessoryView *)self updateVisibilty];
}

- (void)setShowWaveform:(BOOL)a3
{
  if (self->_showWaveform != a3)
  {
    self->_showWaveform = a3;
    [(MRUActivityTrailingAccessoryView *)self setNeedsLayout];

    [(MRUActivityTrailingAccessoryView *)self updateVisibilty];
  }
}

- (void)setShowHaptic:(BOOL)a3
{
  if (self->_showHaptic != a3)
  {
    self->_showHaptic = a3;
    [(MRUActivityTrailingAccessoryView *)self setNeedsLayout];

    [(MRUActivityTrailingAccessoryView *)self updateVisibilty];
  }
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  imageView = self->_imageView;
  v4 = [(MRUActivityTrailingAccessoryView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:0 toView:imageView traitCollection:v4];
}

- (void)updateVisibilty
{
  v3 = self->_showWaveform || self->_showHaptic;
  [(UIImageView *)self->_imageView setHidden:v3];
  v4 = 0.0;
  if (self->_showWaveform)
  {
    v4 = 1.0;
    if (self->_showHaptic)
    {
      v4 = 0.0;
    }
  }

  [(MRUWaveformView *)self->_waveformView setAlpha:v4];
  v5 = 1.0;
  if (!self->_showHaptic)
  {
    v5 = 0.0;
  }

  hapticView = self->_hapticView;

  [(MRUHapticView *)hapticView setAlpha:v5];
}

@end