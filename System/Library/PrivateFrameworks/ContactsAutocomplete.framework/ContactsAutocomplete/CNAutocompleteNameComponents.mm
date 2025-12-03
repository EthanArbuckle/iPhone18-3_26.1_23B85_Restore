@interface CNAutocompleteNameComponents
+ (CNAutocompleteNameComponents)nameComponentsWithFirstName:(id)name lastName:(id)lastName nickname:(id)nickname nameSuffix:(id)suffix;
+ (id)contactKeys;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation CNAutocompleteNameComponents

+ (CNAutocompleteNameComponents)nameComponentsWithFirstName:(id)name lastName:(id)lastName nickname:(id)nickname nameSuffix:(id)suffix
{
  suffixCopy = suffix;
  nicknameCopy = nickname;
  lastNameCopy = lastName;
  nameCopy = name;
  v14 = objc_alloc_init(self);
  v15 = [nameCopy copy];

  v16 = v14[1];
  v14[1] = v15;

  v17 = [lastNameCopy copy];
  v18 = v14[2];
  v14[2] = v17;

  v19 = [nicknameCopy copy];
  v20 = v14[3];
  v14[3] = v19;

  v21 = [suffixCopy copy];
  v22 = v14[4];
  v14[4] = v21;

  return v14;
}

+ (id)contactKeys
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBCFF8];
  v7[0] = *MEMORY[0x277CBD000];
  v7[1] = v2;
  v3 = *MEMORY[0x277CBD070];
  v7[2] = *MEMORY[0x277CBD078];
  v7[3] = v3;
  v7[4] = *MEMORY[0x277CBCFC8];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstName = self->_firstName;
      if (!(firstName | *(equal + 1)) || (v6 = [(NSString *)firstName isEqual:?]) != 0)
      {
        lastName = self->_lastName;
        if (!(lastName | *(equal + 2)) || (v6 = [(NSString *)lastName isEqual:?]) != 0)
        {
          nickname = self->_nickname;
          if (!(nickname | *(equal + 3)) || (v6 = [(NSString *)nickname isEqual:?]) != 0)
          {
            nameSuffix = self->_nameSuffix;
            if (!(nameSuffix | *(equal + 4)) || (v6 = [(NSString *)nameSuffix isEqual:?]) != 0)
            {
              LOBYTE(v6) = 1;
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CFBE38] objectHash:self->_firstName];
  v4 = [MEMORY[0x277CFBE38] objectHash:self->_lastName] - v3 + 32 * v3;
  v5 = [MEMORY[0x277CFBE38] objectHash:self->_nickname] - v4 + 32 * v4;
  return [MEMORY[0x277CFBE38] objectHash:self->_nameSuffix] - v5 + 32 * v5 + 15699857;
}

@end