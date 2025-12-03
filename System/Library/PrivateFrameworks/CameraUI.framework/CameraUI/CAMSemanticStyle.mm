@interface CAMSemanticStyle
+ (CAMSemanticStyle)standardStyle;
+ (CAMSemanticStyle)styleWithDictionary:(id)dictionary error:(id *)error;
+ (id)defaultStyles;
+ (id)persistenceStringForPresetType:(int64_t)type;
+ (unint64_t)_indexForPresetString:(id)string;
+ (void)getSceneBias:(double *)bias warmthBias:(double *)warmthBias forPresetType:(int64_t)type;
- (AVSemanticStyle)avSemanticStyle;
- (BOOL)isCustomizable;
- (BOOL)isCustomized;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSemanticStyle:(id)style;
- (BOOL)isNeutral;
- (CAMSemanticStyle)initWithPresetType:(int64_t)type;
- (CAMSemanticStyle)initWithPresetType:(int64_t)type sceneBias:(double)bias warmthBias:(double)warmthBias;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (NSString)displayName;
- (NSString)presetDisplayName;
- (id)_analyticsDictionaryForCapture:(BOOL)capture;
- (int64_t)_makerPresetWithSceneBias:(double)bias warmthBias:(double)warmthBias;
- (int64_t)makerPreset;
@end

@implementation CAMSemanticStyle

- (CAMSemanticStyle)initWithPresetType:(int64_t)type sceneBias:(double)bias warmthBias:(double)warmthBias
{
  warmthBiasCopy = warmthBias;
  biasCopy = bias;
  v11.receiver = self;
  v11.super_class = CAMSemanticStyle;
  v6 = [(CAMSemanticStyle *)&v11 init];
  if (v6)
  {
    if (([objc_opt_class() isCustomizablePresetType:type] & 1) == 0)
    {
      [objc_opt_class() getSceneBias:&biasCopy warmthBias:&warmthBiasCopy forPresetType:type];
    }

    CEKClamp();
    v6->_sceneBias = v7;
    CEKClamp();
    v6->_warmthBias = v8;
    v6->_presetType = type;
    v9 = v6;
  }

  return v6;
}

- (CAMSemanticStyle)initWithPresetType:(int64_t)type
{
  v6 = 0.0;
  v7 = 0.0;
  [objc_opt_class() getSceneBias:&v7 warmthBias:&v6 forPresetType:type];
  return [(CAMSemanticStyle *)self initWithPresetType:type sceneBias:v7 warmthBias:v6];
}

+ (CAMSemanticStyle)standardStyle
{
  if (standardStyle_onceToken != -1)
  {
    +[CAMSemanticStyle standardStyle];
  }

  v3 = standardStyle_style;

  return v3;
}

uint64_t __33__CAMSemanticStyle_standardStyle__block_invoke()
{
  v0 = [[CAMSemanticStyle alloc] initWithPresetType:0];
  v1 = standardStyle_style;
  standardStyle_style = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)getSceneBias:(double *)bias warmthBias:(double *)warmthBias forPresetType:(int64_t)type
{
  if (type <= 4)
  {
    v5 = qword_1A3A68990[type];
    *bias = dbl_1A3A68968[type];
    *warmthBias = v5;
  }
}

+ (id)persistenceStringForPresetType:(int64_t)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return off_1E76FAC50[type];
  }
}

+ (CAMSemanticStyle)styleWithDictionary:(id)dictionary error:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"CAMSemanticStylePresetTypeKey"];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"CAMSemanticStyleSceneBiasKey"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"CAMSemanticStyleWarmthBiasKey"];

  if (!v7 || !v8 || !v9)
  {
    v23 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A578];
    v38 = @"Unexpected CAMSemanticStyle dictionary structure, missing required keys";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v24 = [v23 errorWithDomain:@"CAMSemanticStyleErrorDomain" code:-1 userInfo:v12];
    v25 = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();
  if (v13)
  {
    v14 = v8;
  }

  else
  {
    v14 = 0;
  }

  v35 = v14;
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();
  if (v15)
  {
    v16 = v9;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  if (isKindOfClass & 1) != 0 && (v13 & 1) != 0 && (v15)
  {
    v18 = [self _indexForPresetString:v12];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = [&unk_1F16C9668 objectAtIndexedSubscript:v18];
      integerValue = [v28 integerValue];

      v27 = v35;
      [v35 floatValue];
      v31 = v30;
      [v17 floatValue];
      v25 = [[CAMSemanticStyle alloc] initWithPresetType:integerValue sceneBias:v31 warmthBias:v32];
      v24 = 0;
      goto LABEL_22;
    }

    v19 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v42[0] = @"Unexpected CAMSemanticStyle dictionary structure, incorrect value for CAMSemanticStylePresetTypeKey: no preset match found";
    v20 = MEMORY[0x1E695DF20];
    v21 = v42;
    v22 = &v41;
  }

  else
  {
    v19 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A578];
    v40 = @"Unexpected CAMSemanticStyle dictionary structure, incorrect type for values of known keys";
    v20 = MEMORY[0x1E695DF20];
    v21 = &v40;
    v22 = &v39;
  }

  v26 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:{1, v35}];
  v24 = [v19 errorWithDomain:@"CAMSemanticStyleErrorDomain" code:-2 userInfo:v26];

  v25 = 0;
  v27 = v36;
LABEL_22:

LABEL_23:
  if (error)
  {
    v33 = v24;
    *error = v24;
  }

  return v25;
}

+ (unint64_t)_indexForPresetString:(id)string
{
  stringCopy = string;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CAMSemanticStyle__indexForPresetString___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_indexForPresetString__onceToken != -1)
  {
    dispatch_once(&_indexForPresetString__onceToken, block);
  }

  v5 = [_indexForPresetString__indexesByPresetString objectForKeyedSubscript:stringCopy];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

void __42__CAMSemanticStyle__indexForPresetString___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(&unk_1F16C9668, "count")}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CAMSemanticStyle__indexForPresetString___block_invoke_2;
  v6[3] = &unk_1E76FAC30;
  v8 = *(a1 + 32);
  v3 = v2;
  v7 = v3;
  [&unk_1F16C9668 enumerateObjectsUsingBlock:v6];
  v4 = _indexForPresetString__indexesByPresetString;
  _indexForPresetString__indexesByPresetString = v3;
  v5 = v3;
}

void __42__CAMSemanticStyle__indexForPresetString___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(a1 + 40) persistenceStringForPresetType:{objc_msgSend(a2, "integerValue")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

+ (id)defaultStyles
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [[CAMSemanticStyle alloc] initWithPresetType:0];
  v3 = [[CAMSemanticStyle alloc] initWithPresetType:2, v2];
  v9[1] = v3;
  v4 = [[CAMSemanticStyle alloc] initWithPresetType:1];
  v9[2] = v4;
  v5 = [[CAMSemanticStyle alloc] initWithPresetType:3];
  v9[3] = v5;
  v6 = [[CAMSemanticStyle alloc] initWithPresetType:4];
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
}

- (BOOL)isNeutral
{
  [(CAMSemanticStyle *)self sceneBias];
  if (fabs(v3) >= 0.005)
  {
    return 0;
  }

  [(CAMSemanticStyle *)self warmthBias];
  return fabs(v4) < 0.005;
}

- (BOOL)isCustomizable
{
  v3 = objc_opt_class();
  presetType = [(CAMSemanticStyle *)self presetType];

  return [v3 isCustomizablePresetType:presetType];
}

- (BOOL)isCustomized
{
  selfCopy = self;
  v3 = [[CAMSemanticStyle alloc] initWithPresetType:[(CAMSemanticStyle *)self presetType]];
  LOBYTE(selfCopy) = [(CAMSemanticStyle *)selfCopy isEqualToSemanticStyle:v3];

  return selfCopy ^ 1;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  v4 = [CAMSemanticStyle persistenceStringForPresetType:[(CAMSemanticStyle *)self presetType]];
  [v3 setObject:v4 forKeyedSubscript:@"CAMSemanticStylePresetTypeKey"];

  v5 = MEMORY[0x1E696AD98];
  [(CAMSemanticStyle *)self sceneBias];
  v6 = [v5 numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"CAMSemanticStyleSceneBiasKey"];

  v7 = MEMORY[0x1E696AD98];
  [(CAMSemanticStyle *)self warmthBias];
  v8 = [v7 numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"CAMSemanticStyleWarmthBiasKey"];

  return v3;
}

- (NSString)displayName
{
  [(CAMSemanticStyle *)self makerPreset];

  return CEKDisplayStringForSemanticStyleMakerPreset();
}

- (NSString)presetDisplayName
{
  v5 = 0.0;
  v6 = 0.0;
  [objc_opt_class() getSceneBias:&v6 warmthBias:&v5 forPresetType:{-[CAMSemanticStyle presetType](self, "presetType")}];
  [(CAMSemanticStyle *)self _makerPresetWithSceneBias:v6 warmthBias:v5];
  v3 = CEKDisplayStringForSemanticStyleMakerPreset();

  return v3;
}

- (int64_t)makerPreset
{
  [(CAMSemanticStyle *)self sceneBias];
  v4 = v3;
  [(CAMSemanticStyle *)self warmthBias];

  return [(CAMSemanticStyle *)self _makerPresetWithSceneBias:v4 warmthBias:v5];
}

- (int64_t)_makerPresetWithSceneBias:(double)bias warmthBias:(double)warmthBias
{
  if (bias < -0.005)
  {
    if (warmthBias < -0.005)
    {
      return 9;
    }

    v5 = warmthBias <= 0.005;
    v6 = 3;
    v7 = 8;
LABEL_11:
    if (v5)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  if (bias > 0.005)
  {
    if (warmthBias < -0.005)
    {
      return 7;
    }

    v5 = warmthBias <= 0.005;
    v6 = 2;
    v7 = 6;
    goto LABEL_11;
  }

  if (warmthBias >= -0.005)
  {
    return 4 * (warmthBias > 0.005);
  }

  else
  {
    return 5;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  presetType = [(CAMSemanticStyle *)self presetType];
  if (presetType > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E76FAC50[presetType];
  }

  [(CAMSemanticStyle *)self sceneBias];
  v7 = v6;
  [(CAMSemanticStyle *)self warmthBias];
  return [v3 stringWithFormat:@"SemanticStyle(Preset: %@, Scn: %.01f, Wrm: %.01f)", v5, v7, v8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CAMSemanticStyle *)self isEqualToSemanticStyle:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToSemanticStyle:(id)style
{
  styleCopy = style;
  v5 = styleCopy;
  if (!styleCopy)
  {
    goto LABEL_6;
  }

  if (styleCopy == self)
  {
    v13 = 1;
    goto LABEL_8;
  }

  presetType = [(CAMSemanticStyle *)self presetType];
  if (presetType == [(CAMSemanticStyle *)v5 presetType]&& ([(CAMSemanticStyle *)self sceneBias], v8 = v7, [(CAMSemanticStyle *)v5 sceneBias], vabdd_f64(v8, v9) < 0.005))
  {
    [(CAMSemanticStyle *)self warmthBias];
    v11 = v10;
    [(CAMSemanticStyle *)v5 warmthBias];
    v13 = vabdd_f64(v11, v12) < 0.005;
  }

  else
  {
LABEL_6:
    v13 = 0;
  }

LABEL_8:

  return v13;
}

- (AVSemanticStyle)avSemanticStyle
{
  v3 = MEMORY[0x1E6987218];
  [(CAMSemanticStyle *)self sceneBias];
  v5 = v4;
  [(CAMSemanticStyle *)self warmthBias];
  *&v6 = v7;
  *&v7 = v5;

  return [v3 semanticStyleWithToneBias:v7 warmthBias:v6];
}

- (id)_analyticsDictionaryForCapture:(BOOL)capture
{
  captureCopy = capture;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (captureCopy)
  {
    v6 = @"semanticStylePreset";
  }

  else
  {
    v6 = @"SemanticStylePreset";
  }

  if (captureCopy)
  {
    v7 = @"semanticStyleToneBias";
  }

  else
  {
    v7 = @"SemanticStyleToneBias";
  }

  if (captureCopy)
  {
    v8 = @"semanticStyleWarmthBias";
  }

  else
  {
    v8 = @"SemanticStyleWarmthBias";
  }

  v9 = @"SemanticStyleCustomized";
  if (captureCopy)
  {
    v9 = @"semanticStyleCustomized";
  }

  v10 = v9;
  v11 = v8;
  v12 = v7;
  v13 = v6;
  presetType = [(CAMSemanticStyle *)self presetType];
  if (presetType > 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = off_1E76FAC78[presetType];
  }

  [v5 setObject:v15 forKeyedSubscript:v13];

  v16 = MEMORY[0x1E696AD98];
  [(CAMSemanticStyle *)self sceneBias];
  v17 = [v16 numberWithDouble:?];
  [v5 setObject:v17 forKeyedSubscript:v12];

  v18 = MEMORY[0x1E696AD98];
  [(CAMSemanticStyle *)self warmthBias];
  v19 = [v18 numberWithDouble:?];
  [v5 setObject:v19 forKeyedSubscript:v11];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAMSemanticStyle isCustomized](self, "isCustomized")}];
  [v5 setObject:v20 forKeyedSubscript:v10];

  return v5;
}

@end