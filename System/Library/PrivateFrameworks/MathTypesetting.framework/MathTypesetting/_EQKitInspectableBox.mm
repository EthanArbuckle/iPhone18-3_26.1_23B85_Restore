@interface _EQKitInspectableBox
- (BOOL)isEqual:(id)a3;
- (EQKitInspectable)inspectableChildren;
- (NSString)inspectableName;
- (NSString)inspectableNameForIcon;
- (_EQKitInspectableBox)initWithBox:(id)a3;
- (_NSRange)inspectableNameRange;
@end

@implementation _EQKitInspectableBox

- (_EQKitInspectableBox)initWithBox:(id)a3
{
  v5.receiver = self;
  v5.super_class = _EQKitInspectableBox;
  result = [(_EQKitInspectableBox *)&v5 init];
  if (result)
  {
    result->_box = a3;
  }

  return result;
}

- (NSString)inspectableNameForIcon
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)inspectableName
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(EQKitBox *)self->_box attribution];

    return [v3 source];
  }

  else
  {
    v5 = objc_opt_class();

    return NSStringFromClass(v5);
  }
}

- (_NSRange)inspectableNameRange
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(EQKitBox *)self->_box attribution];

    v4 = [v3 range];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
    v5 = 0;
  }

  result.length = v5;
  result.location = v4;
  return result;
}

- (EQKitInspectable)inspectableChildren
{
  v15 = *MEMORY[0x277D85DE8];
  result = self->_cachedChildren;
  if (!result)
  {
    if ([(EQKitBox *)self->_box canContainBoxes])
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = [(EQKitBox *)self->_box containedBoxes];
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [v4 addObject:{-[_EQKitInspectableBox initWithBox:]([_EQKitInspectableBox alloc], "initWithBox:", *(*(&v10 + 1) + 8 * v9++))}];
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }

      result = [v4 copy];
      self->_cachedChildren = result;
    }

    else
    {
      return self->_cachedChildren;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(_EQKitInspectableBox *)self box];
  v6 = [a3 box];

  return [(EQKitBox *)v5 isEqual:v6];
}

@end