@interface UIView(NAUIAdditions)
+ (uint64_t)naui_beginDisablingAnimations;
+ (uint64_t)naui_endDisablingAnimations;
+ (void)naui_performAnimateableChangesWithAnimationDuration:()NAUIAdditions setupBlock:animatablesBlock:completion:;
+ (void)naui_prepareToAutolayoutProperDescendantsOfView:()NAUIAdditions inConstraints:;
- (BOOL)naui_canAnimate;
- (id)_naui_constraintsByNameDictionary:()NAUIAdditions;
- (id)_naui_constraintsNamed:()NAUIAdditions;
- (id)naui_dynamicFontTextStyleDescriptor;
- (uint64_t)naui_isProperDescendantOfView:()NAUIAdditions;
- (uint64_t)naui_replaceConstraint:()NAUIAdditions withConstraints:;
- (uint64_t)naui_replaceConstraints:()NAUIAdditions withConstraints:;
- (void)naui_addAutoLayoutSubview:()NAUIAdditions;
- (void)naui_addAutoLayoutSubviews:()NAUIAdditions;
- (void)naui_addConstraint:()NAUIAdditions;
- (void)naui_addConstraints:()NAUIAdditions;
- (void)naui_performAnimateableConstraintChanges:()NAUIAdditions;
- (void)naui_reloadDynamicFontWithTextStyleDescriptor:()NAUIAdditions;
- (void)naui_removeConstraint:()NAUIAdditions;
- (void)naui_removeConstraints:()NAUIAdditions;
- (void)naui_removeConstraintsNamed:()NAUIAdditions;
- (void)naui_removeNamedConstraints;
- (void)naui_setDynamicFontTextStyleDescriptor:()NAUIAdditions;
- (void)naui_setNamedConstraints:()NAUIAdditions forName:;
- (void)naui_showAllViewBoundsRecursively:()NAUIAdditions;
@end

@implementation UIView(NAUIAdditions)

- (void)naui_showAllViewBoundsRecursively:()NAUIAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D75348];
  v6 = arc4random_uniform(0xFFu) / 255.0;
  v7 = arc4random_uniform(0xFFu) / 255.0;
  v8 = [v5 colorWithRed:v6 green:v7 blue:arc4random_uniform(0xFFu) / 255.0 alpha:0.400000006];
  [self setBackgroundColor:v8];

  if (a3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    subviews = [self subviews];
    v10 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v14 + 1) + 8 * v13++) naui_showAllViewBoundsRecursively:1];
        }

        while (v11 != v13);
        v11 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)naui_setDynamicFontTextStyleDescriptor:()NAUIAdditions
{
  value = a3;
  v4 = objc_getAssociatedObject(self, "naui_dynamicFontTextStyleDescriptor");
  if (([v4 isEqual:value] & 1) == 0)
  {
    objc_setAssociatedObject(self, "naui_dynamicFontTextStyleDescriptor", value, 0x303);
    if (value)
    {
      v5 = objc_getAssociatedObject(self, "naui_dynamicFontObserverKey");
      if (!v5)
      {
        v5 = [[_NAUIAutoUpdatingFontObserver alloc] initWithTarget:self];
        objc_setAssociatedObject(self, "naui_dynamicFontObserverKey", v5, 0x301);
      }

      [(_NAUIAutoUpdatingFontObserver *)v5 updateDyamicFontForCurrentContentSize];
    }

    else
    {
      objc_setAssociatedObject(self, "naui_dynamicFontObserverKey", 0, 0x301);
    }
  }
}

- (id)naui_dynamicFontTextStyleDescriptor
{
  v2 = objc_getAssociatedObject(self, "naui_dynamicFontTextStyleDescriptor");
  if (!v2)
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [objc_msgSend(self "font")];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (BOOL)naui_canAnimate
{
  if (![MEMORY[0x277D75D18] areAnimationsEnabled])
  {
    return 0;
  }

  window = [self window];
  v3 = window != 0;

  return v3;
}

+ (uint64_t)naui_beginDisablingAnimations
{
  if (!_animationsDisabledCount++)
  {
    return [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  }

  return result;
}

+ (uint64_t)naui_endDisablingAnimations
{
  if (!--_animationsDisabledCount)
  {
    return [MEMORY[0x277D75D18] setAnimationsEnabled:1];
  }

  return result;
}

+ (void)naui_performAnimateableChangesWithAnimationDuration:()NAUIAdditions setupBlock:animatablesBlock:completion:
{
  v11 = a4;
  v9 = a5;
  v10 = a6;
  if (v11)
  {
    [MEMORY[0x277D75D18] performWithoutAnimation:v11];
  }

  if ([MEMORY[0x277D75D18] areAnimationsEnabled])
  {
    [MEMORY[0x277D75D18] animateWithDuration:v9 animations:v10 completion:self];
  }

  else
  {
    if (v9)
    {
      v9[2](v9);
    }

    if (v10)
    {
      v10[2](v10, 1);
    }
  }
}

- (void)naui_performAnimateableConstraintChanges:()NAUIAdditions
{
  v5 = a3;
  v6 = objc_getAssociatedObject(self, a2);
  integerValue = [v6 integerValue];

  if (!integerValue)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__UIView_NAUIAdditions__naui_performAnimateableConstraintChanges___block_invoke;
    v13[3] = &unk_2799667D8;
    v13[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v13];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + 1];
  objc_setAssociatedObject(self, a2, v8, 1);

  v5[2](v5);
  v9 = objc_getAssociatedObject(self, a2);
  integerValue2 = [v9 integerValue];

  v11 = integerValue2 - 1;
  if (integerValue2 == 1)
  {
    [self layoutIfNeeded];
    objc_setAssociatedObject(self, a2, 0, 1);
  }

  else
  {
    if (integerValue2 <= 0)
    {
      [UIView(NAUIAdditions) naui_performAnimateableConstraintChanges:];
    }

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
    objc_setAssociatedObject(self, a2, v12, 1);
  }
}

- (void)naui_addAutoLayoutSubview:()NAUIAdditions
{
  v4 = a3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [self addSubview:v4];
}

- (void)naui_addAutoLayoutSubviews:()NAUIAdditions
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [self naui_addAutoLayoutSubview:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (uint64_t)naui_isProperDescendantOfView:()NAUIAdditions
{
  if (a3 == self)
  {
    return 0;
  }

  else
  {
    return [self isDescendantOfView:?];
  }
}

+ (void)naui_prepareToAutolayoutProperDescendantsOfView:()NAUIAdditions inConstraints:
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CFD388] naui_viewsInConstraints:a4];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 naui_isProperDescendantOfView:v5])
        {
          [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)naui_reloadDynamicFontWithTextStyleDescriptor:()NAUIAdditions
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [NAUITextStyleDescriptor fontWithTextStyleDescriptor:v5];
    [self setFont:v4];
  }
}

- (void)naui_removeConstraint:()NAUIAdditions
{
  if (a3)
  {
    return [self removeConstraint:?];
  }

  return self;
}

- (void)naui_removeConstraints:()NAUIAdditions
{
  if (a3)
  {
    return [self removeConstraints:?];
  }

  return self;
}

- (void)naui_addConstraint:()NAUIAdditions
{
  if (a3)
  {
    return [self addConstraint:?];
  }

  return self;
}

- (void)naui_addConstraints:()NAUIAdditions
{
  if (a3)
  {
    return [self addConstraints:?];
  }

  return self;
}

- (uint64_t)naui_replaceConstraint:()NAUIAdditions withConstraints:
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 naui_isEqualToConstraint:v7];
  if ((v8 & 1) == 0)
  {
    [self naui_removeConstraint:v6];
    [self naui_addConstraint:v7];
  }

  return v8 ^ 1u;
}

- (uint64_t)naui_replaceConstraints:()NAUIAdditions withConstraints:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CFD388] naui_areConstraints:v6 equalToConstraints:v7];
  if ((v8 & 1) == 0)
  {
    [self naui_removeConstraints:v6];
    [self naui_addConstraints:v7];
  }

  return v8 ^ 1u;
}

- (id)_naui_constraintsByNameDictionary:()NAUIAdditions
{
  dictionary = objc_getAssociatedObject(self, "_naui_constraintsByNameStorageKey");
  if (dictionary)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3 == 0;
  }

  if (!v6)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    objc_setAssociatedObject(self, "_naui_constraintsByNameStorageKey", dictionary, 0x301);
  }

  return dictionary;
}

- (id)_naui_constraintsNamed:()NAUIAdditions
{
  v4 = a3;
  v5 = [self _naui_constraintsByNameDictionary:0];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)naui_setNamedConstraints:()NAUIAdditions forName:
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    v7 = [self _naui_constraintsNamed:v6];

    if (v7)
    {
      [self naui_removeConstraintsNamed:v6];
    }

    v8 = [self _naui_constraintsByNameDictionary:1];
    constraints = [v11 constraints];

    if (constraints)
    {
      constraints2 = [v11 constraints];
      [self addConstraints:constraints2];
    }

    [v8 setObject:v11 forKey:v6];
  }

  else
  {
    [self naui_removeConstraintsNamed:v6];
  }
}

- (void)naui_removeConstraintsNamed:()NAUIAdditions
{
  v9 = a3;
  v4 = [self _naui_constraintsNamed:?];
  v5 = v4;
  if (v4)
  {
    constraints = [v4 constraints];

    if (constraints)
    {
      constraints2 = [v5 constraints];
      [self removeConstraints:constraints2];
    }

    v8 = [self _naui_constraintsByNameDictionary:0];
    [v8 removeObjectForKey:v9];
  }
}

- (void)naui_removeNamedConstraints
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [self _naui_constraintsByNameDictionary:0];
  allKeys = [v2 allKeys];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = allKeys;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [self naui_removeConstraintsNamed:{*(*(&v9 + 1) + 8 * v8++), v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end