@interface _UIFocusItemRegion
- (BOOL)_canBeOccludedByRegionsAbove;
- (BOOL)isEqual:(id)a3;
- (UIFocusItem)item;
- (_UIFocusItemRegion)initWithFrame:(CGRect)a3 coordinateSpace:(id)a4 item:(id)a5 focusSystem:(id)a6;
- (id)_debugAssociatedObject;
- (id)_defaultFocusItem;
- (id)_descriptionBuilder;
- (id)_focusRegionWithAdjustedFrame:(CGRect)a3 coordinateSpace:(id)a4;
- (int64_t)_preferredDistanceComparisonType;
- (unint64_t)_focusableBoundaries;
@end

@implementation _UIFocusItemRegion

- (_UIFocusItemRegion)initWithFrame:(CGRect)a3 coordinateSpace:(id)a4 item:(id)a5 focusSystem:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a5;
  v14 = a6;
  v36.receiver = self;
  v36.super_class = _UIFocusItemRegion;
  v15 = [(_UIFocusRegion *)&v36 initWithFrame:a4 coordinateSpace:x, y, width, height];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_23;
  }

  v17 = v15;
  v18 = v13;
  v19 = v14;
  objc_storeWeak(&v17->_item, v18);
  v37 = 0;
  if (v18)
  {
    IsEligibleForFocusOcclusion = _UIFocusEnvironmentIsEligibleForFocusOcclusion(v18, &v37);
    v21 = v37;
  }

  else
  {
    v21 = 0;
    IsEligibleForFocusOcclusion = 0;
  }

  v22 = 0x27F062000uLL;
  *&v17->_flags = *&v17->_flags & 0xFE | IsEligibleForFocusOcclusion;
  if (!v19 && (v21 & 1) != 0)
  {
    v35 = v13;
    v19 = [UIFocusSystem focusSystemForEnvironment:v18];
    v23 = [MEMORY[0x277CCA890] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _CommonInit(_UIFocusItemRegion *__strong, id<UIFocusItem>  _Nullable __strong, UIFocusSystem *__strong)"}];
    if (v19)
    {
      v25 = MEMORY[0x277CCACA8];
      v26 = v19;
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = [v25 stringWithFormat:@"<%@: %p>", v28, v26];

      v22 = 0x27F062000;
    }

    else
    {
      v29 = @"(nil)";
    }

    [v23 handleFailureInFunction:v24 file:@"_UIFocusItemRegion.m" lineNumber:38 description:{@"_UIFocusItemRegion got called with a nil focus system. Inferring focus system found %@", v29}];

    v13 = v35;
    if ((v37 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    if (_UIFocusItemCanBecomeFocused(v18, v19))
    {
      v30 = 2;
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_16;
  }

  if (v21)
  {
    goto LABEL_10;
  }

LABEL_15:
  v30 = 0;
LABEL_16:
  *(&v17->super.super.isa + *(v22 + 1624)) = *(&v17->super.super.isa + *(v22 + 1624)) & 0xFD | v30;
  v31 = *(v22 + 1624);
  v32 = *(&v17->super.super.isa + v31);
  if ((v32 & 2) != 0)
  {
    v33 = 0;
  }

  else
  {
    if (_UIFocusItemIsTransparentFocusItem(v18))
    {
      v33 = 4;
    }

    else
    {
      v33 = 0;
    }

    v31 = *(v22 + 1624);
    v32 = *(&v17->super.super.isa + v31);
  }

  *(&v17->super.super.isa + v31) = v32 & 0xFB | v33;

LABEL_23:
  return v16;
}

- (id)_focusRegionWithAdjustedFrame:(CGRect)a3 coordinateSpace:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UIFocusItemRegion;
  v5 = [(_UIFocusRegion *)&v8 _focusRegionWithAdjustedFrame:a4 coordinateSpace:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  WeakRetained = objc_loadWeakRetained(&self->_item);
  objc_storeWeak((v5 + 56), WeakRetained);

  *(v5 + 48) = self->_flags;

  return v5;
}

- (id)_descriptionBuilder
{
  v13.receiver = self;
  v13.super_class = _UIFocusItemRegion;
  v3 = [(_UIFocusRegion *)&v13 _descriptionBuilder];
  v4 = [(_UIFocusItemRegion *)self item];
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"<%@: %p>", v7, v4];
  }

  else
  {
    v8 = @"(nil)";
  }

  v9 = [v3 appendObject:v8 withName:@"item"];

  v10 = [v3 appendBool:(*&self->_flags >> 1) & 1 withName:@"focusable"];
  v11 = [v3 appendBool:(*&self->_flags >> 2) & 1 withName:@"transparent"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _UIFocusItemRegion;
  if ([(_UIFocusRegion *)&v15 isEqual:v4])
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_item);
    v7 = objc_loadWeakRetained(v5 + 7);
    v8 = WeakRetained;
    v9 = v7;
    v10 = v9;
    if (v8 != v9)
    {
      if (v8)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
      }

      else
      {
        v13 = [v8 isEqual:v9];

        if (v13)
        {
          goto LABEL_12;
        }
      }

      v12 = 0;
LABEL_16:

      goto LABEL_17;
    }

LABEL_12:
    v12 = ((*(v5 + 48) ^ *&self->_flags) & 3) == 0 && ((*(v5 + 48) ^ *&self->_flags) & 4) == 0;
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (BOOL)_canBeOccludedByRegionsAbove
{
  if ((*&self->_flags & 2) == 0)
  {
    return 0;
  }

  v3 = [(_UIFocusItemRegion *)self item];
  v2 = v3 != 0;

  return v2;
}

- (id)_defaultFocusItem
{
  if ((*&self->_flags & 2) != 0)
  {
    v4 = [(_UIFocusItemRegion *)self item];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_focusableBoundaries
{
  if ((*&self->_flags & 2) == 0)
  {
    return 0;
  }

  v3 = [(_UIFocusItemRegion *)self item];

  if (!v3)
  {
    return 0;
  }

  if (dyld_program_sdk_at_least())
  {
    return 32;
  }

  return 16;
}

- (int64_t)_preferredDistanceComparisonType
{
  if (!dyld_program_sdk_at_least())
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = _UIFocusItemRegion;
  return [(_UIFocusRegion *)&v4 _preferredDistanceComparisonType];
}

- (id)_debugAssociatedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (UIFocusItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end