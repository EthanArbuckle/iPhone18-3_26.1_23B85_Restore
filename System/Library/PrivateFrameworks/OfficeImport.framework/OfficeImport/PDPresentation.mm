@interface PDPresentation
- (CGSize)notesSize;
- (CGSize)slideSize;
- (PDPresentation)init;
- (id)description;
- (id)notesMasterAtIndex:(unint64_t)index;
- (unint64_t)indexOfSlide:(id)slide;
- (unsigned)addBulletBlip:(id)blip;
- (void)cacheGraphicStyleForDrawable:(id)drawable colorContext:(id)context;
- (void)cacheGraphicStylesForSlideBase:(id)base;
- (void)ensureDefaultLayoutsForMasters;
- (void)flushUnusedMastersAndLayouts;
- (void)removeUnnecessaryOverrides;
- (void)setUpPropertyHierarchyPreservingEffectiveValues;
@end

@implementation PDPresentation

- (PDPresentation)init
{
  v15.receiver = self;
  v15.super_class = PDPresentation;
  v2 = [(OCDDocument *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mSlideMasters = v2->mSlideMasters;
    v2->mSlideMasters = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mNotesMasters = v2->mNotesMasters;
    v2->mNotesMasters = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mSlides = v2->mSlides;
    v2->mSlides = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mBulletBlips = v2->mBulletBlips;
    v2->mBulletBlips = v9;

    v11 = MEMORY[0x277CBF3A8];
    v2->mSlideSize = *MEMORY[0x277CBF3A8];
    v2->mNotesSize = *v11;
    v2->mIsCommentsVisible = 1;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mCommentAuthors = v2->mCommentAuthors;
    v2->mCommentAuthors = v12;
  }

  return v2;
}

- (CGSize)slideSize
{
  width = self->mSlideSize.width;
  height = self->mSlideSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)notesMasterAtIndex:(unint64_t)index
{
  v5 = [(NSMutableArray *)self->mNotesMasters count];
  if (v5)
  {
    v5 = [(NSMutableArray *)self->mNotesMasters objectAtIndex:index];
  }

  return v5;
}

- (unint64_t)indexOfSlide:(id)slide
{
  slideCopy = slide;
  slideCount = [(PDPresentation *)self slideCount];
  if (slideCount)
  {
    v6 = 0;
    while (1)
    {
      v7 = [(PDPresentation *)self slideAtIndex:v6];

      if (v7 == slideCopy)
      {
        break;
      }

      if (slideCount == ++v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  return v6;
}

- (unsigned)addBulletBlip:(id)blip
{
  blipCopy = blip;
  [(NSMutableArray *)self->mBulletBlips addObject:blipCopy];
  LODWORD(self) = [(NSMutableArray *)self->mBulletBlips count];

  return self;
}

- (CGSize)notesSize
{
  width = self->mNotesSize.width;
  height = self->mNotesSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)flushUnusedMastersAndLayouts
{
  v16 = objc_alloc_init(OITSUNoCopyDictionary);
  for (i = 0; ; i = v4 + 1)
  {
    v4 = i;
    if ([(NSMutableArray *)self->mSlides count]<= i)
    {
      break;
    }

    v5 = [(NSMutableArray *)self->mSlides objectAtIndex:i];
    slideLayout = [v5 slideLayout];
    slideMaster = [slideLayout slideMaster];
    v8 = [(OITSUNoCopyDictionary *)v16 objectForKey:slideMaster];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(OITSUNoCopyDictionary *)v16 setObject:v8 forUncopiedKey:slideMaster];
    }

    [v8 addObject:slideLayout];
  }

  allKeys = [(OITSUNoCopyDictionary *)v16 allKeys];
  [(NSMutableArray *)self->mSlideMasters setArray:allKeys];
  for (j = 0; [allKeys count] > j; ++j)
  {
    v11 = [allKeys objectAtIndex:j];
    v12 = objc_alloc(MEMORY[0x277CBEB18]);
    v13 = [(OITSUNoCopyDictionary *)v16 objectForKey:v11];
    allObjects = [v13 allObjects];
    v15 = [v12 initWithArray:allObjects];

    [v11 setSlideLayouts:v15];
  }
}

- (void)ensureDefaultLayoutsForMasters
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->mSlideMasters;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (![v6 slideLayoutCount])
        {
          v7 = [[PDSlideLayout alloc] initWithSlideMaster:v6];
          [(PDSlideLayout *)v7 setSlideLayoutType:2];
          [(PDSlideChild *)v7 setShowMasterShapes:1];
          placeholders = [v6 placeholders];
          [(PDSlideBase *)v7 setDrawables:placeholders];

          [(PDSlideChild *)v7 setShowMasterPlaceholderAnimations:1];
          [v6 addSlideLayout:v7];
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

- (void)setUpPropertyHierarchyPreservingEffectiveValues
{
  v31 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = PDPresentation;
  [(OCDDocument *)&v27 setUpPropertyHierarchyPreservingEffectiveValues];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = self->mSlideMasters;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v4)
  {
    v5 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v23 + 1) + 8 * v6++) setUpPropertyHierarchyPreservingEffectiveValues];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v4);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->mNotesMasters;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v19 + 1) + 8 * v10++) setUpPropertyHierarchyPreservingEffectiveValues];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v8);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11 = self->mSlides;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v15 objects:v28 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v15 + 1) + 8 * v14++) setUpPropertyHierarchyPreservingEffectiveValues];
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v15 objects:v28 count:16];
    }

    while (v12);
  }
}

- (void)removeUnnecessaryOverrides
{
  [(NSMutableArray *)self->mSlides makeObjectsPerformSelector:sel_removeUnnecessaryOverrides];
  [(NSMutableArray *)self->mSlideMasters makeObjectsPerformSelector:sel_removeUnnecessaryOverrides];
  [(NSMutableArray *)self->mNotesMasters makeObjectsPerformSelector:sel_removeUnnecessaryOverrides];
  v3.receiver = self;
  v3.super_class = PDPresentation;
  [(OCDDocument *)&v3 removeUnnecessaryOverrides];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDPresentation;
  v2 = [(PDPresentation *)&v4 description];

  return v2;
}

- (void)cacheGraphicStyleForDrawable:(id)drawable colorContext:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  drawableCopy = drawable;
  contextCopy = context;
  graphicStyleCache = [(OCDDocument *)self graphicStyleCache];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    children = [drawableCopy children];
    v10 = [children countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v10)
    {
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(children);
          }

          [(PDPresentation *)self cacheGraphicStyleForDrawable:*(*(&v34 + 1) + 8 * i) colorContext:contextCopy];
        }

        v10 = [children countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v10);
    }

    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    clientData = [drawableCopy clientData];
    placeholder = [clientData placeholder];
    if (!placeholder)
    {
      v15 = drawableCopy;
      v31 = v15;
      v32 = clientData;
      shapeProperties = [v15 shapeProperties];
      type = [v15 type];
      isTextBox = [shapeProperties isTextBox];
      if (type == 202)
      {
        v18 = 1;
      }

      else
      {
        v18 = isTextBox;
      }

      if (v18)
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
        if (type != 20 && type != 203)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v19 = 0;
          }
        }
      }

      textBody = [v15 textBody];
      textListStyle = [textBody textListStyle];
      v23 = [textListStyle propertiesForListLevel:0];

      if ([textBody paragraphCount])
      {
        v24 = [textBody paragraphAtIndex:0];
        properties = [v24 properties];

        paragraphEndCharacterProperties = [v24 paragraphEndCharacterProperties];
        if ([v24 textRunCount])
        {
          v27 = [v24 textRunAtIndex:0];
          properties2 = [v27 properties];

          paragraphEndCharacterProperties = properties2;
        }

        v23 = properties;
      }

      else
      {
        paragraphEndCharacterProperties = 0;
      }

      properties3 = [textBody properties];
      [graphicStyleCache cacheDrawablePropertiesOfCategory:v19 withGraphicProperties:shapeProperties textBodyProperties:properties3 paragraphProperties:v23 characterProperties:paragraphEndCharacterProperties colorContext:contextCopy];

      clientData = v32;
    }

    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    imageProperties = [drawableCopy imageProperties];
    [graphicStyleCache cacheDrawablePropertiesOfCategory:3 withGraphicProperties:imageProperties textBodyProperties:0 paragraphProperties:0 characterProperties:0 colorContext:contextCopy];
LABEL_22:

    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    drawableProperties = [drawableCopy drawableProperties];
    imageProperties = [drawableProperties style];

    if (imageProperties)
    {
      [graphicStyleCache cacheTableStyle:imageProperties];
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [graphicStyleCache cacheChartStyleId:{objc_msgSend(drawableCopy, "styleId")}];
  }

LABEL_36:
}

- (void)cacheGraphicStylesForSlideBase:(id)base
{
  v18 = *MEMORY[0x277D85DE8];
  baseCopy = base;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [OADColorContext alloc];
    colorScheme = [baseCopy colorScheme];
    colorMap = [baseCopy colorMap];
    v8 = [(OADColorContext *)v5 initWithScheme:colorScheme map:colorMap palette:0];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    drawables = [baseCopy drawables];
    v10 = [drawables countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v10)
    {
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(drawables);
          }

          [(PDPresentation *)self cacheGraphicStyleForDrawable:*(*(&v13 + 1) + 8 * v12++) colorContext:v8];
        }

        while (v10 != v12);
        v10 = [drawables countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

@end