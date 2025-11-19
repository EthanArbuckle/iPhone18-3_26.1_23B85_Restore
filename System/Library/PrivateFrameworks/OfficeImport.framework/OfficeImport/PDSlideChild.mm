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
  v3 = [(PDSlideChild *)self themeOverrides];
  v4 = [v3 colorScheme];

  if (!v4)
  {
    v5 = [(PDSlideBase *)self parentSlideBase];
    v4 = [v5 colorScheme];
  }

  return v4;
}

- (id)colorMap
{
  v3 = [(PDSlideChild *)self colorMapOverride];
  if (!v3)
  {
    v4 = [(PDSlideBase *)self parentSlideBase];
    v3 = [v4 colorMap];
  }

  return v3;
}

- (id)fontScheme
{
  v3 = [(PDSlideChild *)self themeOverrides];
  v4 = [v3 fontScheme];

  if (!v4)
  {
    v5 = [(PDSlideBase *)self parentSlideBase];
    v4 = [v5 fontScheme];
  }

  return v4;
}

- (id)styleMatrix
{
  v3 = [(PDSlideChild *)self themeOverrides];
  v4 = [v3 styleMatrix];

  if (!v4)
  {
    v5 = [(PDSlideBase *)self parentSlideBase];
    v4 = [v5 styleMatrix];
  }

  return v4;
}

- (id)defaultTextListStyle
{
  v2 = [(PDSlideBase *)self parentSlideBase];
  v3 = [v2 defaultTextListStyle];

  return v3;
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
  v3 = [(PDSlideBase *)self parentSlideBase];
  v4 = [v3 drawingTheme];

  [v4 applyThemeOverrides:*&self->mShowMasterPlaceholderAnimations colorMapOverride:self->mThemeOverrides];

  return v4;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDSlideChild;
  v2 = [(PDSlideBase *)&v4 description];

  return v2;
}

@end