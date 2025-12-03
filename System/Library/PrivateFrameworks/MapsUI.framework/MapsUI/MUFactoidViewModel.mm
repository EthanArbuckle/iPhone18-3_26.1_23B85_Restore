@interface MUFactoidViewModel
+ (id)darkSymbolColorWithGEOColor:(id)color;
+ (id)symbolColorWithGEOColor:(id)color;
+ (id)viewModelForFactoid:(id)factoid;
+ (id)viewModelsFromFactoids:(id)factoids;
+ (unint64_t)maximumFractionDigitsForFactoid:(id)factoid;
+ (unint64_t)roundingModeForFactoid:(id)factoid;
@end

@implementation MUFactoidViewModel

+ (unint64_t)roundingModeForFactoid:(id)factoid
{
  factoidCopy = factoid;
  if ([factoidCopy semantic] == 4 && objc_msgSend(factoidCopy, "unitType") == 4 && (objc_msgSend(factoidCopy, "value"), v5 = v4, GEOConfigGetDouble(), v5 <= v6))
  {
    v7 = 6;
  }

  else
  {
    v7 = 4;
  }

  return v7;
}

+ (unint64_t)maximumFractionDigitsForFactoid:(id)factoid
{
  factoidCopy = factoid;
  v7 = 0;
  if ([factoidCopy semantic] == 4 && objc_msgSend(factoidCopy, "unitType") == 4)
  {
    [factoidCopy value];
    v5 = v4;
    GEOConfigGetDouble();
    if (v5 <= v6)
    {
      v7 = 1;
    }
  }

  return v7;
}

+ (id)darkSymbolColorWithGEOColor:(id)color
{
  colorCopy = color;
  v4 = colorCopy;
  if (!colorCopy)
  {
    v6 = 0;
    goto LABEL_12;
  }

  systemColor = [colorCopy systemColor];
  v6 = 0;
  if (systemColor <= 2)
  {
    if (systemColor == 1)
    {
      systemCyanColor = [MEMORY[0x1E69DC888] systemCyanColor];
    }

    else
    {
      if (systemColor != 2)
      {
        goto LABEL_12;
      }

      systemCyanColor = [MEMORY[0x1E69DC888] systemGreenColor];
    }

    goto LABEL_11;
  }

  if (systemColor == 3 || systemColor == 4)
  {
    systemCyanColor = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
LABEL_11:
    v6 = systemCyanColor;
  }

LABEL_12:

  return v6;
}

+ (id)symbolColorWithGEOColor:(id)color
{
  colorCopy = color;
  v4 = colorCopy;
  if (!colorCopy)
  {
    v6 = 0;
    goto LABEL_12;
  }

  systemColor = [colorCopy systemColor];
  v6 = 0;
  if (systemColor <= 2)
  {
    if (systemColor == 1)
    {
      systemCyanColor = [MEMORY[0x1E69DC888] systemCyanColor];
    }

    else
    {
      if (systemColor != 2)
      {
        goto LABEL_12;
      }

      systemCyanColor = [MEMORY[0x1E69DC888] systemGreenColor];
    }

    goto LABEL_11;
  }

  if (systemColor == 3 || systemColor == 4)
  {
    systemCyanColor = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
LABEL_11:
    v6 = systemCyanColor;
  }

LABEL_12:

  return v6;
}

+ (id)viewModelsFromFactoids:(id)factoids
{
  v19 = *MEMORY[0x1E69E9840];
  factoidsCopy = factoids;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = factoidsCopy;
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

+ (id)viewModelForFactoid:(id)factoid
{
  factoidCopy = factoid;
  if ([factoidCopy shouldUseStructuredData])
  {
    if (![factoidCopy unitType] || objc_msgSend(factoidCopy, "unitType") == 1)
    {
      v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      v6 = 1;
      [v5 setNumberStyle:1];
      v7 = MEMORY[0x1E696AD98];
      [factoidCopy value];
      v8 = [v7 numberWithDouble:?];
      v9 = [v5 stringFromNumber:v8];

      goto LABEL_8;
    }

    if ([factoidCopy unitType] != 6)
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      v22 = [currentLocale objectForKey:*MEMORY[0x1E695DA08]];
      bOOLValue = [v22 BOOLValue];

      v24 = objc_alloc_init(MEMORY[0x1E696AD30]);
      MUConfigureMeasurementFormatter(v24, bOOLValue, [factoidCopy unitType], objc_msgSend(self, "maximumFractionDigitsForFactoid:", factoidCopy), objc_msgSend(self, "roundingModeForFactoid:", factoidCopy));
      [factoidCopy value];
      v26 = MUFactoidMeasurementFormatterForValue([factoidCopy unitType], v25);
      v27 = [v26 copy];
      if ((bOOLValue & 1) == 0)
      {
        [factoidCopy value];
        v29 = MUFactoidImpericalMeasurementFormatterForValue([factoidCopy unitType], v28);

        v27 = v29;
      }

      languageCode = [currentLocale languageCode];
      if ([languageCode isEqualToString:@"en"])
      {
        v31 = [currentLocale objectForKey:*MEMORY[0x1E695D9B8]];
        v32 = [v31 isEqualToString:*MEMORY[0x1E695D9D0]];
      }

      else
      {
        v32 = 0;
      }

      unit = [v27 unit];
      v9 = MUConvertedFormattedString(v26, unit, v24, v32);

      goto LABEL_7;
    }

    [factoidCopy value];
    unstructuredValue = MUConvertedFormattedDurationString(v20);
  }

  else
  {
    unstructuredValue = [factoidCopy unstructuredValue];
  }

  v9 = unstructuredValue;
LABEL_7:
  v6 = 0;
LABEL_8:
  color = [factoidCopy color];
  v12 = [self symbolColorWithGEOColor:color];

  color2 = [factoidCopy color];
  v14 = [self darkSymbolColorWithGEOColor:color2];

  v15 = [MUTextFactoidViewModel alloc];
  title = [factoidCopy title];
  symbolName = [factoidCopy symbolName];
  v18 = [(MUTextFactoidViewModel *)v15 initWithTitle:title valueString:v9 symbolName:symbolName symbolColor:v12 darkSymbolColor:v14 shouldReverseForRTLLayout:v6];

  return v18;
}

@end