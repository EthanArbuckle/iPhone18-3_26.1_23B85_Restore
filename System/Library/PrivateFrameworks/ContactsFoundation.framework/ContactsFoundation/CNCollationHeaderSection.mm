@interface CNCollationHeaderSection
- (CNCollationHeaderSection)initWithKey:(id)key localizedName:(id)name ICUSortKey:(id)sortKey;
@end

@implementation CNCollationHeaderSection

- (CNCollationHeaderSection)initWithKey:(id)key localizedName:(id)name ICUSortKey:(id)sortKey
{
  sortKeyCopy = sortKey;
  v14.receiver = self;
  v14.super_class = CNCollationHeaderSection;
  v9 = [(CNCollationSection *)&v14 initWithKey:key localizedName:name];
  if (v9)
  {
    v10 = [sortKeyCopy copy];
    ICUSortKey = v9->_ICUSortKey;
    v9->_ICUSortKey = v10;

    v12 = v9;
  }

  return v9;
}

@end