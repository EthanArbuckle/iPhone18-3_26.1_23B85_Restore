@interface NSLayoutConstraint(NAUIAdditions)
+ (id)naui_constraintsByAttachingView:()NAUIAdditions toView:alongEdges:relatedBy:insets:;
+ (id)naui_constraintsByCenteringView:()NAUIAdditions withView:alongAxes:offset:;
+ (id)naui_constraintsBySizingView:()NAUIAdditions toSize:;
+ (id)naui_constraintsWithVisualFormat:()NAUIAdditions options:metrics:views:label:;
+ (id)naui_viewsInConstraints:()NAUIAdditions;
+ (uint64_t)naui_areConstraints:()NAUIAdditions equalToConstraints:;
- (BOOL)naui_isEqualToConstraint:()NAUIAdditions;
- (id)naui_debugIdentifierWithBaseLabel:()NAUIAdditions;
- (void)naui_setIdentifierWithLabel:()NAUIAdditions;
@end

@implementation NSLayoutConstraint(NAUIAdditions)

+ (uint64_t)naui_areConstraints:()NAUIAdditions equalToConstraints:
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    if ([v5 count])
    {
      v8 = 0;
      do
      {
        v9 = [v5 objectAtIndexedSubscript:v8];
        v10 = [v6 objectAtIndexedSubscript:v8];
        v11 = [v9 naui_isEqualToConstraint:v10];

        if ((v11 & 1) == 0)
        {
          break;
        }

        ++v8;
      }

      while (v8 < [v5 count]);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)naui_isEqualToConstraint:()NAUIAdditions
{
  v4 = a3;
  v5 = [a1 firstItem];
  v6 = [v4 firstItem];
  v7 = [v5 isEqual:v6];

  if (v7 && (v8 = [a1 firstAttribute], v8 == objc_msgSend(v4, "firstAttribute")) && (objc_msgSend(a1, "secondItem"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "secondItem"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, v11) && (v12 = objc_msgSend(a1, "secondAttribute"), v12 == objc_msgSend(v4, "secondAttribute")) && (v13 = objc_msgSend(a1, "relation"), v13 == objc_msgSend(v4, "relation")))
  {
    [a1 constant];
    v15 = v14;
    [v4 constant];
    v17 = v15 == v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)naui_constraintsByCenteringView:()NAUIAdditions withView:alongAxes:offset:
{
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x277CBEB18] array];
  if (a7)
  {
    v14 = [MEMORY[0x277CFD388] constraintWithItem:v11 attribute:9 relatedBy:0 toItem:v12 attribute:9 multiplier:1.0 constant:a1];
    [v13 addObject:v14];
  }

  if ((a7 & 2) != 0)
  {
    v15 = [MEMORY[0x277CFD388] constraintWithItem:v11 attribute:10 relatedBy:0 toItem:v12 attribute:10 multiplier:1.0 constant:a2];
    [v13 addObject:v15];
  }

  return v13;
}

+ (id)naui_constraintsByAttachingView:()NAUIAdditions toView:alongEdges:relatedBy:insets:
{
  v17 = a7;
  v18 = a8;
  v19 = [MEMORY[0x277CBEB18] array];
  if (a9)
  {
    v22 = [MEMORY[0x277CFD388] constraintWithItem:v17 attribute:3 relatedBy:a10 toItem:v18 attribute:3 multiplier:1.0 constant:a1];
    [v19 addObject:v22];

    if ((a9 & 4) == 0)
    {
LABEL_3:
      if ((a9 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a9 & 4) == 0)
  {
    goto LABEL_3;
  }

  v23 = [MEMORY[0x277CFD388] constraintWithItem:v17 attribute:4 relatedBy:a10 toItem:v18 attribute:4 multiplier:1.0 constant:-a3];
  [v19 addObject:v23];

  if ((a9 & 2) == 0)
  {
LABEL_4:
    if ((a9 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v24 = [MEMORY[0x277CFD388] constraintWithItem:v17 attribute:5 relatedBy:a10 toItem:v18 attribute:5 multiplier:1.0 constant:a2];
  [v19 addObject:v24];

  if ((a9 & 8) != 0)
  {
LABEL_5:
    v20 = [MEMORY[0x277CFD388] constraintWithItem:v17 attribute:6 relatedBy:a10 toItem:v18 attribute:6 multiplier:1.0 constant:-a4];
    [v19 addObject:v20];
  }

LABEL_6:

  return v19;
}

+ (id)naui_constraintsBySizingView:()NAUIAdditions toSize:
{
  v7 = a5;
  v8 = [MEMORY[0x277CBEB18] array];
  if (a1 != -1.0)
  {
    v9 = [MEMORY[0x277CFD388] constraintWithItem:v7 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:a1];
    [v8 addObject:v9];
  }

  if (a2 != -1.0)
  {
    v10 = [MEMORY[0x277CFD388] constraintWithItem:v7 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:a2];
    [v8 addObject:v10];
  }

  return v8;
}

+ (id)naui_viewsInConstraints:()NAUIAdditions
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 firstItem];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v13 = [v10 firstItem];
          [v4 addObject:v13];
        }

        v14 = [v10 secondItem];
        objc_opt_class();
        v15 = objc_opt_isKindOfClass();

        if (v15)
        {
          v16 = [v10 secondItem];
          [v4 addObject:v16];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)naui_constraintsWithVisualFormat:()NAUIAdditions options:metrics:views:label:
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = a7;
  v12 = [MEMORY[0x277CFD388] constraintsWithVisualFormat:a3 options:a4 metrics:a5 views:a6];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        v18 = [v17 naui_debugIdentifierWithBaseLabel:v11];
        [v17 setIdentifier:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  return v12;
}

- (id)naui_debugIdentifierWithBaseLabel:()NAUIAdditions
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = NAUIStringFromLayoutAttribute([a1 firstAttribute]);
  v7 = [a1 relation] + 1;
  if (v7 > 2)
  {
    v8 = @"NSLayoutRelation(?)";
  }

  else
  {
    v8 = off_279966720[v7];
  }

  v9 = NAUIStringFromLayoutAttribute([a1 secondAttribute]);
  v10 = [v4 stringWithFormat:@"%@%@, %@", v6, v8, v9];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@)", v5, v10];

  return v11;
}

- (void)naui_setIdentifierWithLabel:()NAUIAdditions
{
  v2 = [a1 naui_debugIdentifierWithBaseLabel:?];
  [a1 setIdentifier:v2];
}

@end