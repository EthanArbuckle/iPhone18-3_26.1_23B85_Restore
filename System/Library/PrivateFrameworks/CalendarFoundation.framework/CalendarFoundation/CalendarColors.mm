@interface CalendarColors
+ (id)colorForName:(id)a3;
+ (id)colorNamesOrderedForAssignment;
+ (id)defaultCalendarColorNames;
+ (id)localizedColorNameForColorName:(id)a3;
+ (id)nameOfColor:(id)a3;
+ (id)symbolicColorForNewCalendarWithExistingSymbolicNames:(id)a3;
+ (id)textColorForName:(id)a3;
+ (int)countOfColor:(id)a3 inArray:(id)a4;
+ (void)_bootstrapColorNameMapping;
+ (void)_rebuildColors;
+ (void)initialize;
@end

@implementation CalendarColors

+ (id)symbolicColorForNewCalendarWithExistingSymbolicNames:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v6 = [a1 colorNamesOrderedForAssignment];
  v7 = [v5 arrayWithArray:v6];

  if ([v4 count])
  {
    v8 = [v4 lastObject];
    [v7 removeObject:v8];
  }

  v9 = [v7 firstObject];
  v10 = [a1 countOfColor:v9 inArray:v4];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [a1 countOfColor:v16 inArray:{v4, v22}];
        if (v17 < v10)
        {
          v18 = v17;
          v19 = v16;

          v10 = v18;
          v9 = v19;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (int)countOfColor:(id)a3 inArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = [v6 objectAtIndex:v9];
      v12 = [v11 isEqual:v5];

      v10 += v12;
      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)colorNamesOrderedForAssignment
{
  [a1 _bootstrapColorNameMapping];
  v2 = _colorNamesOrderedForAssignment;

  return v2;
}

+ (id)defaultCalendarColorNames
{
  [a1 _bootstrapColorNameMapping];
  v2 = _defaultCalendarColorNames;

  return v2;
}

+ (void)_bootstrapColorNameMapping
{
  if (!_colorNameMapping)
  {
    [a1 _rebuildColors];
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 _bootstrapColorNameMapping];
  }
}

+ (void)_rebuildColors
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x1E695DF70] array];
  v34 = [MEMORY[0x1E695DF90] dictionary];
  v35 = [MEMORY[0x1E695DF90] dictionary];
  v33 = v2;
  v32 = [v2 pathForResource:@"CalendarColors" ofType:@"plist"];
  [MEMORY[0x1E695DEC8] arrayWithContentsOfFile:?];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v39 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v39)
  {
    v38 = *v41;
    v36 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v41 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v40 + 1) + 8 * v4);
        v6 = [v5 objectForKey:@"name"];
        if ([v6 length])
        {
          if ([v3 containsObject:v6])
          {
            NSLog(&cfstr_SErrorColorAlr.isa, "+[CalendarColors _rebuildColors]", v6);
          }

          v7 = [v5 objectForKey:@"tile"];
          if ([v7 count] == 3)
          {
            v8 = [v7 objectAtIndex:0];
            v9 = [v8 unsignedIntValue];
            v10 = [v7 objectAtIndex:1];
            v11 = [v10 unsignedIntValue];
            v12 = [v7 objectAtIndex:2];
            v13 = [v12 unsignedIntValue];
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02X%02X%02X%02X", v9, v11, v13, 255];
          }

          else
          {
            v14 = 0;
          }

          v15 = [v5 objectForKey:@"text"];
          if ([v15 count] == 3)
          {
            v16 = [v15 objectAtIndex:0];
            v17 = [v16 unsignedIntValue];
            v18 = [v15 objectAtIndex:1];
            v19 = [v18 unsignedIntValue];
            v20 = [v15 objectAtIndex:2];
            v21 = [v20 unsignedIntValue];
            v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02X%02X%02X%02X", v17, v19, v21, 255];

            if (v14)
            {
              v3 = v36;
              if (v22)
              {
                [v36 addObject:v6];
                [v34 setObject:v14 forKey:v6];
                [v35 setObject:v22 forKey:v6];
LABEL_18:

                goto LABEL_19;
              }
            }

            else
            {
              v3 = v36;
            }
          }

          else
          {
            v22 = 0;
          }

          NSLog(&cfstr_SErrorIncorrec.isa, "+[CalendarColors _rebuildColors]", v6);
          goto LABEL_18;
        }

LABEL_19:

        ++v4;
      }

      while (v39 != v4);
      v23 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      v39 = v23;
    }

    while (v23);
  }

  v24 = _defaultCalendarColorNames;
  _defaultCalendarColorNames = v3;
  v25 = v3;

  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69E4038], *MEMORY[0x1E69E4060], *MEMORY[0x1E69E4058], *MEMORY[0x1E69E4050], *MEMORY[0x1E69E4068], *MEMORY[0x1E69E4070], *MEMORY[0x1E69E4040], 0}];
  v27 = _colorNamesOrderedForAssignment;
  _colorNamesOrderedForAssignment = v26;

  v28 = _colorNameMapping;
  _colorNameMapping = v34;
  v29 = v34;

  v30 = _textColorNameMapping;
  _textColorNameMapping = v35;

  v31 = *MEMORY[0x1E69E9840];
}

+ (id)nameOfColor:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [a1 _bootstrapColorNameMapping];
  v5 = [MEMORY[0x1E69E3C78] symbolicColorForLegacyRGB:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [_colorNameMapping allKeys];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [_colorNameMapping objectForKey:v13];
          if (CalColorsAreAlmostEqual(v4, v14))
          {
            v7 = v13;

            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
  }

LABEL_13:

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)colorForName:(id)a3
{
  v4 = a3;
  [a1 _bootstrapColorNameMapping];
  v5 = [_colorNameMapping objectForKey:v4];

  return v5;
}

+ (id)textColorForName:(id)a3
{
  v4 = a3;
  [a1 _bootstrapColorNameMapping];
  v5 = [_textColorNameMapping objectForKey:v4];

  return v5;
}

+ (id)localizedColorNameForColorName:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CalendarFoundation"];
  v5 = v3;
  v6 = [v5 lowercaseString];
  if ([v6 isEqualToString:*MEMORY[0x1E69E4038]])
  {
    v7 = @"Blue";
  }

  else if ([v6 isEqualToString:*MEMORY[0x1E69E4050]])
  {
    v7 = @"Green";
  }

  else if ([v6 isEqualToString:*MEMORY[0x1E69E4068]])
  {
    v7 = @"Red";
  }

  else if ([v6 isEqualToString:*MEMORY[0x1E69E4058]])
  {
    v7 = @"Orange";
  }

  else if ([v6 isEqualToString:*MEMORY[0x1E69E4070]])
  {
    v7 = @"Yellow";
  }

  else if ([v6 isEqualToString:*MEMORY[0x1E69E4060]])
  {
    v7 = @"Purple";
  }

  else
  {
    v8 = v5;
    if (![v6 isEqualToString:*MEMORY[0x1E69E4040]])
    {
      goto LABEL_16;
    }

    v7 = @"Brown";
  }

  v8 = [v4 localizedStringForKey:v7 value:&stru_1F379FFA8 table:0];

LABEL_16:

  return v8;
}

@end