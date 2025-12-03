@interface PDSlideBase
+ (int)inheritedPlaceholderType:(int)type;
- (BOOL)hasPpt10Animations;
- (BOOL)hasPpt9Animations;
- (PDSlideBase)init;
- (id)description;
- (id)placeholderWithType:(int)type placeholderTypeIndex:(int)index useBaseTypeMatch:(BOOL)match overrideIndex:(BOOL)overrideIndex;
- (id)placeholders;
- (void)addSlideNumberPlaceholder:(id)placeholder;
- (void)doneWithContent;
- (void)generatePpt9Animations:(id)animations;
- (void)setDrawables:(id)drawables;
- (void)setPpt9AnimationDataForCacheItem:(id)item order:(int)order state:(id)state;
- (void)setUpDrawablePropertyHierarchy;
- (void)setUpPropertyHierarchyForDrawable:(id)drawable;
- (void)setUpPropertyHierarchyForDrawablePreservingEffectiveValues:(id)values;
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

- (void)addSlideNumberPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NSArray *)v4 addObject:placeholderCopy];
  [(NSArray *)v4 addObjectsFromArray:self->mDrawables];
  mDrawables = self->mDrawables;
  self->mDrawables = v4;
}

- (void)setUpPropertyHierarchyForDrawable:(id)drawable
{
  drawableCopy = drawable;
  defaultTextListStyle = [(PDSlideBase *)self defaultTextListStyle];
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, drawableCopy);
  if (v6)
  {
    parentTextStyleForTables = [(PDSlideBase *)self parentTextStyleForTables];
    if (!parentTextStyleForTables)
    {
      parentTextStyleForTables = defaultTextListStyle;
    }

    [v6 setParentTextListStyle:parentTextStyleForTables];
  }

  else
  {
    v8 = objc_opt_class();
    clientData = [drawableCopy clientData];
    v6 = TSUDynamicCast(v8, clientData);

    v10 = objc_opt_class();
    placeholder = [v6 placeholder];
    parentTextStyleForTables = TSUDynamicCast(v10, placeholder);

    if (v6 && [v6 inheritedTextStylePlaceholderType] != -1)
    {
      v12 = -[PDSlideBase inheritedTextStyleForPlaceholderType:](self, "inheritedTextStyleForPlaceholderType:", [v6 inheritedTextStylePlaceholderType]);
      v13 = v12;
      if (v12)
      {
        v14 = v12;

        defaultTextListStyle = v14;
      }
    }

    if (!parentTextStyleForTables)
    {
      goto LABEL_19;
    }

    type = [parentTextStyleForTables type];
    index = [parentTextStyleForTables index];
    v17 = [(PDSlideBase *)self parentTextStyleForPlaceholderType:type placeholderTypeIndex:index defaultTextListStyle:defaultTextListStyle overrideIndex:0];
    v27 = [(PDSlideBase *)self parentTextBodyPropertiesForPlaceholderType:type placeholderTypeIndex:index overrideIndex:0];
    if (v27)
    {
      v18 = objc_opt_class();
      v19 = TSUDynamicCast(v18, drawableCopy);
      textBody = [v19 textBody];
      properties = [textBody properties];
      [properties setParent:v27];
    }

    v22 = [(PDSlideBase *)self parentShapePropertiesForPlaceholderType:type placeholderTypeIndex:index overrideIndex:0, v27];
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        drawableProperties = [drawableCopy drawableProperties];
        [drawableProperties setParent:v22];
      }
    }

    v24 = [(PDSlideBase *)self masterGraphicForPlaceholderType:type placeholderTypeIndex:index overrideIndex:0];
    if (v24)
    {
      v25 = objc_opt_class();
      v26 = TSUDynamicCast(v25, drawableCopy);
      [v26 setMasterGraphic:v24];
    }

    if (!v17)
    {
LABEL_19:
      v17 = defaultTextListStyle;
    }

    [drawableCopy setParentTextListStyle:v17];
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

- (void)setUpPropertyHierarchyForDrawablePreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  defaultTextListStyle = [(PDSlideBase *)self defaultTextListStyle];
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, valuesCopy);
  if (v6)
  {
    parentTextStyleForTables = [(PDSlideBase *)self parentTextStyleForTables];
    if (!parentTextStyleForTables)
    {
      parentTextStyleForTables = defaultTextListStyle;
    }

    [v6 changeParentTextListStylePreservingEffectiveValues:parentTextStyleForTables];
  }

  else
  {
    v8 = objc_opt_class();
    clientData = [valuesCopy clientData];
    v6 = TSUDynamicCast(v8, clientData);

    v10 = objc_opt_class();
    placeholder = [v6 placeholder];
    parentTextStyleForTables = TSUDynamicCast(v10, placeholder);

    if (v6 && [v6 inheritedTextStylePlaceholderType] != -1)
    {
      v12 = -[PDSlideBase inheritedTextStyleForPlaceholderType:](self, "inheritedTextStyleForPlaceholderType:", [v6 inheritedTextStylePlaceholderType]);
      v13 = v12;
      if (v12)
      {
        v14 = v12;

        defaultTextListStyle = v14;
      }
    }

    v29 = defaultTextListStyle;
    if (parentTextStyleForTables)
    {
      type = [parentTextStyleForTables type];
      index = [parentTextStyleForTables index];
      v17 = [(PDSlideBase *)self parentTextStyleForPlaceholderType:type placeholderTypeIndex:index defaultTextListStyle:defaultTextListStyle overrideIndex:0];
      v18 = [(PDSlideBase *)self parentTextBodyPropertiesForPlaceholderType:type placeholderTypeIndex:index overrideIndex:0];
      defaultProperties = [(PDSlideBase *)self parentShapePropertiesForPlaceholderType:type placeholderTypeIndex:index overrideIndex:0];
      v20 = [(PDSlideBase *)self masterGraphicForPlaceholderType:type placeholderTypeIndex:index overrideIndex:0];
      if (v20)
      {
        v21 = objc_opt_class();
        v22 = TSUDynamicCast(v21, valuesCopy);
        [v22 setMasterGraphic:v20];
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
      defaultProperties = 0;
    }

    v23 = objc_opt_class();
    v24 = TSUDynamicCast(v23, valuesCopy);
    if (v24)
    {
      if (!v18)
      {
        v18 = +[OADTextBodyProperties defaultProperties];
      }

      textBody = [v24 textBody];
      properties = [textBody properties];
      [properties changeParentPreservingEffectiveValues:v18];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!defaultProperties)
      {
        drawableProperties = [valuesCopy drawableProperties];
        defaultProperties = [objc_opt_class() defaultProperties];
      }

      drawableProperties2 = [valuesCopy drawableProperties];
      [drawableProperties2 changeParentPreservingEffectiveValues:defaultProperties];
    }

    if (!v17)
    {
      v17 = v29;
    }

    [valuesCopy changeParentTextListStylePreservingEffectiveValues:{v17, v29}];

    defaultTextListStyle = v30;
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

- (void)setDrawables:(id)drawables
{
  drawablesCopy = drawables;
  [(PDSlideBase *)self setDrawablesNoHierarchy:?];
  [(PDSlideBase *)self setUpDrawablePropertyHierarchy];
}

- (id)placeholderWithType:(int)type placeholderTypeIndex:(int)index useBaseTypeMatch:(BOOL)match overrideIndex:(BOOL)overrideIndex
{
  typeCopy = type;
  matchCopy = match;
  if (match)
  {
    typeCopy = [PDSlideBase inheritedPlaceholderType:*&type];
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
    clientData = [v11 clientData];
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

  v13 = clientData;
  if (([v13 hasPlaceholder] & 1) == 0)
  {
    goto LABEL_12;
  }

  placeholder = [v13 placeholder];
  type = [placeholder type];

  if (matchCopy)
  {
    LODWORD(type) = [PDSlideBase inheritedPlaceholderType:type];
  }

  if (type != typeCopy || ([v13 placeholder], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "index"), v16, v17 != index) && !overrideIndex)
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
  array = [MEMORY[0x277CBEB18] array];
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
        clientData = [v8 clientData];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [clientData hasPlaceholder])
        {
          [array addObject:v8];
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return array;
}

+ (int)inheritedPlaceholderType:(int)type
{
  result = type;
  if (type <= 0xF && ((0xBF0Fu >> type) & 1) != 0)
  {
    return dword_25D70F8A0[type];
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
  rootTimeNode = [(PDAnimation *)self->mAnimation rootTimeNode];
  v3 = rootTimeNode != 0;

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
      clientData = [v5 clientData];

      if (clientData)
      {
        clientData2 = [v5 clientData];
        LOBYTE(clientData) = [clientData2 hasAnimationInfo];
      }

      if ([(NSArray *)self->mDrawables count]<= v4)
      {
        break;
      }

      v3 = v4++;
    }

    while ((clientData & 1) == 0);
  }

  else
  {
    LOBYTE(clientData) = 0;
  }

  return clientData;
}

- (void)generatePpt9Animations:(id)animations
{
  animationsCopy = animations;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [PDAnimationCache loadAnimationCache:v4 pdAnimation:self->mAnimation state:animationsCopy];
  for (i = 0; [v4 count] > i; ++i)
  {
    v6 = [v4 objectAtIndex:i];
    [(PDSlideBase *)self setPpt9AnimationDataForCacheItem:v6 order:i state:animationsCopy];
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDSlideBase;
  v2 = [(PDSlideBase *)&v4 description];

  return v2;
}

- (void)setPpt9AnimationDataForCacheItem:(id)item order:(int)order state:(id)state
{
  v8 = *&order;
  itemCopy = item;
  stateCopy = state;
  target = [itemCopy target];
  drawable = [target drawable];

  v30 = drawable;
  clientData = [drawable clientData];
  animationInfo = [(PDOfficeArtClient *)clientData animationInfo];
  entranceData = 0;
  presetClass = [itemCopy presetClass];
  if (presetClass == 1)
  {
    entranceData = [animationInfo entranceData];
    if (!entranceData)
    {
LABEL_24:

      goto LABEL_25;
    }
  }

  presetClass2 = [itemCopy presetClass];
  if (presetClass2 == 2)
  {
    exitData = [animationInfo exitData];
    if (!exitData)
    {
      if (presetClass != 1)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  v29 = stateCopy;
  if ([itemCopy presetClass] != 6 || objc_msgSend(itemCopy, "presetId") != 1)
  {
    v17 = 0;
    goto LABEL_10;
  }

  entranceData2 = [animationInfo entranceData];
  if (entranceData2)
  {
    v17 = 1;
LABEL_10:
    if ([itemCopy presetClass] == 6 && objc_msgSend(itemCopy, "presetId") == 3)
    {
      exitData2 = [animationInfo exitData];
      v19 = exitData2 == 0;

      if (!v17)
      {
LABEL_16:
        stateCopy = v29;
        if (presetClass2 != 2)
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
  if (presetClass2 == 2)
  {
LABEL_17:
  }

LABEL_18:
  if (presetClass != 1)
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
  v21 = [PDAnimationCache createAnimationInfoDataForCacheItem:itemCopy order:v8];
  if (v21)
  {
    v22 = v21;
    if (!clientData)
    {
      clientData = objc_alloc_init(PDOfficeArtClient);
      [v30 setClientData:clientData];
    }

    clientData2 = [v30 clientData];

    if (clientData2 && !animationInfo)
    {
      v24 = objc_alloc_init(PDAnimationInfo);
      clientData3 = [v30 clientData];
      [clientData3 setAnimationInfo:v24];

      animationInfo = v24;
    }

    if ([itemCopy presetClass] == 1 || objc_msgSend(itemCopy, "presetClass") == 6 && objc_msgSend(itemCopy, "presetId") == 1)
    {
      [animationInfo setEntranceData:v22];
    }

    else if ([itemCopy presetClass] == 2 || objc_msgSend(itemCopy, "presetClass") == 6 && objc_msgSend(itemCopy, "presetId") == 3)
    {
      [animationInfo setExitData:v22];
    }

    mediaNodeMap = [stateCopy mediaNodeMap];
    target2 = [itemCopy target];
    v28 = [mediaNodeMap objectForKey:target2];

    if (v28)
    {
      [animationInfo setMediaNode:v28];
    }
  }

LABEL_42:
}

@end