@interface PDSlideChild
- (PDSlideChild)init;
- (id)colorMap;
- (id)colorScheme;
- (id)defaultTextListStyle;
- (id)description;
- (id)drawingTheme;
- (id)fontScheme;
- (id)styleMatrix;
- (void)doneWithContent;
@end

@implementation PDSlideChild

- (PDSlideChild)init
{
  v7.receiver = self;
  v7.super_class = PDSlideChild;
  v2 = [(PDSlideBase *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(&v2->super + 73) = 1;
    *(&v2->super + 74) = 1;
    v4 = objc_alloc_init(OADThemeOverrides);
    v5 = *&v3->mShowMasterPlaceholderAnimations;
    *&v3->mShowMasterPlaceholderAnimations = v4;
  }

  return v3;
}

- (id)colorScheme
{
  themeOverrides = [(PDSlideChild *)self themeOverrides];
  colorScheme = [themeOverrides colorScheme];

  if (!colorScheme)
  {
    parentSlideBase = [(PDSlideBase *)self parentSlideBase];
    colorScheme = [parentSlideBase colorScheme];
  }

  return colorScheme;
}

- (id)colorMap
{
  colorMapOverride = [(PDSlideChild *)self colorMapOverride];
  if (!colorMapOverride)
  {
    parentSlideBase = [(PDSlideBase *)self parentSlideBase];
    colorMapOverride = [parentSlideBase colorMap];
  }

  return colorMapOverride;
}

- (id)fontScheme
{
  themeOverrides = [(PDSlideChild *)self themeOverrides];
  fontScheme = [themeOverrides fontScheme];

  if (!fontScheme)
  {
    parentSlideBase = [(PDSlideBase *)self parentSlideBase];
    fontScheme = [parentSlideBase fontScheme];
  }

  return fontScheme;
}

- (id)styleMatrix
{
  themeOverrides = [(PDSlideChild *)self themeOverrides];
  styleMatrix = [themeOverrides styleMatrix];

  if (!styleMatrix)
  {
    parentSlideBase = [(PDSlideBase *)self parentSlideBase];
    styleMatrix = [parentSlideBase styleMatrix];
  }

  return styleMatrix;
}

- (id)defaultTextListStyle
{
  parentSlideBase = [(PDSlideBase *)self parentSlideBase];
  defaultTextListStyle = [parentSlideBase defaultTextListStyle];

  return defaultTextListStyle;
}

- (void)doneWithContent
{
  v3 = *&self->mShowMasterPlaceholderAnimations;
  *&self->mShowMasterPlaceholderAnimations = 0;

  mThemeOverrides = self->mThemeOverrides;
  self->mThemeOverrides = 0;

  v5.receiver = self;
  v5.super_class = PDSlideChild;
  [(PDSlideBase *)&v5 doneWithContent];
}

- (id)drawingTheme
{
  parentSlideBase = [(PDSlideBase *)self parentSlideBase];
  drawingTheme = [parentSlideBase drawingTheme];

  [drawingTheme applyThemeOverrides:*&self->mShowMasterPlaceholderAnimations colorMapOverride:self->mThemeOverrides];

  return drawingTheme;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDSlideChild;
  v2 = [(PDSlideBase *)&v4 description];

  return v2;
}

@end