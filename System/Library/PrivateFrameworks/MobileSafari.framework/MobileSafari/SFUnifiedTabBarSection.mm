@interface SFUnifiedTabBarSection
- (BOOL)isEqual:(id)equal;
- (SFUnifiedTabBarSection)initWithIdentifier:(id)identifier items:(id)items isPinned:(BOOL)pinned;
@end

@implementation SFUnifiedTabBarSection

- (SFUnifiedTabBarSection)initWithIdentifier:(id)identifier items:(id)items isPinned:(BOOL)pinned
{
  identifierCopy = identifier;
  itemsCopy = items;
  v17.receiver = self;
  v17.super_class = SFUnifiedTabBarSection;
  v10 = [(SFUnifiedTabBarSection *)&v17 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [itemsCopy copy];
    items = v10->_items;
    v10->_items = v13;

    v10->_pinned = pinned;
    v15 = v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(NSString *)self->_identifier isEqualToString:v5->_identifier]&& [(NSArray *)self->_items isEqualToArray:v5->_items]&& self->_pinned == v5->_pinned;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end