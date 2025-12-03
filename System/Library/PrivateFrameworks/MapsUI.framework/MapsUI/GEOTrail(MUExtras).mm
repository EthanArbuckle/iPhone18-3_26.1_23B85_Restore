@interface GEOTrail(MUExtras)
- (id)_mapsui_createCombinedTrailTypeAndLengthFactoid;
- (id)factoidWithSemantic:()MUExtras;
@end

@implementation GEOTrail(MUExtras)

- (id)factoidWithSemantic:()MUExtras
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  factoids = [self factoids];
  v5 = [factoids countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(factoids);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 semantic] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [factoids countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_mapsui_createCombinedTrailTypeAndLengthFactoid
{
  v2 = [self factoidWithSemantic:4];
  v3 = [self factoidWithSemantic:3];
  v4 = v3;
  v5 = 0;
  if (v2 && v3)
  {
    v5 = [objc_alloc(MEMORY[0x1E69A1C18]) initWithLabelFactoid:v2 iconFactoid:v3];
  }

  return v5;
}

@end