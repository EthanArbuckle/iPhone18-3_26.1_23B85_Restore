@interface HUQuickControlColorView
- (BOOL)isSelectedColorInPalette;
- (BOOL)isUserInteractionActive;
- (HUQuickControlColorView)initWithProfile:(id)profile;
- (HUQuickControlColorView)initWithProfile:(id)profile colorPalette:(id)palette;
- (HUQuickControlColorViewInteractionDelegate)interactionDelegate;
- (HUQuickControlInteractiveView)activeView;
- (NSIndexPath)linearPaletteViewSelectedColorIndexPath;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size;
- (unint64_t)mode;
- (void)_updateColorPicker;
- (void)_updateLayout;
- (void)_updateUIForReachabilityState:(unint64_t)state;
- (void)_updateVisibleViews;
- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)recognizer;
- (void)cancelColorPicking;
- (void)controlView:(id)view colorPaletteDidChange:(id)change;
- (void)controlView:(id)view colorPickerModeDidChange:(unint64_t)change;
- (void)controlView:(id)view didSelectColorAtIndexPath:(id)path;
- (void)controlView:(id)view interactionStateDidChange:(BOOL)change forFirstTouch:(BOOL)touch;
- (void)controlView:(id)view valueDidChange:(id)change;
- (void)layoutSubviews;
- (void)presentFullColorViewForControlView:(id)view selectedColorIndexPath:(id)path;
- (void)setColorPalette:(id)palette;
- (void)setProfile:(id)profile;
- (void)setValue:(id)value;
- (void)storeCurrentColorInformationAsOriginalValues;
- (void)updateSelectedColorIndexPathToIndexPath:(id)path;
@end

@implementation HUQuickControlColorView

- (unint64_t)mode
{
  profile = [(HUQuickControlColorView *)self profile];
  mode = [profile mode];

  return mode;
}

- (NSIndexPath)linearPaletteViewSelectedColorIndexPath
{
  colorLinearPaletteView = [(HUQuickControlColorView *)self colorLinearPaletteView];
  selectedColorIndexPath = [colorLinearPaletteView selectedColorIndexPath];

  return selectedColorIndexPath;
}

- (HUQuickControlColorView)initWithProfile:(id)profile
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithProfile_colorPalette_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlColorView.m" lineNumber:68 description:{@"%s is unavailable; use %@ instead", "-[HUQuickControlColorView initWithProfile:]", v6}];

  return 0;
}

- (HUQuickControlColorView)initWithProfile:(id)profile colorPalette:(id)palette
{
  profileCopy = profile;
  paletteCopy = palette;
  v21.receiver = self;
  v21.super_class = HUQuickControlColorView;
  v8 = [(HUQuickControlColorView *)&v21 init];
  v9 = v8;
  if (v8)
  {
    [(HUQuickControlColorView *)v8 setProfile:profileCopy];
    [(HUQuickControlColorView *)v9 setReachabilityState:0];
    [(HUQuickControlColorView *)v9 setColorPalette:paletteCopy];
    [(HUQuickControlColorView *)v9 setOriginalPalette:paletteCopy];
    v10 = objc_opt_new();
    v11 = _HULocalizedStringWithDefaultValue(@"HUQuickControlColorModeRGB", @"HUQuickControlColorModeRGB", 1);
    [v10 insertObject:v11 atIndex:0];

    v12 = _HULocalizedStringWithDefaultValue(@"HUQuickControlColorModeTemperature", @"HUQuickControlColorModeTemperature", 1);
    [v10 insertObject:v12 atIndex:1];

    v13 = [objc_alloc(MEMORY[0x277D75A08]) initWithItems:v10];
    colorPickerModeSegmentedControl = v9->_colorPickerModeSegmentedControl;
    v9->_colorPickerModeSegmentedControl = v13;

    profile = [(HUQuickControlColorView *)v9 profile];
    -[UISegmentedControl setSelectedSegmentIndex:](v9->_colorPickerModeSegmentedControl, "setSelectedSegmentIndex:", [profile supportsRGBColor] ^ 1);

    [(UISegmentedControl *)v9->_colorPickerModeSegmentedControl addTarget:v9 action:sel__updateColorPicker forControlEvents:4096];
    [(HUQuickControlColorView *)v9 addSubview:v9->_colorPickerModeSegmentedControl];
    v16 = [[HUColorLinearPaletteView alloc] initWithProfile:profileCopy colorPalette:paletteCopy];
    colorLinearPaletteView = v9->_colorLinearPaletteView;
    v9->_colorLinearPaletteView = v16;

    [(HUColorLinearPaletteView *)v9->_colorLinearPaletteView setInteractionDelegate:v9];
    [(HUQuickControlColorView *)v9 addSubview:v9->_colorLinearPaletteView];
    v18 = [[HUColorPickerView alloc] initWithProfile:profileCopy];
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
  colorLinearPaletteView = [(HUQuickControlColorView *)self colorLinearPaletteView];
  profile = [(HUQuickControlColorView *)self profile];
  [colorLinearPaletteView setHidden:{objc_msgSend(profile, "mode") == 1}];

  colorPickerModeSegmentedControl = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
  v20[0] = colorPickerModeSegmentedControl;
  colorPickerView = [(HUQuickControlColorView *)self colorPickerView];
  v20[1] = colorPickerView;
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
        profile2 = [(HUQuickControlColorView *)self profile];
        [v13 setHidden:{objc_msgSend(profile2, "mode") == 0}];

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
  profile = [(HUQuickControlColorView *)self profile];
  mode = [profile mode];

  if (mode == 1)
  {
    [(HUQuickControlColorView *)self frame];
    v16 = v15 + -32.0;
    colorPickerModeSegmentedControl = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    [colorPickerModeSegmentedControl frame];
    v19 = v18;
    colorPickerModeSegmentedControl2 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    [colorPickerModeSegmentedControl2 setFrame:{16.0, 65.0, v16, v19}];

    colorPickerModeSegmentedControl3 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    profile2 = [(HUQuickControlColorView *)self profile];
    [colorPickerModeSegmentedControl3 setHidden:{objc_msgSend(profile2, "supportsRGBColor") ^ 1}];

    colorPickerView = [(HUQuickControlColorView *)self colorPickerView];
    [colorPickerView setMagnifierLength:v3];

    [(HUQuickControlColorView *)self frame];
    v25 = v24 + -64.0;
    [(HUQuickControlColorView *)self frame];
    Height = CGRectGetHeight(v48);
    colorPickerModeSegmentedControl4 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    [colorPickerModeSegmentedControl4 frame];
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
    colorPickerModeSegmentedControl5 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    [colorPickerModeSegmentedControl5 frame];
    v35 = v32 - v34;
    colorPickerModeSegmentedControl6 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    [colorPickerModeSegmentedControl6 frame];
    v38 = v35 - v37;

    v39 = (v38 - v28) / 3.0;
    colorPickerModeSegmentedControl7 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    [colorPickerModeSegmentedControl7 frame];
    v42 = v41;
    colorPickerModeSegmentedControl8 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
    [colorPickerModeSegmentedControl8 frame];
    v45 = v39 + v42 + v44;

    colorPickerView2 = [(HUQuickControlColorView *)self colorPickerView];
    [colorPickerView2 setFrame:{v30, v45, v28, v28}];
  }

  else
  {
    if (mode)
    {
      return;
    }

    profile3 = [(HUQuickControlColorView *)self profile];
    orientation = [profile3 orientation];

    v8 = 2;
    if (orientation)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    if (!orientation)
    {
      v8 = 3;
    }

    v10 = (v9 * 4.5) + (v9 * 4.5) + v3 * v9;
    v11 = (v8 * 4.5) + (v8 * 4.5) + v3 * v8;
    [(HUQuickControlColorView *)self frame];
    v13 = v12 * 0.5 - v10 * 0.5;
    colorLinearPaletteView = [(HUQuickControlColorView *)self colorLinearPaletteView];
    [colorLinearPaletteView setFrame:{v13, 0.0, v10, v11}];

    colorPickerView2 = [(HUQuickControlColorView *)self colorLinearPaletteView];
    [colorPickerView2 setTag:0];
  }
}

- (HUQuickControlInteractiveView)activeView
{
  profile = [(HUQuickControlColorView *)self profile];
  mode = [profile mode];

  if (mode == 1)
  {
    colorPickerView = [(HUQuickControlColorView *)self colorPickerView];
  }

  else if (mode)
  {
    colorPickerView = 0;
  }

  else
  {
    colorPickerView = [(HUQuickControlColorView *)self colorLinearPaletteView];
  }

  return colorPickerView;
}

- (void)setProfile:(id)profile
{
  objc_storeStrong(&self->_profile, profile);
  profileCopy = profile;
  colorLinearPaletteView = [(HUQuickControlColorView *)self colorLinearPaletteView];
  [colorLinearPaletteView setProfile:profileCopy];

  colorPickerView = [(HUQuickControlColorView *)self colorPickerView];
  [colorPickerView setProfile:profileCopy];
}

- (BOOL)isSelectedColorInPalette
{
  selfCopy = self;
  colorPalette = [(HUQuickControlColorView *)self colorPalette];
  colors = [colorPalette colors];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HUQuickControlColorView_isSelectedColorInPalette__block_invoke;
  v6[3] = &unk_277DC0168;
  v6[4] = selfCopy;
  LOBYTE(selfCopy) = [colors na_any:v6];

  return selfCopy;
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
  colorPickerModeSegmentedControl = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
  selectedSegmentIndex = [colorPickerModeSegmentedControl selectedSegmentIndex];
  colorPickerView = [(HUQuickControlColorView *)self colorPickerView];
  [colorPickerView setColorPickerMode:selectedSegmentIndex];

  colorPickerModeSegmentedControl2 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
  selectedSegmentIndex2 = [colorPickerModeSegmentedControl2 selectedSegmentIndex];

  v8 = 0.0;
  if (selectedSegmentIndex2 == 1)
  {
    colorPickerView2 = [(HUQuickControlColorView *)self colorPickerView];
    [colorPickerView2 frame];
    v11 = v10;

    colorPickerView3 = [(HUQuickControlColorView *)self colorPickerView];
    [colorPickerView3 frame];
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

  colorPickerView4 = [(HUQuickControlColorView *)self colorPickerView];
  [colorPickerView4 setWheelHoleRadius:v8];

  v17 = *&HUQuickControlPushButtonSmallDiameter;
  colorPickerView5 = [(HUQuickControlColorView *)self colorPickerView];
  [colorPickerView5 setMagnifierLength:v17];
}

- (void)_updateUIForReachabilityState:(unint64_t)state
{
  colorLinearPaletteView = [(HUQuickControlColorView *)self colorLinearPaletteView];
  [colorLinearPaletteView setReachabilityState:state];

  colorPickerView = [(HUQuickControlColorView *)self colorPickerView];
  [colorPickerView setReachabilityState:state];

  if (state >= 2)
  {
    if (state != 2)
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

  colorLinearPaletteView2 = [(HUQuickControlColorView *)self colorLinearPaletteView];
  [colorLinearPaletteView2 setAlpha:v8];

  colorPickerModeSegmentedControl = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
  [colorPickerModeSegmentedControl setAlpha:v8];

  colorPickerModeSegmentedControl2 = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
  [colorPickerModeSegmentedControl2 setUserInteractionEnabled:v7];

  [(HUQuickControlColorView *)self setUserInteractionEnabled:v7];
}

- (void)storeCurrentColorInformationAsOriginalValues
{
  selectedColor = [(HUQuickControlColorView *)self selectedColor];
  [(HUQuickControlColorView *)self setOriginalValue:selectedColor];

  colorPalette = [(HUQuickControlColorView *)self colorPalette];
  [(HUQuickControlColorView *)self setOriginalPalette:colorPalette];

  colorLinearPaletteView = [(HUQuickControlColorView *)self colorLinearPaletteView];
  selectedColorIndexPath = [colorLinearPaletteView selectedColorIndexPath];
  [(HUQuickControlColorView *)self setOriginalSelectedColorIndexPath:selectedColorIndexPath];
}

- (BOOL)isUserInteractionActive
{
  activeView = [(HUQuickControlColorView *)self activeView];
  isUserInteractionActive = [activeView isUserInteractionActive];

  return isUserInteractionActive;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  v5 = objc_opt_class();
  v6 = valueCopy;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

LABEL_7:
    v8 = 0;
  }

  objc_opt_class();
  colorValue = [v8 colorValue];
  if (objc_opt_isKindOfClass())
  {
    v12 = colorValue;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v8)
  {
    temperatureColor = [v13 temperatureColor];

    if (!temperatureColor)
    {
      colorPalette = [(HUQuickControlColorView *)self colorPalette];
      colors = [colorPalette colors];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __36__HUQuickControlColorView_setValue___block_invoke;
      v31[3] = &unk_277DC0168;
      v8 = v8;
      v32 = v8;
      v17 = [colors na_firstObjectPassingTest:v31];

      if (v17)
      {
        v18 = v17;

        v8 = v18;
      }
    }
  }

  [(HUQuickControlColorView *)self setSelectedColor:v8];
  profile = [(HUQuickControlColorView *)self profile];
  mode = [profile mode];

  profile2 = [(HUQuickControlColorView *)self profile];
  v22 = profile2;
  if (mode)
  {
    mode2 = [profile2 mode];

    if (mode2 == 1)
    {
      colorLinearPaletteView = [(HUQuickControlColorView *)self colorLinearPaletteView];
      [colorLinearPaletteView setValue:v6];

      colorPickerView = [(HUQuickControlColorView *)self colorPickerView];
      [colorPickerView setValue:v6];

      originalValue = [(HUQuickControlColorView *)self originalValue];

      if (!originalValue)
      {
        [(HUQuickControlColorView *)self setOriginalValue:v6];
      }

      [(HUQuickControlColorView *)self _updateColorPicker];
    }
  }

  else
  {
    naturalLightingEnabled = [profile2 naturalLightingEnabled];

    if (naturalLightingEnabled)
    {
      initWithNaturalLightColor = [objc_alloc(MEMORY[0x277D14588]) initWithNaturalLightColor];
      colorLinearPaletteView2 = [(HUQuickControlColorView *)self colorLinearPaletteView];
      [colorLinearPaletteView2 setValue:initWithNaturalLightColor];
    }

    else
    {
      colorLinearPaletteView3 = [(HUQuickControlColorView *)self colorLinearPaletteView];
      [colorLinearPaletteView3 setValue:v6];
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

- (void)setColorPalette:(id)palette
{
  objc_storeStrong(&self->_colorPalette, palette);
  paletteCopy = palette;
  colorLinearPaletteView = [(HUQuickControlColorView *)self colorLinearPaletteView];
  [colorLinearPaletteView setColorPalette:paletteCopy];
}

- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  activeView = [(HUQuickControlColorView *)self activeView];
  [activeView beginUserInteractionWithFirstTouchGestureRecognizer:recognizerCopy];
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size
{
  profile = [(HUQuickControlColorView *)self profile];
  mode = [profile mode];
  profile2 = [(HUQuickControlColorView *)self profile];
  v8 = HUQuickControlColorViewMetricsForControlSizeModeAndOrientation(size, mode, [profile2 orientation]);

  return v8;
}

- (void)updateSelectedColorIndexPathToIndexPath:(id)path
{
  pathCopy = path;
  colorLinearPaletteView = [(HUQuickControlColorView *)self colorLinearPaletteView];
  [colorLinearPaletteView updateSelectedColorIndexPathToIndexPath:pathCopy];
}

- (void)controlView:(id)view valueDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  v7 = objc_opt_class();
  v8 = changeCopy;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];

LABEL_7:
    v10 = 0;
  }

  [(HUQuickControlColorView *)self setSelectedColor:v10];
  interactionDelegate = [(HUQuickControlColorView *)self interactionDelegate];
  value = [(HUQuickControlColorView *)self value];
  [interactionDelegate controlView:self valueDidChange:value];

  profile = [(HUQuickControlColorView *)self profile];
  mode = [profile mode];

  if (mode != 1)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selectedColor = [(HUQuickControlColorView *)self selectedColor];
    colorPickerView = [(HUQuickControlColorView *)self colorPickerView];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    selectedColor = [(HUQuickControlColorView *)self selectedColor];
    colorPickerView = [(HUQuickControlColorView *)self colorLinearPaletteView];
  }

  v19 = colorPickerView;
  [colorPickerView setValue:selectedColor];

LABEL_14:
}

- (void)controlView:(id)view interactionStateDidChange:(BOOL)change forFirstTouch:(BOOL)touch
{
  touchCopy = touch;
  changeCopy = change;
  interactionDelegate = [(HUQuickControlColorView *)self interactionDelegate];
  [interactionDelegate controlView:self interactionStateDidChange:changeCopy forFirstTouch:touchCopy];
}

- (void)controlView:(id)view colorPickerModeDidChange:(unint64_t)change
{
  colorPickerModeSegmentedControl = [(HUQuickControlColorView *)self colorPickerModeSegmentedControl];
  [colorPickerModeSegmentedControl setSelectedSegmentIndex:change];
}

- (void)controlView:(id)view colorPaletteDidChange:(id)change
{
  changeCopy = change;
  [(HUQuickControlColorView *)self setColorPalette:changeCopy];
  interactionDelegate = [(HUQuickControlColorView *)self interactionDelegate];
  [interactionDelegate controlView:self colorPaletteDidChange:changeCopy];
}

- (void)presentFullColorViewForControlView:(id)view selectedColorIndexPath:(id)path
{
  pathCopy = path;
  interactionDelegate = [(HUQuickControlColorView *)self interactionDelegate];
  [interactionDelegate presentFullColorViewForControlView:self selectedColorIndexPath:pathCopy];
}

- (void)controlView:(id)view didSelectColorAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  interactionDelegate = [(HUQuickControlColorView *)self interactionDelegate];
  [interactionDelegate controlView:viewCopy didSelectColorAtIndexPath:pathCopy];
}

- (void)cancelColorPicking
{
  colorLinearPaletteView = [(HUQuickControlColorView *)self colorLinearPaletteView];
  originalSelectedColorIndexPath = [(HUQuickControlColorView *)self originalSelectedColorIndexPath];
  [colorLinearPaletteView updateSelectedColorIndexPathToIndexPath:originalSelectedColorIndexPath];

  originalPalette = [(HUQuickControlColorView *)self originalPalette];
  if (originalPalette)
  {
    v6 = originalPalette;
    originalPalette2 = [(HUQuickControlColorView *)self originalPalette];
    colorPalette = [(HUQuickControlColorView *)self colorPalette];
    v9 = [originalPalette2 isEqual:colorPalette];

    if ((v9 & 1) == 0)
    {
      colorLinearPaletteView2 = [(HUQuickControlColorView *)self colorLinearPaletteView];
      [colorLinearPaletteView2 setUserInteractionActive:1];

      colorPickerView = [(HUQuickControlColorView *)self colorPickerView];
      [colorPickerView setUserInteractionActive:1];

      interactionDelegate = [(HUQuickControlColorView *)self interactionDelegate];
      originalPalette3 = [(HUQuickControlColorView *)self originalPalette];
      [interactionDelegate controlView:self colorPaletteDidChange:originalPalette3];

      colorLinearPaletteView3 = [(HUQuickControlColorView *)self colorLinearPaletteView];
      [colorLinearPaletteView3 setUserInteractionActive:0];

      colorPickerView2 = [(HUQuickControlColorView *)self colorPickerView];
      [colorPickerView2 setUserInteractionActive:0];
    }
  }

  originalValue = [(HUQuickControlColorView *)self originalValue];
  if (originalValue)
  {
    v17 = originalValue;
    originalValue2 = [(HUQuickControlColorView *)self originalValue];
    selectedColor = [(HUQuickControlColorView *)self selectedColor];
    v20 = [originalValue2 isEqual:selectedColor];

    if ((v20 & 1) == 0)
    {
      colorLinearPaletteView4 = [(HUQuickControlColorView *)self colorLinearPaletteView];
      [colorLinearPaletteView4 setUserInteractionActive:1];

      colorPickerView3 = [(HUQuickControlColorView *)self colorPickerView];
      [colorPickerView3 setUserInteractionActive:1];

      originalValue3 = [(HUQuickControlColorView *)self originalValue];
      [(HUQuickControlColorView *)self controlView:self valueDidChange:originalValue3];

      colorLinearPaletteView5 = [(HUQuickControlColorView *)self colorLinearPaletteView];
      [colorLinearPaletteView5 setUserInteractionActive:0];

      colorPickerView4 = [(HUQuickControlColorView *)self colorPickerView];
      [colorPickerView4 setUserInteractionActive:0];
    }
  }
}

- (HUQuickControlColorViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end