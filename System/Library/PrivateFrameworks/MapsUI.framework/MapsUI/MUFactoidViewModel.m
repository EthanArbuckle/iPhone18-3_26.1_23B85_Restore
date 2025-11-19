@interface MUFactoidViewModel
+ (id)darkSymbolColorWithGEOColor:(id)a3;
+ (id)symbolColorWithGEOColor:(id)a3;
+ (id)viewModelForFactoid:(id)a3;
+ (id)viewModelsFromFactoids:(id)a3;
+ (unint64_t)maximumFractionDigitsForFactoid:(id)a3;
+ (unint64_t)roundingModeForFactoid:(id)a3;
@end

@implementation MUFactoidViewModel

+ (unint64_t)roundingModeForFactoid:(id)a3
{
  v3 = a3;
  if ([v3 semantic] == 4 && objc_msgSend(v3, "unitType") == 4 && (objc_msgSend(v3, "value"), v5 = v4, GEOConfigGetDouble(), v5 <= v6))
  {
    v7 = 6;
  }

  else
  {
    v7 = 4;
  }

  return v7;
}

+ (unint64_t)maximumFractionDigitsForFactoid:(id)a3
{
  v3 = a3;
  v7 = 0;
  if ([v3 semantic] == 4 && objc_msgSend(v3, "unitType") == 4)
  {
    [v3 value];
    v5 = v4;
    GEOConfigGetDouble();
    if (v5 <= v6)
    {
      v7 = 1;
    }
  }

  return v7;
}

+ (id)darkSymbolColorWithGEOColor:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v5 = [v3 systemColor];
  v6 = 0;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v7 = [MEMORY[0x1E69DC888] systemCyanColor];
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_12;
      }

      v7 = [MEMORY[0x1E69DC888] systemGreenColor];
    }

    goto LABEL_11;
  }

  if (v5 == 3 || v5 == 4)
  {
    v7 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
LABEL_11:
    v6 = v7;
  }

LABEL_12:

  return v6;
}

+ (id)symbolColorWithGEOColor:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v5 = [v3 systemColor];
  v6 = 0;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v7 = [MEMORY[0x1E69DC888] systemCyanColor];
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_12;
      }

      v7 = [MEMORY[0x1E69DC888] systemGreenColor];
    }

    goto LABEL_11;
  }

  if (v5 == 3 || v5 == 4)
  {
    v7 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
LABEL_11:
    v6 = v7;
  }

LABEL_12:

  return v6;
}

+ (id)viewModelsFromFactoids:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MUFactoidViewModel viewModelForFactoid:*(*(&v14 + 1) + 8 * i), v14];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)viewModelForFactoid:(id)a3
{
  v4 = a3;
  if ([v4 shouldUseStructuredData])
  {
    if (![v4 unitType] || objc_msgSend(v4, "unitType") == 1)
    {
      v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      v6 = 1;
      [v5 setNumberStyle:1];
      v7 = MEMORY[0x1E696AD98];
      [v4 value];
      v8 = [v7 numberWithDouble:?];
      v9 = [v5 stringFromNumber:v8];

      goto LABEL_8;
    }

    if ([v4 unitType] != 6)
    {
      v21 = [MEMORY[0x1E695DF58] currentLocale];
      v22 = [v21 objectForKey:*MEMORY[0x1E695DA08]];
      v23 = [v22 BOOLValue];

      v24 = objc_alloc_init(MEMORY[0x1E696AD30]);
      MUConfigureMeasurementFormatter(v24, v23, [v4 unitType], objc_msgSend(a1, "maximumFractionDigitsForFactoid:", v4), objc_msgSend(a1, "roundingModeForFactoid:", v4));
      [v4 value];
      v26 = MUFactoidMeasurementFormatterForValue([v4 unitType], v25);
      v27 = [v26 copy];
      if ((v23 & 1) == 0)
      {
        [v4 value];
        v29 = MUFactoidImpericalMeasurementFormatterForValue([v4 unitType], v28);

        v27 = v29;
      }

      v30 = [v21 languageCode];
      if ([v30 isEqualToString:@"en"])
      {
        v31 = [v21 objectForKey:*MEMORY[0x1E695D9B8]];
        v32 = [v31 isEqualToString:*MEMORY[0x1E695D9D0]];
      }

      else
      {
        v32 = 0;
      }

      v33 = [v27 unit];
      v9 = MUConvertedFormattedString(v26, v33, v24, v32);

      goto LABEL_7;
    }

    [v4 value];
    v10 = MUConvertedFormattedDurationString(v20);
  }

  else
  {
    v10 = [v4 unstructuredValue];
  }

  v9 = v10;
LABEL_7:
  v6 = 0;
LABEL_8:
  v11 = [v4 color];
  v12 = [a1 symbolColorWithGEOColor:v11];

  v13 = [v4 color];
  v14 = [a1 darkSymbolColorWithGEOColor:v13];

  v15 = [MUTextFactoidViewModel alloc];
  v16 = [v4 title];
  v17 = [v4 symbolName];
  v18 = [(MUTextFactoidViewModel *)v15 initWithTitle:v16 valueString:v9 symbolName:v17 symbolColor:v12 darkSymbolColor:v14 shouldReverseForRTLLayout:v6];

  return v18;
}

@end