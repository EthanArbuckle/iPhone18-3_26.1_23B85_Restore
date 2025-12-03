@interface PDSlideLayout
- (PDSlideLayout)initWithSlideMaster:(id)master;
- (PDSlideMaster)slideMaster;
- (id)background;
- (id)defaultTheme;
- (id)description;
- (id)masterGraphicForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex;
- (id)parentShapePropertiesForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex;
- (id)parentTextBodyPropertiesForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex;
- (id)parentTextStyleForPlaceholderType:(int)type placeholderTypeIndex:(int)index defaultTextListStyle:(id)style overrideIndex:(BOOL)overrideIndex;
- (id)parentTextStyleForTables;
- (id)transition;
- (void)doneWithContent;
@end

@implementation PDSlideLayout

- (PDSlideMaster)slideMaster
{
  WeakRetained = objc_loadWeakRetained(&self->mSlideLayoutType);

  return WeakRetained;
}

- (id)background
{
  WeakRetained = self->super.super.mBackground;
  if (!WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(&self->mSlideLayoutType);

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(&self->mSlideLayoutType);
      WeakRetained = [v4 background];
    }
  }

  return WeakRetained;
}

- (id)defaultTheme
{
  slideMaster = [(PDSlideLayout *)self slideMaster];
  theme = [slideMaster theme];

  return theme;
}

- (id)parentTextStyleForTables
{
  slideMaster = [(PDSlideLayout *)self slideMaster];
  parentTextStyleForTables = [slideMaster parentTextStyleForTables];

  return parentTextStyleForTables;
}

- (PDSlideLayout)initWithSlideMaster:(id)master
{
  masterCopy = master;
  v5 = [(PDSlideChild *)self init];
  v6 = v5;
  if (v5)
  {
    LODWORD(v5->super.mColorMapOverride) = 0;
    objc_storeWeak(&v5->mSlideLayoutType, masterCopy);
  }

  return v6;
}

- (id)transition
{
  WeakRetained = self->super.super.mTransition;
  if (!WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(&self->mSlideLayoutType);

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(&self->mSlideLayoutType);
      WeakRetained = [v4 transition];
    }
  }

  return WeakRetained;
}

- (id)parentTextBodyPropertiesForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex
{
  overrideIndexCopy = overrideIndex;
  v6 = *&index;
  v7 = *&type;
  v9 = objc_opt_class();
  slideMaster = [(PDSlideLayout *)self slideMaster];
  v11 = [slideMaster placeholderWithType:v7 placeholderTypeIndex:v6 overrideIndex:overrideIndexCopy];
  v12 = TSUDynamicCast(v9, v11);

  textBody = [v12 textBody];
  properties = [textBody properties];

  return properties;
}

- (id)parentTextStyleForPlaceholderType:(int)type placeholderTypeIndex:(int)index defaultTextListStyle:(id)style overrideIndex:(BOOL)overrideIndex
{
  overrideIndexCopy = overrideIndex;
  v7 = *&index;
  v8 = *&type;
  styleCopy = style;
  v11 = objc_opt_class();
  slideMaster = [(PDSlideLayout *)self slideMaster];
  v13 = [slideMaster placeholderWithType:v8 placeholderTypeIndex:v7 overrideIndex:overrideIndexCopy];
  v14 = TSUDynamicCast(v11, v13);

  textBody = [v14 textBody];
  textListStyle = [textBody textListStyle];

  if (textListStyle)
  {
    v17 = textListStyle;
  }

  else
  {
    slideMaster2 = [(PDSlideLayout *)self slideMaster];
    v17 = [slideMaster2 parentTextStyleForPlaceholderType:v8 placeholderTypeIndex:v7 defaultTextListStyle:styleCopy overrideIndex:overrideIndexCopy];
  }

  return v17;
}

- (id)parentShapePropertiesForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex
{
  overrideIndexCopy = overrideIndex;
  v6 = *&index;
  v7 = *&type;
  v9 = objc_opt_class();
  slideMaster = [(PDSlideLayout *)self slideMaster];
  v11 = [slideMaster placeholderWithType:v7 placeholderTypeIndex:v6 overrideIndex:overrideIndexCopy];
  v12 = TSUDynamicCast(v9, v11);
  shapeProperties = [v12 shapeProperties];

  return shapeProperties;
}

- (id)masterGraphicForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex
{
  overrideIndexCopy = overrideIndex;
  v6 = *&index;
  v7 = *&type;
  slideMaster = [(PDSlideLayout *)self slideMaster];
  v9 = [slideMaster placeholderWithType:v7 placeholderTypeIndex:v6 overrideIndex:overrideIndexCopy];

  return v9;
}

- (void)doneWithContent
{
  v2.receiver = self;
  v2.super_class = PDSlideLayout;
  [(PDSlideChild *)&v2 doneWithContent];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDSlideLayout;
  v2 = [(PDSlideChild *)&v4 description];

  return v2;
}

@end