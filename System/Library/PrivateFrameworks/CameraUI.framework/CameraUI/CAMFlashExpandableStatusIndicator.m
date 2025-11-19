@interface CAMFlashExpandableStatusIndicator
- (BOOL)_shouldTintForStatus:(unint64_t)a3 flashActive:(BOOL)a4;
- (BOOL)isFlashUnavailable;
- (CAMFlashExpandableStatusIndicator)initWithFrame:(CGRect)a3;
- (id)_axHUDSymbolNameForFlashStatus:(unint64_t)a3;
- (id)_localizedSubtitleForStatus:(unint64_t)a3;
- (id)_localizedTitleForStatus:(unint64_t)a3;
- (id)_menuItemForFlashStatus:(unint64_t)a3;
- (id)_symbolConfigurationForFlashStatus:(unint64_t)a3;
- (id)_systemImageForFlashStatus:(unint64_t)a3;
- (int64_t)_borderForStatus:(unint64_t)a3 flashActive:(BOOL)a4;
- (int64_t)flashMode;
- (void)_updateMenu;
- (void)setFlashActive:(BOOL)a3;
- (void)setFlashMode:(int64_t)a3 animated:(BOOL)a4;
- (void)setFlashUnavailable:(BOOL)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMFlashExpandableStatusIndicator

- (CAMFlashExpandableStatusIndicator)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CAMFlashExpandableStatusIndicator;
  v3 = [(CAMExpandingControl *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMFlashExpandableStatusIndicator *)v3 setAccessibilityIdentifier:@"FlashExpandableStatusIndicator"];
    [(CAMFlashExpandableStatusIndicator *)v4 _updateMenu];
    v8 = 0;
    v5 = [MEMORY[0x1E696B098] valueWithBytes:&v8 objCType:"Q"];
    [(CAMExpandingControl *)v4 setSelectedState:v5 animated:0];
  }

  return v4;
}

- (void)_updateMenu
{
  v8[4] = *MEMORY[0x1E69E9840];
  v3 = [(CAMFlashExpandableStatusIndicator *)self _menuItemForFlashStatus:2];
  v8[0] = v3;
  v4 = [(CAMFlashExpandableStatusIndicator *)self _menuItemForFlashStatus:1];
  v8[1] = v4;
  v5 = [(CAMFlashExpandableStatusIndicator *)self _menuItemForFlashStatus:0];
  v8[2] = v5;
  v6 = [(CAMFlashExpandableStatusIndicator *)self _menuItemForFlashStatus:3];
  v8[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];
  [(CAMExpandingControl *)self setMenu:v7];
}

- (id)_menuItemForFlashStatus:(unint64_t)a3
{
  v5 = objc_alloc_init(CAMExpandingControlMenuItemConfiguration);
  v6 = [(CAMFlashExpandableStatusIndicator *)self isFlashActive];
  [(CAMExpandingControlMenuItemConfiguration *)v5 setSlashesTitle:[(CAMFlashExpandableStatusIndicator *)self _shouldUseSlashForStatus:a3]];
  [(CAMExpandingControlMenuItemConfiguration *)v5 setTintsTitle:[(CAMFlashExpandableStatusIndicator *)self _shouldTintForStatus:a3 flashActive:v6]];
  [(CAMExpandingControlMenuItemConfiguration *)v5 setTitleBorder:[(CAMFlashExpandableStatusIndicator *)self _borderForStatus:a3 flashActive:v6]];
  [(CAMExpandingControlMenuItemConfiguration *)v5 setHidden:[(CAMFlashExpandableStatusIndicator *)self _shouldHideForStatus:a3]];
  v7 = [(CAMFlashExpandableStatusIndicator *)self _axHUDSymbolNameForFlashStatus:a3];
  [(CAMExpandingControlMenuItemConfiguration *)v5 setAxHUDSymbolName:v7];

  v8 = [(CAMFlashExpandableStatusIndicator *)self _symbolConfigurationForFlashStatus:a3];
  [(CAMExpandingControlMenuItemConfiguration *)v5 setAxHUDSymbolConfiguration:v8];

  v9 = [(CAMFlashExpandableStatusIndicator *)self _systemImageForFlashStatus:a3];
  v10 = [(CAMFlashExpandableStatusIndicator *)self _symbolConfigurationForFlashStatus:a3];
  v11 = [(CAMFlashExpandableStatusIndicator *)self _localizedTitleForStatus:a3];
  v12 = [(CAMFlashExpandableStatusIndicator *)self _localizedSubtitleForStatus:a3];
  v16 = a3;
  v13 = [MEMORY[0x1E696B098] valueWithBytes:&v16 objCType:"Q"];
  v14 = [CAMExpandingControlSystemImageMenuItem menuItemWithState:v13 systemImageName:v9 symbolConfiguration:v10 subtitle:v11 selectedSubtitle:v12 configuration:v5];

  return v14;
}

- (int64_t)flashMode
{
  v2 = [(CAMExpandingControl *)self selectedState];
  v3 = 1;
  v5 = 1;
  [v2 getValue:&v5 size:8];
  if (v5 <= 3)
  {
    v3 = qword_1A3A69DD0[v5];
  }

  return v3;
}

- (void)setFlashMode:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (![(CAMFlashExpandableStatusIndicator *)self isFlashUnavailable])
  {
    v7 = a3 != 0;
    if (a3 == 2)
    {
      v7 = 2;
    }

    v9 = v7;
    v8 = [MEMORY[0x1E696B098] valueWithBytes:&v9 objCType:"Q"];
    [(CAMExpandingControl *)self setSelectedState:v8 animated:v4];
  }
}

- (void)setFlashActive:(BOOL)a3
{
  if (self->_flashActive != a3)
  {
    self->_flashActive = a3;
    [(CAMFlashExpandableStatusIndicator *)self _updateMenu];
  }
}

- (BOOL)isFlashUnavailable
{
  v2 = [(CAMExpandingControl *)self selectedState];
  v5 = 1;
  [v2 getValue:&v5 size:8];
  v3 = v5 == 3;

  return v3;
}

- (void)setFlashUnavailable:(BOOL)a3
{
  v3 = a3;
  if ([(CAMFlashExpandableStatusIndicator *)self isFlashUnavailable]!= a3)
  {
    v5 = 3;
    if (!v3)
    {
      v5 = 0;
    }

    v7 = v5;
    v6 = [MEMORY[0x1E696B098] valueWithBytes:&v7 objCType:"Q"];
    [(CAMExpandingControl *)self setSelectedState:v6 animated:0];
    if (v3)
    {
      [(CAMExpandingControl *)self setExpanded:0];
    }
  }
}

- (id)_localizedTitleForStatus:(unint64_t)a3
{
  if (a3 <= 3)
  {
    self = CAMLocalizedFrameworkString(off_1E76FB408[a3], 0);
  }

  return self;
}

- (id)_localizedSubtitleForStatus:(unint64_t)a3
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = CAMLocalizedFrameworkString(off_1E76FB428[a3], 0);
  }

  return v4;
}

- (int64_t)_borderForStatus:(unint64_t)a3 flashActive:(BOOL)a4
{
  switch(a3)
  {
    case 3uLL:
      return 1;
    case 2uLL:
      if (a4)
      {
        return 2;
      }

      else
      {
        return 1;
      }

    case 0uLL:
      return 1;
    default:
      return 2;
  }
}

- (BOOL)_shouldTintForStatus:(unint64_t)a3 flashActive:(BOOL)a4
{
  switch(a3)
  {
    case 3uLL:
      return 0;
    case 2uLL:
      return a4;
    case 0uLL:
      return 0;
  }

  return 1;
}

- (id)_symbolConfigurationForFlashStatus:(unint64_t)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (a3 == 3)
  {
    v3 = MEMORY[0x1E69DCAD8];
    v4 = [MEMORY[0x1E69DC888] systemYellowColor];
    v9[0] = v4;
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
    v9[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v7 = [v3 configurationWithPaletteColors:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_systemImageForFlashStatus:(unint64_t)a3
{
  if (a3 == 3)
  {
    return @"bolt.trianglebadge.exclamationmark.fill";
  }

  else
  {
    return @"bolt.fill";
  }
}

- (id)_axHUDSymbolNameForFlashStatus:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"bolt.slash.fill";
  }

  else
  {
    return off_1E76FB440[a3 - 1];
  }
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = CAMFlashExpandableStatusIndicator;
  [(CAMExpandingControl *)&v4 setOrientation:a3 animated:a4];
}

@end