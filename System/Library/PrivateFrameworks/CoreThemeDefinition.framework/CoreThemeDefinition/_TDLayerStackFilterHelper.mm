@interface _TDLayerStackFilterHelper
- (BOOL)allowKey:(id)a3;
- (_TDLayerStackFilterHelper)init;
- (void)dealloc;
- (void)establishExclusionsWithHelper:(id)a3 idioms:(id)a4 sizeClasses:(id)a5;
@end

@implementation _TDLayerStackFilterHelper

- (_TDLayerStackFilterHelper)init
{
  v4.receiver = self;
  v4.super_class = _TDLayerStackFilterHelper;
  v2 = [(_TDLayerStackFilterHelper *)&v4 init];
  if (v2)
  {
    v2->_excludedIdioms = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedSubtypes = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedScaleFactors = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedHorizontalSizeClasses = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedVerticalSizeClasses = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedDirections = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedLayers = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedPresentationStates = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedSizes = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedStates = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedValues = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

- (void)establishExclusionsWithHelper:(id)a3 idioms:(id)a4 sizeClasses:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  if ([-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition keySpec])
  {
    v8 = [-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition "keySpec")];
    if (v8 == [a4 objectAtIndex:0])
    {
      v14 = [objc_msgSend(objc_msgSend(a3 "layerStackRendition")];
      if (v14 != [a4 objectAtIndex:0])
      {
        -[NSMutableArray addObject:](self->_excludedIdioms, "addObject:", [objc_msgSend(objc_msgSend(a3 "layerStackRendition")]);
      }
    }

    else if (![(NSMutableArray *)self->_excludedIdioms count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = [a4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(a4);
            }

            v13 = *(*(&v21 + 1) + 8 * i);
            if (v13 != [-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition "keySpec")])
            {
              [(NSMutableArray *)self->_excludedIdioms addObject:v13];
            }
          }

          v10 = [a4 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v10);
      }
    }
  }

  if ([-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition "keySpec")])
  {
    v15 = [-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition "keySpec")];
    if (v15 != [a4 objectAtIndex:0])
    {
      v16 = [-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition "keySpec")];
      if (v16 == [objc_msgSend(objc_msgSend(a3 "layerStackRendition")])
      {
        v19 = [objc_msgSend(objc_msgSend(a3 "layerStackRendition")];
        if (v19)
        {
          v20 = v19;
          if (v19 != [-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition "keySpec")])
          {
            -[NSMutableArray addObject:](self->_excludedSubtypes, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v20]);
          }
        }
      }
    }
  }

  v17 = [objc_msgSend(objc_msgSend(a3 "layerStackRendition")];
  if ([-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition "keySpec")] != v17)
  {
    -[NSMutableArray addObject:](self->_excludedScaleFactors, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17]);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)allowKey:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  if (![a3 idiom] || (-[NSMutableArray containsObject:](self->_excludedIdioms, "containsObject:", objc_msgSend(a3, "idiom")) & 1) == 0)
  {
    if ([a3 subtype] && (v27 = 0u, v28 = 0u, v25 = 0u, v26 = 0u, excludedSubtypes = self->_excludedSubtypes, (v8 = -[NSMutableArray countByEnumeratingWithState:objects:count:](excludedSubtypes, "countByEnumeratingWithState:objects:count:", &v25, v30, 16)) != 0))
    {
      v9 = v8;
      v10 = *v26;
LABEL_8:
      v11 = 0;
      while (1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(excludedSubtypes);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        v13 = [a3 subtype];
        if (v13 == [v12 unsignedIntValue])
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [(NSMutableArray *)excludedSubtypes countByEnumeratingWithState:&v25 objects:v30 count:16];
          if (v9)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      excludedScaleFactors = self->_excludedScaleFactors;
      v15 = [(NSMutableArray *)excludedScaleFactors countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
LABEL_16:
        v18 = 0;
        while (1)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(excludedScaleFactors);
          }

          v19 = *(*(&v21 + 1) + 8 * v18);
          v20 = [a3 scaleFactor];
          if (v20 == [v19 unsignedIntValue])
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [(NSMutableArray *)excludedScaleFactors countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v16)
            {
              goto LABEL_16;
            }

            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        if ((![a3 sizeClassVertical] || (-[NSMutableArray containsObject:](self->_excludedVerticalSizeClasses, "containsObject:", objc_msgSend(a3, "sizeClassVertical")) & 1) == 0) && (!objc_msgSend(a3, "direction") || (-[NSMutableArray containsObject:](self->_excludedDirections, "containsObject:", objc_msgSend(a3, "direction")) & 1) == 0) && (!objc_msgSend(a3, "layer") || (-[NSMutableArray containsObject:](self->_excludedLayers, "containsObject:", objc_msgSend(a3, "layer")) & 1) == 0) && (!objc_msgSend(a3, "presentationState") || (-[NSMutableArray containsObject:](self->_excludedPresentationStates, "containsObject:", objc_msgSend(a3, "presentationState")) & 1) == 0) && (!objc_msgSend(a3, "size") || (-[NSMutableArray containsObject:](self->_excludedSizes, "containsObject:", objc_msgSend(a3, "size")) & 1) == 0) && (!objc_msgSend(a3, "state") || (-[NSMutableArray containsObject:](self->_excludedStates, "containsObject:", objc_msgSend(a3, "state")) & 1) == 0) && (!objc_msgSend(a3, "value") || (-[NSMutableArray containsObject:](self->_excludedValues, "containsObject:", objc_msgSend(a3, "value")) & 1) == 0))
        {
          result = 1;
          goto LABEL_4;
        }
      }
    }
  }

  result = 0;
LABEL_4:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _TDLayerStackFilterHelper;
  [(_TDLayerStackFilterHelper *)&v3 dealloc];
}

@end