@interface CalculateUnitCollection
+ (CalculateUnitCollection)collectionWithLocales:(id)locales;
- (CalculateUnitCollection)init;
- (CalculateUnitCollection)initWithLocales:(id)locales;
- (id)findCategoryWithName:(id)name;
- (id)findUnitWithName:(id)name;
@end

@implementation CalculateUnitCollection

- (id)findCategoryWithName:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  categories = [(CalculateUnitCollection *)self categories];
  v6 = [categories countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(categories);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [categories countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)findUnitWithName:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  categories = [(CalculateUnitCollection *)self categories];
  v6 = [categories countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(categories);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) findUnitWithName:nameCopy];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [categories countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (CalculateUnitCollection)initWithLocales:(id)locales
{
  v25 = *MEMORY[0x1E69E9840];
  localesCopy = locales;
  v23.receiver = self;
  v23.super_class = CalculateUnitCollection;
  v5 = [(CalculateUnitCollection *)&v23 init];
  if (v5)
  {
    v6 = +[UnitsInfo converterUnits];
    v18 = localesCopy;
    v7 = [localesCopy copy];
    [(CalculateUnitCollection *)v5 setLocales:v7];

    v8 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    allKeys = [&unk_1F419A730 allKeys];
    v10 = [allKeys countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(allKeys);
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
        v11 = [allKeys countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }

    [(CalculateUnitCollection *)v5 setCategories:v8];
    localesCopy = v18;
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

+ (CalculateUnitCollection)collectionWithLocales:(id)locales
{
  localesCopy = locales;
  v4 = [[CalculateUnitCollection alloc] initWithLocales:localesCopy];

  return v4;
}

@end