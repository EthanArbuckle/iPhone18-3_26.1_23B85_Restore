@interface CEKSmartStyle
+ (CEKSmartStyle)identityStyle;
+ (CEKSmartStyle)systemStyle;
+ (id)defaultStylesIncludingSystemStyles:(BOOL)a3 systemStylePlaceholder:(BOOL)a4 creativeStyles:(BOOL)a5;
+ (id)displayNameForPresetType:(int64_t)a3;
+ (id)persistenceStringForPresetType:(int64_t)a3;
+ (id)styleWithDictionary:(id)a3 error:(id *)a4;
+ (int64_t)castTypeForPresetType:(int64_t)a3;
+ (int64_t)presetTypeFromPersistenceString:(id)a3 success:(BOOL *)a4;
+ (unint64_t)_indexForPresetString:(id)a3;
+ (void)_getPresetValuesForPresetType:(int64_t)a3 castIntensity:(double *)a4 toneBias:(double *)a5 colorBias:(double *)a6;
- (BOOL)isCustomizable;
- (BOOL)isCustomized;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSmartStyle:(id)a3;
- (BOOL)isNeutral;
- (CEKSmartStyle)initWithPresetType:(int64_t)a3;
- (CEKSmartStyle)initWithPresetType:(int64_t)a3 castIntensity:(double)a4 toneBias:(double)a5 colorBias:(double)a6;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (NSString)presetDisplayName;
- (id)_analyticsDictionaryForCapture:(BOOL)a3;
@end

@implementation CEKSmartStyle

- (CEKSmartStyle)initWithPresetType:(int64_t)a3 castIntensity:(double)a4 toneBias:(double)a5 colorBias:(double)a6
{
  v18 = a5;
  v19 = a4;
  v17 = a6;
  v16.receiver = self;
  v16.super_class = CEKSmartStyle;
  v7 = [(CEKSmartStyle *)&v16 init];
  if (v7)
  {
    v8 = [objc_opt_class() castTypeForPresetType:a3];
    v9 = [objc_opt_class() isCustomizablePresetType:a3];
    v10 = objc_opt_class();
    if (v9)
    {
      if ([v10 canCustomizeCastIntensityForCastType:v8])
      {
LABEL_7:
        v7->_presetType = a3;
        v7->_castType = v8;
        v7->_castIntensity = CEKClamp(v19, 0.0, 1.0);
        v7->_toneBias = CEKClamp(v18, -1.0, 1.0);
        v7->_colorBias = CEKClamp(v17, -1.0, 1.0);
        v14 = v7;
        goto LABEL_8;
      }

      v10 = objc_opt_class();
      v11 = a3;
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v12 = &v18;
      v13 = &v17;
      v11 = a3;
    }

    [v10 _getPresetValuesForPresetType:v11 castIntensity:&v19 toneBias:v12 colorBias:v13];
    goto LABEL_7;
  }

LABEL_8:

  return v7;
}

- (CEKSmartStyle)initWithPresetType:(int64_t)a3
{
  v7 = 0.0;
  v8 = 0.0;
  v6 = 0.0;
  [objc_opt_class() _getPresetValuesForPresetType:a3 castIntensity:&v8 toneBias:&v7 colorBias:&v6];
  return [(CEKSmartStyle *)self initWithPresetType:a3 castIntensity:v8 toneBias:v7 colorBias:v6];
}

+ (CEKSmartStyle)identityStyle
{
  if (identityStyle_onceToken != -1)
  {
    +[CEKSmartStyle identityStyle];
  }

  v3 = identityStyle_style;

  return v3;
}

uint64_t __30__CEKSmartStyle_identityStyle__block_invoke()
{
  v0 = [[CEKSmartStyle alloc] initWithPresetType:1];
  v1 = identityStyle_style;
  identityStyle_style = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (CEKSmartStyle)systemStyle
{
  if (systemStyle_onceToken != -1)
  {
    +[CEKSmartStyle systemStyle];
  }

  v3 = systemStyle_style;

  return v3;
}

uint64_t __28__CEKSmartStyle_systemStyle__block_invoke()
{
  v0 = [[CEKSmartStyle alloc] initWithPresetType:0];
  v1 = systemStyle_style;
  systemStyle_style = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (int64_t)castTypeForPresetType:(int64_t)a3
{
  if ((a3 - 2) >= 0xF)
  {
    return 0;
  }

  else
  {
    return a3 - 1;
  }
}

+ (id)persistenceStringForPresetType:(int64_t)a3
{
  if (a3 > 0x10)
  {
    return 0;
  }

  else
  {
    return off_1E7CC6E08[a3];
  }
}

+ (int64_t)presetTypeFromPersistenceString:(id)a3 success:(BOOL *)a4
{
  v5 = [a1 _indexForPresetString:a3];
  v6 = v5 != 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [&unk_1F2FE0278 objectAtIndexedSubscript:v5];
    v8 = [v7 integerValue];

    if (!a4)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v8 = 1;
  if (a4)
  {
LABEL_5:
    *a4 = v6;
  }

  return v8;
}

+ (void)_getPresetValuesForPresetType:(int64_t)a3 castIntensity:(double *)a4 toneBias:(double *)a5 colorBias:(double *)a6
{
  if (a3 > 0x10)
  {
    v10 = 0;
  }

  else
  {
    v10 = **(&unk_1E7CC6CF8 + a3);
  }

  v11 = [MEMORY[0x1E6991718] defaultStyleForCastType:v10];
  if (!v11)
  {
    v12 = os_log_create("com.apple.camera", "CameraEditKit");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CEKSmartStyle _getPresetValuesForPresetType:a3 castIntensity:v12 toneBias:? colorBias:?];
    }
  }

  if (a4)
  {
    [v11 castIntensity];
    *a4 = v13;
  }

  if (a5)
  {
    [v11 toneBias];
    *a5 = v14;
  }

  if (a6)
  {
    [v11 colorBias];
    *a6 = v15;
  }
}

+ (id)defaultStylesIncludingSystemStyles:(BOOL)a3 systemStylePlaceholder:(BOOL)a4 creativeStyles:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v31 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v7)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [&unk_1F2FE0290 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(&unk_1F2FE0290);
          }

          v13 = -[CEKSmartStyle initWithPresetType:]([CEKSmartStyle alloc], "initWithPresetType:", [*(*(&v25 + 1) + 8 * i) integerValue]);
          [v8 addObject:v13];
        }

        v10 = [&unk_1F2FE0290 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
    }
  }

  if (v6)
  {
    v14 = [[CEKSmartStyle alloc] initWithPresetType:0];
    [v8 addObject:v14];
  }

  if (v5)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = [&unk_1F2FE02C0 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(&unk_1F2FE02C0);
          }

          v19 = -[CEKSmartStyle initWithPresetType:]([CEKSmartStyle alloc], "initWithPresetType:", [*(*(&v21 + 1) + 8 * j) integerValue]);
          [v8 addObject:v19];
        }

        v16 = [&unk_1F2FE02C0 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }
  }

  return v8;
}

- (NSString)description
{
  v3 = [(CEKSmartStyle *)self isCustomized];
  v4 = MEMORY[0x1E696AEC0];
  v5 = CEKDebugStringForSmartStylePresetType([(CEKSmartStyle *)self presetType]);
  v6 = v5;
  if (v3)
  {
    v7 = CEKDebugStringForSmartStyleCastType([(CEKSmartStyle *)self castType]);
    [(CEKSmartStyle *)self castIntensity];
    v9 = v8;
    [(CEKSmartStyle *)self toneBias];
    v11 = v10;
    [(CEKSmartStyle *)self colorBias];
    v13 = [v4 stringWithFormat:@"SmartStyle(Preset:%@, Cast:%@, Intensity:%.2f, Tone:%.2f, Color:%.2f)", v6, v7, v9, v11, v12];
  }

  else
  {
    v13 = [v4 stringWithFormat:@"SmartStyle(Preset:%@)", v5];
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CEKSmartStyle *)self isEqualToSmartStyle:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToSmartStyle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  if (v4 == self)
  {
    v17 = 1;
    goto LABEL_10;
  }

  v6 = [(CEKSmartStyle *)self presetType];
  if (v6 == [(CEKSmartStyle *)v5 presetType]&& (v7 = [(CEKSmartStyle *)self castType], v7 == [(CEKSmartStyle *)v5 castType]) && ([(CEKSmartStyle *)self castIntensity], v9 = v8, [(CEKSmartStyle *)v5 castIntensity], vabdd_f64(v9, v10) < 0.005) && ([(CEKSmartStyle *)self toneBias], v12 = v11, [(CEKSmartStyle *)v5 toneBias], vabdd_f64(v12, v13) < 0.005))
  {
    [(CEKSmartStyle *)self colorBias];
    v15 = v14;
    [(CEKSmartStyle *)v5 colorBias];
    v17 = vabdd_f64(v15, v16) < 0.005;
  }

  else
  {
LABEL_8:
    v17 = 0;
  }

LABEL_10:

  return v17;
}

- (BOOL)isNeutral
{
  if ([(CEKSmartStyle *)self castType])
  {
    return 0;
  }

  [(CEKSmartStyle *)self toneBias];
  if (fabs(v3) >= 0.005)
  {
    return 0;
  }

  [(CEKSmartStyle *)self colorBias];
  return fabs(v4) < 0.005;
}

- (BOOL)isCustomizable
{
  v3 = objc_opt_class();
  v4 = [(CEKSmartStyle *)self presetType];

  return [v3 isCustomizablePresetType:v4];
}

- (BOOL)isCustomized
{
  v2 = self;
  v3 = [[CEKSmartStyle alloc] initWithPresetType:[(CEKSmartStyle *)self presetType]];
  LOBYTE(v2) = [(CEKSmartStyle *)v2 isEqualToSmartStyle:v3];

  return v2 ^ 1;
}

- (NSString)presetDisplayName
{
  v3 = objc_opt_class();
  v4 = [(CEKSmartStyle *)self presetType];

  return [v3 displayNameForPresetType:v4];
}

+ (id)displayNameForPresetType:(int64_t)a3
{
  if (a3 > 0x10)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7CC6D80[a3];
  }

  return CEKLocalizedFrameworkString(v3, 0);
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  v17 = 0.0;
  v18 = 0.0;
  v16 = 0.0;
  [objc_opt_class() _getPresetValuesForPresetType:-[CEKSmartStyle presetType](self castIntensity:"presetType") toneBias:&v18 colorBias:{&v17, &v16}];
  v4 = [(CEKSmartStyle *)self presetType];
  v5 = 0;
  if (v4 <= 0x10)
  {
    v5 = off_1E7CC6E08[v4];
  }

  [v3 setObject:v5 forKeyedSubscript:@"PresetType"];
  [(CEKSmartStyle *)self castIntensity];
  if (v6 != v18)
  {
    v7 = MEMORY[0x1E696AD98];
    [(CEKSmartStyle *)self castIntensity];
    v8 = [v7 numberWithDouble:?];
    [v3 setObject:v8 forKeyedSubscript:@"CastIntensity"];
  }

  [(CEKSmartStyle *)self toneBias];
  if (v9 != v17)
  {
    v10 = MEMORY[0x1E696AD98];
    [(CEKSmartStyle *)self toneBias];
    v11 = [v10 numberWithDouble:?];
    [v3 setObject:v11 forKeyedSubscript:@"ToneBias"];
  }

  [(CEKSmartStyle *)self colorBias];
  if (v12 != v16)
  {
    v13 = MEMORY[0x1E696AD98];
    [(CEKSmartStyle *)self colorBias];
    v14 = [v13 numberWithDouble:?];
    [v3 setObject:v14 forKeyedSubscript:@"ColorBias"];
  }

  return v3;
}

+ (id)styleWithDictionary:(id)a3 error:(id *)a4
{
  v42[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"PresetType"];
  v7 = [v5 objectForKeyedSubscript:@"CastIntensity"];
  v8 = [v5 objectForKeyedSubscript:@"ToneBias"];
  v9 = [v5 objectForKeyedSubscript:@"ColorBias"];

  v10 = MEMORY[0x1E696A578];
  if (!v6 && (v28 = MEMORY[0x1E696ABC0], v41 = *MEMORY[0x1E696A578], v42[0] = @"Unexpected CEKSmartStyle dictionary structure, missing required keys", [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "errorWithDomain:code:userInfo:", @"CEKSmartStyleErrorDomain", -1, v29), v13 = objc_claimAutoreleasedReturnValue(), v29, v13) || ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && v9) && (v11 = MEMORY[0x1E696ABC0], v39 = *v10, v40 = @"Unexpected CEKSmartStyle dictionary structure, incorrect type for values of known keys", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v40, &v39, 1), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "errorWithDomain:code:userInfo:", @"CEKSmartStyleErrorDomain", -2, v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v13) || (v14 = objc_msgSend(a1, "_indexForPresetString:", v6), v14 == 0x7FFFFFFFFFFFFFFFLL) && (v15 = MEMORY[0x1E696ABC0], v37 = *v10, v38 = @"Unexpected CEKSmartStyle dictionary structure, incorrect value for PresetTypeKey: no preset match found", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v38, &v37, 1), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "errorWithDomain:code:userInfo:", @"CEKSmartStyleErrorDomain", -2, v16), v13 = objc_claimAutoreleasedReturnValue(), v16, v13))
  {
    v30 = 0;
    if (!a4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v17 = [&unk_1F2FE0278 objectAtIndexedSubscript:v14];
  v18 = [v17 integerValue];

  v19 = v7;
  v20 = v8;
  v21 = v9;
  v35 = 0.0;
  v36 = 0.0;
  v34 = 0.0;
  [a1 _getPresetValuesForPresetType:v18 castIntensity:&v36 toneBias:&v35 colorBias:&v34];
  if (v19)
  {
    [v19 floatValue];
    v23 = v22;
    if (v20)
    {
      goto LABEL_14;
    }

LABEL_23:
    v25 = v35;
    if (v21)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  v23 = v36;
  if (!v20)
  {
    goto LABEL_23;
  }

LABEL_14:
  [v20 floatValue];
  v25 = v24;
  if (v21)
  {
LABEL_15:
    [v21 floatValue];
    v27 = v26;
    goto LABEL_25;
  }

LABEL_24:
  v27 = v34;
LABEL_25:
  v30 = [[CEKSmartStyle alloc] initWithPresetType:v18 castIntensity:v23 toneBias:v25 colorBias:v27];

  v13 = 0;
  if (a4)
  {
LABEL_18:
    v31 = v13;
    *a4 = v13;
  }

LABEL_19:

  return v30;
}

+ (unint64_t)_indexForPresetString:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (_indexForPresetString__onceToken != -1)
    {
      +[CEKSmartStyle _indexForPresetString:];
    }

    v4 = [_indexForPresetString__indexesByString objectForKeyedSubscript:v3];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 unsignedIntegerValue];
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

void __39__CEKSmartStyle__indexForPresetString___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(&unk_1F2FE0278, "count")}];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__CEKSmartStyle__indexForPresetString___block_invoke_2;
  v4[3] = &unk_1E7CC6C58;
  v1 = v0;
  v5 = v1;
  [&unk_1F2FE0278 enumerateObjectsUsingBlock:v4];
  v2 = _indexForPresetString__indexesByString;
  _indexForPresetString__indexesByString = v1;
  v3 = v1;
}

void __39__CEKSmartStyle__indexForPresetString___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 integerValue];
  if (v5 > 0x10)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E7CC6E08[v5];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)_analyticsDictionaryForCapture:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    v6 = @"smartStylePreset";
  }

  else
  {
    v6 = @"SmartStylePreset";
  }

  if (v3)
  {
    v7 = @"smartStyleCastIntensity";
  }

  else
  {
    v7 = @"SmartStyleCastIntensity";
  }

  if (v3)
  {
    v8 = @"smartStyleToneBias";
  }

  else
  {
    v8 = @"SmartStyleToneBias";
  }

  if (v3)
  {
    v9 = @"smartStyleColorBias";
  }

  else
  {
    v9 = @"SmartStyleColorBias";
  }

  v10 = @"SmartStyleCustomized";
  if (v3)
  {
    v10 = @"smartStyleCustomized";
  }

  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v16 = [(CEKSmartStyle *)self presetType];
  if (v16 > 0x10)
  {
    v17 = 0;
  }

  else
  {
    v17 = off_1E7CC6E08[v16];
  }

  [v5 setObject:v17 forKeyedSubscript:v15];

  v18 = MEMORY[0x1E696AD98];
  [(CEKSmartStyle *)self castIntensity];
  v19 = [v18 numberWithDouble:?];
  [v5 setObject:v19 forKeyedSubscript:v14];

  v20 = MEMORY[0x1E696AD98];
  [(CEKSmartStyle *)self toneBias];
  v21 = [v20 numberWithDouble:?];
  [v5 setObject:v21 forKeyedSubscript:v13];

  v22 = MEMORY[0x1E696AD98];
  [(CEKSmartStyle *)self colorBias];
  v23 = [v22 numberWithDouble:?];
  [v5 setObject:v23 forKeyedSubscript:v12];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[CEKSmartStyle isCustomized](self, "isCustomized")}];
  [v5 setObject:v24 forKeyedSubscript:v11];

  return v5;
}

+ (void)_getPresetValuesForPresetType:(unint64_t)a1 castIntensity:(NSObject *)a2 toneBias:colorBias:.cold.1(unint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 > 0x10)
  {
    v2 = 0;
  }

  else
  {
    v2 = off_1E7CC6E08[a1];
  }

  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1B7E93000, a2, OS_LOG_TYPE_ERROR, "Failed to get defaults for SmartStyle preset type %{public}@", &v3, 0xCu);
}

@end