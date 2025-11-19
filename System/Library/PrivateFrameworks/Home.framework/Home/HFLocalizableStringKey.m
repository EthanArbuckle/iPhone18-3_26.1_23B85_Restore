@interface HFLocalizableStringKey
+ (id)stringKeyWithKey:(id)a3 argumentKeys:(id)a4;
+ (id)stringKeyWithKey:(id)a3 arguments:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HFLocalizableStringKey)initWithKey:(id)a3 argumentKeys:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)localizedStringWithArgumentBlock:(id)a3;
- (void)setArgumentKeys:(id)a3;
@end

@implementation HFLocalizableStringKey

- (HFLocalizableStringKey)initWithKey:(id)a3 argumentKeys:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = HFLocalizableStringKey;
  v9 = [(HFLocalizableStringKey *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    v11 = [v8 copy];
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

    v14 = [MEMORY[0x277CBEB38] dictionary];
    argumentMap = v10->_argumentMap;
    v10->_argumentMap = v14;

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

+ (id)stringKeyWithKey:(id)a3 arguments:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  if ([v6 count])
  {
    v9 = 0;
    do
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v9];
      [v7 addObject:v10];
      v11 = [v6 objectAtIndexedSubscript:v9];
      [v8 setObject:v11 forKey:v10];

      ++v9;
    }

    while (v9 < [v6 count]);
  }

  v12 = [objc_alloc(objc_opt_class()) initWithKey:v5 argumentKeys:v7];
  v13 = v12[3];
  v12[3] = v8;

  return v12;
}

+ (id)stringKeyWithKey:(id)a3 argumentKeys:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithKey:v7 argumentKeys:v6];

  return v8;
}

- (void)setArgumentKeys:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v7 = v4;
  v5 = [v4 copy];
  argumentKeys = self->_argumentKeys;
  self->_argumentKeys = v5;
}

- (id)localizedStringWithArgumentBlock:(id)a3
{
  v4 = a3;
  v5 = [(HFLocalizableStringKey *)self stringLocalizationBlock];
  v6 = [(HFLocalizableStringKey *)self key];
  v7 = (v5)[2](v5, v6);

  if (v7)
  {
    v8 = [(HFLocalizableStringKey *)self argumentKeys];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __59__HFLocalizableStringKey_localizedStringWithArgumentBlock___block_invoke;
    v15 = &unk_277DFDE88;
    v16 = self;
    v17 = v4;
    v9 = [v8 na_map:&v12];

    v10 = [MEMORY[0x277CCACA8] hf_stringWithFormat:v7 arguments:v9, v12, v13, v14, v15, v16];
  }

  else
  {
    v10 = 0;
  }

  return v10;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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

    v11 = [(HFLocalizableStringKey *)self argumentKeys];
    v12 = [v11 count];
    v13 = [v7 argumentKeys];
    v14 = [v13 count];

    if (v12 == v14)
    {
      v15 = [(HFLocalizableStringKey *)self argumentKeys];
      v16 = [v15 count];

      if (v16)
      {
        v17 = 0;
        do
        {
          v18 = [(HFLocalizableStringKey *)self argumentKeys];
          v19 = [v18 objectAtIndexedSubscript:v17];

          v20 = [v7 argumentKeys];
          v21 = [v20 objectAtIndexedSubscript:v17];
          v22 = [v21 isEqualToString:v19];

          if ((v22 & 1) == 0)
          {
            break;
          }

          ++v17;
          v23 = [(HFLocalizableStringKey *)self argumentKeys];
          v24 = [v23 count];
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

    v26 = [(HFLocalizableStringKey *)self argumentMap];
    v27 = [v7 argumentMap];
    v28 = [v26 isEqualToDictionary:v27];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v5 = [(HFLocalizableStringKey *)self key];
  v6 = [v5 copy];
  v7 = [(HFLocalizableStringKey *)self argumentKeys];
  v8 = [v7 copy];
  v9 = [v4 stringKeyWithKey:v6 argumentKeys:v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFLocalizableStringKey *)self key];
  v7 = [(HFLocalizableStringKey *)self argumentKeys];
  v8 = [(HFLocalizableStringKey *)self argumentMap];
  v9 = [v3 stringWithFormat:@"<%@:%p key='%@' argumentKeys='%@' argumentMap='%@'>", v5, self, v6, v7, v8];

  return v9;
}

@end