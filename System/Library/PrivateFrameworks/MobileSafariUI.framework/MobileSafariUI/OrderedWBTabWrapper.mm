@interface OrderedWBTabWrapper
- (BOOL)isEqual:(id)equal;
- (NSArray)ancestorTabIdentifiers;
- (NSString)windowIdentifier;
- (OrderedWBTabWrapper)initWithWBTab:(id)tab;
@end

@implementation OrderedWBTabWrapper

- (OrderedWBTabWrapper)initWithWBTab:(id)tab
{
  tabCopy = tab;
  if (tabCopy && (v9.receiver = self, v9.super_class = OrderedWBTabWrapper, v6 = [(OrderedWBTabWrapper *)&v9 init], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_tab, tab);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSArray)ancestorTabIdentifiers
{
  localAttributes = [(WBTab *)self->_tab localAttributes];
  ancestorTabUUIDs = [localAttributes ancestorTabUUIDs];

  return ancestorTabUUIDs;
}

- (NSString)windowIdentifier
{
  localAttributes = [(WBTab *)self->_tab localAttributes];
  windowUUID = [localAttributes windowUUID];

  return windowUUID;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(OrderedWBTabWrapper *)equalCopy tab];
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