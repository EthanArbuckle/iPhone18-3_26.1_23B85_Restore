@interface HFLocalizableStringKey
+ (id)stringKeyWithKey:(id)key argumentKeys:(id)keys;
+ (id)stringKeyWithKey:(id)key arguments:(id)arguments;
- (BOOL)isEqual:(id)equal;
- (HFLocalizableStringKey)initWithKey:(id)key argumentKeys:(id)keys;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)localizedStringWithArgumentBlock:(id)block;
- (void)setArgumentKeys:(id)keys;
@end

@implementation HFLocalizableStringKey

- (HFLocalizableStringKey)initWithKey:(id)key argumentKeys:(id)keys
{
  keyCopy = key;
  keysCopy = keys;
  v18.receiver = self;
  v18.super_class = HFLocalizableStringKey;
  v9 = [(HFLocalizableStringKey *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    v11 = [keysCopy copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v10->_argumentKeys, v13);

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    argumentMap = v10->_argumentMap;
    v10->_argumentMap = dictionary;

    if (_MergedGlobals_6_2 != -1)
    {
      dispatch_once(&_MergedGlobals_6_2, &__block_literal_global_3_21);
    }

    v16 = qword_27C84C530;
    [(HFLocalizableStringKey *)v10 setStringLocalizationBlock:v16];
  }

  return v10;
}

void __51__HFLocalizableStringKey_initWithKey_argumentKeys___block_invoke_2()
{
  v0 = qword_27C84C530;
  qword_27C84C530 = &__block_literal_global_6_6;
}

+ (id)stringKeyWithKey:(id)key arguments:(id)arguments
{
  keyCopy = key;
  argumentsCopy = arguments;
  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([argumentsCopy count])
  {
    v9 = 0;
    do
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v9];
      [array addObject:v10];
      v11 = [argumentsCopy objectAtIndexedSubscript:v9];
      [dictionary setObject:v11 forKey:v10];

      ++v9;
    }

    while (v9 < [argumentsCopy count]);
  }

  v12 = [objc_alloc(objc_opt_class()) initWithKey:keyCopy argumentKeys:array];
  v13 = v12[3];
  v12[3] = dictionary;

  return v12;
}

+ (id)stringKeyWithKey:(id)key argumentKeys:(id)keys
{
  keysCopy = keys;
  keyCopy = key;
  v8 = [[self alloc] initWithKey:keyCopy argumentKeys:keysCopy];

  return v8;
}

- (void)setArgumentKeys:(id)keys
{
  keysCopy = keys;
  if (!keysCopy)
  {
    keysCopy = MEMORY[0x277CBEBF8];
  }

  v7 = keysCopy;
  v5 = [keysCopy copy];
  argumentKeys = self->_argumentKeys;
  self->_argumentKeys = v5;
}

- (id)localizedStringWithArgumentBlock:(id)block
{
  blockCopy = block;
  stringLocalizationBlock = [(HFLocalizableStringKey *)self stringLocalizationBlock];
  v6 = [(HFLocalizableStringKey *)self key];
  v7 = (stringLocalizationBlock)[2](stringLocalizationBlock, v6);

  if (v7)
  {
    argumentKeys = [(HFLocalizableStringKey *)self argumentKeys];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __59__HFLocalizableStringKey_localizedStringWithArgumentBlock___block_invoke;
    v15 = &unk_277DFDE88;
    selfCopy = self;
    v17 = blockCopy;
    v9 = [argumentKeys na_map:&v12];

    selfCopy = [MEMORY[0x277CCACA8] hf_stringWithFormat:v7 arguments:v9, v12, v13, v14, v15, selfCopy];
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

id __59__HFLocalizableStringKey_localizedStringWithArgumentBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) argumentMap];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = [*(a1 + 32) argumentMap];
    v7 = [v6 objectForKeyedSubscript:v3];
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v7 = (*(v8 + 16))(v8, v3);
    }

    else
    {
      NSLog(&cfstr_Hflocalizables.isa, v3);
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 key];
    v9 = [(HFLocalizableStringKey *)self key];
    v10 = [v8 isEqualToString:v9];

    argumentKeys = [(HFLocalizableStringKey *)self argumentKeys];
    v12 = [argumentKeys count];
    argumentKeys2 = [v7 argumentKeys];
    v14 = [argumentKeys2 count];

    if (v12 == v14)
    {
      argumentKeys3 = [(HFLocalizableStringKey *)self argumentKeys];
      v16 = [argumentKeys3 count];

      if (v16)
      {
        v17 = 0;
        do
        {
          argumentKeys4 = [(HFLocalizableStringKey *)self argumentKeys];
          v19 = [argumentKeys4 objectAtIndexedSubscript:v17];

          argumentKeys5 = [v7 argumentKeys];
          v21 = [argumentKeys5 objectAtIndexedSubscript:v17];
          v22 = [v21 isEqualToString:v19];

          if ((v22 & 1) == 0)
          {
            break;
          }

          ++v17;
          argumentKeys6 = [(HFLocalizableStringKey *)self argumentKeys];
          v24 = [argumentKeys6 count];
        }

        while (v17 < v24);
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
      v22 = 0;
    }

    argumentMap = [(HFLocalizableStringKey *)self argumentMap];
    argumentMap2 = [v7 argumentMap];
    v28 = [argumentMap isEqualToDictionary:argumentMap2];

    if (v10)
    {
      v25 = v22 & v28;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  v5 = [(HFLocalizableStringKey *)self key];
  v6 = [v5 copy];
  argumentKeys = [(HFLocalizableStringKey *)self argumentKeys];
  v8 = [argumentKeys copy];
  v9 = [v4 stringKeyWithKey:v6 argumentKeys:v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFLocalizableStringKey *)self key];
  argumentKeys = [(HFLocalizableStringKey *)self argumentKeys];
  argumentMap = [(HFLocalizableStringKey *)self argumentMap];
  v9 = [v3 stringWithFormat:@"<%@:%p key='%@' argumentKeys='%@' argumentMap='%@'>", v5, self, v6, argumentKeys, argumentMap];

  return v9;
}

@end