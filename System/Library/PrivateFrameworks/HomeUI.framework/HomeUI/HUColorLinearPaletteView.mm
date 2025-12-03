@interface HUColorLinearPaletteView
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (HUColorLinearPaletteView)initWithProfile:(id)profile;
- (HUColorLinearPaletteView)initWithProfile:(id)profile colorPalette:(id)palette;
- (HUQuickControlColorPaletteViewInteractionDelegate)interactionDelegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)value;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)_indexForSelectedColor:(id)color includeBias:(BOOL)bias;
- (void)_actuateImpactTapticFeedback;
- (void)_actuateSelectionTapticFeedback;
- (void)_prepareForTapticFeedback;
- (void)_setColorPalette:(id)palette notifyDelegate:(BOOL)delegate;
- (void)_setSelectedColor:(id)color notifyDelegate:(BOOL)delegate selectionChanged:(BOOL)changed;
- (void)_updateCalibratedColorPalette;
- (void)_updateUIForReachabilityState:(unint64_t)state;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)layoutSubviews;
- (void)setUserInteractionActive:(BOOL)active;
- (void)setValue:(id)value;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSelectedColorIndexPathToIndexPath:(id)path;
@end

@implementation HUColorLinearPaletteView

- (HUColorLinearPaletteView)initWithProfile:(id)profile
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithProfile_colorPalette_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUColorLinearPaletteView.m" lineNumber:52 description:{@"%s is unavailable; use %@ instead", "-[HUColorLinearPaletteView initWithProfile:]", v6}];

  return 0;
}

- (HUColorLinearPaletteView)initWithProfile:(id)profile colorPalette:(id)palette
{
  profileCopy = profile;
  paletteCopy = palette;
  v18.receiver = self;
  v18.super_class = HUColorLinearPaletteView;
  v9 = [(HUColorLinearPaletteView *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_profile, profile);
    v10->_reachabilityState = 0;
    objc_storeStrong(&v10->_colorPalette, palette);
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
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UICollectionView *)v10->_colorSwatchCollectionView setBackgroundColor:clearColor];

    [(UICollectionView *)v10->_colorSwatchCollectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)v10->_colorSwatchCollectionView setShowsVerticalScrollIndicator:0];
    [(HUColorLinearPaletteView *)v10 addSubview:v10->_colorSwatchCollectionView];
    [(HUColorLinearPaletteView *)v10 setClipsToBounds:0];
    [(HUColorLinearPaletteView *)v10 _prepareForTapticFeedback];
  }

  return v10;
}

- (void)_setColorPalette:(id)palette notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  paletteCopy = palette;
  v7 = [(HFColorPalette *)self->_colorPalette isEqual:paletteCopy];
  v8 = paletteCopy;
  if ((v7 & 1) == 0)
  {
    v24 = delegateCopy;
    v9 = self->_colorPalette;
    objc_storeStrong(&self->_colorPalette, palette);
    [(HUColorLinearPaletteView *)self _updateCalibratedColorPalette];
    v10 = objc_opt_new();
    colors = [(HFColorPalette *)v9 colors];
    v12 = [colors count];

    if (v12)
    {
      v13 = 0;
      do
      {
        colors2 = [(HFColorPalette *)v9 colors];
        v15 = [colors2 objectAtIndexedSubscript:v13];
        colors3 = [paletteCopy colors];
        v17 = [colors3 objectAtIndexedSubscript:v13];
        v18 = [v15 isEqual:v17];

        if ((v18 & 1) == 0)
        {
          v19 = [MEMORY[0x277CCAA70] indexPathForItem:v13 inSection:0];
          [v10 na_safeAddObject:v19];
        }

        ++v13;
        colors4 = [(HFColorPalette *)v9 colors];
        v21 = [colors4 count];
      }

      while (v13 < v21);
    }

    colorSwatchCollectionView = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
    [colorSwatchCollectionView reloadItemsAtIndexPaths:v10];

    v8 = paletteCopy;
    if (v24)
    {
      interactionDelegate = [(HUColorLinearPaletteView *)self interactionDelegate];
      [interactionDelegate controlView:self colorPaletteDidChange:paletteCopy];

      v8 = paletteCopy;
    }
  }
}

- (void)_updateCalibratedColorPalette
{
  profile = [(HUColorLinearPaletteView *)self profile];
  colorProfile = [profile colorProfile];

  colorPalette = [(HUColorLinearPaletteView *)self colorPalette];
  if (colorProfile)
  {
    v11 = colorPalette;
    profile2 = [(HUColorLinearPaletteView *)self profile];
    colorProfile2 = [profile2 colorProfile];
    v8 = [(HFColorPalette *)v11 colorPaletteByAdjustingForColorProfile:colorProfile2];
    calibratedColorPalette = self->_calibratedColorPalette;
    self->_calibratedColorPalette = v8;

    v10 = v11;
  }

  else
  {
    v10 = self->_calibratedColorPalette;
    self->_calibratedColorPalette = colorPalette;
  }
}

- (void)_setSelectedColor:(id)color notifyDelegate:(BOOL)delegate selectionChanged:(BOOL)changed
{
  changedCopy = changed;
  delegateCopy = delegate;
  [(HUColorLinearPaletteView *)self setSelectedColor:color];
  v15 = objc_opt_new();
  prevSelectedColorIndexPath = [(HUColorLinearPaletteView *)self prevSelectedColorIndexPath];
  [v15 na_safeAddObject:prevSelectedColorIndexPath];

  selectedColorIndexPath = [(HUColorLinearPaletteView *)self selectedColorIndexPath];
  [v15 na_safeAddObject:selectedColorIndexPath];

  colorSwatchCollectionView = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
  [colorSwatchCollectionView reloadItemsAtIndexPaths:v15];

  prevSelectedColorIndexPath2 = [(HUColorLinearPaletteView *)self prevSelectedColorIndexPath];
  v12 = [v15 containsObject:prevSelectedColorIndexPath2];

  if (v12)
  {
    [(HUColorLinearPaletteView *)self setPrevSelectedColorIndexPath:0];
  }

  if (delegateCopy && changedCopy)
  {
    interactionDelegate = [(HUColorLinearPaletteView *)self interactionDelegate];
    value = [(HUColorLinearPaletteView *)self value];
    [interactionDelegate controlView:self valueDidChange:value];
  }
}

- (unint64_t)_indexForSelectedColor:(id)color includeBias:(BOOL)bias
{
  colorCopy = color;
  calibratedColorPalette = [(HUColorLinearPaletteView *)self calibratedColorPalette];
  colors = [calibratedColorPalette colors];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HUColorLinearPaletteView__indexForSelectedColor_includeBias___block_invoke;
  v12[3] = &unk_277DBD508;
  v13 = colorCopy;
  v8 = colorCopy;
  v9 = [colors indexesOfObjectsPassingTest:v12];

  firstIndex = [v9 firstIndex];
  return firstIndex;
}

- (void)updateSelectedColorIndexPathToIndexPath:(id)path
{
  pathCopy = path;
  selectedColorIndexPath = [(HUColorLinearPaletteView *)self selectedColorIndexPath];
  [(HUColorLinearPaletteView *)self setPrevSelectedColorIndexPath:selectedColorIndexPath];

  [(HUColorLinearPaletteView *)self setSelectedColorIndexPath:pathCopy];
  v9 = objc_opt_new();
  prevSelectedColorIndexPath = [(HUColorLinearPaletteView *)self prevSelectedColorIndexPath];
  [v9 na_safeAddObject:prevSelectedColorIndexPath];

  selectedColorIndexPath2 = [(HUColorLinearPaletteView *)self selectedColorIndexPath];
  [v9 na_safeAddObject:selectedColorIndexPath2];

  colorSwatchCollectionView = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
  [colorSwatchCollectionView reloadItemsAtIndexPaths:v9];
}

- (id)value
{
  selectedColorIndexPath = [(HUColorLinearPaletteView *)self selectedColorIndexPath];

  if (selectedColorIndexPath)
  {
    calibratedColorPalette = [(HUColorLinearPaletteView *)self calibratedColorPalette];
    colors = [calibratedColorPalette colors];
    selectedColorIndexPath2 = [(HUColorLinearPaletteView *)self selectedColorIndexPath];
    v7 = [colors objectAtIndexedSubscript:{objc_msgSend(selectedColorIndexPath2, "item")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  v5 = objc_opt_class();
  v6 = valueCopy;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

    v6 = v20;
LABEL_7:
    v9 = 0;
  }

  v12 = [(HUColorLinearPaletteView *)self _indexForSelectedColor:v9 includeBias:1];
  selectedColorIndexPath = [(HUColorLinearPaletteView *)self selectedColorIndexPath];

  if (selectedColorIndexPath)
  {
    selectedColorIndexPath2 = [(HUColorLinearPaletteView *)self selectedColorIndexPath];
    item = [selectedColorIndexPath2 item];
LABEL_12:

    goto LABEL_13;
  }

  item = 0x7FFFFFFFFFFFFFFFLL;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    selectedColorIndexPath2 = [MEMORY[0x277CCAA70] indexPathForItem:v12 inSection:0];
    [(HUColorLinearPaletteView *)self setSelectedColorIndexPath:selectedColorIndexPath2];
    goto LABEL_12;
  }

LABEL_13:
  selectedColor = [(HUColorLinearPaletteView *)self selectedColor];
  v17 = [v9 isEqual:selectedColor];

  colorPalette = [(HUColorLinearPaletteView *)self colorPalette];
  v19 = [colorPalette mutableCopy];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL && item != 0x7FFFFFFFFFFFFFFFLL && ([v9 isNaturalLightColor] & 1) == 0)
  {
    [v19 setColor:v9 atIndex:item];
    [(HUColorLinearPaletteView *)self _setColorPalette:v19 notifyDelegate:1];
  }

  [(HUColorLinearPaletteView *)self _setSelectedColor:v9 notifyDelegate:0 selectionChanged:v17 ^ 1u];
}

- (void)_updateUIForReachabilityState:(unint64_t)state
{
  if (state >= 2)
  {
    if (state != 2)
    {
      return;
    }

    colorSwatchCollectionView = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
    [colorSwatchCollectionView setAlpha:1.0];

    colorSwatchCollectionView2 = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
    [colorSwatchCollectionView2 setUserInteractionEnabled:1];
  }

  else
  {
    colorSwatchCollectionView3 = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
    [colorSwatchCollectionView3 setAlpha:0.5];

    colorSwatchCollectionView4 = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
    [colorSwatchCollectionView4 setUserInteractionEnabled:0];

    [(HUColorLinearPaletteView *)self setSelectedColor:0];
    colorSwatchCollectionView2 = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
    [colorSwatchCollectionView2 reloadData];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = HUColorLinearPaletteView;
  [(HUColorLinearPaletteView *)&v4 traitCollectionDidChange:change];
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
  colorSwatchCollectionView = [(HUColorLinearPaletteView *)self colorSwatchCollectionView];
  [colorSwatchCollectionView setFrame:{0.0, 0.0, v4, v6}];

  v8 = *&HUQuickControlPushButtonSmallDiameter;
  collectionViewFlowLayout = [(HUColorLinearPaletteView *)self collectionViewFlowLayout];
  [collectionViewFlowLayout setItemSize:{v8, v8}];

  [(HUColorLinearPaletteView *)self _updateUIForReachabilityState:[(HUColorLinearPaletteView *)self reachabilityState]];
}

- (void)setUserInteractionActive:(BOOL)active
{
  if (self->_userInteractionActive != active)
  {
    activeCopy = active;
    self->_userInteractionActive = active;
    interactionDelegate = [(HUColorLinearPaletteView *)self interactionDelegate];
    [interactionDelegate controlView:self interactionStateDidChange:activeCopy forFirstTouch:0];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(HUColorLinearPaletteView *)self calibratedColorPalette:view];
  colors = [v4 colors];
  v6 = [colors count];

  return v6;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  selectedColor = [(HUColorLinearPaletteView *)self selectedColor];
  item = [(HUColorLinearPaletteView *)self _indexForSelectedColor:selectedColor includeBias:1];

  selectedColorIndexPath = [(HUColorLinearPaletteView *)self selectedColorIndexPath];

  if (selectedColorIndexPath)
  {
    selectedColorIndexPath2 = [(HUColorLinearPaletteView *)self selectedColorIndexPath];
    item = [selectedColorIndexPath2 item];
  }

  colorPalette = [(HUColorLinearPaletteView *)self colorPalette];
  colors = [colorPalette colors];
  v14 = [colors objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

  if ([v14 isNaturalLightColor])
  {
    v15 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"naturalLightSwatchViewCell" forIndexPath:pathCopy];
    if (!v15)
    {
      v15 = [[HUNaturalLightColorSwatchCollectionViewCell alloc] initWithFrame:0.0, 0.0, 57.0, 57.0];
    }

    item2 = [pathCopy item];
    swatchView = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
    [swatchView setTag:item2];

    selectedColor2 = [(HUColorLinearPaletteView *)self selectedColor];
    if (selectedColor2 && (v19 = selectedColor2, v20 = [pathCopy item], v19, item == v20))
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    swatchView2 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
    [swatchView2 setSelectionState:v21];
  }

  else
  {
    v15 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"colorSwatchViewCell" forIndexPath:pathCopy];
    if (!v15)
    {
      v15 = [[HUColorSwatchViewCollectionViewCell alloc] initWithFrame:0.0, 0.0, 57.0, 57.0];
    }

    v22 = _HULocalizedStringWithDefaultValue(@"HUQuickControlColorPickerEditButton", @"HUQuickControlColorPickerEditButton", 1);
    localizedUppercaseString = [v22 localizedUppercaseString];
    swatchView3 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
    [swatchView3 setText:localizedUppercaseString];

    item3 = [pathCopy item];
    swatchView4 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
    [swatchView4 setTag:item3];

    calibratedColorPalette = [(HUColorLinearPaletteView *)self calibratedColorPalette];
    colors2 = [calibratedColorPalette colors];
    v29 = [colors2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

    uIColor = [v29 UIColor];
    swatchView5 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
    [swatchView5 setColor:uIColor];

    selectedColor3 = [(HUColorLinearPaletteView *)self selectedColor];
    if (selectedColor3 && (v33 = selectedColor3, v34 = [pathCopy item], v33, item == v34))
    {
      swatchView6 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
      [swatchView6 setSelectionState:2];

      swatchView2 = [(HUColorLinearPaletteView *)self profile];
      v37 = [swatchView2 mode] != 0;
      swatchView7 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
      [swatchView7 setLabelHidden:v37];
    }

    else
    {
      swatchView8 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
      [swatchView8 setSelectionState:0];

      swatchView2 = [(HUNaturalLightColorSwatchCollectionViewCell *)v15 swatchView];
      [swatchView2 setLabelHidden:1];
    }

    v14 = v29;
  }

  v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"HUColorSwatchViewCollectionViewCell-%lu", objc_msgSend(pathCopy, "item")];
  [(HUNaturalLightColorSwatchCollectionViewCell *)v15 setAccessibilityIdentifier:v40];

  return v15;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v5 = 57.0;
  v6 = 57.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v29 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [(HUColorLinearPaletteView *)self setUserInteractionActive:1];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    calibratedColorPalette = [(HUColorLinearPaletteView *)self calibratedColorPalette];
    colors = [calibratedColorPalette colors];
    v25 = 138412546;
    v26 = pathCopy;
    v27 = 2112;
    v28 = colors;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "User selected indexPath %@. colors = %@", &v25, 0x16u);
  }

  selectedColorIndexPath = [(HUColorLinearPaletteView *)self selectedColorIndexPath];

  if (selectedColorIndexPath)
  {
    [(HUColorLinearPaletteView *)self selectedColorIndexPath];
  }

  else
  {
    selectedColor = [(HUColorLinearPaletteView *)self selectedColor];
    v11 = [(HUColorLinearPaletteView *)self _indexForSelectedColor:selectedColor includeBias:1];

    [MEMORY[0x277CCAA70] indexPathForItem:v11 inSection:0];
  }
  v12 = ;
  [(HUColorLinearPaletteView *)self setPrevSelectedColorIndexPath:v12];

  [(HUColorLinearPaletteView *)self setSelectedColorIndexPath:pathCopy];
  calibratedColorPalette2 = [(HUColorLinearPaletteView *)self calibratedColorPalette];
  colors2 = [calibratedColorPalette2 colors];
  v15 = [colors2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

  item = [pathCopy item];
  prevSelectedColorIndexPath = [(HUColorLinearPaletteView *)self prevSelectedColorIndexPath];
  item2 = [prevSelectedColorIndexPath item];

  isNaturalLightColor = [v15 isNaturalLightColor];
  if (item == item2)
  {
    v20 = isNaturalLightColor;
    profile = [(HUColorLinearPaletteView *)self profile];
    v22 = ([profile mode] != 0) | v20;

    if ((v22 & 1) == 0)
    {
      [(HUColorLinearPaletteView *)self setPrevSelectedColorIndexPath:0];
      [(HUColorLinearPaletteView *)self setPrevSelectedColorIndexPath:0];
      interactionDelegate = [(HUColorLinearPaletteView *)self interactionDelegate];
      [interactionDelegate presentFullColorViewForControlView:self selectedColorIndexPath:pathCopy];

      [(HUColorLinearPaletteView *)self _actuateImpactTapticFeedback];
    }
  }

  else
  {
    interactionDelegate2 = [(HUColorLinearPaletteView *)self interactionDelegate];
    [interactionDelegate2 controlView:self didSelectColorAtIndexPath:pathCopy];

    [(HUColorLinearPaletteView *)self _setSelectedColor:v15 notifyDelegate:1 selectionChanged:1];
    [(HUColorLinearPaletteView *)self _actuateSelectionTapticFeedback];
  }

  [(HUColorLinearPaletteView *)self setUserInteractionActive:0];
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
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

  selectionFeedbackGenerator = [(HUColorLinearPaletteView *)self selectionFeedbackGenerator];
  [selectionFeedbackGenerator prepare];

  v5 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:1];
  [(HUColorLinearPaletteView *)self setImpactFeedbackGenerator:v5];

  impactFeedbackGenerator = [(HUColorLinearPaletteView *)self impactFeedbackGenerator];
  [impactFeedbackGenerator prepare];
}

- (void)_actuateSelectionTapticFeedback
{
  selectionFeedbackGenerator = [(HUColorLinearPaletteView *)self selectionFeedbackGenerator];
  [selectionFeedbackGenerator selectionChanged];

  selectionFeedbackGenerator2 = [(HUColorLinearPaletteView *)self selectionFeedbackGenerator];
  [selectionFeedbackGenerator2 prepare];
}

- (void)_actuateImpactTapticFeedback
{
  impactFeedbackGenerator = [(HUColorLinearPaletteView *)self impactFeedbackGenerator];
  [impactFeedbackGenerator impactOccurred];

  impactFeedbackGenerator2 = [(HUColorLinearPaletteView *)self impactFeedbackGenerator];
  [impactFeedbackGenerator2 prepare];
}

- (HUQuickControlColorPaletteViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end