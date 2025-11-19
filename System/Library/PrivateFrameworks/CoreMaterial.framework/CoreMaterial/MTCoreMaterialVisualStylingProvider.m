@interface MTCoreMaterialVisualStylingProvider
+ (BOOL)canGenerateVisualStyleSetFromRecipe:(id)a3;
+ (id)coreMaterialVisualStylingProviderForRecipe:(id)a3 andCategory:(id)a4;
+ (id)coreMaterialVisualStylingProviderForStyleSetNamed:(id)a3 inBundle:(id)a4;
- (BOOL)updateVisualStyleSetFromRecipe:(id)a3 andCategory:(id)a4;
- (BOOL)updateVisualStyleSetGeneratedFromRecipe:(id)a3;
- (id)description;
- (void)_notifyObserversWithBlock:(id)a3;
- (void)_setVisualStyleSet:(id)a3;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation MTCoreMaterialVisualStylingProvider

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    v8 = v4;
    if (!observers)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSPointerArray *)observers addPointer:v8];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)removeObserver:(id)a3
{
  v6 = a3;
  if (v6)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSPointerArray *)observers compact];
      if ([(NSPointerArray *)self->_observers count])
      {
        v5 = 0;
        while ([(NSPointerArray *)self->_observers pointerAtIndex:v5]!= v6)
        {
          if (++v5 >= [(NSPointerArray *)self->_observers count])
          {
            goto LABEL_9;
          }
        }

        [(NSPointerArray *)self->_observers removePointerAtIndex:v5];
      }
    }
  }

LABEL_9:
}

- (void)_setVisualStyleSet:(id)a3
{
  v5 = a3;
  p_visualStyleSet = &self->_visualStyleSet;
  visualStyleSet = self->_visualStyleSet;
  if (visualStyleSet != v5)
  {
    v8 = v5;
    objc_storeStrong(p_visualStyleSet, a3);
    if (v8)
    {
      if (visualStyleSet)
      {
        p_visualStyleSet = [(MTCoreMaterialVisualStylingProvider *)self _notifyObserversWithBlock:&__block_literal_global_8];
      }
    }
  }

  MEMORY[0x1EEE66BB8](p_visualStyleSet);
}

void __58__MTCoreMaterialVisualStylingProvider__setVisualStyleSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 providedStylesDidChangeForProvider:v5];
  }
}

- (void)_notifyObserversWithBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSPointerArray *)observers compact];
      if ([(NSPointerArray *)self->_observers count])
      {
        v6 = 0;
        do
        {
          objc_initWeak(&location, self);
          v7 = [(NSPointerArray *)self->_observers pointerAtIndex:v6];
          v8 = objc_loadWeakRetained(&location);
          v4[2](v4, v8, v7);

          objc_destroyWeak(&location);
          ++v6;
        }

        while (v6 < [(NSPointerArray *)self->_observers count]);
      }
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MTCoreMaterialVisualStylingProvider *)self visualStyleSetName];
  v6 = [v3 stringWithFormat:@"<%@: %p: visualStyleSetName: %@>", v4, self, v5];

  return v6;
}

+ (id)coreMaterialVisualStylingProviderForRecipe:(id)a3 andCategory:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v5 = MTSharedVisualStyleSetForRecipeAndCategory(a3, a4);
    if (v5)
    {
      v4 = objc_alloc_init(MTCoreMaterialVisualStylingProvider);
      [(MTCoreMaterialVisualStylingProvider *)v4 _setVisualStyleSet:v5];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)coreMaterialVisualStylingProviderForStyleSetNamed:(id)a3 inBundle:(id)a4
{
  if (a3)
  {
    v4 = MTSharedVisualStyleSetForStyleNameFromBundle(a3, a4);
    if (v4)
    {
      v5 = objc_alloc_init(MTCoreMaterialVisualStylingProvider);
      [(MTCoreMaterialVisualStylingProvider *)v5 _setVisualStyleSet:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)canGenerateVisualStyleSetFromRecipe:(id)a3
{
  v3 = MTMaterialSettingsForRecipe(a3);
  VisualStylingDescriptionFromRecipeSettings = MTCanGenerateVisualStylingDescriptionFromRecipeSettings(v3);

  return VisualStylingDescriptionFromRecipeSettings;
}

- (BOOL)updateVisualStyleSetFromRecipe:(id)a3 andCategory:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = MTSharedVisualStyleSetForRecipeAndCategory(a3, a4);
    v4 = v6 != 0;
    if (v6)
    {
      [(MTCoreMaterialVisualStylingProvider *)self _setVisualStyleSet:v6];
    }
  }

  return v4;
}

- (BOOL)updateVisualStyleSetGeneratedFromRecipe:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MTRecipeMaterialSettings styleSetNameForStyleSetFromRecipeWithName:v4];
    v6 = [(MTCoreMaterialVisualStylingProvider *)self _visualStyleSet];
    v7 = [v6 visualStyleSetName];
    v8 = [v7 isEqualToString:v5];

    if ((v8 & 1) == 0)
    {
      v9 = MTSharedVisualStyleSetGeneratedFromRecipe(v4);
      [(MTCoreMaterialVisualStylingProvider *)self _setVisualStyleSet:v9];
    }

    v10 = v8 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end