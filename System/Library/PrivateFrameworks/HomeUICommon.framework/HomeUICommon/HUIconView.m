@interface HUIconView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (HFIconDescriptor)iconDescriptor;
- (HUIconView)initWithFrame:(CGRect)a3 contentMode:(int64_t)a4;
- (UIVisualEffect)vibrancyEffect;
- (id)_defaultVibrancyEffect;
- (id)contentContainerView;
- (void)_updateVisualEffectStateForVibrancyEffectChange:(BOOL)a3 animated:(BOOL)a4;
- (void)layoutSubviews;
- (void)reclaimIconIfPossible;
- (void)renounceIconIfPossible;
- (void)setDisplayContext:(unint64_t)a3;
- (void)setIconSize:(unint64_t)a3;
@end

@implementation HUIconView

- (HUIconView)initWithFrame:(CGRect)a3 contentMode:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = HUIconView;
  v5 = [(HUIconView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D75D60]) initWithEffect:0];
    effectView = v5->_effectView;
    v5->_effectView = v6;

    v8 = [(UIVisualEffectView *)v5->_effectView contentView];
    [v8 setClipsToBounds:0];

    [(HUIconView *)v5 addSubview:v5->_effectView];
    v5->_contentMode = a4;
    v5->_vibrancyEffectAnimationDuration = 0.25;
  }

  return v5;
}

- (id)contentContainerView
{
  v2 = [(HUIconView *)self effectView];
  v3 = [v2 contentView];

  return v3;
}

- (void)renounceIconIfPossible
{
  v2 = [(HUIconView *)self currentIconContentView];
  [v2 renounceIconIfPossible];
}

- (void)reclaimIconIfPossible
{
  v2 = [(HUIconView *)self currentIconContentView];
  [v2 reclaimIconIfPossible];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = HUIconView;
  [(HUIconView *)&v22 layoutSubviews];
  [(HUIconView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(HUIconView *)self effectView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __28__HUIconView_layoutSubviews__block_invoke;
  v21[3] = &unk_27977D4D0;
  v21[4] = self;
  __28__HUIconView_layoutSubviews__block_invoke(v21);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(HUIconView *)self currentIconContentView];
  [v20 setFrame:{v13, v15, v17, v19}];
}

uint64_t __28__HUIconView_layoutSubviews__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 bounds];
  [v2 sizeThatFits:{v3, v4}];
  v6 = v5;
  v8 = v7;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  [*(a1 + 32) bounds];
  _UIScaleTransformForAspectFitOfSizeInTargetSize();
  v14.origin.x = *MEMORY[0x277CBF348];
  v14.origin.y = *(MEMORY[0x277CBF348] + 8);
  memset(&v10, 0, sizeof(v10));
  v14.size.width = v6;
  v14.size.height = v8;
  CGRectApplyAffineTransform(v14, &v10);
  [*(a1 + 32) bounds];
  return UIRectCenteredIntegralRect();
}

- (CGSize)intrinsicContentSize
{
  v3 = HUDefaultSizeForIconSize([(HUIconView *)self iconSize]);
  v5 = v4;
  v6 = [(HUIconView *)self currentIconContentView];
  if ([v6 conformsToProtocol:&unk_286689600])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && [(HUIconView *)self useIntrinsicContentSizeFromAsset])
  {
    [v8 iconContentIntrinsicContentSize];
    v3 = v9;
    v5 = v10;
  }

  [(HUIconView *)self sizeThatFits:v3, v5];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  v5 = [(HUIconView *)self currentIconContentView];
  if (v5)
  {
    v6 = [(HUIconView *)self currentIconContentView];
    [v6 aspectRatio];
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = height * v8;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (UIVisualEffect)vibrancyEffect
{
  vibrancyEffect = self->_vibrancyEffect;
  if (vibrancyEffect)
  {
    v3 = vibrancyEffect;
  }

  else
  {
    v3 = [(HUIconView *)self _defaultVibrancyEffect];
  }

  return v3;
}

- (id)_defaultVibrancyEffect
{
  v2 = [MEMORY[0x277D75218] effectWithStyle:4];
  v3 = [MEMORY[0x277D75D08] _effectForBlurEffect:v2 vibrancyStyle:110];

  return v3;
}

- (void)_updateVisualEffectStateForVibrancyEffectChange:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v40 = *MEMORY[0x277D85DE8];
  v7 = [(HUIconView *)self vibrancyEffect];
  v8 = [(HUIconView *)self currentIconContentView];
  [v8 setVibrancyEffect:v7];

  v9 = [(HUIconView *)self currentIconContentView];
  v10 = [v9 wantsManagedVibrancyEffect];

  v11 = [(HUIconView *)self displayStyle];
  v12 = [(HUIconView *)self effectView];
  v13 = v12;
  v29 = v11 == 2;
  if (v11 == 2 && v10)
  {
    v14 = [v12 effect];

    if (!v14 || v5)
    {
      if (v4)
      {
        v15 = MEMORY[0x277D75D18];
        [(HUIconView *)self vibrancyEffectAnimationDuration];
        v17 = v16;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __71__HUIconView__updateVisualEffectStateForVibrancyEffectChange_animated___block_invoke;
        v37[3] = &unk_27977D4F8;
        v37[4] = self;
        v38 = v7;
        [v15 animateWithDuration:v37 animations:v17];
      }

      else
      {
        v28 = [(HUIconView *)self effectView];
        [v28 setEffect:v7];
      }
    }
  }

  else
  {
    [v12 setEffect:0];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = [(HUIconView *)self currentIconContentView];
  v19 = [v18 managedVisualEffectViews];

  v20 = [v19 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    if (v11 == 2)
    {
      v23 = v7;
    }

    else
    {
      v23 = 0;
    }

    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v33 + 1) + 8 * i);
        if (v4)
        {
          v26 = MEMORY[0x277D75D18];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __71__HUIconView__updateVisualEffectStateForVibrancyEffectChange_animated___block_invoke_2;
          v30[3] = &unk_27977D520;
          v30[4] = v25;
          v32 = v29;
          v31 = v7;
          [v26 animateWithDuration:v30 animations:0.25];
        }

        else
        {
          [v25 setEffect:v23];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v21);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __71__HUIconView__updateVisualEffectStateForVibrancyEffectChange_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) effectView];
  [v2 setEffect:v1];
}

uint64_t __71__HUIconView__updateVisualEffectStateForVibrancyEffectChange_animated___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
  }

  else
  {
    v1 = 0;
  }

  return [*(a1 + 32) setEffect:v1];
}

- (void)setDisplayContext:(unint64_t)a3
{
  displayContext = self->_displayContext;
  self->_displayContext = a3;
  v6 = [(HUIconView *)self currentIconContentView];
  [v6 setDisplayContext:a3];

  if (displayContext != a3 && !self->_vibrancyEffect)
  {

    [(HUIconView *)self _updateVisualEffectStateForVibrancyEffectChange:1];
  }
}

- (HFIconDescriptor)iconDescriptor
{
  v2 = [(HUIconView *)self currentIconContentView];
  v3 = [v2 iconDescriptor];

  return v3;
}

- (void)setIconSize:(unint64_t)a3
{
  if (self->_iconSize != a3)
  {
    self->_iconSize = a3;
    v6 = [(HUIconView *)self currentIconContentView];
    [v6 setIconSize:a3];

    [(HUIconView *)self invalidateIntrinsicContentSize];
  }
}

@end