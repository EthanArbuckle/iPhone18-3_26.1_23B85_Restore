@interface PDSlideBase
+ (int)inheritedPlaceholderType:(int)a3;
- (BOOL)hasPpt10Animations;
- (BOOL)hasPpt9Animations;
- (PDSlideBase)init;
- (id)description;
- (id)placeholderWithType:(int)a3 placeholderTypeIndex:(int)a4 useBaseTypeMatch:(BOOL)a5 overrideIndex:(BOOL)a6;
- (id)placeholders;
- (void)addSlideNumberPlaceholder:(id)a3;
- (void)doneWithContent;
- (void)generatePpt9Animations:(id)a3;
- (void)setDrawables:(id)a3;
- (void)setPpt9AnimationDataForCacheItem:(id)a3 order:(int)a4 state:(id)a5;
- (void)setUpDrawablePropertyHierarchy;
- (void)setUpPropertyHierarchyForDrawable:(id)a3;
- (void)setUpPropertyHierarchyForDrawablePreservingEffectiveValues:(id)a3;
- (void)setUpPropertyHierarchyPreservingEffectiveValues;
@end

@implementation PDSlideBase

- (PDSlideBase)init
{
  v7.receiver = self;
  v7.super_class = PDSlideBase;
  v2 = [(PDSlideBase *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->mSlideId = 0;
    v4 = objc_alloc_init(PDAnimation);
    mAnimation = v3->mAnimation;
    v3->mAnimation = v4;
  }

  return v3;
}

- (void)addSlideNumberPlaceholder:(id)a3
{
  v6 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NSArray *)v4 addObject:v6];
  [(NSArray *)v4 addObjectsFromArray:self->mDrawables];
  mDrawables = self->mDrawables;
  self->mDrawables = v4;
}

- (void)setUpPropertyHierarchyForDrawable:(id)a3
{
  v29 = a3;
  v4 = [(PDSlideBase *)self defaultTextListStyle];
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, v29);
  if (v6)
  {
    v7 = [(PDSlideBase *)self parentTextStyleForTables];
    if (!v7)
    {
      v7 = v4;
    }

    [v6 setParentTextListStyle:v7];
  }

  else
  {
    v8 = objc_opt_class();
    v9 = [v29 clientData];
    v6 = TSUDynamicCast(v8, v9);

    v10 = objc_opt_class();
    v11 = [v6 placeholder];
    v7 = TSUDynamicCast(v10, v11);

    if (v6 && [v6 inheritedTextStylePlaceholderType] != -1)
    {
      v12 = -[PDSlideBase inheritedTextStyleForPlaceholderType:](self, "inheritedTextStyleForPlaceholderType:", [v6 inheritedTextStylePlaceholderType]);
      v13 = v12;
      if (v12)
      {
        v14 = v12;

        v4 = v14;
      }
    }

    if (!v7)
    {
      goto LABEL_19;
    }

    v15 = [v7 type];
    v16 = [v7 index];
    v17 = [(PDSlideBase *)self parentTextStyleForPlaceholderType:v15 placeholderTypeIndex:v16 defaultTextListStyle:v4 overrideIndex:0];
    v27 = [(PDSlideBase *)self parentTextBodyPropertiesForPlaceholderType:v15 placeholderTypeIndex:v16 overrideIndex:0];
    if (v27)
    {
      v18 = objc_opt_class();
      v19 = TSUDynamicCast(v18, v29);
      v20 = [v19 textBody];
      v21 = [v20 properties];
      [v21 setParent:v27];
    }

    v22 = [(PDSlideBase *)self parentShapePropertiesForPlaceholderType:v15 placeholderTypeIndex:v16 overrideIndex:0, v27];
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [v29 drawableProperties];
        [v23 setParent:v22];
      }
    }

    v24 = [(PDSlideBase *)self masterGraphicForPlaceholderType:v15 placeholderTypeIndex:v16 overrideIndex:0];
    if (v24)
    {
      v25 = objc_opt_class();
      v26 = TSUDynamicCast(v25, v29);
      [v26 setMasterGraphic:v24];
    }

    if (!v17)
    {
LABEL_19:
      v17 = v4;
    }

    [v29 setParentTextListStyle:v17];
  }
}

- (void)setUpDrawablePropertyHierarchy
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->mDrawables;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

        [(PDSlideBase *)self setUpPropertyHierarchyForDrawable:*(*(&v7 + 1) + 8 * v6++), v7];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setUpPropertyHierarchyForDrawablePreservingEffectiveValues:(id)a3
{
  v31 = a3;
  v4 = [(PDSlideBase *)self defaultTextListStyle];
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, v31);
  if (v6)
  {
    v7 = [(PDSlideBase *)self parentTextStyleForTables];
    if (!v7)
    {
      v7 = v4;
    }

    [v6 changeParentTextListStylePreservingEffectiveValues:v7];
  }

  else
  {
    v8 = objc_opt_class();
    v9 = [v31 clientData];
    v6 = TSUDynamicCast(v8, v9);

    v10 = objc_opt_class();
    v11 = [v6 placeholder];
    v7 = TSUDynamicCast(v10, v11);

    if (v6 && [v6 inheritedTextStylePlaceholderType] != -1)
    {
      v12 = -[PDSlideBase inheritedTextStyleForPlaceholderType:](self, "inheritedTextStyleForPlaceholderType:", [v6 inheritedTextStylePlaceholderType]);
      v13 = v12;
      if (v12)
      {
        v14 = v12;

        v4 = v14;
      }
    }

    v29 = v4;
    if (v7)
    {
      v15 = [v7 type];
      v16 = [v7 index];
      v17 = [(PDSlideBase *)self parentTextStyleForPlaceholderType:v15 placeholderTypeIndex:v16 defaultTextListStyle:v4 overrideIndex:0];
      v18 = [(PDSlideBase *)self parentTextBodyPropertiesForPlaceholderType:v15 placeholderTypeIndex:v16 overrideIndex:0];
      v19 = [(PDSlideBase *)self parentShapePropertiesForPlaceholderType:v15 placeholderTypeIndex:v16 overrideIndex:0];
      v20 = [(PDSlideBase *)self masterGraphicForPlaceholderType:v15 placeholderTypeIndex:v16 overrideIndex:0];
      if (v20)
      {
        v21 = objc_opt_class();
        v22 = TSUDynamicCast(v21, v31);
        [v22 setMasterGraphic:v20];
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }

    v23 = objc_opt_class();
    v24 = TSUDynamicCast(v23, v31);
    if (v24)
    {
      if (!v18)
      {
        v18 = +[OADTextBodyProperties defaultProperties];
      }

      v25 = [v24 textBody];
      v26 = [v25 properties];
      [v26 changeParentPreservingEffectiveValues:v18];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v19)
      {
        v27 = [v31 drawableProperties];
        v19 = [objc_opt_class() defaultProperties];
      }

      v28 = [v31 drawableProperties];
      [v28 changeParentPreservingEffectiveValues:v19];
    }

    if (!v17)
    {
      v17 = v29;
    }

    [v31 changeParentTextListStylePreservingEffectiveValues:{v17, v29}];

    v4 = v30;
  }
}

- (void)setUpPropertyHierarchyPreservingEffectiveValues
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->mDrawables;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

        [(PDSlideBase *)self setUpPropertyHierarchyForDrawablePreservingEffectiveValues:*(*(&v7 + 1) + 8 * v6++), v7];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setDrawables:(id)a3
{
  v4 = a3;
  [(PDSlideBase *)self setDrawablesNoHierarchy:?];
  [(PDSlideBase *)self setUpDrawablePropertyHierarchy];
}

- (id)placeholderWithType:(int)a3 placeholderTypeIndex:(int)a4 useBaseTypeMatch:(BOOL)a5 overrideIndex:(BOOL)a6
{
  v6 = a3;
  v21 = a5;
  if (a5)
  {
    v6 = [PDSlideBase inheritedPlaceholderType:*&a3];
  }

  v8 = [(NSArray *)self->mDrawables count];
  if (!v8)
  {
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  v9 = v8;
  v10 = 0;
  while (1)
  {
    v11 = [(NSArray *)self->mDrawables objectAtIndex:v10];
    v12 = [v11 clientData];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_13:

    if (v9 == ++v10)
    {
      goto LABEL_14;
    }
  }

  v13 = v12;
  if (([v13 hasPlaceholder] & 1) == 0)
  {
    goto LABEL_12;
  }

  v14 = [v13 placeholder];
  v15 = [v14 type];

  if (v21)
  {
    LODWORD(v15) = [PDSlideBase inheritedPlaceholderType:v15];
  }

  if (v15 != v6 || ([v13 placeholder], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "index"), v16, v17 != a4) && !a6)
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_15:

  return v11;
}

- (id)placeholders
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->mDrawables;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 clientData];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 hasPlaceholder])
        {
          [v3 addObject:v8];
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v3;
}

+ (int)inheritedPlaceholderType:(int)a3
{
  result = a3;
  if (a3 <= 0xF && ((0xBF0Fu >> a3) & 1) != 0)
  {
    return dword_25D70F8A0[a3];
  }

  return result;
}

- (void)doneWithContent
{
  mName = self->mName;
  self->mName = 0;

  mDrawables = self->mDrawables;
  self->mDrawables = 0;

  mBackground = self->mBackground;
  self->mBackground = 0;

  mAnimation = self->mAnimation;
  self->mAnimation = 0;

  mTransition = self->mTransition;
  self->mTransition = 0;

  mDefaultTableStyle = self->mDefaultTableStyle;
  self->mDefaultTableStyle = 0;

  *(self + 72) |= 2u;
}

- (BOOL)hasPpt10Animations
{
  v2 = [(PDAnimation *)self->mAnimation rootTimeNode];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasPpt9Animations
{
  if ([(NSArray *)self->mDrawables count])
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = [(NSArray *)self->mDrawables objectAtIndex:v3];
      v6 = [v5 clientData];

      if (v6)
      {
        v7 = [v5 clientData];
        LOBYTE(v6) = [v7 hasAnimationInfo];
      }

      if ([(NSArray *)self->mDrawables count]<= v4)
      {
        break;
      }

      v3 = v4++;
    }

    while ((v6 & 1) == 0);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)generatePpt9Animations:(id)a3
{
  v7 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [PDAnimationCache loadAnimationCache:v4 pdAnimation:self->mAnimation state:v7];
  for (i = 0; [v4 count] > i; ++i)
  {
    v6 = [v4 objectAtIndex:i];
    [(PDSlideBase *)self setPpt9AnimationDataForCacheItem:v6 order:i state:v7];
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDSlideBase;
  v2 = [(PDSlideBase *)&v4 description];

  return v2;
}

- (void)setPpt9AnimationDataForCacheItem:(id)a3 order:(int)a4 state:(id)a5
{
  v8 = *&a4;
  v31 = a3;
  v9 = a5;
  v10 = [v31 target];
  v11 = [v10 drawable];

  v30 = v11;
  v12 = [v11 clientData];
  v13 = [(PDOfficeArtClient *)v12 animationInfo];
  v14 = 0;
  v15 = [v31 presetClass];
  if (v15 == 1)
  {
    v14 = [v13 entranceData];
    if (!v14)
    {
LABEL_24:

      goto LABEL_25;
    }
  }

  v16 = [v31 presetClass];
  if (v16 == 2)
  {
    v5 = [v13 exitData];
    if (!v5)
    {
      if (v15 != 1)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  v29 = v9;
  if ([v31 presetClass] != 6 || objc_msgSend(v31, "presetId") != 1)
  {
    v17 = 0;
    goto LABEL_10;
  }

  v6 = [v13 entranceData];
  if (v6)
  {
    v17 = 1;
LABEL_10:
    if ([v31 presetClass] == 6 && objc_msgSend(v31, "presetId") == 3)
    {
      v18 = [v13 exitData];
      v19 = v18 == 0;

      if (!v17)
      {
LABEL_16:
        v9 = v29;
        if (v16 != 2)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v19 = 0;
      if ((v17 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_16;
  }

  v19 = 1;
  if (v16 == 2)
  {
LABEL_17:
  }

LABEL_18:
  if (v15 != 1)
  {
    if (v19)
    {
      goto LABEL_25;
    }

LABEL_22:
    v20 = v30;
    goto LABEL_42;
  }

  if (!v19)
  {
    goto LABEL_22;
  }

LABEL_25:
  v20 = v30;
  v21 = [PDAnimationCache createAnimationInfoDataForCacheItem:v31 order:v8];
  if (v21)
  {
    v22 = v21;
    if (!v12)
    {
      v12 = objc_alloc_init(PDOfficeArtClient);
      [v30 setClientData:v12];
    }

    v23 = [v30 clientData];

    if (v23 && !v13)
    {
      v24 = objc_alloc_init(PDAnimationInfo);
      v25 = [v30 clientData];
      [v25 setAnimationInfo:v24];

      v13 = v24;
    }

    if ([v31 presetClass] == 1 || objc_msgSend(v31, "presetClass") == 6 && objc_msgSend(v31, "presetId") == 1)
    {
      [v13 setEntranceData:v22];
    }

    else if ([v31 presetClass] == 2 || objc_msgSend(v31, "presetClass") == 6 && objc_msgSend(v31, "presetId") == 3)
    {
      [v13 setExitData:v22];
    }

    v26 = [v9 mediaNodeMap];
    v27 = [v31 target];
    v28 = [v26 objectForKey:v27];

    if (v28)
    {
      [v13 setMediaNode:v28];
    }
  }

LABEL_42:
}

@end