@interface IMMapURLHelpers
+ (id)_processAppleMapsURLWithQueryItems:(id)items;
+ (id)_processGoogleMapsURLWithQueryItems:(id)items;
+ (id)coordinatesFromString:(id)string;
+ (id)coordinatesFromURL:(id)l;
@end

@implementation IMMapURLHelpers

+ (id)coordinatesFromString:(id)string
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:string];
  v5 = [self coordinatesFromURL:v4];

  return v5;
}

+ (id)coordinatesFromURL:(id)l
{
  v4 = [MEMORY[0x1E696AF20] componentsWithURL:l resolvingAgainstBaseURL:1];
  host = [v4 host];
  if ([host isEqualToString:@"maps.apple.com"])
  {
    queryItems = [v4 queryItems];
    v7 = [self _processAppleMapsURLWithQueryItems:queryItems];
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  if ([host isEqualToString:@"maps.google.com"])
  {
    queryItems = [v4 queryItems];
    v7 = [self _processGoogleMapsURLWithQueryItems:queryItems];
    goto LABEL_5;
  }

  v8 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v8;
}

+ (id)_processAppleMapsURLWithQueryItems:(id)items
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = items;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v16 = *v18;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        name = [v6 name];
        if ([name isEqualToString:@"center"])
        {
          goto LABEL_16;
        }

        name2 = [v6 name];
        if ([name2 isEqualToString:@"coordinate"])
        {
          goto LABEL_15;
        }

        name3 = [v6 name];
        if ([name3 isEqualToString:@"sll"])
        {

LABEL_15:
LABEL_16:

LABEL_17:
          value = [v6 value];
          v12 = [value componentsSeparatedByString:{@", "}];

          goto LABEL_18;
        }

        name4 = [v6 name];
        v11 = [name4 isEqualToString:@"ll"];

        if (v11)
        {
          goto LABEL_17;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      v12 = MEMORY[0x1E695E0F0];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

LABEL_18:

  return v12;
}

+ (id)_processGoogleMapsURLWithQueryItems:(id)items
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  itemsCopy = items;
  v4 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = MEMORY[0x1E695E0F0];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:@"q"];

        if (v11)
        {
          value = [v9 value];
          v13 = [value componentsSeparatedByString:@" "];

          if ([v13 count])
          {
            v14 = [v13 objectAtIndex:0];
            v7 = [v14 componentsSeparatedByString:{@", "}];

            goto LABEL_14;
          }
        }
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

LABEL_14:

  return v7;
}

@end