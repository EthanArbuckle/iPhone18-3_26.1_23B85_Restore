@interface CEKSmartStyle
+ (CEKSmartStyle)identityStyle;
+ (CEKSmartStyle)systemStyle;
+ (id)defaultStylesIncludingSystemStyles:(BOOL)styles systemStylePlaceholder:(BOOL)placeholder creativeStyles:(BOOL)creativeStyles;
+ (id)displayNameForPresetType:(int64_t)type;
+ (id)persistenceStringForPresetType:(int64_t)type;
+ (id)styleWithDictionary:(id)dictionary error:(id *)error;
+ (int64_t)castTypeForPresetType:(int64_t)type;
+ (int64_t)presetTypeFromPersistenceString:(id)string success:(BOOL *)success;
+ (unint64_t)_indexForPresetString:(id)string;
+ (void)_getPresetValuesForPresetType:(int64_t)type castIntensity:(double *)intensity toneBias:(double *)bias colorBias:(double *)colorBias;
- (BOOL)isCustomizable;
- (BOOL)isCustomized;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSmartStyle:(id)style;
- (BOOL)isNeutral;
- (CEKSmartStyle)initWithPresetType:(int64_t)type;
- (CEKSmartStyle)initWithPresetType:(int64_t)type castIntensity:(double)intensity toneBias:(double)bias colorBias:(double)colorBias;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (NSString)presetDisplayName;
- (id)_analyticsDictionaryForCapture:(BOOL)capture;
@end

@implementation CEKSmartStyle

- (CEKSmartStyle)initWithPresetType:(int64_t)type castIntensity:(double)intensity toneBias:(double)bias colorBias:(double)colorBias
{
  biasCopy = bias;
  intensityCopy = intensity;
  colorBiasCopy = colorBias;
  v16.receiver = self;
  v16.super_class = CEKSmartStyle;
  v7 = [(CEKSmartStyle *)&v16 init];
  if (v7)
  {
    v8 = [objc_opt_class() castTypeForPresetType:type];
    v9 = [objc_opt_class() isCustomizablePresetType:type];
    v10 = objc_opt_class();
    if (v9)
    {
      if ([v10 canCustomizeCastIntensityForCastType:v8])
      {
LABEL_7:
        v7->_presetType = type;
        v7->_castType = v8;
        v7->_castIntensity = CEKClamp(intensityCopy, 0.0, 1.0);
        v7->_toneBias = CEKClamp(biasCopy, -1.0, 1.0);
        v7->_colorBias = CEKClamp(colorBiasCopy, -1.0, 1.0);
        v14 = v7;
        goto LABEL_8;
      }

      v10 = objc_opt_class();
      typeCopy2 = type;
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v12 = &biasCopy;
      v13 = &colorBiasCopy;
      typeCopy2 = type;
    }

    [v10 _getPresetValuesForPresetType:typeCopy2 castIntensity:&intensityCopy toneBias:v12 colorBias:v13];
    goto LABEL_7;
  }

LABEL_8:

  return v7;
}

- (CEKSmartStyle)initWithPresetType:(int64_t)type
{
  v7 = 0.0;
  v8 = 0.0;
  v6 = 0.0;
  [objc_opt_class() _getPresetValuesForPresetType:type castIntensity:&v8 toneBias:&v7 colorBias:&v6];
  return [(CEKSmartStyle *)self initWithPresetType:type castIntensity:v8 toneBias:v7 colorBias:v6];
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

+ (int64_t)castTypeForPresetType:(int64_t)type
{
  if ((type - 2) >= 0xF)
  {
    return 0;
  }

  else
  {
    return type - 1;
  }
}

+ (id)persistenceStringForPresetType:(int64_t)type
{
  if (type > 0x10)
  {
    return 0;
  }

  else
  {
    return off_1E7CC6E08[type];
  }
}

+ (int64_t)presetTypeFromPersistenceString:(id)string success:(BOOL *)success
{
  v5 = [self _indexForPresetString:string];
  v6 = v5 != 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [&unk_1F2FE0278 objectAtIndexedSubscript:v5];
    integerValue = [v7 integerValue];

    if (!success)
    {
      return integerValue;
    }

    goto LABEL_5;
  }

  integerValue = 1;
  if (success)
  {
LABEL_5:
    *success = v6;
  }

  return integerValue;
}

+ (void)_getPresetValuesForPresetType:(int64_t)type castIntensity:(double *)intensity toneBias:(double *)bias colorBias:(double *)colorBias
{
  if (type > 0x10)
  {
    v10 = 0;
  }

  else
  {
    v10 = **(&unk_1E7CC6CF8 + type);
  }

  v11 = [MEMORY[0x1E6991718] defaultStyleForCastType:v10];
  if (!v11)
  {
    v12 = os_log_create("com.apple.camera", "CameraEditKit");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CEKSmartStyle _getPresetValuesForPresetType:type castIntensity:v12 toneBias:? colorBias:?];
    }
  }

  if (intensity)
  {
    [v11 castIntensity];
    *intensity = v13;
  }

  if (bias)
  {
    [v11 toneBias];
    *bias = v14;
  }

  if (colorBias)
  {
    [v11 colorBias];
    *colorBias = v15;
  }
}

+ (id)defaultStylesIncludingSystemStyles:(BOOL)styles systemStylePlaceholder:(BOOL)placeholder creativeStyles:(BOOL)creativeStyles
{
  creativeStylesCopy = creativeStyles;
  placeholderCopy = placeholder;
  stylesCopy = styles;
  v31 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (stylesCopy)
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

  if (placeholderCopy)
  {
    v14 = [[CEKSmartStyle alloc] initWithPresetType:0];
    [v8 addObject:v14];
  }

  if (creativeStylesCopy)
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
  isCustomized = [(CEKSmartStyle *)self isCustomized];
  v4 = MEMORY[0x1E696AEC0];
  v5 = CEKDebugStringForSmartStylePresetType([(CEKSmartStyle *)self presetType]);
  v6 = v5;
  if (isCustomized)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CEKSmartStyle *)self isEqualToSmartStyle:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToSmartStyle:(id)style
{
  styleCopy = style;
  v5 = styleCopy;
  if (!styleCopy)
  {
    goto LABEL_8;
  }

  if (styleCopy == self)
  {
    v17 = 1;
    goto LABEL_10;
  }

  presetType = [(CEKSmartStyle *)self presetType];
  if (presetType == [(CEKSmartStyle *)v5 presetType]&& (v7 = [(CEKSmartStyle *)self castType], v7 == [(CEKSmartStyle *)v5 castType]) && ([(CEKSmartStyle *)self castIntensity], v9 = v8, [(CEKSmartStyle *)v5 castIntensity], vabdd_f64(v9, v10) < 0.005) && ([(CEKSmartStyle *)self toneBias], v12 = v11, [(CEKSmartStyle *)v5 toneBias], vabdd_f64(v12, v13) < 0.005))
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
  presetType = [(CEKSmartStyle *)self presetType];

  return [v3 isCustomizablePresetType:presetType];
}

- (BOOL)isCustomized
{
  selfCopy = self;
  v3 = [[CEKSmartStyle alloc] initWithPresetType:[(CEKSmartStyle *)self presetType]];
  LOBYTE(selfCopy) = [(CEKSmartStyle *)selfCopy isEqualToSmartStyle:v3];

  return selfCopy ^ 1;
}

- (NSString)presetDisplayName
{
  v3 = objc_opt_class();
  presetType = [(CEKSmartStyle *)self presetType];

  return [v3 displayNameForPresetType:presetType];
}

+ (id)displayNameForPresetType:(int64_t)type
{
  if (type > 0x10)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7CC6D80[type];
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
  presetType = [(CEKSmartStyle *)self presetType];
  v5 = 0;
  if (presetType <= 0x10)
  {
    v5 = off_1E7CC6E08[presetType];
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

+ (id)styleWithDictionary:(id)dictionary error:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"PresetType"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"CastIntensity"];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"ToneBias"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"ColorBias"];

  v10 = MEMORY[0x1E696A578];
  if (!v6 && (v28 = MEMORY[0x1E696ABC0], v41 = *MEMORY[0x1E696A578], v42[0] = @"Unexpected CEKSmartStyle dictionary structure, missing required keys", [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "errorWithDomain:code:userInfo:", @"CEKSmartStyleErrorDomain", -1, v29), v13 = objc_claimAutoreleasedReturnValue(), v29, v13) || ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && v9) && (v11 = MEMORY[0x1E696ABC0], v39 = *v10, v40 = @"Unexpected CEKSmartStyle dictionary structure, incorrect type for values of known keys", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v40, &v39, 1), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "errorWithDomain:code:userInfo:", @"CEKSmartStyleErrorDomain", -2, v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v13) || (v14 = objc_msgSend(self, "_indexForPresetString:", v6), v14 == 0x7FFFFFFFFFFFFFFFLL) && (v15 = MEMORY[0x1E696ABC0], v37 = *v10, v38 = @"Unexpected CEKSmartStyle dictionary structure, incorrect value for PresetTypeKey: no preset match found", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v38, &v37, 1), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "errorWithDomain:code:userInfo:", @"CEKSmartStyleErrorDomain", -2, v16), v13 = objc_claimAutoreleasedReturnValue(), v16, v13))
  {
    v30 = 0;
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v17 = [&unk_1F2FE0278 objectAtIndexedSubscript:v14];
  integerValue = [v17 integerValue];

  v19 = v7;
  v20 = v8;
  v21 = v9;
  v35 = 0.0;
  v36 = 0.0;
  v34 = 0.0;
  [self _getPresetValuesForPresetType:integerValue castIntensity:&v36 toneBias:&v35 colorBias:&v34];
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
  v30 = [[CEKSmartStyle alloc] initWithPresetType:integerValue castIntensity:v23 toneBias:v25 colorBias:v27];

  v13 = 0;
  if (error)
  {
LABEL_18:
    v31 = v13;
    *error = v13;
  }

LABEL_19:

  return v30;
}

+ (unint64_t)_indexForPresetString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    if (_indexForPresetString__onceToken != -1)
    {
      +[CEKSmartStyle _indexForPresetString:];
    }

    v4 = [_indexForPresetString__indexesByString objectForKeyedSubscript:stringCopy];
    v5 = v4;
    if (v4)
    {
      unsignedIntegerValue = [v4 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
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

- (id)_analyticsDictionaryForCapture:(BOOL)capture
{
  captureCopy = capture;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (captureCopy)
  {
    v6 = @"smartStylePreset";
  }

  else
  {
    v6 = @"SmartStylePreset";
  }

  if (captureCopy)
  {
    v7 = @"smartStyleCastIntensity";
  }

  else
  {
    v7 = @"SmartStyleCastIntensity";
  }

  if (captureCopy)
  {
    v8 = @"smartStyleToneBias";
  }

  else
  {
    v8 = @"SmartStyleToneBias";
  }

  if (captureCopy)
  {
    v9 = @"smartStyleColorBias";
  }

  else
  {
    v9 = @"SmartStyleColorBias";
  }

  v10 = @"SmartStyleCustomized";
  if (captureCopy)
  {
    v10 = @"smartStyleCustomized";
  }

  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  presetType = [(CEKSmartStyle *)self presetType];
  if (presetType > 0x10)
  {
    v17 = 0;
  }

  else
  {
    v17 = off_1E7CC6E08[presetType];
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