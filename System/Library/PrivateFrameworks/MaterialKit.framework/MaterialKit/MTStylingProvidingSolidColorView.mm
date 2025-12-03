@interface MTStylingProvidingSolidColorView
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation MTStylingProvidingSolidColorView

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    highlightView = self->_highlightView;
    if (!highlightView)
    {
      v5 = objc_alloc(MEMORY[0x277D75D18]);
      [(MTStylingProvidingSolidColorView *)self bounds];
      v6 = [v5 initWithFrame:?];
      v7 = self->_highlightView;
      self->_highlightView = v6;

      [(UIView *)self->_highlightView setUserInteractionEnabled:0];
      [(UIView *)self->_highlightView setAutoresizingMask:18];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __51__MTStylingProvidingSolidColorView_setHighlighted___block_invoke;
      v9[3] = &unk_27835D300;
      v9[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v9];
      highlightView = self->_highlightView;
      highlighted = self->_highlighted;
    }

    v8 = 0.0;
    if (highlighted)
    {
      v8 = 1.0;
    }

    [(UIView *)highlightView setAlpha:v8];
  }
}

void __51__MTStylingProvidingSolidColorView_setHighlighted___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) layer];
  [v6 cornerRadius];
  if (v2 > 0.0)
  {
    v3 = [*(*(a1 + 32) + 408) layer];
    [v6 cornerRadius];
    [v3 setCornerRadius:?];
    v4 = [v6 cornerCurve];
    [v3 setCornerCurve:v4];
  }

  [*(a1 + 32) insertSubview:*(*(a1 + 32) + 408) atIndex:0];
  v5 = [*(a1 + 32) visualStylingProviderForCategory:2];
  [v5 automaticallyUpdateView:*(*(a1 + 32) + 408) withStyle:4 andObserverBlock:&__block_literal_global_2];

  [*(*(a1 + 32) + 408) setAlpha:0.0];
}

id __51__MTStylingProvidingSolidColorView_setHighlighted___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 alpha];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__MTStylingProvidingSolidColorView_setHighlighted___block_invoke_3;
  v6[3] = &__block_descriptor_40_e36_v24__0__MTVisualStylingProvider_8_16l;
  v6[4] = v3;
  v4 = MEMORY[0x223D601D0](v6);

  return v4;
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  stylingProviders = self->_stylingProviders;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)stylingProviders objectForKey:v6];

  if (!v7)
  {
    _stylingProvidingSolidColorLayer = [(MTStylingProvidingSolidColorView *)self _stylingProvidingSolidColorLayer];
    v9 = MTCoreMaterialVisualStyleCategoryForVisualStyleCategory(category);
    v10 = [_stylingProvidingSolidColorLayer visualStylingProviderForCategory:v9];

    v7 = [[MTVisualStylingProvider alloc] initWithCoreMaterialVisualStylingProvider:v10];
    v11 = self->_stylingProviders;
    if (!v11)
    {
      v12 = objc_opt_new();
      v13 = self->_stylingProviders;
      self->_stylingProviders = v12;

      v11 = self->_stylingProviders;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:category];
    [(NSMutableDictionary *)v11 setObject:v7 forKey:v14];
  }

  return v7;
}

@end