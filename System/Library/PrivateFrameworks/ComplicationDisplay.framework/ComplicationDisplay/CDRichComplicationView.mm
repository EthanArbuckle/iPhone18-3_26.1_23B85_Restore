@interface CDRichComplicationView
- (BOOL)viewShouldIgnoreTwoPieceImage:(id)a3;
- (CDComplicationDisplayObserver)displayObserver;
- (CDRichComplicationView)initWithFamily:(int64_t)a3;
- (CLKMonochromeFilterProvider)filterProvider;
- (NSDate)complicationDate;
- (id)_fontWithSize:(double)a3 withFontDescriptor:(id)a4;
- (id)backgroundColorForView:(id)a3;
- (id)filterForView:(id)a3 style:(int64_t)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)filtersForView:(id)a3 style:(int64_t)a4;
- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)interpolatedColorForView:(id)a3;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3;
- (void)_setWhistlerAnalogEditingAlphaTransitonFraction:(double)a3 direction:(int64_t)a4 position:(int64_t)a5;
- (void)_updateColoringLabel:(id)a3 withFontDescriptor:(id)a4 andSizeFactor:(double)a5;
- (void)setEditing:(BOOL)a3;
- (void)setFontStyle:(int64_t)a3;
- (void)setPaused:(BOOL)a3;
- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CDRichComplicationView

- (CDRichComplicationView)initWithFamily:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = CDRichComplicationView;
  v4 = [(CDRichComplicationView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v4)
  {
    v5 = [MEMORY[0x277CBBB68] sharedRenderingContext];
    v6 = [v5 device];
    device = v4->_device;
    v4->_device = v6;

    v4->_family = a3;
    v4->_paused = 1;
    [(CDRichComplicationView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    self->_paused = a3;
    [(CDRichComplicationView *)self _applyPausedUpdate];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CDRichComplicationView;
  [(CDRichComplicationView *)&v4 traitCollectionDidChange:a3];
  [(CDRichComplicationView *)self setNeedsLayout];
}

- (void)_setWhistlerAnalogEditingAlphaTransitonFraction:(double)a3 direction:(int64_t)a4 position:(int64_t)a5
{
  if (a5 == 1)
  {
    CLKCompressFraction();
    v6 = v8;
  }

  else
  {
    v6 = 0.0;
    if (!a5)
    {
      CLKCompressFraction();
      v6 = 1.0 - v7;
    }
  }

  [(CDRichComplicationView *)self setAlpha:a4, v6];
}

- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  objc_storeStrong(&self->_timeTravelDate, a3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__CDRichComplicationView_setTimeTravelDate_animated___block_invoke;
  v8[3] = &unk_278DF3710;
  v9 = v6;
  v7 = v6;
  [(CDRichComplicationView *)self _enumerateLabelsWithBlock:v8];
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    if (!a3)
    {
      [(CDRichComplicationView *)self setAlpha:1.0];
      [(CDRichComplicationView *)self _editingDidEnd];

      [(CDRichComplicationView *)self setNeedsLayout];
    }
  }
}

- (NSDate)complicationDate
{
  timeTravelDate = self->_timeTravelDate;
  if (timeTravelDate)
  {
    v3 = timeTravelDate;
  }

  else
  {
    v3 = [MEMORY[0x277CBBAD8] complicationDate];
  }

  return v3;
}

- (id)filtersForView:(id)a3 style:(int64_t)a4
{
  v6 = [(CDRichComplicationView *)self filterProvider];
  v7 = [v6 filtersForView:self style:a4];

  return v7;
}

- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = [(CDRichComplicationView *)self filterProvider];
  v9 = [v8 filtersForView:self style:a4 fraction:a5];

  return v9;
}

- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = [(CDRichComplicationView *)self filterProvider];
  v9 = [v8 filterForView:self style:a4 fraction:a5];

  return v9;
}

- (id)filterForView:(id)a3 style:(int64_t)a4
{
  v6 = [(CDRichComplicationView *)self filterProvider];
  v7 = [v6 filterForView:self style:a4];

  return v7;
}

- (id)interpolatedColorForView:(id)a3
{
  v4 = a3;
  v5 = [(CDRichComplicationView *)self filterProvider];
  v6 = [v5 interpolatedColorForView:v4];

  return v6;
}

- (id)backgroundColorForView:(id)a3
{
  v4 = a3;
  v5 = [(CDRichComplicationView *)self filterProvider];
  v6 = [v5 backgroundColorForView:v4];

  return v6;
}

- (BOOL)viewShouldIgnoreTwoPieceImage:(id)a3
{
  v4 = [(CDRichComplicationView *)self filterProvider];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [(CDRichComplicationView *)self filterProvider];
  v7 = [v6 viewShouldIgnoreTwoPieceImage:self];

  return v7;
}

- (void)setFontStyle:(int64_t)a3
{
  if (self->_fontStyle != a3)
  {
    v4 = 0;
    v5 = 0;
    self->_fontStyle = a3;
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v4 = CDRichComplicationSemiboldFontDescriptor();
        goto LABEL_11;
      }

      v6 = 0;
      if (a3 == 5)
      {
        v4 = CDRichComplicationOpenFontDescriptor();
        goto LABEL_11;
      }
    }

    else if (a3 == 1)
    {
      v4 = 0;
      v6 = 0;
      v5 = 1;
    }

    else
    {
      v6 = 0;
      if (a3 == 2)
      {
        v4 = CDRichComplicationMonoFontDescriptor();
LABEL_11:
        v5 = 0;
        v6 = 0x3FF0000000000000;
      }
    }

    v8[0] = v5;
    v7 = v4;
    v9 = v7;
    v10 = v6;
    [(CDRichComplicationView *)self _setFontConfiguration:v8];
  }
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3
{
  objc_storeStrong(&self->_fontDescriptor, a3->var1);
  self->_fontSizeFactor = a3->var2;
  var1 = a3->var1;
}

- (void)_updateColoringLabel:(id)a3 withFontDescriptor:(id)a4 andSizeFactor:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 font];
  [v10 pointSize];
  v12 = [(CDRichComplicationView *)self _fontWithSize:v8 withFontDescriptor:v11 * a5];

  [v9 setFont:v12];

  [(CDRichComplicationView *)self setNeedsLayout];
}

- (id)_fontWithSize:(double)a3 withFontDescriptor:(id)a4
{
  v4 = [MEMORY[0x277CBBB08] fontWithDescriptor:a4 size:a3];
  v5 = [v4 CLKFontWithAlternativePunctuation];

  return v5;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- (CDComplicationDisplayObserver)displayObserver
{
  WeakRetained = objc_loadWeakRetained(&self->displayObserver);

  return WeakRetained;
}

@end