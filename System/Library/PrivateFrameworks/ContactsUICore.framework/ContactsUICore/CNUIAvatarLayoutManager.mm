@interface CNUIAvatarLayoutManager
+ (CGRect)avatarBadgeRectForAvatarInRect:(CGRect)a3 badgeType:(unint64_t)a4 isRTL:(BOOL)a5;
+ (double)frameForBadgeWithFrame:(double)a3 onAvatarFrame:(double)a4 withPosition:(CGFloat)a5 mediaContextFrame:(CGFloat)a6 isRTL:(CGFloat)a7;
+ (id)avatarBadgeLayerForAvatarInRect:(CGRect)a3 badgeType:(unint64_t)a4 isRTL:(BOOL)a5;
+ (id)avatarViewLayoutConfigurationsDictionaryForType:(unint64_t)a3;
+ (id)avatarViewLayoutConfigurationsForType:(unint64_t)a3;
+ (id)identifierForLayoutType:(unint64_t)a3;
+ (id)layoutConfigurationsForType:(unint64_t)a3 withItemCount:(int64_t)a4;
+ (int64_t)maxAvatarCountForType:(unint64_t)a3;
+ (void)applyAvatarBadgeStylingToLayer:(id)a3 badgeType:(unint64_t)a4;
+ (void)cropAvatarBadgeLayer:(id)a3 withCropStyle:(unint64_t)a4;
@end

@implementation CNUIAvatarLayoutManager

+ (id)avatarViewLayoutConfigurationsDictionaryForType:(unint64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__CNUIAvatarLayoutManager_avatarViewLayoutConfigurationsDictionaryForType___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (avatarViewLayoutConfigurationsDictionaryForType__onceToken != -1)
  {
    dispatch_once(&avatarViewLayoutConfigurationsDictionaryForType__onceToken, block);
  }

  v4 = avatarViewLayoutConfigurationsDictionaryForType__jsonContents;
  v5 = [CNUIAvatarLayoutManager identifierForLayoutType:a3];
  v6 = [v4 valueForKey:v5];

  return v6;
}

void __75__CNUIAvatarLayoutManager_avatarViewLayoutConfigurationsDictionaryForType___block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v0 pathForResource:@"CNUIIdentityAvatarConfiguration" ofType:@"json"];

  v1 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4];
  v2 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v1 options:0 error:0];
  v3 = avatarViewLayoutConfigurationsDictionaryForType__jsonContents;
  avatarViewLayoutConfigurationsDictionaryForType__jsonContents = v2;
}

+ (id)layoutConfigurationsForType:(unint64_t)a3 withItemCount:(int64_t)a4
{
  v5 = [objc_opt_class() avatarViewLayoutConfigurationsForType:a3];
  v6 = +[CNUIPRLikenessResolver maxContacts];
  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 - 1;
  if (v7 < 1 || v8 >= [v5 count])
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v9 = [v5 objectAtIndex:v8];
  }

  return v9;
}

+ (id)avatarViewLayoutConfigurationsForType:(unint64_t)a3
{
  v5 = [CNUIAvatarLayoutManager avatarViewLayoutConfigurationsDictionaryForType:?];
  v6 = [v5 objectForKeyedSubscript:@"configurations"];
  v7 = v6;
  v8 = MEMORY[0x1E695E0F0];
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __65__CNUIAvatarLayoutManager_avatarViewLayoutConfigurationsForType___block_invoke_3;
      v14[3] = &unk_1E76EA230;
      v15[1] = a1;
      v9 = v15;
      v15[0] = v6;
      if (avatarViewLayoutConfigurationsForType__cn_once_token_4 != -1)
      {
        dispatch_once(&avatarViewLayoutConfigurationsForType__cn_once_token_4, v14);
      }

      v10 = &avatarViewLayoutConfigurationsForType__cn_once_object_4;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_19;
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__CNUIAvatarLayoutManager_avatarViewLayoutConfigurationsForType___block_invoke_4;
      v12[3] = &unk_1E76EA230;
      v13[1] = a1;
      v9 = v13;
      v13[0] = v6;
      if (avatarViewLayoutConfigurationsForType__cn_once_token_5 != -1)
      {
        dispatch_once(&avatarViewLayoutConfigurationsForType__cn_once_token_5, v12);
      }

      v10 = &avatarViewLayoutConfigurationsForType__cn_once_object_5;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_19;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__CNUIAvatarLayoutManager_avatarViewLayoutConfigurationsForType___block_invoke_2;
    block[3] = &unk_1E76EA230;
    v17[1] = a1;
    v9 = v17;
    v17[0] = v6;
    if (avatarViewLayoutConfigurationsForType__cn_once_token_3 != -1)
    {
      dispatch_once(&avatarViewLayoutConfigurationsForType__cn_once_token_3, block);
    }

    v10 = &avatarViewLayoutConfigurationsForType__cn_once_object_3;
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__CNUIAvatarLayoutManager_avatarViewLayoutConfigurationsForType___block_invoke;
    v18[3] = &unk_1E76EA230;
    v19[1] = a1;
    v9 = v19;
    v19[0] = v6;
    if (avatarViewLayoutConfigurationsForType__cn_once_token_2 != -1)
    {
      dispatch_once(&avatarViewLayoutConfigurationsForType__cn_once_token_2, v18);
    }

    v10 = &avatarViewLayoutConfigurationsForType__cn_once_object_2;
  }

  v8 = *v10;

LABEL_19:

  return v8;
}

uint64_t __65__CNUIAvatarLayoutManager_avatarViewLayoutConfigurationsForType___block_invoke(uint64_t a1)
{
  avatarViewLayoutConfigurationsForType__cn_once_object_2 = [objc_opt_class() avatarViewLayoutItemConfigurations:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __65__CNUIAvatarLayoutManager_avatarViewLayoutConfigurationsForType___block_invoke_2(uint64_t a1)
{
  avatarViewLayoutConfigurationsForType__cn_once_object_3 = [objc_opt_class() avatarViewLayoutItemConfigurations:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __65__CNUIAvatarLayoutManager_avatarViewLayoutConfigurationsForType___block_invoke_3(uint64_t a1)
{
  avatarViewLayoutConfigurationsForType__cn_once_object_4 = [objc_opt_class() avatarViewLayoutItemConfigurations:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __65__CNUIAvatarLayoutManager_avatarViewLayoutConfigurationsForType___block_invoke_4(uint64_t a1)
{
  avatarViewLayoutConfigurationsForType__cn_once_object_5 = [objc_opt_class() avatarViewLayoutItemConfigurations:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

id __62__CNUIAvatarLayoutManager_avatarViewLayoutItemConfigurations___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"baseSize"];
  [v3 floatValue];
  v5 = v4;

  v6 = [v2 objectForKeyedSubscript:@"itemConfigurations"];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__CNUIAvatarLayoutManager_avatarViewLayoutItemConfigurations___block_invoke_2;
  v9[3] = &__block_descriptor_40_e57___CNUIAvatarLayoutItemConfiguration_16__0__NSDictionary_8l;
  *&v9[4] = v5;
  v7 = [v6 _cn_map:v9];

  return v7;
}

CNUIAvatarLayoutItemConfiguration *__62__CNUIAvatarLayoutManager_avatarViewLayoutItemConfigurations___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKey:@"size"];
  [v4 floatValue];
  v6 = v5;

  v7 = [v3 valueForKey:@"x"];
  [v7 floatValue];
  v9 = v8;

  v10 = [v3 valueForKey:@"y"];

  [v10 floatValue];
  v12 = v11;

  v13 = [[CNUIAvatarLayoutItemConfiguration alloc] initWithSize:v6 x:v9 y:v12 baseSize:*(a1 + 32)];

  return v13;
}

+ (int64_t)maxAvatarCountForType:(unint64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CNUIAvatarLayoutManager_maxAvatarCountForType___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  if (maxAvatarCountForType__onceToken != -1)
  {
    dispatch_once(&maxAvatarCountForType__onceToken, block);
  }

  return maxAvatarCountForType__maxAvatarCount;
}

void __49__CNUIAvatarLayoutManager_maxAvatarCountForType___block_invoke(uint64_t a1)
{
  v2 = [CNUIAvatarLayoutManager avatarViewLayoutConfigurationsDictionaryForType:*(a1 + 32)];
  v1 = [v2 valueForKey:@"maxAvatarCount"];
  maxAvatarCountForType__maxAvatarCount = [v1 integerValue];
}

+ (id)identifierForLayoutType:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"PlanetsAvatarLayoutConfigurations";
  }

  else
  {
    return off_1E76EA290[a3 - 1];
  }
}

+ (id)avatarBadgeLayerForAvatarInRect:(CGRect)a3 badgeType:(unint64_t)a4 isRTL:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [MEMORY[0x1E6979398] layer];
  [objc_opt_class() avatarBadgeRectForAvatarInRect:a4 badgeType:v5 isRTL:{x, y, width, height}];
  [v11 setFrame:?];
  [objc_opt_class() applyAvatarBadgeStylingToLayer:v11 badgeType:a4];

  return v11;
}

+ (CGRect)avatarBadgeRectForAvatarInRect:(CGRect)a3 badgeType:(unint64_t)a4 isRTL:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!a4)
  {
    v13 = 0.35;
    goto LABEL_12;
  }

  if (a4 == 1)
  {
    v13 = 0.25;
LABEL_12:
    v10 = a3.size.width * v13;
    v14 = x;
    v12 = CGRectGetMaxX(a3) - v10;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MinY = CGRectGetMinY(v18);
    goto LABEL_13;
  }

  if (a4 != 2)
  {
    v12 = *MEMORY[0x1E695F058];
    MinY = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    goto LABEL_15;
  }

  v9 = a5;
  if (a3.size.width * 0.85 >= a3.size.height * 0.85)
  {
    v10 = a3.size.height * 0.85;
  }

  else
  {
    v10 = a3.size.width * 0.85;
  }

  MinY = CGRectGetMidY(a3) + v10 * -0.5;
  if (v9)
  {
    v12 = x - v10 * 0.75;
  }

  else
  {
    v12 = x + width * 0.75;
  }

LABEL_13:
  v15 = v10;
LABEL_15:
  v16 = v12;
  v17 = v10;
  result.size.height = v17;
  result.size.width = v15;
  result.origin.y = MinY;
  result.origin.x = v16;
  return result;
}

+ (void)applyAvatarBadgeStylingToLayer:(id)a3 badgeType:(unint64_t)a4
{
  v5 = a3;
  if (a4 <= 2)
  {
    v6 = v5;
    [objc_opt_class() cropAvatarBadgeLayer:v5 withCropStyle:qword_1A34D9548[a4]];
    v5 = v6;
  }
}

+ (void)cropAvatarBadgeLayer:(id)a3 withCropStyle:(unint64_t)a4
{
  v5 = a3;
  if (a4 == 1)
  {
    v12 = v5;
    [v5 bounds];
    v10 = v11 * 0.25;
  }

  else
  {
    if (a4)
    {
      goto LABEL_9;
    }

    v12 = v5;
    [v5 bounds];
    v7 = v6;
    [v12 bounds];
    if (v7 >= v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 * 0.5;
  }

  [v12 setCornerRadius:v10];
  [v12 setMasksToBounds:1];
  v5 = v12;
LABEL_9:
}

+ (double)frameForBadgeWithFrame:(double)a3 onAvatarFrame:(double)a4 withPosition:(CGFloat)a5 mediaContextFrame:(CGFloat)a6 isRTL:(CGFloat)a7
{
  if (a11 <= 1)
  {
    if (a11)
    {
      if (a11 != 1)
      {
        goto LABEL_27;
      }

      v26 = a3;
      v27 = a4;
      v28 = a5;
      if (!a12)
      {
        MinX = CGRectGetMinX(*&v28);
        v61.origin.x = a5;
        v61.origin.y = a6;
        v61.size.width = a7;
        v61.size.height = a8;
        MinY = CGRectGetMinY(v61);
        a4 = v27;
        a3 = v26;
        goto LABEL_27;
      }

      MinX = CGRectGetMaxX(*&v28) - v26;
      v56.origin.x = a5;
      v56.origin.y = a6;
      v56.size.width = a7;
      v56.size.height = a8;
      v32 = CGRectGetMinY(v56);
      a3 = v26;
      MinY = v32;
      goto LABEL_19;
    }

    v52 = a3;
    rect = a4;
    v38 = a5;
    if (a12)
    {
      MinX = CGRectGetMinX(*&v38);
      v57.origin.x = a5;
      v57.origin.y = a6;
      v57.size.width = a7;
      v57.size.height = a8;
      MinY = CGRectGetMinY(v57);
      v58.origin.x = a13;
      v58.origin.y = a14;
      v58.size.height = a16;
      v58.size.width = a15;
      if (!CGRectEqualToRect(v58, *MEMORY[0x1E695F058]))
      {
        a3 = v52;
        MinX = MinX - (a15 + v52 * -0.5);
LABEL_26:
        a4 = rect;
        goto LABEL_27;
      }
    }

    else
    {
      MinX = CGRectGetMaxX(*&v38) - v52;
      v63.origin.x = a5;
      v63.origin.y = a6;
      v63.size.width = a7;
      v63.size.height = a8;
      MinY = CGRectGetMinY(v63);
      v64.origin.x = a13;
      v64.origin.y = a14;
      v64.size.height = a16;
      v64.size.width = a15;
      if (!CGRectEqualToRect(v64, *MEMORY[0x1E695F058]))
      {
        a3 = v52;
        MinX = a15 + v52 * -0.5 + MinX;
        goto LABEL_26;
      }
    }

    a4 = rect;
    a3 = v52;
    goto LABEL_27;
  }

  if (a11 != 2)
  {
    if (a11 != 3)
    {
      goto LABEL_27;
    }

    v33 = a3;
    v27 = a4;
    v34 = a5;
    if (a12)
    {
      MinX = CGRectGetMaxX(*&v34) - v33;
    }

    else
    {
      MinX = CGRectGetMinX(*&v34);
    }

    v62.origin.x = a5;
    v62.origin.y = a6;
    v62.size.width = a7;
    v62.size.height = a8;
    MaxY = CGRectGetMaxY(v62);
    a3 = v33;
    MinY = MaxY - v33;
LABEL_19:
    a4 = v27;
    goto LABEL_27;
  }

  v42 = a3;
  recta = a4;
  v43 = a5;
  if (a12)
  {
    MinX = CGRectGetMinX(*&v43);
    v59.origin.x = a5;
    v59.origin.y = a6;
    v59.size.width = a7;
    v59.size.height = a8;
    v47 = v42;
    MinY = CGRectGetMaxY(v59) - v42;
    v60.origin.x = a13;
    v60.origin.y = a14;
    v60.size.height = a16;
    v60.size.width = a15;
    if (!CGRectEqualToRect(v60, *MEMORY[0x1E695F058]))
    {
      MinX = MinX - (a15 + v47 * -0.5);
    }
  }

  else
  {
    MinX = CGRectGetMaxX(*&v43) - v42;
    v65.origin.x = a5;
    v47 = v42;
    v65.origin.y = a6;
    v65.size.width = a7;
    v65.size.height = a8;
    MinY = CGRectGetMaxY(v65) - v42;
    v66.origin.x = a13;
    v66.origin.y = a14;
    v66.size.height = a16;
    v66.size.width = a15;
    if (!CGRectEqualToRect(v66, *MEMORY[0x1E695F058]))
    {
      MinX = a15 + v47 * -0.5 + MinX;
    }
  }

  a4 = recta;
  a3 = v47;
LABEL_27:
  v49 = MinX;
  v50 = MinY;

  *&result = CGRectIntegral(*(&a3 - 2));
  return result;
}

@end