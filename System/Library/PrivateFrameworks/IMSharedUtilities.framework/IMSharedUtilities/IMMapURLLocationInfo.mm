@interface IMMapURLLocationInfo
+ (id)locationInfoFromURL:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMMapURLLocationInfo

+ (id)locationInfoFromURL:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v35 = objc_opt_new();
    v4 = [MEMORY[0x1E696AF20] componentsWithURL:v3 resolvingAgainstBaseURL:1];
    v5 = [v4 host];
    v6 = v5;
    if (v5 && [v5 isEqualToIgnoringCase:@"maps.apple.com"])
    {
      v32 = v6;
      [v35 setUrl:v3];
      v34 = v3;
      v7 = [IMMapURLHelpers coordinatesFromURL:v3];
      if ([v7 count] == 2)
      {
        v8 = MEMORY[0x1AC570AA0](@"CLLocation", @"CoreLocation");
        if (v8)
        {
          v9 = [v8 alloc];
          v10 = [v7 objectAtIndexedSubscript:0];
          [v10 doubleValue];
          v12 = v11;
          v13 = [v7 objectAtIndexedSubscript:1];
          [v13 doubleValue];
          v15 = [v9 initWithLatitude:v12 longitude:v14];
          [v35 setLocation:v15];
        }
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v33 = v4;
      v16 = [v4 queryItems];
      v17 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v37;
        do
        {
          v20 = 0;
          do
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v36 + 1) + 8 * v20);
            v22 = [v21 name];
            if ([v22 isEqualToIgnoringCase:@"query"])
            {

LABEL_15:
              v25 = [v21 value];
              [v35 setQuery:v25];
LABEL_16:

              goto LABEL_17;
            }

            v23 = [v21 name];
            v24 = [v23 isEqualToIgnoringCase:@"q"];

            if (v24)
            {
              goto LABEL_15;
            }

            v26 = [v21 name];
            v27 = [v26 isEqualToString:@"address"];

            if (v27)
            {
              v25 = [v21 value];
              [v35 setAddress:v25];
              goto LABEL_16;
            }

LABEL_17:
            ++v20;
          }

          while (v18 != v20);
          v28 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
          v18 = v28;
        }

        while (v28);
      }

      v29 = v35;
      v4 = v33;
      v3 = v34;
      v6 = v32;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self == v4)
    {
      v10 = 1;
    }

    else
    {
      v5 = [(IMMapURLLocationInfo *)self url];
      v6 = [(IMMapURLLocationInfo *)v4 url];
      v7 = v5;
      v8 = v6;
      v9 = v8;
      if (v7 == v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        if (v7 && v8)
        {
          v10 = [v7 isEqual:v8];
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(IMMapURLLocationInfo *)self url];
  v4 = [IMMapURLLocationInfo locationInfoFromURL:v3];

  return v4;
}

@end