@interface CNCollationSection
- (CNCollationSection)initWithKey:(id)key localizedName:(id)name;
@end

@implementation CNCollationSection

- (CNCollationSection)initWithKey:(id)key localizedName:(id)name
{
  keyCopy = key;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = CNCollationSection;
  v8 = [(CNCollationSection *)&v16 init];
  if (v8)
  {
    v9 = [keyCopy copy];
    key = v8->_key;
    v8->_key = v9;

    if (nameCopy)
    {
      v11 = nameCopy;
    }

    else
    {
      v11 = keyCopy;
    }

    v12 = [v11 copy];
    localizedName = v8->_localizedName;
    v8->_localizedName = v12;

    v14 = v8;
  }

  return v8;
}

@end