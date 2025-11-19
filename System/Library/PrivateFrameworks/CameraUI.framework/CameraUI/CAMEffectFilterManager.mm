@interface CAMEffectFilterManager
+ (BOOL)areFilters:(id)a3 equalTo:(id)a4;
+ (BOOL)isDepthEffectInFilters:(id)a3;
+ (BOOL)isLightingEffectInFilters:(id)a3;
+ (id)ciFilterNameForFilterType:(int64_t)a3;
+ (id)ciFilterNameForFilterType:(int64_t)a3 lightingType:(int64_t)a4;
+ (id)displayNameForType:(int64_t)a3;
+ (id)filtersForFilterType:(int64_t)a3 lightingType:(int64_t)a4 applyDepthEffect:(BOOL)a5;
+ (id)namesFromFilters:(id)a3;
@end

@implementation CAMEffectFilterManager

+ (id)filtersForFilterType:(int64_t)a3 lightingType:(int64_t)a4 applyDepthEffect:(BOOL)a5
{
  v5 = a5;
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v10 = v9;
  if (v5)
  {
    [v9 addObject:@"CIDepthEffect"];
  }

  v11 = [a1 ciFilterNameForFilterType:a3 lightingType:a4];
  if (v11)
  {
    [v10 addObject:v11];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__17;
  v25 = __Block_byref_object_dispose__17;
  v26 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __77__CAMEffectFilterManager_filtersForFilterType_lightingType_applyDepthEffect___block_invoke;
  v18 = &unk_1E76FC878;
  v20 = &v21;
  v12 = v10;
  v19 = v12;
  [v12 enumerateObjectsUsingBlock:&v15];
  v13 = [v22[5] copy];

  _Block_object_dispose(&v21, 8);

  return v13;
}

uint64_t __77__CAMEffectFilterManager_filtersForFilterType_lightingType_applyDepthEffect___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695F648] filterWithName:a2];
  v4 = v3;
  if (v3)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v10 = v4;
    if (!v5)
    {
      v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 40) + 8) + 40);
    }

    v3 = [v5 addObject:v10];
    v4 = v10;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

+ (id)ciFilterNameForFilterType:(int64_t)a3 lightingType:(int64_t)a4
{
  v7 = +[CAMCaptureCapabilities capabilities];
  v8 = [v7 supportedPortraitLightingVersion];

  v9 = [MEMORY[0x1E6993870] ciFilterNameForLightingType:a4 version:v8];
  if ([v9 length])
  {
    v10 = v9;
  }

  else
  {
    v10 = [a1 ciFilterNameForFilterType:a3];
  }

  v11 = v10;

  return v11;
}

+ (id)ciFilterNameForFilterType:(int64_t)a3
{
  if ((a3 - 1) > 0xE)
  {
    return 0;
  }

  else
  {
    return off_1E76FC8C0[a3 - 1];
  }
}

+ (BOOL)areFilters:(id)a3 equalTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    v8 = [CAMEffectFilterManager namesFromFilters:v5];
    v9 = [CAMEffectFilterManager namesFromFilters:v6];
    v10 = [v8 isEqualToArray:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)namesFromFilters:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__CAMEffectFilterManager_namesFromFilters___block_invoke;
  v8[3] = &unk_1E76FC8A0;
  v6 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __43__CAMEffectFilterManager_namesFromFilters___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 addObject:v3];
}

+ (id)displayNameForType:(int64_t)a3
{
  switch(a3)
  {
    case 0:
      v4 = @"FILTER_NONE";
      goto LABEL_22;
    case 1:
      v4 = @"FILTER_MONO";
      goto LABEL_22;
    case 2:
      v4 = @"FILTER_TONAL";
      goto LABEL_22;
    case 3:
      v4 = @"FILTER_NOIR";
      v5 = @"We understand 'Noir' may be hard to localize for your language. If that's the case, we'd prefer to use the EN string.";
      goto LABEL_23;
    case 4:
      v4 = @"FILTER_FADE";
      goto LABEL_22;
    case 5:
      v4 = @"FILTER_CHROME";
      goto LABEL_22;
    case 6:
      v4 = @"FILTER_PROCESS";
      goto LABEL_22;
    case 7:
      v4 = @"FILTER_TRANSFER";
      goto LABEL_22;
    case 8:
      v4 = @"FILTER_INSTANT";
      goto LABEL_22;
    case 9:
      v4 = @"FILTER_VIVID";
      goto LABEL_22;
    case 10:
      v4 = @"FILTER_VIVID_WARM";
      goto LABEL_22;
    case 11:
      v4 = @"FILTER_VIVID_COOL";
      goto LABEL_22;
    case 12:
      v4 = @"FILTER_DRAMATIC";
      goto LABEL_22;
    case 13:
      v4 = @"FILTER_DRAMATIC_WARM";
      goto LABEL_22;
    case 14:
      v4 = @"FILTER_DRAMATIC_COOL";
      goto LABEL_22;
    case 15:
      v4 = @"FILTER_SILVERPLATE";
      goto LABEL_22;
    case 16:
      v4 = @"FILTER_PORTRAIT";
LABEL_22:
      v5 = 0;
LABEL_23:
      v6 = CAMLocalizedFrameworkString(v4, v5);

      break;
    default:
      v6 = 0;

      break;
  }

  return v6;
}

+ (BOOL)isDepthEffectInFilters:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) name];
        v9 = [v8 isEqualToString:@"CIDepthEffect"];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (BOOL)isLightingEffectInFilters:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = MEMORY[0x1E6993870];
        v8 = [*(*(&v11 + 1) + 8 * i) name];
        v9 = [v7 ciLightingTypeForFilterName:v8];

        if ((v9 - 7) > 0xFFFFFFFFFFFFFFFALL)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

@end