@interface CSAdjunctItemView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeToMimic;
- (CSAdjunctItemHosting)contentHost;
- (CSAdjunctItemView)initWithRecipe:(int64_t)a3;
- (PLPlatterView)platterView;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_setPlatterView:(id)a3;
- (void)_updateSizeToMimic;
- (void)layoutSubviews;
- (void)setContentHost:(id)a3;
- (void)setMaterialGroupNameBase:(id)a3;
- (void)setSizeToMimic:(CGSize)a3;
@end

@implementation CSAdjunctItemView

- (CSAdjunctItemView)initWithRecipe:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CSAdjunctItemView;
  v4 = [(CSAdjunctItemView *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_recipe = a3;
    [(CSAdjunctItemView *)v4 setClipsToBounds:1];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->_contentHost);
  [WeakRetained preferredContentSize];
  v7 = v6;

  v8 = objc_loadWeakRetained(&self->_platterView);
  [v8 sizeThatFitsContentWithSize:{width, v7}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)intrinsicContentSize
{
  WeakRetained = objc_loadWeakRetained(&self->_contentHost);
  [WeakRetained preferredContentSize];
  v5 = v4;

  v6 = objc_loadWeakRetained(&self->_platterView);
  [v6 sizeThatFitsContentWithSize:{self->_sizeToMimic.width, v5}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  [(CSAdjunctItemView *)self _updateSizeToMimic];
  v3.receiver = self;
  v3.super_class = CSAdjunctItemView;
  [(CSAdjunctItemView *)&v3 layoutSubviews];
}

- (void)setContentHost:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentHost);
  v6 = WeakRetained;
  if (WeakRetained != v4)
  {
    v7 = [WeakRetained view];
    [v7 removeFromSuperview];

    objc_storeWeak(&self->_contentHost, v4);
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 platterView], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      self->_isContentHostPlatterView = 1;
      [v8 _setContinuousCornerRadius:18.0];
      [(CSAdjunctItemView *)self _setPlatterView:v9];
    }

    else
    {
      self->_isContentHostPlatterView = 0;
      v9 = [objc_alloc(MEMORY[0x277D3D328]) initWithRecipe:self->_recipe];
      if (objc_opt_respondsToSelector())
      {
        v10 = [v4 usesBackgroundView];
      }

      else
      {
        v10 = 1;
      }

      [v9 setUsesBackgroundView:v10];
      [v9 setMaterialGroupNameBase:self->_materialGroupNameBase];
      [v9 _setContinuousCornerRadius:18.0];
      [(CSAdjunctItemView *)self _setPlatterView:v9];
      if (objc_opt_respondsToSelector())
      {
        [v9 _continuousCornerRadius];
        [v4 setContainerCornerRadius:?];
      }

      v11 = [v9 customContentView];
      v12 = [v4 view];
      [v11 addSubview:v12];

      if (objc_opt_respondsToSelector())
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v13 = [v4 requiredVisualStyleCategories];
        v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v21;
          do
          {
            v17 = 0;
            do
            {
              if (*v21 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [*(*(&v20 + 1) + 8 * v17) integerValue];
              v19 = [v9 visualStylingProviderForCategory:v18];
              [v4 setVisualStylingProvider:v19 forCategory:v18];

              ++v17;
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v15);
        }
      }
    }

    [(CSAdjunctItemView *)self invalidateIntrinsicContentSize];
    [(CSAdjunctItemView *)self setNeedsLayout];
  }
}

- (void)setSizeToMimic:(CGSize)a3
{
  if (self->_sizeToMimic.width != a3.width || self->_sizeToMimic.height != a3.height)
  {
    self->_sizeToMimic = a3;
    [(CSAdjunctItemView *)self _updateSizeToMimic];
    [(CSAdjunctItemView *)self invalidateIntrinsicContentSize];

    [(CSAdjunctItemView *)self setNeedsLayout];
  }
}

- (void)setMaterialGroupNameBase:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_materialGroupNameBase] & 1) == 0)
  {
    objc_storeStrong(&self->_materialGroupNameBase, a3);
    if (!self->_isContentHostPlatterView)
    {
      WeakRetained = objc_loadWeakRetained(&self->_platterView);
      [WeakRetained setMaterialGroupNameBase:self->_materialGroupNameBase];
    }
  }
}

- (id)succinctDescription
{
  v2 = [(CSAdjunctItemView *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CSAdjunctItemView *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(CSAdjunctItemView *)self succinctDescriptionBuilder];
  WeakRetained = objc_loadWeakRetained(&self->_platterView);
  v6 = [v4 appendObject:WeakRetained withName:@"platterView"];

  v7 = MTStringFromMaterialRecipe();
  [v4 appendString:v7 withName:@"materialRecipe"];

  v8 = [v4 appendObject:self->_materialGroupNameBase withName:@"materialGroupBaseName"];
  v9 = objc_loadWeakRetained(&self->_contentHost);
  v10 = [v4 appendObject:v9 withName:@"contentHost"];

  v11 = [v4 appendBool:self->_isContentHostPlatterView withName:@"isContentHostPlatterView"];
  v12 = [v4 appendSize:@"sizeToMimic" withName:{self->_sizeToMimic.width, self->_sizeToMimic.height}];

  return v4;
}

- (void)_updateSizeToMimic
{
  WeakRetained = objc_loadWeakRetained(&self->_contentHost);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setContainerSize:{self->_sizeToMimic.width, self->_sizeToMimic.height}];
  }
}

- (void)_setPlatterView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_platterView);
  if (WeakRetained != obj)
  {
    [WeakRetained removeFromSuperview];
    objc_storeWeak(&self->_platterView, obj);
    [(CSAdjunctItemView *)self bounds];
    [obj setFrame:?];
    [(CSAdjunctItemView *)self addSubview:obj];
    [obj setAutoresizingMask:18];
  }
}

- (CGSize)sizeToMimic
{
  width = self->_sizeToMimic.width;
  height = self->_sizeToMimic.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CSAdjunctItemHosting)contentHost
{
  WeakRetained = objc_loadWeakRetained(&self->_contentHost);

  return WeakRetained;
}

- (PLPlatterView)platterView
{
  WeakRetained = objc_loadWeakRetained(&self->_platterView);

  return WeakRetained;
}

@end