@interface PDSlideMaster
- (PDPresentation)presentation;
- (PDSlideMaster)initWithPresentation:(id)presentation;
- (id)addSlideLayout;
- (id)colorScheme;
- (id)defaultTextListStyle;
- (id)description;
- (id)drawingTheme;
- (id)fontScheme;
- (id)parentTextStyleForPlaceholderType:(int)type placeholderTypeIndex:(int)index defaultTextListStyle:(id)style overrideIndex:(BOOL)overrideIndex;
- (id)placeholderWithType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex;
- (id)slideLayoutOfType:(int)type;
- (id)styleMatrix;
- (void)addSlideLayout:(id)layout;
- (void)doneWithContent;
- (void)removeUnnecessaryOverrides;
- (void)setUpPropertyHierarchyPreservingEffectiveValues;
@end

@implementation PDSlideMaster

- (id)colorScheme
{
  theme = [(PDSlideMaster *)self theme];
  baseStyles = [theme baseStyles];
  colorScheme = [baseStyles colorScheme];

  return colorScheme;
}

- (id)addSlideLayout
{
  v3 = [[PDSlideLayout alloc] initWithSlideMaster:self];
  [(PDSlideMaster *)self addSlideLayout:v3];

  return v3;
}

- (id)fontScheme
{
  theme = [(PDSlideMaster *)self theme];
  baseStyles = [theme baseStyles];
  fontScheme = [baseStyles fontScheme];

  return fontScheme;
}

- (id)styleMatrix
{
  theme = [(PDSlideMaster *)self theme];
  baseStyles = [theme baseStyles];
  styleMatrix = [baseStyles styleMatrix];

  return styleMatrix;
}

- (PDSlideMaster)initWithPresentation:(id)presentation
{
  presentationCopy = presentation;
  v25.receiver = self;
  v25.super_class = PDSlideMaster;
  v5 = [(PDSlideBase *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mPresentation, presentationCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mSlideLayouts = v6->mSlideLayouts;
    v6->mSlideLayouts = v7;

    v9 = objc_alloc_init(OADTheme);
    mTheme = v6->mTheme;
    v6->mTheme = v9;

    v11 = objc_alloc_init(OADColorMap);
    mColorMap = v6->mColorMap;
    v6->mColorMap = v11;

    v13 = objc_alloc_init(OADTextListStyle);
    mTitleTextStyle = v6->mTitleTextStyle;
    v6->mTitleTextStyle = v13;

    v15 = objc_alloc_init(OADTextListStyle);
    mBodyTextStyle = v6->mBodyTextStyle;
    v6->mBodyTextStyle = v15;

    v17 = objc_alloc_init(OADTextListStyle);
    mOtherTextStyle = v6->mOtherTextStyle;
    v6->mOtherTextStyle = v17;

    for (i = 0; i != 9; ++i)
    {
      v20 = [(OADTextListStyle *)v6->mTitleTextStyle propertiesForListLevel:i];
      v21 = [(OADTextListStyle *)v6->mBodyTextStyle propertiesForListLevel:i];
      LODWORD(v22) = 1116733440;
      [v20 setDefaultTab:v22];
      LODWORD(v23) = 1116733440;
      [v21 setDefaultTab:v23];
    }
  }

  return v6;
}

- (void)addSlideLayout:(id)layout
{
  layoutCopy = layout;
  [(NSMutableArray *)self->mSlideLayouts addObject:?];
  [layoutCopy setSlideMaster:self];
}

- (id)slideLayoutOfType:(int)type
{
  if ([(NSMutableArray *)self->mSlideLayouts count])
  {
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = [(NSMutableArray *)self->mSlideLayouts objectAtIndex:v5];
      if ([v7 slideLayoutType] == type)
      {
        break;
      }

      v5 = v6;
      if ([(NSMutableArray *)self->mSlideLayouts count]<= v6++)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  return v7;
}

- (id)placeholderWithType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex
{
  v7.receiver = self;
  v7.super_class = PDSlideMaster;
  v5 = [(PDSlideBase *)&v7 placeholderWithType:[PDSlideBase placeholderTypeIndex:"inheritedPlaceholderType:" overrideIndex:*&type inheritedPlaceholderType:overrideIndex], 0, 1];

  return v5;
}

- (id)parentTextStyleForPlaceholderType:(int)type placeholderTypeIndex:(int)index defaultTextListStyle:(id)style overrideIndex:(BOOL)overrideIndex
{
  styleCopy = style;
  v9 = styleCopy;
  if (type > 8)
  {
    otherTextStyle = [(PDSlideMaster *)self otherTextStyle];
  }

  else if (((1 << type) & 0xF0) != 0)
  {
    otherTextStyle = styleCopy;
  }

  else
  {
    if (((1 << type) & 0x10A) != 0)
    {
      [(PDSlideMaster *)self bodyTextStyle];
    }

    else
    {
      [(PDSlideMaster *)self titleTextStyle];
    }
    otherTextStyle = ;
  }

  v11 = otherTextStyle;

  return v11;
}

- (void)doneWithContent
{
  mSlideLayouts = self->mSlideLayouts;
  self->mSlideLayouts = 0;

  mTheme = self->mTheme;
  self->mTheme = 0;

  mColorMap = self->mColorMap;
  self->mColorMap = 0;

  mTitleTextStyle = self->mTitleTextStyle;
  self->mTitleTextStyle = 0;

  mBodyTextStyle = self->mBodyTextStyle;
  self->mBodyTextStyle = 0;

  mOtherTextStyle = self->mOtherTextStyle;
  self->mOtherTextStyle = 0;

  v9.receiver = self;
  v9.super_class = PDSlideMaster;
  [(PDSlideBase *)&v9 doneWithContent];
}

- (id)drawingTheme
{
  v2 = [[OADDrawingTheme alloc] initWithTheme:self->mTheme colorMap:self->mColorMap colorPalette:0];

  return v2;
}

- (id)defaultTextListStyle
{
  presentation = [(PDSlideMaster *)self presentation];
  defaultTextStyle = [presentation defaultTextStyle];

  return defaultTextStyle;
}

- (void)setUpPropertyHierarchyPreservingEffectiveValues
{
  v13 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = PDSlideMaster;
  [(PDSlideBase *)&v11 setUpPropertyHierarchyPreservingEffectiveValues];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = self->mSlideLayouts;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v12 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) setUpPropertyHierarchyPreservingEffectiveValues];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)removeUnnecessaryOverrides
{
  [(NSMutableArray *)self->mSlideLayouts makeObjectsPerformSelector:sel_removeUnnecessaryOverrides];
  v3.receiver = self;
  v3.super_class = PDSlideMaster;
  [(PDSlideBase *)&v3 removeUnnecessaryOverrides];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDSlideMaster;
  v2 = [(PDSlideBase *)&v4 description];

  return v2;
}

- (PDPresentation)presentation
{
  WeakRetained = objc_loadWeakRetained(&self->mPresentation);

  return WeakRetained;
}

@end