@interface _UIFocusItemRegion
- (BOOL)_canBeOccludedByRegionsAbove;
- (BOOL)isEqual:(id)equal;
- (UIFocusItem)item;
- (_UIFocusItemRegion)initWithFrame:(CGRect)frame coordinateSpace:(id)space item:(id)item focusSystem:(id)system;
- (id)_debugAssociatedObject;
- (id)_defaultFocusItem;
- (id)_descriptionBuilder;
- (id)_focusRegionWithAdjustedFrame:(CGRect)frame coordinateSpace:(id)space;
- (int64_t)_preferredDistanceComparisonType;
- (unint64_t)_focusableBoundaries;
@end

@implementation _UIFocusItemRegion

- (_UIFocusItemRegion)initWithFrame:(CGRect)frame coordinateSpace:(id)space item:(id)item focusSystem:(id)system
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  itemCopy = item;
  systemCopy = system;
  v36.receiver = self;
  v36.super_class = _UIFocusItemRegion;
  height = [(_UIFocusRegion *)&v36 initWithFrame:space coordinateSpace:x, y, width, height];
  v16 = height;
  if (!height)
  {
    goto LABEL_23;
  }

  v17 = height;
  v18 = itemCopy;
  v19 = systemCopy;
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
    v35 = itemCopy;
    v19 = [UIFocusSystem focusSystemForEnvironment:v18];
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
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

    [currentHandler handleFailureInFunction:v24 file:@"_UIFocusItemRegion.m" lineNumber:38 description:{@"_UIFocusItemRegion got called with a nil focus system. Inferring focus system found %@", v29}];

    itemCopy = v35;
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

- (id)_focusRegionWithAdjustedFrame:(CGRect)frame coordinateSpace:(id)space
{
  v8.receiver = self;
  v8.super_class = _UIFocusItemRegion;
  v5 = [(_UIFocusRegion *)&v8 _focusRegionWithAdjustedFrame:space coordinateSpace:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  WeakRetained = objc_loadWeakRetained(&self->_item);
  objc_storeWeak((v5 + 56), WeakRetained);

  *(v5 + 48) = self->_flags;

  return v5;
}

- (id)_descriptionBuilder
{
  v13.receiver = self;
  v13.super_class = _UIFocusItemRegion;
  _descriptionBuilder = [(_UIFocusRegion *)&v13 _descriptionBuilder];
  item = [(_UIFocusItemRegion *)self item];
  if (item)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"<%@: %p>", v7, item];
  }

  else
  {
    v8 = @"(nil)";
  }

  v9 = [_descriptionBuilder appendObject:v8 withName:@"item"];

  v10 = [_descriptionBuilder appendBool:(*&self->_flags >> 1) & 1 withName:@"focusable"];
  v11 = [_descriptionBuilder appendBool:(*&self->_flags >> 2) & 1 withName:@"transparent"];

  return _descriptionBuilder;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v15.receiver = self;
  v15.super_class = _UIFocusItemRegion;
  if ([(_UIFocusRegion *)&v15 isEqual:equalCopy])
  {
    v5 = equalCopy;
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

  item = [(_UIFocusItemRegion *)self item];
  v2 = item != 0;

  return v2;
}

- (id)_defaultFocusItem
{
  if ((*&self->_flags & 2) != 0)
  {
    item = [(_UIFocusItemRegion *)self item];
  }

  else
  {
    item = 0;
  }

  return item;
}

- (unint64_t)_focusableBoundaries
{
  if ((*&self->_flags & 2) == 0)
  {
    return 0;
  }

  item = [(_UIFocusItemRegion *)self item];

  if (!item)
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