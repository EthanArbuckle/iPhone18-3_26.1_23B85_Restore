@interface CalculateUnitCollection
+ (CalculateUnitCollection)collectionWithLocales:(id)a3;
- (CalculateUnitCollection)init;
- (CalculateUnitCollection)initWithLocales:(id)a3;
- (id)findCategoryWithName:(id)a3;
- (id)findUnitWithName:(id)a3;
@end

@implementation CalculateUnitCollection

- (id)findCategoryWithName:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CalculateUnitCollection *)self categories];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)findUnitWithName:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CalculateUnitCollection *)self categories];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) findUnitWithName:v4];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (CalculateUnitCollection)initWithLocales:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CalculateUnitCollection;
  v5 = [(CalculateUnitCollection *)&v23 init];
  if (v5)
  {
    v6 = +[UnitsInfo converterUnits];
    v18 = v4;
    v7 = [v4 copy];
    [(CalculateUnitCollection *)v5 setLocales:v7];

    v8 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [&unk_1F419A730 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [v6 infoForUnitTypeName:*(*(&v19 + 1) + 8 * v13)];
          if (v14)
          {
            v15 = [CalculateUnitCategory categoryWithTypeInfo:v14 unitsInfo:v6 collection:v5];
            [v8 addObject:v15];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }

    [(CalculateUnitCollection *)v5 setCategories:v8];
    v4 = v18;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (CalculateUnitCollection)init
{
  v5.receiver = self;
  v5.super_class = CalculateUnitCollection;
  v2 = [(CalculateUnitCollection *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(CalculateUnitCollection *)v2 setCategories:v3];
  }

  return v2;
}

+ (CalculateUnitCollection)collectionWithLocales:(id)a3
{
  v3 = a3;
  v4 = [[CalculateUnitCollection alloc] initWithLocales:v3];

  return v4;
}

@end