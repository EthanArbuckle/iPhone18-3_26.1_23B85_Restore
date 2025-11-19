@interface OrderedWBTabWrapper
- (BOOL)isEqual:(id)a3;
- (NSArray)ancestorTabIdentifiers;
- (NSString)windowIdentifier;
- (OrderedWBTabWrapper)initWithWBTab:(id)a3;
@end

@implementation OrderedWBTabWrapper

- (OrderedWBTabWrapper)initWithWBTab:(id)a3
{
  v5 = a3;
  if (v5 && (v9.receiver = self, v9.super_class = OrderedWBTabWrapper, v6 = [(OrderedWBTabWrapper *)&v9 init], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_tab, a3);
    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)ancestorTabIdentifiers
{
  v2 = [(WBTab *)self->_tab localAttributes];
  v3 = [v2 ancestorTabUUIDs];

  return v3;
}

- (NSString)windowIdentifier
{
  v2 = [(WBTab *)self->_tab localAttributes];
  v3 = [v2 windowUUID];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(OrderedWBTabWrapper *)v4 tab];
      v6 = WBSIsEqual();
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end