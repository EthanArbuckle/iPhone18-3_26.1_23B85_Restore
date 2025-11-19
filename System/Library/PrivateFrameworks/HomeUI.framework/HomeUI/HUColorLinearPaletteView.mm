@interface HUColorLinearPaletteView
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (HUColorLinearPaletteView)initWithProfile:(id)a3;
- (HUColorLinearPaletteView)initWithProfile:(id)a3 colorPalette:(id)a4;
- (HUQuickControlColorPaletteViewInteractionDelegate)interactionDelegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)value;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)_indexForSelectedColor:(id)a3 includeBias:(BOOL)a4;
- (void)_actuateImpactTapticFeedback;
- (void)_actuateSelectionTapticFeedback;
- (void)_prepareForTapticFeedback;
- (void)_setColorPalette:(id)a3 notifyDelegate:(BOOL)a4;
- (void)_setSelectedColor:(id)a3 notifyDelegate:(BOOL)a4 selectionChanged:(BOOL)a5;
- (void)_updateCalibratedColorPalette;
- (void)_updateUIForReachabilityState:(unint64_t)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)layoutSubviews;
- (void)setUserInteractionActive:(BOOL)a3;
- (void)setValue:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateSelectedColorIndexPathToIndexPath:(id)a3;
@end

@implementation HUColorLinearPaletteView

- (HUColorLinearPaletteView)initWithProfile:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithProfile_colorPalette_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUColorLinearPaletteView.m" lineNumber:52 description:{@"%s is unavailable; use %@ instead", "-[HUColorLinearPaletteView initWithProfile:]", v6}];

  return 0;
}

- (HUColorLinearPaletteView)initWithProfile:(id)a3 colorPalette:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = HUColorLinearPaletteView;
  v9 = [(HUColorLinearPaletteView *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_profile, a3);
    v10->_reachabilityState = 0;
    objc_storeStrong(&v10->_colorPalette, a4);
    [(HUColorLinearPaletteView *)v10 _updateCalibratedColorPalette];
    v11 = objc_alloc_init(MEMORY[0x277D752F0]);
    collectionViewFlowLayout = v10->_collectionViewFlowLayout;
    v10->_collectionViewFlowLayout = v11;

    [(UICollectionViewFlowLayout *)v10->_collectionViewFlowLayout setMinimumInteritemSpacing:0.0];
    v13 = objc_alloc(MEMORY[0x277D752A0]);
    v14 = [v13 initWithFrame:v10->_collectionViewFlowLayout collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    colorSwatchCollectionView = v10->_colorSwatchCollectionView;
    v10->_colorSwatchCollectionView = v14;

    [(UICollectionView *)v10->_colorSwatchCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"colorSwatchViewCell"];
    [(UICollectionView *)v10->_colorSwatchCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"naturalLightSwatchViewCell"];
    [(UICollectionView *)v10->_colorSwatchCollectionView setClipsToBounds:0];
    [(UICollectionView *)v10->_colorSwatchCollectionView setDataSource:v10];
    [(UICollectionView *)v10->_colorSwatchCollectionView setDelegate:v10];
    v16 = [MEMORY[0x277D75348] clearColor];
    [(UICollectionView *)v10->_colorSwatchCollectionView setBackgroundColor:v16];

    [(UICollectionView *)v10->_colorSwatchCollectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)v10->_colorSwatchCollectionView setShowsVerticalScrollIndicator:0];
    [(HUColorLinearPaletteView *)v10 addSubview:v10->_colorSwatchCollectionView];
    [(HUColorLinearPaletteView *)v10 setClipsToBounds:0];
    [(HUColorLinearPaletteView *)v10 _prepareForTapticFeedback];
  }

  return v10;
}

- (void)_setColorPalette:(id)a3 notifyDelegate:(BOOL)a4
{
  v4 = a4;
  v25 = a3;
  v7 = [(HFColorPalette *)self->_colorPalette isEqual:v25];
  v8 = v25;
  if ((v7 & 1) == 0)
  {
    v24 = v4;
    v9 = self->_colorPalette;
    objc_storeStrong(&self->_colorPalette, a3);
    [(HUColorLinearPaletteView *)self _updateCalibratedColorPalette];
    v10 = objc_opt_new();
    v11 = [(HFColorPalette *)v9 colors];
    v12 = [v11 count];

    if (v12)
    {
      v13 = 0;
      do
      {
        v14 = [(HFColorPalette *)v9 colors];
        v15 = [v14 objectAtIndexedSubscript:v13];
        v16 = [v25 colors];
        v17 = [v16 objectAtIndexedSubscript:v13];
        v18 = [v15 isEqual:v17];

        if ((v18 & 1) == 0)
        {
          v19 = [MEMORY[0x277CCAA70] indexPathForItem:v13 inSection:0];
          [v10 na_safeAddObject:v19];
        }

        ++v13;
        v20 = [(HFColorPalette *)v9 colors];
        v21 = [v20 count];
      }

      while (v13 < v21);
    }

    v22 = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
    [v22 reloadItemsAtIndexPaths:v10];

    v8 = v25;
    if (v24)
    {
      v23 = [(HUColorLinearPaletteView *)self interactionDelegate];
      [v23 controlView:self colorPaletteDidChange:v25];

      v8 = v25;
    }
  }
}

- (void)_updateCalibratedColorPalette
{
  v3 = [(HUColorLinearPaletteView *)self profile];
  v4 = [v3 colorProfile];

  v5 = [(HUColorLinearPaletteView *)self colorPalette];
  if (v4)
  {
    v11 = v5;
    v6 = [(HUColorLinearPaletteView *)self profile];
    v7 = [v6 colorProfile];
    v8 = [(HFColorPalette *)v11 colorPaletteByAdjustingForColorProfile:v7];
    calibratedColorPalette = self->_calibratedColorPalette;
    self->_calibratedColorPalette = v8;

    v10 = v11;
  }

  else
  {
    v10 = self->_calibratedColorPalette;
    self->_calibratedColorPalette = v5;
  }
}

- (void)_setSelectedColor:(id)a3 notifyDelegate:(BOOL)a4 selectionChanged:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  [(HUColorLinearPaletteView *)self setSelectedColor:a3];
  v15 = objc_opt_new();
  v8 = [(HUColorLinearPaletteView *)self prevSelectedColorIndexPath];
  [v15 na_safeAddObject:v8];

  v9 = [(HUColorLinearPaletteView *)self selectedColorIndexPath];
  [v15 na_safeAddObject:v9];

  v10 = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
  [v10 reloadItemsAtIndexPaths:v15];

  v11 = [(HUColorLinearPaletteView *)self prevSelectedColorIndexPath];
  v12 = [v15 containsObject:v11];

  if (v12)
  {
    [(HUColorLinearPaletteView *)self setPrevSelectedColorIndexPath:0];
  }

  if (v6 && v5)
  {
    v13 = [(HUColorLinearPaletteView *)self interactionDelegate];
    v14 = [(HUColorLinearPaletteView *)self value];
    [v13 controlView:self valueDidChange:v14];
  }
}

- (unint64_t)_indexForSelectedColor:(id)a3 includeBias:(BOOL)a4
{
  v5 = a3;
  v6 = [(HUColorLinearPaletteView *)self calibratedColorPalette];
  v7 = [v6 colors];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HUColorLinearPaletteView__indexForSelectedColor_includeBias___block_invoke;
  v12[3] = &unk_277DBD508;
  v13 = v5;
  v8 = v5;
  v9 = [v7 indexesOfObjectsPassingTest:v12];

  v10 = [v9 firstIndex];
  return v10;
}

- (void)updateSelectedColorIndexPathToIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(HUColorLinearPaletteView *)self selectedColorIndexPath];
  [(HUColorLinearPaletteView *)self setPrevSelectedColorIndexPath:v5];

  [(HUColorLinearPaletteView *)self setSelectedColorIndexPath:v4];
  v9 = objc_opt_new();
  v6 = [(HUColorLinearPaletteView *)self prevSelectedColorIndexPath];
  [v9 na_safeAddObject:v6];

  v7 = [(HUColorLinearPaletteView *)self selectedColorIndexPath];
  [v9 na_safeAddObject:v7];

  v8 = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
  [v8 reloadItemsAtIndexPaths:v9];
}

- (id)value
{
  v3 = [(HUColorLinearPaletteView *)self selectedColorIndexPath];

  if (v3)
  {
    v4 = [(HUColorLinearPaletteView *)self calibratedColorPalette];
    v5 = [v4 colors];
    v6 = [(HUColorLinearPaletteView *)self selectedColorIndexPath];
    v7 = [v5 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  v20 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v7 = v20;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v6 = v20;
  v9 = v20;
  if (!v8)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v10 handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

    v6 = v20;
LABEL_7:
    v9 = 0;
  }

  v12 = [(HUColorLinearPaletteView *)self _indexForSelectedColor:v9 includeBias:1];
  v13 = [(HUColorLinearPaletteView *)self selectedColorIndexPath];

  if (v13)
  {
    v14 = [(HUColorLinearPaletteView *)self selectedColorIndexPath];
    v15 = [v14 item];
LABEL_12:

    goto LABEL_13;
  }

  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x277CCAA70] indexPathForItem:v12 inSection:0];
    [(HUColorLinearPaletteView *)self setSelectedColorIndexPath:v14];
    goto LABEL_12;
  }

LABEL_13:
  v16 = [(HUColorLinearPaletteView *)self selectedColor];
  v17 = [v9 isEqual:v16];

  v18 = [(HUColorLinearPaletteView *)self colorPalette];
  v19 = [v18 mutableCopy];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL && ([v9 isNaturalLightColor] & 1) == 0)
  {
    [v19 setColor:v9 atIndex:v15];
    [(HUColorLinearPaletteView *)self _setColorPalette:v19 notifyDelegate:1];
  }

  [(HUColorLinearPaletteView *)self _setSelectedColor:v9 notifyDelegate:0 selectionChanged:v17 ^ 1u];
}

- (void)_updateUIForReachabilityState:(unint64_t)a3
{
  if (a3 >= 2)
  {
    if (a3 != 2)
    {
      return;
    }

    v6 = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
    [v6 setAlpha:1.0];

    v7 = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
    [v7 setUserInteractionEnabled:1];
  }

  else
  {
    v4 = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
    [v4 setAlpha:0.5];

    v5 = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
    [v5 setUserInteractionEnabled:0];

    [(HUColorLinearPaletteView *)self setSelectedColor:0];
    v7 = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
    [v7 reloadData];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUColorLinearPaletteView;
  [(HUColorLinearPaletteView *)&v4 traitCollectionDidChange:a3];
  [(HUColorLinearPaletteView *)self invalidateIntrinsicContentSize];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = HUColorLinearPaletteView;
  [(HUColorLinearPaletteView *)&v10 layoutSubviews];
  [(HUColorLinearPaletteView *)self frame];
  v4 = v3;
  [(HUColorLinearPaletteView *)self frame];
  v6 = v5;
  v7 = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
  [v7 setFrame:{0.0, 0.0, v4, v6}];

  v8 = *&HUQuickControlPushButtonSmallDiameter;
  v9 = [(HUColorLinearPaletteView *)self collectionViewFlowLayout];
  [v9 setItemSize:{v8, v8}];

  [(HUColorLinearPaletteView *)self _updateUIForReachabilityState:[(HUColorLinearPaletteView *)self reachabilityState]];
}

- (void)setUserInteractionActive:(BOOL)a3
{
  if (self->_userInteractionActive != a3)
  {
    v4 = a3;
    self->_userInteractionActive = a3;
    v6 = [(HUColorLinearPaletteView *)self interactionDelegate];
    [v6 controlView:self interactionStateDidChange:v4 forFirstTouch:0];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(HUColorLinearPaletteView *)self calibratedColorPalette:a3];
  v5 = [v4 colors];
  v6 = [v5 count];

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUColorLinearPaletteView *)self selectedColor];
  v9 = [(HUColorLinearPaletteView *)self _indexForSelectedColor:v8 includeBias:1];

  v10 = [(HUColorLinearPaletteView *)self selectedColorIndexPath];

  if (v10)
  {
    v11 = [(HUColorLinearPaletteView *)self selectedColorIndexPath];
    v9 = [v11 item];
  }

  v12 = [(HUColorLinearPaletteView *)self colorPalette];
  v13 = [v12 colors];
  v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];

  if ([v14 isNaturalLightColor])
  {
    v15 = [v6 dequeueReusableCellWithReuseIdentifier:@"naturalLightSwatchViewCell" forIndexPath:v7];
    if (!v15)
    {
      v15 = [[HUNaturalLightColorSwatchCollectionViewCell alloc] initWithFrame:0.0, 0.0, 57.0, 57.0];
    }

    v16 = [v7 item];
    v17 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
    [v17 setTag:v16];

    v18 = [(HUColorLinearPaletteView *)self selectedColor];
    if (v18 && (v19 = v18, v20 = [v7 item], v19, v9 == v20))
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    v36 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
    [v36 setSelectionState:v21];
  }

  else
  {
    v15 = [v6 dequeueReusableCellWithReuseIdentifier:@"colorSwatchViewCell" forIndexPath:v7];
    if (!v15)
    {
      v15 = [[HUColorSwatchViewCollectionViewCell alloc] initWithFrame:0.0, 0.0, 57.0, 57.0];
    }

    v22 = _HULocalizedStringWithDefaultValue(@"HUQuickControlColorPickerEditButton", @"HUQuickControlColorPickerEditButton", 1);
    v23 = [v22 localizedUppercaseString];
    v24 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
    [v24 setText:v23];

    v25 = [v7 item];
    v26 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
    [v26 setTag:v25];

    v27 = [(HUColorLinearPaletteView *)self calibratedColorPalette];
    v28 = [v27 colors];
    v29 = [v28 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];

    v30 = [v29 UIColor];
    v31 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
    [v31 setColor:v30];

    v32 = [(HUColorLinearPaletteView *)self selectedColor];
    if (v32 && (v33 = v32, v34 = [v7 item], v33, v9 == v34))
    {
      v35 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
      [v35 setSelectionState:2];

      v36 = [(HUColorLinearPaletteView *)self profile];
      v37 = [v36 mode] != 0;
      v38 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
      [v38 setLabelHidden:v37];
    }

    else
    {
      v39 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
      [v39 setSelectionState:0];

      v36 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
      [v36 setLabelHidden:1];
    }

    v14 = v29;
  }

  v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"HUColorSwatchViewCollectionViewCell-%lu", objc_msgSend(v7, "item")];
  [(HUNaturalLightColorSwatchCollectionViewCell *)v15 setAccessibilityIdentifier:v40];

  return v15;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v5 = 57.0;
  v6 = 57.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a4;
  [(HUColorLinearPaletteView *)self setUserInteractionActive:1];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HUColorLinearPaletteView *)self calibratedColorPalette];
    v8 = [v7 colors];
    v25 = 138412546;
    v26 = v5;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "User selected indexPath %@. colors = %@", &v25, 0x16u);
  }

  v9 = [(HUColorLinearPaletteView *)self selectedColorIndexPath];

  if (v9)
  {
    [(HUColorLinearPaletteView *)self selectedColorIndexPath];
  }

  else
  {
    v10 = [(HUColorLinearPaletteView *)self selectedColor];
    v11 = [(HUColorLinearPaletteView *)self _indexForSelectedColor:v10 includeBias:1];

    [MEMORY[0x277CCAA70] indexPathForItem:v11 inSection:0];
  }
  v12 = ;
  [(HUColorLinearPaletteView *)self setPrevSelectedColorIndexPath:v12];

  [(HUColorLinearPaletteView *)self setSelectedColorIndexPath:v5];
  v13 = [(HUColorLinearPaletteView *)self calibratedColorPalette];
  v14 = [v13 colors];
  v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v5, "item")}];

  v16 = [v5 item];
  v17 = [(HUColorLinearPaletteView *)self prevSelectedColorIndexPath];
  v18 = [v17 item];

  v19 = [v15 isNaturalLightColor];
  if (v16 == v18)
  {
    v20 = v19;
    v21 = [(HUColorLinearPaletteView *)self profile];
    v22 = ([v21 mode] != 0) | v20;

    if ((v22 & 1) == 0)
    {
      [(HUColorLinearPaletteView *)self setPrevSelectedColorIndexPath:0];
      [(HUColorLinearPaletteView *)self setPrevSelectedColorIndexPath:0];
      v23 = [(HUColorLinearPaletteView *)self interactionDelegate];
      [v23 presentFullColorViewForControlView:self selectedColorIndexPath:v5];

      [(HUColorLinearPaletteView *)self _actuateImpactTapticFeedback];
    }
  }

  else
  {
    v24 = [(HUColorLinearPaletteView *)self interactionDelegate];
    [v24 controlView:self didSelectColorAtIndexPath:v5];

    [(HUColorLinearPaletteView *)self _setSelectedColor:v15 notifyDelegate:1 selectionChanged:1];
    [(HUColorLinearPaletteView *)self _actuateSelectionTapticFeedback];
  }

  [(HUColorLinearPaletteView *)self setUserInteractionActive:0];
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v5 = 0.0;
  v6 = 4.5;
  v7 = 0.0;
  v8 = 4.5;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (void)_prepareForTapticFeedback
{
  v3 = objc_alloc_init(MEMORY[0x277D75A10]);
  [(HUColorLinearPaletteView *)self setSelectionFeedbackGenerator:v3];

  v4 = [(HUColorLinearPaletteView *)self selectionFeedbackGenerator];
  [v4 prepare];

  v5 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:1];
  [(HUColorLinearPaletteView *)self setImpactFeedbackGenerator:v5];

  v6 = [(HUColorLinearPaletteView *)self impactFeedbackGenerator];
  [v6 prepare];
}

- (void)_actuateSelectionTapticFeedback
{
  v3 = [(HUColorLinearPaletteView *)self selectionFeedbackGenerator];
  [v3 selectionChanged];

  v4 = [(HUColorLinearPaletteView *)self selectionFeedbackGenerator];
  [v4 prepare];
}

- (void)_actuateImpactTapticFeedback
{
  v3 = [(HUColorLinearPaletteView *)self impactFeedbackGenerator];
  [v3 impactOccurred];

  v4 = [(HUColorLinearPaletteView *)self impactFeedbackGenerator];
  [v4 prepare];
}

- (HUQuickControlColorPaletteViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end