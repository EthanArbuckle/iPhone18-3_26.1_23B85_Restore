@interface PDSlideLayout
- (PDSlideLayout)initWithSlideMaster:(id)a3;
- (PDSlideMaster)slideMaster;
- (id)background;
- (id)defaultTheme;
- (id)description;
- (id)masterGraphicForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5;
- (id)parentShapePropertiesForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5;
- (id)parentTextBodyPropertiesForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5;
- (id)parentTextStyleForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 defaultTextListStyle:(id)a5 overrideIndex:(BOOL)a6;
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
  v2 = [(PDSlideLayout *)self slideMaster];
  v3 = [v2 theme];

  return v3;
}

- (id)parentTextStyleForTables
{
  v2 = [(PDSlideLayout *)self slideMaster];
  v3 = [v2 parentTextStyleForTables];

  return v3;
}

- (PDSlideLayout)initWithSlideMaster:(id)a3
{
  v4 = a3;
  v5 = [(PDSlideChild *)self init];
  v6 = v5;
  if (v5)
  {
    LODWORD(v5->super.mColorMapOverride) = 0;
    objc_storeWeak(&v5->mSlideLayoutType, v4);
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

- (id)parentTextBodyPropertiesForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v7 = *&a3;
  v9 = objc_opt_class();
  v10 = [(PDSlideLayout *)self slideMaster];
  v11 = [v10 placeholderWithType:v7 placeholderTypeIndex:v6 overrideIndex:v5];
  v12 = TSUDynamicCast(v9, v11);

  v13 = [v12 textBody];
  v14 = [v13 properties];

  return v14;
}

- (id)parentTextStyleForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 defaultTextListStyle:(id)a5 overrideIndex:(BOOL)a6
{
  v6 = a6;
  v7 = *&a4;
  v8 = *&a3;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = [(PDSlideLayout *)self slideMaster];
  v13 = [v12 placeholderWithType:v8 placeholderTypeIndex:v7 overrideIndex:v6];
  v14 = TSUDynamicCast(v11, v13);

  v15 = [v14 textBody];
  v16 = [v15 textListStyle];

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v18 = [(PDSlideLayout *)self slideMaster];
    v17 = [v18 parentTextStyleForPlaceholderType:v8 placeholderTypeIndex:v7 defaultTextListStyle:v10 overrideIndex:v6];
  }

  return v17;
}

- (id)parentShapePropertiesForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v7 = *&a3;
  v9 = objc_opt_class();
  v10 = [(PDSlideLayout *)self slideMaster];
  v11 = [v10 placeholderWithType:v7 placeholderTypeIndex:v6 overrideIndex:v5];
  v12 = TSUDynamicCast(v9, v11);
  v13 = [v12 shapeProperties];

  return v13;
}

- (id)masterGraphicForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v7 = *&a3;
  v8 = [(PDSlideLayout *)self slideMaster];
  v9 = [v8 placeholderWithType:v7 placeholderTypeIndex:v6 overrideIndex:v5];

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