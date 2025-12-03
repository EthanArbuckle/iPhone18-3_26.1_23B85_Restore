@interface HREIdentifierBuilder
- (HREIdentifierBuilder)initWithBaseIdentifier:(id)identifier;
- (NSString)composedString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)makeComposedString;
- (void)setBaseIdentifier:(id)identifier;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation HREIdentifierBuilder

- (HREIdentifierBuilder)initWithBaseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = HREIdentifierBuilder;
  v5 = [(HREIdentifierBuilder *)&v11 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    baseIdentifier = v5->_baseIdentifier;
    v5->_baseIdentifier = v6;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    keyValues = v5->_keyValues;
    v5->_keyValues = dictionary;
  }

  return v5;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  keyValues = [(HREIdentifierBuilder *)self keyValues];
  v8 = [keyValues objectForKeyedSubscript:keyCopy];
  v9 = [v8 isEqualToString:objectCopy];

  if ((v9 & 1) == 0)
  {
    keyValues2 = [(HREIdentifierBuilder *)self keyValues];
    [keyValues2 setObject:objectCopy forKeyedSubscript:keyCopy];

    composedString = self->_composedString;
    self->_composedString = 0;
  }
}

- (void)setBaseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->_baseIdentifier isEqualToString:?])
  {
    objc_storeStrong(&self->_baseIdentifier, identifier);
    composedString = self->_composedString;
    self->_composedString = 0;
  }
}

- (NSString)composedString
{
  composedString = self->_composedString;
  if (!composedString)
  {
    makeComposedString = [(HREIdentifierBuilder *)self makeComposedString];
    v5 = self->_composedString;
    self->_composedString = makeComposedString;

    composedString = self->_composedString;
  }

  return composedString;
}

- (id)makeComposedString
{
  keyValues = [(HREIdentifierBuilder *)self keyValues];
  allKeys = [keyValues allKeys];
  v5 = [allKeys sortedArrayUsingComparator:&__block_literal_global_3];

  if ([v5 count])
  {
    string = [MEMORY[0x277CCAB68] string];
    if ([v5 count])
    {
      v7 = 0;
      do
      {
        if (_MergedGlobals_20 != -1)
        {
          dispatch_once(&_MergedGlobals_20, &__block_literal_global_7_1);
        }

        v8 = qword_27F5F9780;
        if (!v7)
        {
          if (qword_27F5F9788 != -1)
          {
            dispatch_once(&qword_27F5F9788, &__block_literal_global_12_0);
          }

          v9 = qword_27F5F9790;

          v8 = v9;
        }

        v10 = [v5 objectAtIndexedSubscript:v7];
        keyValues2 = [(HREIdentifierBuilder *)self keyValues];
        v12 = [keyValues2 objectForKeyedSubscript:v10];
        [string appendFormat:@"%@%@:%@", v8, v10, v12];

        ++v7;
      }

      while (v7 < [v5 count]);
    }

    v13 = MEMORY[0x277CCACA8];
    baseIdentifier = [(HREIdentifierBuilder *)self baseIdentifier];
    baseIdentifier2 = [v13 stringWithFormat:@"%@=%@", baseIdentifier, string];
  }

  else
  {
    baseIdentifier2 = [(HREIdentifierBuilder *)self baseIdentifier];
  }

  return baseIdentifier2;
}

void __42__HREIdentifierBuilder_makeComposedString__block_invoke_3()
{
  v0 = qword_27F5F9780;
  qword_27F5F9780 = @"-";
}

void __42__HREIdentifierBuilder_makeComposedString__block_invoke_5()
{
  v0 = qword_27F5F9790;
  qword_27F5F9790 = &stru_286657A08;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  baseIdentifier = [(HREIdentifierBuilder *)self baseIdentifier];
  v6 = [v4 initWithBaseIdentifier:baseIdentifier];

  keyValues = [(HREIdentifierBuilder *)self keyValues];
  v8 = [keyValues mutableCopy];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

@end