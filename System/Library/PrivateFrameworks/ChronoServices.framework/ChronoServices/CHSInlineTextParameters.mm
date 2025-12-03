@interface CHSInlineTextParameters
- (BOOL)isEqual:(id)equal;
- (CGSize)graphicMaxSize;
- (CHSInlineTextParameters)init;
- (CHSInlineTextParameters)initWithBSXPCCoder:(id)coder;
- (NSString)description;
- (id)_effectiveDateFormat;
- (id)_initWithInlineTextProperties:(id)properties;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CHSInlineTextParameters

- (CHSInlineTextParameters)init
{
  v9.receiver = self;
  v9.super_class = CHSInlineTextParameters;
  v2 = [(CHSInlineTextParameters *)&v9 init];
  v3 = v2;
  if (v2)
  {
    fontSpecification = v2->_fontSpecification;
    v2->_fontSpecification = 0;

    foregroundColor = v3->_foregroundColor;
    v3->_foregroundColor = 0;

    foregroundDateColor = v3->_foregroundDateColor;
    v3->_foregroundDateColor = 0;

    v3->_allowsNonSystemForegroundColors = 0;
    v3->_showsDateAlongsideText = 0;
    dateFormat = v3->_dateFormat;
    v3->_dateFormat = 0;

    v3->_horizontalAlignment = 0;
    *&v3->_ignoresRTL = 0;
    v3->_graphicMaxSize = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    *&v3->_graphicAlignment = xmmword_195FAA6A0;
  }

  return v3;
}

- (id)_initWithInlineTextProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [(CHSInlineTextParameters *)self init];
  if (v5)
  {
    v6 = [*(propertiesCopy + 3) copy];
    fontSpecification = v5->_fontSpecification;
    v5->_fontSpecification = v6;

    v8 = [*(propertiesCopy + 4) copy];
    foregroundColor = v5->_foregroundColor;
    v5->_foregroundColor = v8;

    v10 = [*(propertiesCopy + 5) copy];
    foregroundDateColor = v5->_foregroundDateColor;
    v5->_foregroundDateColor = v10;

    v5->_allowsNonSystemForegroundColors = propertiesCopy[48];
    v5->_showsDateAlongsideText = propertiesCopy[8];
    v12 = [*(propertiesCopy + 2) copy];
    dateFormat = v5->_dateFormat;
    v5->_dateFormat = v12;

    v5->_horizontalAlignment = *(propertiesCopy + 7);
    v5->_ignoresRTL = propertiesCopy[64];
    v5->_graphicAlignment = *(propertiesCopy + 9);
    v5->_graphicMaxSize = *(propertiesCopy + 88);
    v5->_symbolScale = *(propertiesCopy + 10);
    v5->_forceUppercase = propertiesCopy[65];
  }

  return v5;
}

- (id)_effectiveDateFormat
{
  if ([(NSString *)self->_dateFormat length])
  {
    v3 = self->_dateFormat;
  }

  else
  {
    v3 = @"EEE d";
  }

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __38__CHSInlineTextParameters_description__block_invoke;
  v22 = &unk_1E7453000;
  v4 = v3;
  v23 = v4;
  selfCopy = self;
  v5 = [v4 modifyProem:&v19];
  v6 = [v4 appendObject:self->_fontSpecification withName:@"font" skipIfNil:{1, v19, v20, v21, v22}];
  v7 = [v4 appendObject:self->_foregroundColor withName:@"color" skipIfNil:1];
  v8 = [v4 appendObject:self->_foregroundDateColor withName:@"dateColor" skipIfNil:1];
  v9 = [v4 appendBool:self->_allowsNonSystemForegroundColors withName:@"customColors" ifEqualTo:1];
  v10 = [v4 appendBool:self->_ignoresRTL withName:@"ignoresRTL" ifEqualTo:1];
  graphicAlignment = self->_graphicAlignment;
  v12 = @"center";
  if (graphicAlignment == 1)
  {
    v12 = @"leading";
  }

  if (graphicAlignment == 2)
  {
    v13 = @"trailing";
  }

  else
  {
    v13 = v12;
  }

  [v4 appendString:v13 withName:@"graphicAlignment"];
  v14 = [v4 appendSize:@"graphicMaxSize" withName:{self->_graphicMaxSize.width, self->_graphicMaxSize.height}];
  v15 = [v4 appendUInt64:self->_symbolScale withName:@"symbolScale"];
  v16 = [v4 appendBool:self->_forceUppercase withName:@"forceUppercase" ifEqualTo:1];
  build = [v4 build];

  return build;
}

uint64_t __38__CHSInlineTextParameters_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"showsDate"];
  result = [*(a1 + 32) appendString:*(*(a1 + 40) + 16) withName:@"dateFormat" skipIfEmpty:1];
  v4 = *(*(a1 + 40) + 56);
  if (v4)
  {
    v5 = @"center";
    v6 = *(a1 + 32);
    if (v4 == 1)
    {
      v5 = @"leading";
    }

    if (v4 == 2)
    {
      v7 = @"trailing";
    }

    else
    {
      v7 = v5;
    }

    return [v6 appendString:v7 withName:@"hAlign"];
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [MEMORY[0x1E698E6A0] builderWithObject:v6 ofExpectedClass:objc_opt_class()];
    showsDateAlongsideText = self->_showsDateAlongsideText;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __35__CHSInlineTextParameters_isEqual___block_invoke;
    v71[3] = &unk_1E7452FB0;
    v11 = v8;
    v72 = v11;
    v12 = [v9 appendBool:showsDateAlongsideText counterpart:v71];
    dateFormat = self->_dateFormat;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __35__CHSInlineTextParameters_isEqual___block_invoke_2;
    v69[3] = &unk_1E7452FD8;
    v14 = v11;
    v70 = v14;
    v15 = [v9 appendString:dateFormat counterpart:v69];
    fontSpecification = self->_fontSpecification;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __35__CHSInlineTextParameters_isEqual___block_invoke_3;
    v67[3] = &unk_1E7453078;
    v17 = v14;
    v68 = v17;
    v18 = [v9 appendObject:fontSpecification counterpart:v67];
    foregroundColor = self->_foregroundColor;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __35__CHSInlineTextParameters_isEqual___block_invoke_4;
    v65[3] = &unk_1E7453078;
    v20 = v17;
    v66 = v20;
    v21 = [v9 appendObject:foregroundColor counterpart:v65];
    foregroundDateColor = self->_foregroundDateColor;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __35__CHSInlineTextParameters_isEqual___block_invoke_5;
    v63[3] = &unk_1E7453078;
    v23 = v20;
    v64 = v23;
    v24 = [v9 appendObject:foregroundDateColor counterpart:v63];
    allowsNonSystemForegroundColors = self->_allowsNonSystemForegroundColors;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __35__CHSInlineTextParameters_isEqual___block_invoke_6;
    v61[3] = &unk_1E7452FB0;
    v26 = v23;
    v62 = v26;
    v27 = [v9 appendBool:allowsNonSystemForegroundColors counterpart:v61];
    horizontalAlignment = self->_horizontalAlignment;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __35__CHSInlineTextParameters_isEqual___block_invoke_7;
    v59[3] = &unk_1E7453318;
    v29 = v26;
    v60 = v29;
    v30 = [v9 appendUnsignedInteger:horizontalAlignment counterpart:v59];
    ignoresRTL = self->_ignoresRTL;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __35__CHSInlineTextParameters_isEqual___block_invoke_8;
    v57[3] = &unk_1E7452FB0;
    v32 = v29;
    v58 = v32;
    v33 = [v9 appendBool:ignoresRTL counterpart:v57];
    graphicAlignment = self->_graphicAlignment;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __35__CHSInlineTextParameters_isEqual___block_invoke_9;
    v55[3] = &unk_1E7453318;
    v35 = v32;
    v56 = v35;
    v36 = [v9 appendUnsignedInteger:graphicAlignment counterpart:v55];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __35__CHSInlineTextParameters_isEqual___block_invoke_10;
    v53[3] = &unk_1E7453340;
    v37 = v35;
    v54 = v37;
    v38 = [v9 appendCGSize:v53 counterpart:{self->_graphicMaxSize.width, self->_graphicMaxSize.height}];
    symbolScale = self->_symbolScale;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __35__CHSInlineTextParameters_isEqual___block_invoke_11;
    v51[3] = &unk_1E7453318;
    v40 = v37;
    v52 = v40;
    v41 = [v9 appendUnsignedInteger:symbolScale counterpart:v51];
    forceUppercase = self->_forceUppercase;
    v46 = MEMORY[0x1E69E9820];
    v47 = 3221225472;
    v48 = __35__CHSInlineTextParameters_isEqual___block_invoke_12;
    v49 = &unk_1E7452FB0;
    v50 = v40;
    v43 = [v9 appendBool:forceUppercase counterpart:&v46];
    v44 = [v9 isEqual];
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

double __35__CHSInlineTextParameters_isEqual___block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 88);
  v3 = *(v1 + 96);
  return result;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:self->_showsDateAlongsideText];
  v5 = [builder appendString:self->_dateFormat];
  v6 = [builder appendObject:self->_foregroundColor];
  v7 = [builder appendObject:self->_foregroundDateColor];
  v8 = [builder appendBool:self->_allowsNonSystemForegroundColors];
  v9 = [builder appendObject:self->_fontSpecification];
  v10 = [builder appendUnsignedInteger:self->_horizontalAlignment];
  v11 = [builder appendBool:self->_ignoresRTL];
  v12 = [builder appendUnsignedInteger:self->_graphicAlignment];
  v13 = [builder appendCGSize:{self->_graphicMaxSize.width, self->_graphicMaxSize.height}];
  v14 = [builder appendUnsignedInteger:self->_symbolScale];
  v15 = [builder appendBool:self->_forceUppercase];
  v16 = [builder hash];

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSInlineTextParameters alloc];

  return [(CHSInlineTextParameters *)v4 _initWithInlineTextProperties:self];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_fontSpecification forKey:@"font"];
  [coderCopy encodeObject:self->_foregroundColor forKey:@"fc"];
  [coderCopy encodeObject:self->_foregroundDateColor forKey:@"fdc"];
  [coderCopy encodeBool:self->_allowsNonSystemForegroundColors forKey:@"nsfc"];
  [coderCopy encodeBool:self->_showsDateAlongsideText forKey:@"sdat"];
  [coderCopy encodeObject:self->_dateFormat forKey:@"df"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_horizontalAlignment];
  [coderCopy encodeObject:v4 forKey:@"ha"];

  [coderCopy encodeBool:self->_ignoresRTL forKey:@"irtl"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_graphicAlignment];
  [coderCopy encodeObject:v5 forKey:@"gp"];

  [coderCopy encodeCGSize:@"gms" forKey:{self->_graphicMaxSize.width, self->_graphicMaxSize.height}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_symbolScale];
  [coderCopy encodeObject:v6 forKey:@"ss"];

  [coderCopy encodeBool:self->_forceUppercase forKey:@"fu"];
}

- (CHSInlineTextParameters)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CHSInlineTextParameters *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"font"];
    fontSpecification = v5->_fontSpecification;
    v5->_fontSpecification = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fc"];
    foregroundColor = v5->_foregroundColor;
    v5->_foregroundColor = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fdc"];
    foregroundDateColor = v5->_foregroundDateColor;
    v5->_foregroundDateColor = v10;

    v5->_allowsNonSystemForegroundColors = [coderCopy decodeBoolForKey:@"nsfc"];
    v5->_showsDateAlongsideText = [coderCopy decodeBoolForKey:@"sdat"];
    v12 = [coderCopy decodeStringForKey:@"df"];
    dateFormat = v5->_dateFormat;
    v5->_dateFormat = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ha"];
    v5->_horizontalAlignment = [v14 unsignedIntegerValue];

    v5->_ignoresRTL = [coderCopy decodeBoolForKey:@"irtl"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gp"];
    v5->_graphicAlignment = [v15 unsignedIntegerValue];

    [coderCopy decodeCGSizeForKey:@"gms"];
    v5->_graphicMaxSize.width = v16;
    v5->_graphicMaxSize.height = v17;
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ss"];
    v5->_symbolScale = [v18 unsignedIntegerValue];

    v5->_forceUppercase = [coderCopy decodeBoolForKey:@"fu"];
  }

  return v5;
}

- (CGSize)graphicMaxSize
{
  width = self->_graphicMaxSize.width;
  height = self->_graphicMaxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end