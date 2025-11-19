@interface IMMapURLHelpers
+ (id)_processAppleMapsURLWithQueryItems:(id)a3;
+ (id)_processGoogleMapsURLWithQueryItems:(id)a3;
+ (id)coordinatesFromString:(id)a3;
+ (id)coordinatesFromURL:(id)a3;
@end

@implementation IMMapURLHelpers

+ (id)coordinatesFromString:(id)a3
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:a3];
  v5 = [a1 coordinatesFromURL:v4];

  return v5;
}

+ (id)coordinatesFromURL:(id)a3
{
  v4 = [MEMORY[0x1E696AF20] componentsWithURL:a3 resolvingAgainstBaseURL:1];
  v5 = [v4 host];
  if ([v5 isEqualToString:@"maps.apple.com"])
  {
    v6 = [v4 queryItems];
    v7 = [a1 _processAppleMapsURLWithQueryItems:v6];
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"maps.google.com"])
  {
    v6 = [v4 queryItems];
    v7 = [a1 _processGoogleMapsURLWithQueryItems:v6];
    goto LABEL_5;
  }

  v8 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v8;
}

+ (id)_processAppleMapsURLWithQueryItems:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a3;
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
        v7 = [v6 name];
        if ([v7 isEqualToString:@"center"])
        {
          goto LABEL_16;
        }

        v8 = [v6 name];
        if ([v8 isEqualToString:@"coordinate"])
        {
          goto LABEL_15;
        }

        v9 = [v6 name];
        if ([v9 isEqualToString:@"sll"])
        {

LABEL_15:
LABEL_16:

LABEL_17:
          v13 = [v6 value];
          v12 = [v13 componentsSeparatedByString:{@", "}];

          goto LABEL_18;
        }

        v10 = [v6 name];
        v11 = [v10 isEqualToString:@"ll"];

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

+ (id)_processGoogleMapsURLWithQueryItems:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:@"q"];

        if (v11)
        {
          v12 = [v9 value];
          v13 = [v12 componentsSeparatedByString:@" "];

          if ([v13 count])
          {
            v14 = [v13 objectAtIndex:0];
            v7 = [v14 componentsSeparatedByString:{@", "}];

            goto LABEL_14;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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