@interface CEKLightingEffectManager
+ (id)aggdNameForLightingType:(int64_t)a3;
+ (id)ciFilterNameForLightingType:(int64_t)a3 version:(int64_t)a4;
+ (id)displayImageForLightingType:(int64_t)a3;
+ (id)displayNameForLightingType:(int64_t)a3;
+ (id)filtersForLightingType:(int64_t)a3 applyDepthEffect:(BOOL)a4 version:(int64_t)a5;
+ (id)portraitOriginalPhotoFilters;
+ (int64_t)ciLightingTypeForFilterName:(id)a3;
@end

@implementation CEKLightingEffectManager

+ (id)filtersForLightingType:(int64_t)a3 applyDepthEffect:(BOOL)a4 version:(int64_t)a5
{
  v6 = a4;
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v10 = v9;
  if (v6)
  {
    [v9 addObject:@"CIDepthEffect"];
  }

  v11 = [a1 ciFilterNameForLightingType:a3 version:a5];
  if (v11)
  {
    [v10 addObject:v11];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __76__CEKLightingEffectManager_filtersForLightingType_applyDepthEffect_version___block_invoke;
  v18 = &unk_1E7CC67C8;
  v20 = &v21;
  v12 = v10;
  v19 = v12;
  [v12 enumerateObjectsUsingBlock:&v15];
  v13 = [v22[5] copy];

  _Block_object_dispose(&v21, 8);

  return v13;
}

uint64_t __76__CEKLightingEffectManager_filtersForLightingType_applyDepthEffect_version___block_invoke(uint64_t a1, uint64_t a2)
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

+ (id)ciFilterNameForLightingType:(int64_t)a3 version:(int64_t)a4
{
  if ((a3 - 2) > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E7CC6F48[a3 - 2];
  }

  if (a4 == 2)
  {
    if (a3 != 6)
    {
      v6 = [(__CFString *)v6 stringByAppendingString:@"V2", v4];
    }
  }

  else
  {
    if (!a4)
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (int64_t)ciLightingTypeForFilterName:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"V2" withString:&stru_1F2FD5B58];
  if ([v3 isEqualToString:@"CIPortraitEffectStudio"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CIPortraitEffectContour"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CIPortraitEffectStage"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CIPortraitEffectStageMono"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"CIPortraitEffectStageWhite"])
  {
    v4 = 6;
  }

  else
  {
    v4 = [v3 isEqualToString:@"CIDepthEffect"];
  }

  return v4;
}

+ (id)displayNameForLightingType:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = CEKLocalizedFrameworkString(off_1E7CC6F70[a3 - 1], 0);
  }

  return v4;
}

+ (id)aggdNameForLightingType:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7CC6FA0[a3 - 1];
  }
}

+ (id)displayImageForLightingType:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    v6 = 0;
  }

  else
  {
    v3 = off_1E7CC6FD0[a3 - 1];
    v4 = MEMORY[0x1E69DCAB8];
    v5 = CEKFrameworkBundle();
    v6 = [v4 imageNamed:v3 inBundle:v5];
  }

  return v6;
}

+ (id)portraitOriginalPhotoFilters
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695F648] filterWithName:@"CIPortraitEffectLight"];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end