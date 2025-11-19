@interface SFUnifiedTabBarSection
- (BOOL)isEqual:(id)a3;
- (SFUnifiedTabBarSection)initWithIdentifier:(id)a3 items:(id)a4 isPinned:(BOOL)a5;
@end

@implementation SFUnifiedTabBarSection

- (SFUnifiedTabBarSection)initWithIdentifier:(id)a3 items:(id)a4 isPinned:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = SFUnifiedTabBarSection;
  v10 = [(SFUnifiedTabBarSection *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v9 copy];
    items = v10->_items;
    v10->_items = v13;

    v10->_pinned = a5;
    v15 = v10;
  }

  return v10;
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
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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