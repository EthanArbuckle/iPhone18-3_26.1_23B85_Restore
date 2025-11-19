@interface CCUILayoutOptions
- (BOOL)isEqual:(id)a3;
- (id)_initWithLayoutOptions:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CCUILayoutOptions

- (id)_initWithLayoutOptions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CCUILayoutOptions;
  v5 = [(CCUILayoutOptions *)&v9 init];
  if (v5)
  {
    [v4 itemEdgeSize];
    v5->_itemEdgeSize = v6;
    [v4 itemSpacing];
    v5->_itemSpacing = v7;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [(CCUILayoutOptions *)self itemEdgeSize];
  v4 = [v3 appendFloat:@"Item Edge Size" withName:?];
  [(CCUILayoutOptions *)self itemSpacing];
  v5 = [v3 appendFloat:@"Item Spacing" withName:?];
  v6 = [v3 build];

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  [(CCUILayoutOptions *)self itemEdgeSize];
  v4 = [v3 appendCGFloat:?];
  [(CCUILayoutOptions *)self itemSpacing];
  v5 = [v3 appendCGFloat:?];
  v6 = [v3 hash];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      [(CCUILayoutOptions *)self itemEdgeSize];
      [(CCUILayoutOptions *)v5 itemEdgeSize];
      if (BSCompareFloats())
      {
        v6 = 0;
      }

      else
      {
        [(CCUILayoutOptions *)self itemSpacing];
        [(CCUILayoutOptions *)v5 itemSpacing];
        v6 = BSCompareFloats() == 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CCUIMutableLayoutOptions alloc];

  return [(CCUILayoutOptions *)v4 _initWithLayoutOptions:self];
}

@end