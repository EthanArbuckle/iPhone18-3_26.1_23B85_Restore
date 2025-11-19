@interface CNCollationHeaderSection
- (CNCollationHeaderSection)initWithKey:(id)a3 localizedName:(id)a4 ICUSortKey:(id)a5;
@end

@implementation CNCollationHeaderSection

- (CNCollationHeaderSection)initWithKey:(id)a3 localizedName:(id)a4 ICUSortKey:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = CNCollationHeaderSection;
  v9 = [(CNCollationSection *)&v14 initWithKey:a3 localizedName:a4];
  if (v9)
  {
    v10 = [v8 copy];
    ICUSortKey = v9->_ICUSortKey;
    v9->_ICUSortKey = v10;

    v12 = v9;
  }

  return v9;
}

@end