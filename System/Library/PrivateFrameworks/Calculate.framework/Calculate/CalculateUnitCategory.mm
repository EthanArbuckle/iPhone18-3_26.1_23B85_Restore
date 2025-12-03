@interface CalculateUnitCategory
+ (id)categoryWithTypeInfo:(id)info unitsInfo:(id)unitsInfo collection:(id)collection;
- (BOOL)contains:(id)contains;
- (CalculateUnit)preferredFromUnit;
- (CalculateUnit)preferredToUnit;
- (CalculateUnitCategory)initWithTypeInfo:(id)info unitsInfo:(id)unitsInfo collection:(id)collection;
- (CalculateUnitCollection)collection;
- (NSString)displayName;
- (NSString)name;
- (id)findUnitWithName:(id)name;
- (id)findUnitsWithQuery:(id)query;
- (id)locale;
- (id)preferredUnits;
- (unint64_t)unitType;
- (void)_findPreferredSIUnit:(id *)unit metric:(id *)metric US:(id *)s UK:(id *)k;
@end

@implementation CalculateUnitCategory

- (CalculateUnitCollection)collection
{
  WeakRetained = objc_loadWeakRetained(&self->_collection);

  return WeakRetained;
}

- (CalculateUnitCategory)initWithTypeInfo:(id)info unitsInfo:(id)unitsInfo collection:(id)collection
{
  v29 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  unitsInfoCopy = unitsInfo;
  collectionCopy = collection;
  v27.receiver = self;
  v27.super_class = CalculateUnitCategory;
  v11 = [(CalculateUnitCategory *)&v27 init];
  v12 = v11;
  if (v11)
  {
    v22 = collectionCopy;
    [(CalculateUnitCategory *)v11 setCollection:collectionCopy];
    [(CalculateUnitCategory *)v12 setTypeInfo:infoCopy];
    v13 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    units = [infoCopy units];
    v15 = [units countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        v18 = 0;
        do
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(units);
          }

          v19 = +[CalculateUnit unitWithID:unitsInfo:exponent:](CalculateUnit, "unitWithID:unitsInfo:exponent:", [*(*(&v23 + 1) + 8 * v18) unitID], unitsInfoCopy, 1);
          [v19 setCategory:v12];
          [v13 addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [units countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v16);
    }

    [(CalculateUnitCategory *)v12 setUnits:v13];
    collectionCopy = v22;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)findUnitsWithQuery:(id)query
{
  v19 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  units = [(CalculateUnitCategory *)self units];
  v7 = [units countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(units);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 contains:queryCopy])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [units countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)findUnitWithName:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  units = [(CalculateUnitCategory *)self units];
  v6 = [units countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(units);
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

      v6 = [units countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)contains:(id)contains
{
  containsCopy = contains;
  if ([containsCopy length])
  {
    decomposedStringWithCanonicalMapping = [containsCopy decomposedStringWithCanonicalMapping];

    displayName = [(CalculateUnitCategory *)self displayName];
    v7 = [displayName rangeOfString:decomposedStringWithCanonicalMapping options:129] != 0x7FFFFFFFFFFFFFFFLL;

    containsCopy = decomposedStringWithCanonicalMapping;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (CalculateUnit)preferredToUnit
{
  preferredUnits = [(CalculateUnitCategory *)self preferredUnits];
  v3 = [preferredUnits objectAtIndexedSubscript:1];

  return v3;
}

- (CalculateUnit)preferredFromUnit
{
  preferredUnits = [(CalculateUnitCategory *)self preferredUnits];
  v3 = [preferredUnits objectAtIndexedSubscript:0];

  return v3;
}

- (id)preferredUnits
{
  v45 = *MEMORY[0x1E69E9840];
  locale = [(CalculateUnitCategory *)self locale];
  v4 = [locale objectForKey:*MEMORY[0x1E695D9B8]];
  v5 = objc_opt_new();
  if ([(CalculateUnitCategory *)self unitType]!= 16)
  {
    v38 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
    [(CalculateUnitCategory *)self _findPreferredSIUnit:&v39 metric:&v38 US:&v37 UK:&v36];
    currencyCode = v39;
    v23 = v38;
    v24 = v37;
    v10 = v36;
    if (currencyCode)
    {
      [v5 addObject:currencyCode];
    }

    if ([v4 isEqualToString:*MEMORY[0x1E695D9C8]])
    {
      if (v10)
      {
        [v5 addObject:v10];
      }

      if (v23)
      {
        [v5 addObject:v23];
      }

      v26 = v24;
      if (!v24)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E695D9C0]])
    {
      if (v23)
      {
        [v5 addObject:v23];
      }

      if (v24)
      {
        v27 = v5;
        v28 = v24;
LABEL_46:
        [v27 addObject:v28];
      }
    }

    else
    {
      if (v24)
      {
        [v5 addObject:v24];
      }

      if (v23)
      {
        v27 = v5;
        v28 = v23;
        goto LABEL_46;
      }
    }

    v26 = v10;
    if (!v10)
    {
      goto LABEL_50;
    }

LABEL_48:
    v25 = v5;
    goto LABEL_49;
  }

  currencyCode = [locale currencyCode];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  units = [(CalculateUnitCategory *)self units];
  v8 = [units countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v8)
  {

    [v4 isEqualToString:*MEMORY[0x1E695D9D0]];
    v10 = 0;
    v24 = 0;
    v23 = 0;
    goto LABEL_50;
  }

  v9 = v8;
  v31 = v4;
  v32 = v5;
  v33 = locale;
  v34 = 0;
  v35 = 0;
  v10 = 0;
  v11 = *v41;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v41 != v11)
      {
        objc_enumerationMutation(units);
      }

      v13 = *(*(&v40 + 1) + 8 * i);
      if (currencyCode && ([*(*(&v40 + 1) + 8 * i) name], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", currencyCode), v14, (v15 & 1) != 0))
      {
        v16 = v34;
        v17 = v10;
        v34 = v13;
      }

      else
      {
        name = [v13 name];
        v19 = [name isEqualToString:@"EUR"];

        if (v19)
        {
          v16 = v35;
          v35 = v13;
          v17 = v10;
        }

        else
        {
          name2 = [v13 name];
          v21 = [name2 isEqualToString:@"USD"];

          v16 = v10;
          v17 = v13;
          if (!v21)
          {
            continue;
          }
        }
      }

      v22 = v13;

      v10 = v17;
    }

    v9 = [units countByEnumeratingWithState:&v40 objects:v44 count:16];
  }

  while (v9);

  v5 = v32;
  v23 = v34;
  if (v34)
  {
    [v32 addObject:v34];
  }

  v4 = v31;
  locale = v33;
  v24 = v35;
  if (([v31 isEqualToString:*MEMORY[0x1E695D9D0]] & 1) == 0)
  {
    if (v35)
    {
      [v32 addObject:v35];
    }

    if (!v10)
    {
      goto LABEL_50;
    }

    v25 = v32;
    v26 = v10;
LABEL_49:
    [v25 addObject:v26];
    goto LABEL_50;
  }

  if (v10)
  {
    [v32 addObject:v10];
  }

  if (v35)
  {
    v25 = v32;
    v26 = v35;
    goto LABEL_49;
  }

LABEL_50:

  v29 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_findPreferredSIUnit:(id *)unit metric:(id *)metric US:(id *)s UK:(id *)k
{
  v42 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  units = [(CalculateUnitCategory *)self units];
  v10 = [units countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(units);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        if ([v15 isPreferredUnit])
        {
          unitInfo = [v15 unitInfo];
          measurementSystem = [unitInfo measurementSystem];

          if (!measurementSystem)
          {
            ++v12;
          }
        }
      }

      v11 = [units countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v11);
    v18 = v12 > 1;
  }

  else
  {
    v18 = 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  units2 = [(CalculateUnitCategory *)self units];
  v20 = [units2 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(units2);
        }

        v24 = *(*(&v32 + 1) + 8 * j);
        if ([v24 isPreferredUnit])
        {
          if (v18)
          {
            metricCopy2 = metric;
            if (![v24 isBaseUnit])
            {
              goto LABEL_28;
            }
          }

          unitInfo2 = [v24 unitInfo];
          measurementSystem2 = [unitInfo2 measurementSystem];

          if (measurementSystem2 > 1)
          {
            metricCopy2 = s;
            if (measurementSystem2 != 2)
            {
              if (measurementSystem2 != 3)
              {
                continue;
              }

              metricCopy2 = k;
            }

LABEL_28:
            v28 = v24;
            *metricCopy2 = v24;
            continue;
          }

          metricCopy2 = unit;
          if (!measurementSystem2)
          {
            goto LABEL_28;
          }

          metricCopy2 = metric;
          if (measurementSystem2 == 1)
          {
            goto LABEL_28;
          }
        }
      }

      v21 = [units2 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v21);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (NSString)displayName
{
  name = [(CalculateUnitCategory *)self name];
  locale = [(CalculateUnitCategory *)self locale];
  v5 = [Localize localizationForLocale:locale];
  v6 = [Localize localizedStringForKey:name value:0 table:@"Localizable" localization:v5];

  return v6;
}

- (id)locale
{
  collection = [(CalculateUnitCategory *)self collection];
  locales = [collection locales];
  firstObject = [locales firstObject];
  v5 = firstObject;
  if (firstObject)
  {
    v6 = firstObject;
  }

  else
  {
    v6 = +[Localize systemLocale];
  }

  v7 = v6;

  return v7;
}

- (NSString)name
{
  typeInfo = [(CalculateUnitCategory *)self typeInfo];
  name = [typeInfo name];

  return name;
}

- (unint64_t)unitType
{
  name = [(CalculateUnitCategory *)self name];
  v3 = [&unk_1F419A730 objectForKeyedSubscript:name];
  intValue = [v3 intValue];

  return intValue;
}

+ (id)categoryWithTypeInfo:(id)info unitsInfo:(id)unitsInfo collection:(id)collection
{
  collectionCopy = collection;
  unitsInfoCopy = unitsInfo;
  infoCopy = info;
  v10 = [[CalculateUnitCategory alloc] initWithTypeInfo:infoCopy unitsInfo:unitsInfoCopy collection:collectionCopy];

  return v10;
}

@end