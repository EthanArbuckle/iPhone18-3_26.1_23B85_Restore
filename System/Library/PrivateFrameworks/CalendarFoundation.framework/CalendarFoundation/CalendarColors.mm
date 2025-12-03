@interface CalendarColors
+ (id)colorForName:(id)name;
+ (id)colorNamesOrderedForAssignment;
+ (id)defaultCalendarColorNames;
+ (id)localizedColorNameForColorName:(id)name;
+ (id)nameOfColor:(id)color;
+ (id)symbolicColorForNewCalendarWithExistingSymbolicNames:(id)names;
+ (id)textColorForName:(id)name;
+ (int)countOfColor:(id)color inArray:(id)array;
+ (void)_bootstrapColorNameMapping;
+ (void)_rebuildColors;
+ (void)initialize;
@end

@implementation CalendarColors

+ (id)symbolicColorForNewCalendarWithExistingSymbolicNames:(id)names
{
  v27 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v5 = MEMORY[0x1E695DF70];
  colorNamesOrderedForAssignment = [self colorNamesOrderedForAssignment];
  v7 = [v5 arrayWithArray:colorNamesOrderedForAssignment];

  if ([namesCopy count])
  {
    lastObject = [namesCopy lastObject];
    [v7 removeObject:lastObject];
  }

  firstObject = [v7 firstObject];
  v10 = [self countOfColor:firstObject inArray:namesCopy];
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
        v17 = [self countOfColor:v16 inArray:{namesCopy, v22}];
        if (v17 < v10)
        {
          v18 = v17;
          v19 = v16;

          v10 = v18;
          firstObject = v19;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (int)countOfColor:(id)color inArray:(id)array
{
  colorCopy = color;
  arrayCopy = array;
  v7 = [arrayCopy count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = [arrayCopy objectAtIndex:v9];
      v12 = [v11 isEqual:colorCopy];

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
  [self _bootstrapColorNameMapping];
  v2 = _colorNamesOrderedForAssignment;

  return v2;
}

+ (id)defaultCalendarColorNames
{
  [self _bootstrapColorNameMapping];
  v2 = _defaultCalendarColorNames;

  return v2;
}

+ (void)_bootstrapColorNameMapping
{
  if (!_colorNameMapping)
  {
    [self _rebuildColors];
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self _bootstrapColorNameMapping];
  }
}

+ (void)_rebuildColors
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
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
    v36 = array;
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
          if ([array containsObject:v6])
          {
            NSLog(&cfstr_SErrorColorAlr.isa, "+[CalendarColors _rebuildColors]", v6);
          }

          v7 = [v5 objectForKey:@"tile"];
          if ([v7 count] == 3)
          {
            v8 = [v7 objectAtIndex:0];
            unsignedIntValue = [v8 unsignedIntValue];
            v10 = [v7 objectAtIndex:1];
            unsignedIntValue2 = [v10 unsignedIntValue];
            v12 = [v7 objectAtIndex:2];
            unsignedIntValue3 = [v12 unsignedIntValue];
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02X%02X%02X%02X", unsignedIntValue, unsignedIntValue2, unsignedIntValue3, 255];
          }

          else
          {
            v14 = 0;
          }

          v15 = [v5 objectForKey:@"text"];
          if ([v15 count] == 3)
          {
            v16 = [v15 objectAtIndex:0];
            unsignedIntValue4 = [v16 unsignedIntValue];
            v18 = [v15 objectAtIndex:1];
            unsignedIntValue5 = [v18 unsignedIntValue];
            v20 = [v15 objectAtIndex:2];
            unsignedIntValue6 = [v20 unsignedIntValue];
            v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02X%02X%02X%02X", unsignedIntValue4, unsignedIntValue5, unsignedIntValue6, 255];

            if (v14)
            {
              array = v36;
              if (v22)
              {
                [v36 addObject:v6];
                [dictionary setObject:v14 forKey:v6];
                [dictionary2 setObject:v22 forKey:v6];
LABEL_18:

                goto LABEL_19;
              }
            }

            else
            {
              array = v36;
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
  _defaultCalendarColorNames = array;
  v25 = array;

  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69E4038], *MEMORY[0x1E69E4060], *MEMORY[0x1E69E4058], *MEMORY[0x1E69E4050], *MEMORY[0x1E69E4068], *MEMORY[0x1E69E4070], *MEMORY[0x1E69E4040], 0}];
  v27 = _colorNamesOrderedForAssignment;
  _colorNamesOrderedForAssignment = v26;

  v28 = _colorNameMapping;
  _colorNameMapping = dictionary;
  v29 = dictionary;

  v30 = _textColorNameMapping;
  _textColorNameMapping = dictionary2;

  v31 = *MEMORY[0x1E69E9840];
}

+ (id)nameOfColor:(id)color
{
  v22 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  [self _bootstrapColorNameMapping];
  v5 = [MEMORY[0x1E69E3C78] symbolicColorForLegacyRGB:colorCopy];
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
    allKeys = [_colorNameMapping allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [_colorNameMapping objectForKey:v13];
          if (CalColorsAreAlmostEqual(colorCopy, v14))
          {
            v7 = v13;

            goto LABEL_13;
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
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

+ (id)colorForName:(id)name
{
  nameCopy = name;
  [self _bootstrapColorNameMapping];
  v5 = [_colorNameMapping objectForKey:nameCopy];

  return v5;
}

+ (id)textColorForName:(id)name
{
  nameCopy = name;
  [self _bootstrapColorNameMapping];
  v5 = [_textColorNameMapping objectForKey:nameCopy];

  return v5;
}

+ (id)localizedColorNameForColorName:(id)name
{
  nameCopy = name;
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CalendarFoundation"];
  v5 = nameCopy;
  lowercaseString = [v5 lowercaseString];
  if ([lowercaseString isEqualToString:*MEMORY[0x1E69E4038]])
  {
    v7 = @"Blue";
  }

  else if ([lowercaseString isEqualToString:*MEMORY[0x1E69E4050]])
  {
    v7 = @"Green";
  }

  else if ([lowercaseString isEqualToString:*MEMORY[0x1E69E4068]])
  {
    v7 = @"Red";
  }

  else if ([lowercaseString isEqualToString:*MEMORY[0x1E69E4058]])
  {
    v7 = @"Orange";
  }

  else if ([lowercaseString isEqualToString:*MEMORY[0x1E69E4070]])
  {
    v7 = @"Yellow";
  }

  else if ([lowercaseString isEqualToString:*MEMORY[0x1E69E4060]])
  {
    v7 = @"Purple";
  }

  else
  {
    v8 = v5;
    if (![lowercaseString isEqualToString:*MEMORY[0x1E69E4040]])
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