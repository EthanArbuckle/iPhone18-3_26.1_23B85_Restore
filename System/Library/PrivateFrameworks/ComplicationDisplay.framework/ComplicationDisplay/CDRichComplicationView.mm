@interface CDRichComplicationView
- (BOOL)viewShouldIgnoreTwoPieceImage:(id)image;
- (CDComplicationDisplayObserver)displayObserver;
- (CDRichComplicationView)initWithFamily:(int64_t)family;
- (CLKMonochromeFilterProvider)filterProvider;
- (NSDate)complicationDate;
- (id)_fontWithSize:(double)size withFontDescriptor:(id)descriptor;
- (id)backgroundColorForView:(id)view;
- (id)filterForView:(id)view style:(int64_t)style;
- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)filtersForView:(id)view style:(int64_t)style;
- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)interpolatedColorForView:(id)view;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration;
- (void)_setWhistlerAnalogEditingAlphaTransitonFraction:(double)fraction direction:(int64_t)direction position:(int64_t)position;
- (void)_updateColoringLabel:(id)label withFontDescriptor:(id)descriptor andSizeFactor:(double)factor;
- (void)setEditing:(BOOL)editing;
- (void)setFontStyle:(int64_t)style;
- (void)setPaused:(BOOL)paused;
- (void)setTimeTravelDate:(id)date animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CDRichComplicationView

- (CDRichComplicationView)initWithFamily:(int64_t)family
{
  v9.receiver = self;
  v9.super_class = CDRichComplicationView;
  v4 = [(CDRichComplicationView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v4)
  {
    mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
    device = [mEMORY[0x277CBBB68] device];
    device = v4->_device;
    v4->_device = device;

    v4->_family = family;
    v4->_paused = 1;
    [(CDRichComplicationView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    [(CDRichComplicationView *)self _applyPausedUpdate];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CDRichComplicationView;
  [(CDRichComplicationView *)&v4 traitCollectionDidChange:change];
  [(CDRichComplicationView *)self setNeedsLayout];
}

- (void)_setWhistlerAnalogEditingAlphaTransitonFraction:(double)fraction direction:(int64_t)direction position:(int64_t)position
{
  if (position == 1)
  {
    CLKCompressFraction();
    v6 = v8;
  }

  else
  {
    v6 = 0.0;
    if (!position)
    {
      CLKCompressFraction();
      v6 = 1.0 - v7;
    }
  }

  [(CDRichComplicationView *)self setAlpha:direction, v6];
}

- (void)setTimeTravelDate:(id)date animated:(BOOL)animated
{
  dateCopy = date;
  objc_storeStrong(&self->_timeTravelDate, date);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__CDRichComplicationView_setTimeTravelDate_animated___block_invoke;
  v8[3] = &unk_278DF3710;
  v9 = dateCopy;
  v7 = dateCopy;
  [(CDRichComplicationView *)self _enumerateLabelsWithBlock:v8];
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    if (!editing)
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
    complicationDate = timeTravelDate;
  }

  else
  {
    complicationDate = [MEMORY[0x277CBBAD8] complicationDate];
  }

  return complicationDate;
}

- (id)filtersForView:(id)view style:(int64_t)style
{
  filterProvider = [(CDRichComplicationView *)self filterProvider];
  v7 = [filterProvider filtersForView:self style:style];

  return v7;
}

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  filterProvider = [(CDRichComplicationView *)self filterProvider];
  v9 = [filterProvider filtersForView:self style:style fraction:fraction];

  return v9;
}

- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  filterProvider = [(CDRichComplicationView *)self filterProvider];
  v9 = [filterProvider filterForView:self style:style fraction:fraction];

  return v9;
}

- (id)filterForView:(id)view style:(int64_t)style
{
  filterProvider = [(CDRichComplicationView *)self filterProvider];
  v7 = [filterProvider filterForView:self style:style];

  return v7;
}

- (id)interpolatedColorForView:(id)view
{
  viewCopy = view;
  filterProvider = [(CDRichComplicationView *)self filterProvider];
  v6 = [filterProvider interpolatedColorForView:viewCopy];

  return v6;
}

- (id)backgroundColorForView:(id)view
{
  viewCopy = view;
  filterProvider = [(CDRichComplicationView *)self filterProvider];
  v6 = [filterProvider backgroundColorForView:viewCopy];

  return v6;
}

- (BOOL)viewShouldIgnoreTwoPieceImage:(id)image
{
  filterProvider = [(CDRichComplicationView *)self filterProvider];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  filterProvider2 = [(CDRichComplicationView *)self filterProvider];
  v7 = [filterProvider2 viewShouldIgnoreTwoPieceImage:self];

  return v7;
}

- (void)setFontStyle:(int64_t)style
{
  if (self->_fontStyle != style)
  {
    v4 = 0;
    v5 = 0;
    self->_fontStyle = style;
    if (style > 2)
    {
      if (style == 3)
      {
        v4 = CDRichComplicationSemiboldFontDescriptor();
        goto LABEL_11;
      }

      v6 = 0;
      if (style == 5)
      {
        v4 = CDRichComplicationOpenFontDescriptor();
        goto LABEL_11;
      }
    }

    else if (style == 1)
    {
      v4 = 0;
      v6 = 0;
      v5 = 1;
    }

    else
    {
      v6 = 0;
      if (style == 2)
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

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration
{
  objc_storeStrong(&self->_fontDescriptor, configuration->var1);
  self->_fontSizeFactor = configuration->var2;
  var1 = configuration->var1;
}

- (void)_updateColoringLabel:(id)label withFontDescriptor:(id)descriptor andSizeFactor:(double)factor
{
  descriptorCopy = descriptor;
  labelCopy = label;
  font = [labelCopy font];
  [font pointSize];
  factor = [(CDRichComplicationView *)self _fontWithSize:descriptorCopy withFontDescriptor:v11 * factor];

  [labelCopy setFont:factor];

  [(CDRichComplicationView *)self setNeedsLayout];
}

- (id)_fontWithSize:(double)size withFontDescriptor:(id)descriptor
{
  v4 = [MEMORY[0x277CBBB08] fontWithDescriptor:descriptor size:size];
  cLKFontWithAlternativePunctuation = [v4 CLKFontWithAlternativePunctuation];

  return cLKFontWithAlternativePunctuation;
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