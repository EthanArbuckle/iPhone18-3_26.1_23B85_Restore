@interface CNCollationSection
- (CNCollationSection)initWithKey:(id)a3 localizedName:(id)a4;
@end

@implementation CNCollationSection

- (CNCollationSection)initWithKey:(id)a3 localizedName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CNCollationSection;
  v8 = [(CNCollationSection *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    key = v8->_key;
    v8->_key = v9;

    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    v12 = [v11 copy];
    localizedName = v8->_localizedName;
    v8->_localizedName = v12;

    v14 = v8;
  }

  return v8;
}

@end