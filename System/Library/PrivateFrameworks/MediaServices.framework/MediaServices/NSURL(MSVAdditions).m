@interface NSURL(MSVAdditions)
+ (id)msv_urlForMediaAssetWithPersistentID:()MSVAdditions pathExtension:;
- (uint64_t)msv_mediaAssetPersistentID;
@end

@implementation NSURL(MSVAdditions)

- (uint64_t)msv_mediaAssetPersistentID
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v2 = [a1 scheme];
  if (([v2 isEqualToString:@"ipod-library"] & 1) == 0)
  {

    goto LABEL_16;
  }

  v3 = [a1 host];
  v4 = [v3 isEqualToString:@"item"];

  if (!v4)
  {
LABEL_16:
    result = 0;
    goto LABEL_19;
  }

  v5 = [a1 query];
  v6 = [v5 componentsSeparatedByString:@"&"];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v19 + 1) + 8 * i) componentsSeparatedByString:{@"=", v19}];
        if ([v12 count] >= 2)
        {
          v13 = [v12 objectAtIndex:0];
          if ([v13 isEqualToString:@"id"])
          {
            v14 = [v12 objectAtIndex:1];
            v15 = [MEMORY[0x1E696AE88] scannerWithString:v14];
            [v15 scanLongLong:&v23];

            v16 = v23;
            if (v16)
            {

              goto LABEL_18;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  result = v23;
LABEL_19:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)msv_urlForMediaAssetWithPersistentID:()MSVAdditions pathExtension:
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@/%@.%@?%@=%lli", @"ipod-library", @"item", @"item", a4, @"id", a3];
  v6 = [v4 URLWithString:v5];

  return v6;
}

@end