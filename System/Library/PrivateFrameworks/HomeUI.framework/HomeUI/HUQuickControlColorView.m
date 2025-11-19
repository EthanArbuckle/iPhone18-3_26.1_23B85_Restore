@interface HUQuickControlColorView
- (BOOL)isSelectedColorInPalette;
- (BOOL)isUserInteractionActive;
- (HUQuickControlColorView)initWithProfile:(id)a3;
- (HUQuickControlColorView)initWithProfile:(id)a3 colorPalette:(id)a4;
- (HUQuickControlColorViewInteractionDelegate)interactionDelegate;
- (HUQuickControlInteractiveView)activeView;
- (NSIndexPath)linearPaletteViewSelectedColorIndexPath;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3;
- (unint64_t)mode;
- (void)_updateColorPicker;
- (void)_updateLayout;
- (void)_updateUIForReachabilityState:(unint64_t)a3;
- (void)_updateVisibleViews;
- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)a3;
- (void)cancelColorPicking;
- (void)controlView:(id)a3 colorPaletteDidChange:(id)a4;
- (void)controlView:(id)a3 colorPickerModeDidChange:(unint64_t)a4;
- (void)controlView:(id)a3 didSelectColorAtIndexPath:(id)a4;
- (void)controlView:(id)a3 interactionStateDidChange:(BOOL)a4 forFirstTouch:(BOOL)a5;
- (void)controlView:(id)a3 valueDidChange:(id)a4;
- (void)layoutSubviews;
- (void)presentFullColorViewForControlView:(id)a3 selectedColorIndexPath:(id)a4;
- (void)setColorPalette:(id)a3;
- (void)setProfile:(id)a3;
- (void)setValue:(id)a3;
- (void)storeCurrentColorInformationAsOriginalValues;
- (void)updateSelectedColorIndexPathToIndexPath:(id)a3;
@end

@implementation HUQuickControlColorView

- (unint64_t)mode
{
  v2 = [(HUQuickControlColorView *)self profile];
  v3 = [v2 mode];

  return v3;
}

- (NSIndexPath)linearPaletteViewSelectedColorIndexPath
{
  v2 = [(HUQuickControlColorView *)self colorLinearPaletteView];
  v3 = [v2 selectedColorIndexPath];

  return v3;
}

- (HUQuickControlColorView)initWithProfile:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithProfile_colorPalette_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUQuickControlColorView.m" lineNumber:68 description:{@"%s is unavailable; use %@ instead", "-[HUQuickControlColorView initWithProfile:]", v6}];

  return 0;
}

- (HUQuickControlColorView)initWithProfile:(id)a3 colorPalette:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = HUQuickControlColorView;
  v8 = [(HUQuickControlColorView *)&v21 init];
  v9 = v8;
  if (v8)
  {
    [(HUQuickControlColorView *)v8 setProfile:v6];
    [(HUQuickControlColorView *)v9 setReachabilityState:0];
    [(HUQuickControlColorView *)v9 setColorPalette:v7];
    [(HUQuickControlColorView *)v9 setOriginalPalette:v7];
    v10 = objc_opt_new();
    v11 = _HULocalizedStringWithDefaultValue(@"HUQuickControlColorModeRGB", @"HUQuickControlColorModeRGB", 1);
    [v10 insertObject:v11 atIndex:0];

    v12 = _HULocalizedStringWithDefaultValue(@"HUQuickControlColorModeTemperature", @"HUQuickControlColorModeTemperature", 1);
    [v10 insertObject:v12 atIndex:1];

    v13 = [objc_alloc(MEMORY[0x277D75A08]) initWithItems:v10];
    colorPickerModeSegmentedControl = v9->_colorPickerModeSegmentedControl;
    v9->_colorPickerModeSegmentedControl = v13;

    v15 = [(HUQuickControlColorView *)v9 profile];
    -[UISegmentedControl setSelectedSegmentIndex:](v9->_colorPickerModeSegmentedControl, "setSelectedSegmentIndex:", [v15 supportsRGBColor] ^ 1);

    [(UISegmentedControl *)v9->_colorPickerModeSegmentedControl addTarget:v9 action:sel__updateColorPicker forControlEvents:4096];
    [(HUQuickControlColorView *)v9 addSubview:v9->_colorPickerModeSegmentedControl];
    v16 = [[HUColorLinearPaletteView alloc] initWithProfile:v6 colorPalette:v7];
    colorLinearPaletteView = v9->_colorLinearPaletteView;
    v9->_colorLinearPaletteView = v16;

    [(HUColorLinearPaletteView *)v9->_colorLinearPaletteView setInteractionDelegate:v9];
    [(HUQuickControlColorView *)v9 addSubview:v9->_colorLinearPaletteView];
    v18 = [[HUColorPickerView alloc] initWithProfile:v6];
    colorPickerView = v9->_colorPickerView;
    v9->_colorPickerView = v18;

    [(HUColorPickerView *)v9->_colorPickerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUColorPickerView *)v9->_colorPickerView setInteractionDelegate:v9];
    [(HUQuickControlColorView *)v9 addSubview:v9->_colorPickerView];
  }

  return v9;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUQuickControlColorView;
  [(HUQuickControlColorView *)&v3 layoutSubviews];
  [(HUQuickControlColorView *)self _updateVisibleViews];
  [(HUQuickControlColorView *)self _updateLayout];
  [(HUQuickControlColorView *)self _updateColorPicker];
  [(HUQuickControlColorView *)self _updateUIForReachabilityState:[(HUQuickControlColorView *)self reachabilityState]];
}

- (void)_updateVisibleViews
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = [(HUQuickControlColorView *)self colorLinearPaletteView];
  v4 = [(HUQuickControlColorView *)self profile];
  [v3 setHidden:{objc_msgSend(v4, "mode") == 1}];

  v5 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
  v20[0] = v5;
  v6 = [(HUQuickControlColorView *)self colorPickerView];
  v20[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = [(HUQuickControlColorView *)self profile];
        [v13 setHidden:{objc_msgSend(v14, "mode") == 0}];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_updateLayout
{
  v3 = *&HUQuickControlPushButtonSmallDiameter;
  v4 = [(HUQuickControlColorView *)self profile];
  v5 = [v4 mode];

  if (v5 == 1)
  {
    [(HUQuickControlColorView *)self frame];
    v16 = v15 + -32.0;
    v17 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    [v17 frame];
    v19 = v18;
    v20 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    [v20 setFrame:{16.0, 65.0, v16, v19}];

    v21 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    v22 = [(HUQuickControlColorView *)self profile];
    [v21 setHidden:{objc_msgSend(v22, "supportsRGBColor") ^ 1}];

    v23 = [(HUQuickControlColorView *)self colorPickerView];
    [v23 setMagnifierLength:v3];

    [(HUQuickControlColorView *)self frame];
    v25 = v24 + -64.0;
    [(HUQuickControlColorView *)self frame];
    Height = CGRectGetHeight(v48);
    v27 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    [v27 frame];
    v28 = Height - CGRectGetMaxY(v49) + -64.0;

    if (v25 < v28)
    {
      v28 = v25;
    }

    if ([MEMORY[0x277D14CE8] useMacIdiom])
    {
      v28 = v28 * 0.600000024;
    }

    [(HUQuickControlColorView *)self frame];
    v30 = v29 * 0.5 - v28 * 0.5;
    [(HUQuickControlColorView *)self frame];
    v32 = v31;
    v33 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    [v33 frame];
    v35 = v32 - v34;
    v36 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    [v36 frame];
    v38 = v35 - v37;

    v39 = (v38 - v28) / 3.0;
    v40 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    [v40 frame];
    v42 = v41;
    v43 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    [v43 frame];
    v45 = v39 + v42 + v44;

    v46 = [(HUQuickControlColorView *)self colorPickerView];
    [v46 setFrame:{v30, v45, v28, v28}];
  }

  else
  {
    if (v5)
    {
      return;
    }

    v6 = [(HUQuickControlColorView *)self profile];
    v7 = [v6 orientation];

    v8 = 2;
    if (v7)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    if (!v7)
    {
      v8 = 3;
    }

    v10 = (v9 * 4.5) + (v9 * 4.5) + v3 * v9;
    v11 = (v8 * 4.5) + (v8 * 4.5) + v3 * v8;
    [(HUQuickControlColorView *)self frame];
    v13 = v12 * 0.5 - v10 * 0.5;
    v14 = [(HUQuickControlColorView *)self colorLinearPaletteView];
    [v14 setFrame:{v13, 0.0, v10, v11}];

    v46 = [(HUQuickControlColorView *)self colorLinearPaletteView];
    [v46 setTag:0];
  }
}

- (HUQuickControlInteractiveView)activeView
{
  v3 = [(HUQuickControlColorView *)self profile];
  v4 = [v3 mode];

  if (v4 == 1)
  {
    v5 = [(HUQuickControlColorView *)self colorPickerView];
  }

  else if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(HUQuickControlColorView *)self colorLinearPaletteView];
  }

  return v5;
}

- (void)setProfile:(id)a3
{
  objc_storeStrong(&self->_profile, a3);
  v5 = a3;
  v6 = [(HUQuickControlColorView *)self colorLinearPaletteView];
  [v6 setProfile:v5];

  v7 = [(HUQuickControlColorView *)self colorPickerView];
  [v7 setProfile:v5];
}

- (BOOL)isSelectedColorInPalette
{
  v2 = self;
  v3 = [(HUQuickControlColorView *)self colorPalette];
  v4 = [v3 colors];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HUQuickControlColorView_isSelectedColorInPalette__block_invoke;
  v6[3] = &unk_277DC0168;
  v6[4] = v2;
  LOBYTE(v2) = [v4 na_any:v6];

  return v2;
}

uint64_t __51__HUQuickControlColorView_isSelectedColorInPalette__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 value];
  v5 = [v3 isSimilarToColor:v4];

  return v5;
}

- (void)_updateColorPicker
{
  v3 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
  v4 = [v3 selectedSegmentIndex];
  v5 = [(HUQuickControlColorView *)self colorPickerView];
  [v5 setColorPickerMode:v4];

  v6 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
  v7 = [v6 selectedSegmentIndex];

  v8 = 0.0;
  if (v7 == 1)
  {
    v9 = [(HUQuickControlColorView *)self colorPickerView];
    [v9 frame];
    v11 = v10;

    v12 = [(HUQuickControlColorView *)self colorPickerView];
    [v12 frame];
    v14 = v13;

    if (v11 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v11;
    }

    v8 = (v15 + *&HUQuickControlPushButtonSmallDiameter * -2.0) * 0.5;
  }

  v16 = [(HUQuickControlColorView *)self colorPickerView];
  [v16 setWheelHoleRadius:v8];

  v17 = *&HUQuickControlPushButtonSmallDiameter;
  v18 = [(HUQuickControlColorView *)self colorPickerView];
  [v18 setMagnifierLength:v17];
}

- (void)_updateUIForReachabilityState:(unint64_t)a3
{
  v5 = [(HUQuickControlColorView *)self colorLinearPaletteView];
  [v5 setReachabilityState:a3];

  v6 = [(HUQuickControlColorView *)self colorPickerView];
  [v6 setReachabilityState:a3];

  if (a3 >= 2)
  {
    if (a3 != 2)
    {
      return;
    }

    v7 = 1;
    v8 = 1.0;
  }

  else
  {
    v7 = 0;
    v8 = 0.5;
  }

  v9 = [(HUQuickControlColorView *)self colorLinearPaletteView];
  [v9 setAlpha:v8];

  v10 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
  [v10 setAlpha:v8];

  v11 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
  [v11 setUserInteractionEnabled:v7];

  [(HUQuickControlColorView *)self setUserInteractionEnabled:v7];
}

- (void)storeCurrentColorInformationAsOriginalValues
{
  v3 = [(HUQuickControlColorView *)self selectedColor];
  [(HUQuickControlColorView *)self setOriginalValue:v3];

  v4 = [(HUQuickControlColorView *)self colorPalette];
  [(HUQuickControlColorView *)self setOriginalPalette:v4];

  v6 = [(HUQuickControlColorView *)self colorLinearPaletteView];
  v5 = [v6 selectedColorIndexPath];
  [(HUQuickControlColorView *)self setOriginalSelectedColorIndexPath:v5];
}

- (BOOL)isUserInteractionActive
{
  v2 = [(HUQuickControlColorView *)self activeView];
  v3 = [v2 isUserInteractionActive];

  return v3;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (!v6)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6;
  if (!v7)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

LABEL_7:
    v8 = 0;
  }

  objc_opt_class();
  v11 = [v8 colorValue];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v8)
  {
    v14 = [v13 temperatureColor];

    if (!v14)
    {
      v15 = [(HUQuickControlColorView *)self colorPalette];
      v16 = [v15 colors];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __36__HUQuickControlColorView_setValue___block_invoke;
      v31[3] = &unk_277DC0168;
      v8 = v8;
      v32 = v8;
      v17 = [v16 na_firstObjectPassingTest:v31];

      if (v17)
      {
        v18 = v17;

        v8 = v18;
      }
    }
  }

  [(HUQuickControlColorView *)self setSelectedColor:v8];
  v19 = [(HUQuickControlColorView *)self profile];
  v20 = [v19 mode];

  v21 = [(HUQuickControlColorView *)self profile];
  v22 = v21;
  if (v20)
  {
    v23 = [v21 mode];

    if (v23 == 1)
    {
      v24 = [(HUQuickControlColorView *)self colorLinearPaletteView];
      [v24 setValue:v6];

      v25 = [(HUQuickControlColorView *)self colorPickerView];
      [v25 setValue:v6];

      v26 = [(HUQuickControlColorView *)self originalValue];

      if (!v26)
      {
        [(HUQuickControlColorView *)self setOriginalValue:v6];
      }

      [(HUQuickControlColorView *)self _updateColorPicker];
    }
  }

  else
  {
    v27 = [v21 naturalLightingEnabled];

    if (v27)
    {
      v28 = [objc_alloc(MEMORY[0x277D14588]) initWithNaturalLightColor];
      v29 = [(HUQuickControlColorView *)self colorLinearPaletteView];
      [v29 setValue:v28];
    }

    else
    {
      v30 = [(HUQuickControlColorView *)self colorLinearPaletteView];
      [v30 setValue:v6];
    }
  }
}

uint64_t __36__HUQuickControlColorView_setValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 colorValue];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v3 isSimilarToColor:*(a1 + 32)];
  if (v7)
  {
    v8 = [v6 temperatureColor];
    v7 = v8 != 0;
  }

  return v7;
}

- (void)setColorPalette:(id)a3
{
  objc_storeStrong(&self->_colorPalette, a3);
  v5 = a3;
  v6 = [(HUQuickControlColorView *)self colorLinearPaletteView];
  [v6 setColorPalette:v5];
}

- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlColorView *)self activeView];
  [v5 beginUserInteractionWithFirstTouchGestureRecognizer:v4];
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3
{
  v5 = [(HUQuickControlColorView *)self profile];
  v6 = [v5 mode];
  v7 = [(HUQuickControlColorView *)self profile];
  v8 = HUQuickControlColorViewMetricsForControlSizeModeAndOrientation(a3, v6, [v7 orientation]);

  return v8;
}

- (void)updateSelectedColorIndexPathToIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlColorView *)self colorLinearPaletteView];
  [v5 updateSelectedColorIndexPathToIndexPath:v4];
}

- (void)controlView:(id)a3 valueDidChange:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = v6;
  if (!v8)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8;
  if (!v9)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v11 handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];

LABEL_7:
    v10 = 0;
  }

  [(HUQuickControlColorView *)self setSelectedColor:v10];
  v13 = [(HUQuickControlColorView *)self interactionDelegate];
  v14 = [(HUQuickControlColorView *)self value];
  [v13 controlView:self valueDidChange:v14];

  v15 = [(HUQuickControlColorView *)self profile];
  v16 = [v15 mode];

  if (v16 != 1)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [(HUQuickControlColorView *)self selectedColor];
    v18 = [(HUQuickControlColorView *)self colorPickerView];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    v17 = [(HUQuickControlColorView *)self selectedColor];
    v18 = [(HUQuickControlColorView *)self colorLinearPaletteView];
  }

  v19 = v18;
  [v18 setValue:v17];

LABEL_14:
}

- (void)controlView:(id)a3 interactionStateDidChange:(BOOL)a4 forFirstTouch:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(HUQuickControlColorView *)self interactionDelegate];
  [v8 controlView:self interactionStateDidChange:v6 forFirstTouch:v5];
}

- (void)controlView:(id)a3 colorPickerModeDidChange:(unint64_t)a4
{
  v5 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
  [v5 setSelectedSegmentIndex:a4];
}

- (void)controlView:(id)a3 colorPaletteDidChange:(id)a4
{
  v5 = a4;
  [(HUQuickControlColorView *)self setColorPalette:v5];
  v6 = [(HUQuickControlColorView *)self interactionDelegate];
  [v6 controlView:self colorPaletteDidChange:v5];
}

- (void)presentFullColorViewForControlView:(id)a3 selectedColorIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUQuickControlColorView *)self interactionDelegate];
  [v6 presentFullColorViewForControlView:self selectedColorIndexPath:v5];
}

- (void)controlView:(id)a3 didSelectColorAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUQuickControlColorView *)self interactionDelegate];
  [v8 controlView:v7 didSelectColorAtIndexPath:v6];
}

- (void)cancelColorPicking
{
  v3 = [(HUQuickControlColorView *)self colorLinearPaletteView];
  v4 = [(HUQuickControlColorView *)self originalSelectedColorIndexPath];
  [v3 updateSelectedColorIndexPathToIndexPath:v4];

  v5 = [(HUQuickControlColorView *)self originalPalette];
  if (v5)
  {
    v6 = v5;
    v7 = [(HUQuickControlColorView *)self originalPalette];
    v8 = [(HUQuickControlColorView *)self colorPalette];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [(HUQuickControlColorView *)self colorLinearPaletteView];
      [v10 setUserInteractionActive:1];

      v11 = [(HUQuickControlColorView *)self colorPickerView];
      [v11 setUserInteractionActive:1];

      v12 = [(HUQuickControlColorView *)self interactionDelegate];
      v13 = [(HUQuickControlColorView *)self originalPalette];
      [v12 controlView:self colorPaletteDidChange:v13];

      v14 = [(HUQuickControlColorView *)self colorLinearPaletteView];
      [v14 setUserInteractionActive:0];

      v15 = [(HUQuickControlColorView *)self colorPickerView];
      [v15 setUserInteractionActive:0];
    }
  }

  v16 = [(HUQuickControlColorView *)self originalValue];
  if (v16)
  {
    v17 = v16;
    v18 = [(HUQuickControlColorView *)self originalValue];
    v19 = [(HUQuickControlColorView *)self selectedColor];
    v20 = [v18 isEqual:v19];

    if ((v20 & 1) == 0)
    {
      v21 = [(HUQuickControlColorView *)self colorLinearPaletteView];
      [v21 setUserInteractionActive:1];

      v22 = [(HUQuickControlColorView *)self colorPickerView];
      [v22 setUserInteractionActive:1];

      v23 = [(HUQuickControlColorView *)self originalValue];
      [(HUQuickControlColorView *)self controlView:self valueDidChange:v23];

      v24 = [(HUQuickControlColorView *)self colorLinearPaletteView];
      [v24 setUserInteractionActive:0];

      v25 = [(HUQuickControlColorView *)self colorPickerView];
      [v25 setUserInteractionActive:0];
    }
  }
}

- (HUQuickControlColorViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end