@interface CNHandleStringsClassificationBuilder
- (CNHandleStringsClassificationBuilder)init;
- (id)build;
@end

@implementation CNHandleStringsClassificationBuilder

- (CNHandleStringsClassificationBuilder)init
{
  v11.receiver = self;
  v11.super_class = CNHandleStringsClassificationBuilder;
  v2 = [(CNHandleStringsClassificationBuilder *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    emailAddresses = v2->_emailAddresses;
    v2->_emailAddresses = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    phoneNumbers = v2->_phoneNumbers;
    v2->_phoneNumbers = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    unknown = v2->_unknown;
    v2->_unknown = v7;

    v9 = v2;
  }

  return v2;
}

- (id)build
{
  v2 = [[CNHandleStringClassification alloc] initWithBuilder:self];

  return v2;
}

@end