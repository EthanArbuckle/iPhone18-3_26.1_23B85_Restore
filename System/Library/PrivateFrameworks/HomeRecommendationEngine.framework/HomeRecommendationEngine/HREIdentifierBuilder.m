@interface HREIdentifierBuilder
- (HREIdentifierBuilder)initWithBaseIdentifier:(id)a3;
- (NSString)composedString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)makeComposedString;
- (void)setBaseIdentifier:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation HREIdentifierBuilder

- (HREIdentifierBuilder)initWithBaseIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HREIdentifierBuilder;
  v5 = [(HREIdentifierBuilder *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    baseIdentifier = v5->_baseIdentifier;
    v5->_baseIdentifier = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    keyValues = v5->_keyValues;
    v5->_keyValues = v8;
  }

  return v5;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(HREIdentifierBuilder *)self keyValues];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v8 isEqualToString:v12];

  if ((v9 & 1) == 0)
  {
    v10 = [(HREIdentifierBuilder *)self keyValues];
    [v10 setObject:v12 forKeyedSubscript:v6];

    composedString = self->_composedString;
    self->_composedString = 0;
  }
}

- (void)setBaseIdentifier:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_baseIdentifier isEqualToString:?])
  {
    objc_storeStrong(&self->_baseIdentifier, a3);
    composedString = self->_composedString;
    self->_composedString = 0;
  }
}

- (NSString)composedString
{
  composedString = self->_composedString;
  if (!composedString)
  {
    v4 = [(HREIdentifierBuilder *)self makeComposedString];
    v5 = self->_composedString;
    self->_composedString = v4;

    composedString = self->_composedString;
  }

  return composedString;
}

- (id)makeComposedString
{
  v3 = [(HREIdentifierBuilder *)self keyValues];
  v4 = [v3 allKeys];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_3];

  if ([v5 count])
  {
    v6 = [MEMORY[0x277CCAB68] string];
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
        v11 = [(HREIdentifierBuilder *)self keyValues];
        v12 = [v11 objectForKeyedSubscript:v10];
        [v6 appendFormat:@"%@%@:%@", v8, v10, v12];

        ++v7;
      }

      while (v7 < [v5 count]);
    }

    v13 = MEMORY[0x277CCACA8];
    v14 = [(HREIdentifierBuilder *)self baseIdentifier];
    v15 = [v13 stringWithFormat:@"%@=%@", v14, v6];
  }

  else
  {
    v15 = [(HREIdentifierBuilder *)self baseIdentifier];
  }

  return v15;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HREIdentifierBuilder *)self baseIdentifier];
  v6 = [v4 initWithBaseIdentifier:v5];

  v7 = [(HREIdentifierBuilder *)self keyValues];
  v8 = [v7 mutableCopy];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

@end