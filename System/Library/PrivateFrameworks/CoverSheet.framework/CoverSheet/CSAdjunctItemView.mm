@interface CSAdjunctItemView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeToMimic;
- (CSAdjunctItemHosting)contentHost;
- (CSAdjunctItemView)initWithRecipe:(int64_t)recipe;
- (PLPlatterView)platterView;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_setPlatterView:(id)view;
- (void)_updateSizeToMimic;
- (void)layoutSubviews;
- (void)setContentHost:(id)host;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setSizeToMimic:(CGSize)mimic;
@end

@implementation CSAdjunctItemView

- (CSAdjunctItemView)initWithRecipe:(int64_t)recipe
{
  v7.receiver = self;
  v7.super_class = CSAdjunctItemView;
  v4 = [(CSAdjunctItemView *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_recipe = recipe;
    [(CSAdjunctItemView *)v4 setClipsToBounds:1];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
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

- (void)setContentHost:(id)host
{
  v25 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  WeakRetained = objc_loadWeakRetained(&self->_contentHost);
  v6 = WeakRetained;
  if (WeakRetained != hostCopy)
  {
    view = [WeakRetained view];
    [view removeFromSuperview];

    objc_storeWeak(&self->_contentHost, hostCopy);
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([hostCopy platterView], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
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
        usesBackgroundView = [hostCopy usesBackgroundView];
      }

      else
      {
        usesBackgroundView = 1;
      }

      [v9 setUsesBackgroundView:usesBackgroundView];
      [v9 setMaterialGroupNameBase:self->_materialGroupNameBase];
      [v9 _setContinuousCornerRadius:18.0];
      [(CSAdjunctItemView *)self _setPlatterView:v9];
      if (objc_opt_respondsToSelector())
      {
        [v9 _continuousCornerRadius];
        [hostCopy setContainerCornerRadius:?];
      }

      customContentView = [v9 customContentView];
      view2 = [hostCopy view];
      [customContentView addSubview:view2];

      if (objc_opt_respondsToSelector())
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        requiredVisualStyleCategories = [hostCopy requiredVisualStyleCategories];
        v14 = [requiredVisualStyleCategories countByEnumeratingWithState:&v20 objects:v24 count:16];
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
                objc_enumerationMutation(requiredVisualStyleCategories);
              }

              integerValue = [*(*(&v20 + 1) + 8 * v17) integerValue];
              v19 = [v9 visualStylingProviderForCategory:integerValue];
              [hostCopy setVisualStylingProvider:v19 forCategory:integerValue];

              ++v17;
            }

            while (v15 != v17);
            v15 = [requiredVisualStyleCategories countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v15);
        }
      }
    }

    [(CSAdjunctItemView *)self invalidateIntrinsicContentSize];
    [(CSAdjunctItemView *)self setNeedsLayout];
  }
}

- (void)setSizeToMimic:(CGSize)mimic
{
  if (self->_sizeToMimic.width != mimic.width || self->_sizeToMimic.height != mimic.height)
  {
    self->_sizeToMimic = mimic;
    [(CSAdjunctItemView *)self _updateSizeToMimic];
    [(CSAdjunctItemView *)self invalidateIntrinsicContentSize];

    [(CSAdjunctItemView *)self setNeedsLayout];
  }
}

- (void)setMaterialGroupNameBase:(id)base
{
  baseCopy = base;
  if (([baseCopy isEqualToString:self->_materialGroupNameBase] & 1) == 0)
  {
    objc_storeStrong(&self->_materialGroupNameBase, base);
    if (!self->_isContentHostPlatterView)
    {
      WeakRetained = objc_loadWeakRetained(&self->_platterView);
      [WeakRetained setMaterialGroupNameBase:self->_materialGroupNameBase];
    }
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CSAdjunctItemView *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CSAdjunctItemView *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(CSAdjunctItemView *)self succinctDescriptionBuilder];
  WeakRetained = objc_loadWeakRetained(&self->_platterView);
  v6 = [succinctDescriptionBuilder appendObject:WeakRetained withName:@"platterView"];

  v7 = MTStringFromMaterialRecipe();
  [succinctDescriptionBuilder appendString:v7 withName:@"materialRecipe"];

  v8 = [succinctDescriptionBuilder appendObject:self->_materialGroupNameBase withName:@"materialGroupBaseName"];
  v9 = objc_loadWeakRetained(&self->_contentHost);
  v10 = [succinctDescriptionBuilder appendObject:v9 withName:@"contentHost"];

  v11 = [succinctDescriptionBuilder appendBool:self->_isContentHostPlatterView withName:@"isContentHostPlatterView"];
  v12 = [succinctDescriptionBuilder appendSize:@"sizeToMimic" withName:{self->_sizeToMimic.width, self->_sizeToMimic.height}];

  return succinctDescriptionBuilder;
}

- (void)_updateSizeToMimic
{
  WeakRetained = objc_loadWeakRetained(&self->_contentHost);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setContainerSize:{self->_sizeToMimic.width, self->_sizeToMimic.height}];
  }
}

- (void)_setPlatterView:(id)view
{
  obj = view;
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