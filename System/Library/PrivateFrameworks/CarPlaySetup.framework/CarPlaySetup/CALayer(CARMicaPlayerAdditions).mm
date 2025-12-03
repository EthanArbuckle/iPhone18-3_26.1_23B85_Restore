@interface CALayer(CARMicaPlayerAdditions)
- (id)car_allAnimationsInTree;
- (id)car_allLayersInTree;
- (id)car_allLayersWhoseNamesContainString:()CARMicaPlayerAdditions;
- (id)car_allLayersWithKindOfClass:()CARMicaPlayerAdditions;
- (id)car_propertiesToCopy;
- (void)car_addLayerAndSublayersToArray:()CARMicaPlayerAdditions allowHiddenLayers:;
- (void)car_deepCopyLayer;
- (void)car_moveAndResizeWithinParentLayer:()CARMicaPlayerAdditions usingGravity:geometryFlipped:retinaScale:animate:;
- (void)car_setFillOfAllShapeLayersToColor:()CARMicaPlayerAdditions;
@end

@implementation CALayer(CARMicaPlayerAdditions)

- (void)car_deepCopyLayer
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(objc_opt_class()) initWithLayer:self];
  if (v2)
  {
    sublayers = [self sublayers];
    v4 = sublayers;
    if (sublayers)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v5 = [sublayers countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        v8 = *v43;
        do
        {
          v9 = 0;
          v10 = v7;
          do
          {
            if (*v43 != v8)
            {
              objc_enumerationMutation(v4);
            }

            v7 = *(*(&v42 + 1) + 8 * v9);

            car_deepCopyLayer = [v7 car_deepCopyLayer];
            if (car_deepCopyLayer)
            {
              [v2 addSublayer:car_deepCopyLayer];
            }

            ++v9;
            v10 = v7;
          }

          while (v6 != v9);
          v6 = [v4 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v6);
      }
    }

    mask = [self mask];
    v13 = mask;
    if (mask)
    {
      car_deepCopyLayer2 = [mask car_deepCopyLayer];
      if (car_deepCopyLayer2)
      {
        [v2 setMask:car_deepCopyLayer2];
      }
    }

    v33 = v4;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    car_propertiesToCopy = [self car_propertiesToCopy];
    v16 = [car_propertiesToCopy countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v39;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(car_propertiesToCopy);
          }

          v20 = *(*(&v38 + 1) + 8 * i);
          if (([v20 isEqualToString:@"sublayers"] & 1) == 0 && (objc_msgSend(v20, "isEqualToString:", @"mask") & 1) == 0 && objc_msgSend(self, "shouldArchiveValueForKey:", v20))
          {
            v21 = [self valueForKey:v20];
            [v2 setValue:v21 forKey:v20];
          }
        }

        v17 = [car_propertiesToCopy countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v17);
    }

    if ([self needsDisplay])
    {
      [v2 setNeedsDisplay];
    }

    if ([self needsLayout])
    {
      [v2 setNeedsLayout];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    animationKeys = [self animationKeys];
    v23 = [animationKeys countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(animationKeys);
          }

          v27 = *(*(&v34 + 1) + 8 * j);
          v28 = [self animationForKey:v27];
          if (([v28 isRemovedOnCompletion] & 1) == 0)
          {
            [v2 addAnimation:v28 forKey:v27];
          }
        }

        v24 = [animationKeys countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v24);
    }

    v29 = v2;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)car_propertiesToCopy
{
  if (!car_propertiesToCopy_sCAShapeLayerClass)
  {
    car_propertiesToCopy_sCAShapeLayerClass = NSClassFromString(&cfstr_Cashapelayer.isa);
  }

  car_basicPropertiesToCopy = [self car_basicPropertiesToCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = &unk_2855A45B8;
LABEL_7:
    [car_basicPropertiesToCopy addObjectsFromArray:v3];
    goto LABEL_8;
  }

  if (objc_opt_isKindOfClass())
  {
    v3 = &unk_2855A45D0;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [car_basicPropertiesToCopy addObject:@"scrollMode"];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = &unk_2855A45E8;
      goto LABEL_7;
    }
  }

LABEL_8:

  return car_basicPropertiesToCopy;
}

- (id)car_allLayersInTree
{
  array = [MEMORY[0x277CBEB18] array];
  [self car_addLayerAndSublayersToArray:array allowHiddenLayers:1];

  return array;
}

- (void)car_addLayerAndSublayersToArray:()CARMicaPlayerAdditions allowHiddenLayers:
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ((a4 & 1) != 0 || ([self isHidden] & 1) == 0)
  {
    [v6 addObject:self];
    mask = [self mask];

    if (mask)
    {
      mask2 = [self mask];
      [mask2 car_addLayerAndSublayersToArray:v6 allowHiddenLayers:a4];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    sublayers = [self sublayers];
    v10 = [sublayers countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(sublayers);
          }

          [*(*(&v15 + 1) + 8 * v13++) car_addLayerAndSublayersToArray:v6 allowHiddenLayers:a4];
        }

        while (v11 != v13);
        v11 = [sublayers countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)car_allLayersWhoseNamesContainString:()CARMicaPlayerAdditions
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  car_allLayersInTree = [self car_allLayersInTree];
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = car_allLayersInTree;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        name = [v12 name];
        if (name)
        {
          v14 = name;
          name2 = [v12 name];
          v16 = [name2 containsString:v4];

          if (v16)
          {
            [array addObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)car_allLayersWithKindOfClass:()CARMicaPlayerAdditions
{
  v16 = *MEMORY[0x277D85DE8];
  car_allLayersInTree = [self car_allLayersInTree];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = car_allLayersInTree;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [array addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)car_allAnimationsInTree
{
  v27 = *MEMORY[0x277D85DE8];
  car_allLayersInTree = [self car_allLayersInTree];
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = car_allLayersInTree;
  v3 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        animationKeys = [v7 animationKeys];
        v9 = [animationKeys countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(animationKeys);
              }

              v13 = [v7 animationForKey:*(*(&v17 + 1) + 8 * j)];
              [array addObject:v13];
            }

            v10 = [animationKeys countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v10);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)car_moveAndResizeWithinParentLayer:()CARMicaPlayerAdditions usingGravity:geometryFlipped:retinaScale:animate:
{
  v12 = a5;
  [a4 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [self bounds];
  v23 = v21 / a2;
  v24 = v22 / a2;
  if (a2 == 1.0)
  {
    v24 = v22;
    v23 = v21;
  }

  if (v18 >= 0.00001)
  {
    v25 = v18;
  }

  else
  {
    v25 = 0.00001;
  }

  if (v20 >= 0.00001)
  {
    v26 = v20;
  }

  else
  {
    v26 = 0.00001;
  }

  if (v23 >= 0.00001)
  {
    v27 = v23;
  }

  else
  {
    v27 = 0.00001;
  }

  if (v24 >= 0.00001)
  {
    v28 = v24;
  }

  else
  {
    v28 = 0.00001;
  }

  v29 = *MEMORY[0x277CDA748];
  if (a6)
  {
    if ([v12 isEqualToString:*MEMORY[0x277CDA748]])
    {
      v30 = MEMORY[0x277CDA6B8];
LABEL_22:
      v33 = *v30;
LABEL_23:
      v34 = v33;

      v12 = v34;
      goto LABEL_24;
    }

    v31 = *MEMORY[0x277CDA740];
    if ([v12 isEqualToString:*MEMORY[0x277CDA740]])
    {
      v30 = MEMORY[0x277CDA6B0];
      goto LABEL_22;
    }

    v32 = *MEMORY[0x277CDA760];
    if ([v12 isEqualToString:*MEMORY[0x277CDA760]])
    {
      v30 = MEMORY[0x277CDA6D0];
      goto LABEL_22;
    }

    v40 = [v12 isEqualToString:*MEMORY[0x277CDA6B8]];
    v33 = v29;
    if (v40)
    {
      goto LABEL_23;
    }

    v41 = [v12 isEqualToString:*MEMORY[0x277CDA6B0]];
    v33 = v31;
    if (v41)
    {
      goto LABEL_23;
    }

    v42 = [v12 isEqualToString:*MEMORY[0x277CDA6D0]];
    v33 = v32;
    if (v42)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if ([v12 isEqualToString:v29])
  {
LABEL_29:
    v16 = v16 + v26 - v28;
LABEL_30:
    v35 = 1.0;
LABEL_31:
    v36 = 1.0;
    goto LABEL_32;
  }

  if ([v12 isEqualToString:*MEMORY[0x277CDA740]])
  {
    v14 = v14 + v25 * 0.5 - v27 * 0.5;
    goto LABEL_29;
  }

  if ([v12 isEqualToString:*MEMORY[0x277CDA760]])
  {
    v14 = v14 + v25 - v27;
    goto LABEL_29;
  }

  if ([v12 isEqualToString:*MEMORY[0x277CDA6E8]])
  {
    goto LABEL_40;
  }

  if ([v12 isEqualToString:*MEMORY[0x277CDA6E0]])
  {
    v39 = 0.5;
    v14 = v14 + v25 * 0.5 - v27 * 0.5;
    goto LABEL_47;
  }

  if ([v12 isEqualToString:*MEMORY[0x277CDA730]])
  {
    v14 = v14 + v25 - v27;
LABEL_40:
    v39 = 0.5;
LABEL_47:
    v16 = v16 + v26 * v39 - v28 * v39;
    goto LABEL_30;
  }

  v35 = 1.0;
  if ([v12 isEqualToString:*MEMORY[0x277CDA6B8]])
  {
    goto LABEL_31;
  }

  if ([v12 isEqualToString:*MEMORY[0x277CDA6B0]])
  {
    v14 = v14 + v25 * 0.5 - v27 * 0.5;
    goto LABEL_31;
  }

  if ([v12 isEqualToString:*MEMORY[0x277CDA6D0]])
  {
    v14 = v14 + v25 - v27;
    goto LABEL_31;
  }

  if ([v12 isEqualToString:*MEMORY[0x277CDA700]])
  {
    v36 = v25 / v27;
    v35 = v26 / v28;
  }

  else
  {
    if ([v12 isEqualToString:*MEMORY[0x277CDA710]])
    {
      if (v25 / v27 >= v26 / v28)
      {
        v35 = v26 / v28;
      }

      else
      {
        v35 = v25 / v27;
      }
    }

    else
    {
      if (![v12 isEqualToString:*MEMORY[0x277CDA720]])
      {
        v14 = *MEMORY[0x277CBF348];
        v16 = *(MEMORY[0x277CBF348] + 8);
        NSLog(&cfstr_UnknownGravity.isa, v12);
        goto LABEL_31;
      }

      if (v25 / v27 <= v26 / v28)
      {
        v35 = v26 / v28;
      }

      else
      {
        v35 = v25 / v27;
      }
    }

    v14 = v14 + (v25 - v27 * v35) * 0.5;
    v16 = v16 + (v26 - v28 * v35) * 0.5;
    v36 = v35;
  }

LABEL_32:
  if (a2 != 1.0)
  {
    v36 = v36 / a2;
    v35 = v35 / a2;
  }

  if ((a7 & 1) == 0)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
  }

  CATransform3DMakeScale(&v44, v36, v35, 1.0);
  v43 = v44;
  [self setTransform:&v43];
  [self frame];
  v38 = v37;
  [self frame];
  [self setFrame:{v14, v16, v38}];
  if ((a7 & 1) == 0)
  {
    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)car_setFillOfAllShapeLayersToColor:()CARMicaPlayerAdditions
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [self car_allLayersWithKindOfClass:objc_opt_class()];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setFillColor:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end