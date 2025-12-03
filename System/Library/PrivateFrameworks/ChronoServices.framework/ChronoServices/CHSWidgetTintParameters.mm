@interface CHSWidgetTintParameters
- (BOOL)isEqual:(id)equal;
- (CHSWidgetTintParameters)initWithBSXPCCoder:(id)coder;
- (CHSWidgetTintParameters)initWithFilterStyle:(int64_t)style;
- (CHSWidgetTintParameters)initWithFilterStyle:(int64_t)style primaryTintColor:(id)color secondaryTintColor:(id)tintColor fraction:(double)fraction;
- (NSString)description;
- (id)_initWithTintParameters:(id)parameters;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)effectiveRenderingMode;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CHSWidgetTintParameters

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __38__CHSWidgetTintParameters_description__block_invoke;
  v10 = &unk_1E7453000;
  v4 = v3;
  v11 = v4;
  selfCopy = self;
  [v4 appendProem:0 block:&v7];
  build = [v4 build];

  return build;
}

id __38__CHSWidgetTintParameters_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromCHSTintFilterStyle(*(*(a1 + 40) + 24));
  [v2 appendString:v3 withName:@"style"];

  v4 = [*(a1 + 32) appendFloat:@"fraction" withName:2 decimalPrecision:*(*(a1 + 40) + 32)];
  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"primaryColor"];
  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"secondaryColor"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"glassOptions" skipIfNil:1];
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_primaryTintColor];
  v5 = [builder appendObject:self->_secondaryTintColor];
  v6 = [builder appendUnsignedInteger:self->_filterStyle];
  v7 = [builder appendDouble:self->_fraction];
  v8 = [builder appendBool:self->_accentedAlternateBackground];
  v9 = [builder appendObject:self->_glassOptions];
  v10 = [builder appendUnsignedInteger:self->_accentedDesaturatedMode];
  v11 = [builder hash];

  return v11;
}

- (CHSWidgetTintParameters)initWithFilterStyle:(int64_t)style
{
  v10.receiver = self;
  v10.super_class = CHSWidgetTintParameters;
  v4 = [(CHSWidgetTintParameters *)&v10 init];
  v5 = v4;
  if (v4)
  {
    primaryTintColor = v4->_primaryTintColor;
    v4->_primaryTintColor = 0;

    secondaryTintColor = v5->_secondaryTintColor;
    v5->_secondaryTintColor = 0;

    v5->_filterStyle = style;
    v5->_fraction = 1.0;
    v5->_accentedAlternateBackground = 0;
    glassOptions = v5->_glassOptions;
    v5->_accentedDesaturatedMode = 0;
    v5->_glassOptions = 0;
  }

  return v5;
}

- (id)_initWithTintParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [(CHSWidgetTintParameters *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_primaryTintColor, parametersCopy[1]);
    objc_storeStrong(&v6->_secondaryTintColor, parametersCopy[2]);
    v6->_filterStyle = parametersCopy[3];
    *&v6->_fraction = parametersCopy[4];
    v6->_accentedAlternateBackground = *(parametersCopy + 40);
    v6->_accentedDesaturatedMode = parametersCopy[6];
    v7 = [parametersCopy[7] copy];
    glassOptions = v6->_glassOptions;
    v6->_glassOptions = v7;
  }

  return v6;
}

- (CHSWidgetTintParameters)initWithFilterStyle:(int64_t)style primaryTintColor:(id)color secondaryTintColor:(id)tintColor fraction:(double)fraction
{
  colorCopy = color;
  tintColorCopy = tintColor;
  v17.receiver = self;
  v17.super_class = CHSWidgetTintParameters;
  v13 = [(CHSWidgetTintParameters *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_filterStyle = style;
    objc_storeStrong(&v13->_primaryTintColor, color);
    objc_storeStrong(&v14->_secondaryTintColor, tintColor);
    v14->_fraction = fraction;
    glassOptions = v14->_glassOptions;
    v14->_glassOptions = 0;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = objc_opt_class();
  v7 = equalCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  primaryTintColor = self->_primaryTintColor;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __35__CHSWidgetTintParameters_isEqual___block_invoke;
  v44[3] = &unk_1E74532F0;
  v11 = v9;
  v45 = v11;
  v12 = [v5 appendObject:primaryTintColor counterpart:v44];
  secondaryTintColor = self->_secondaryTintColor;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __35__CHSWidgetTintParameters_isEqual___block_invoke_2;
  v42[3] = &unk_1E74532F0;
  v14 = v11;
  v43 = v14;
  v15 = [v5 appendObject:secondaryTintColor counterpart:v42];
  filterStyle = self->_filterStyle;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __35__CHSWidgetTintParameters_isEqual___block_invoke_3;
  v40[3] = &unk_1E7453318;
  v17 = v14;
  v41 = v17;
  v18 = [v5 appendUnsignedInteger:filterStyle counterpart:v40];
  fraction = self->_fraction;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __35__CHSWidgetTintParameters_isEqual___block_invoke_4;
  v38[3] = &unk_1E74530A0;
  v20 = v17;
  v39 = v20;
  v21 = [v5 appendDouble:v38 counterpart:fraction];
  accentedAlternateBackground = self->_accentedAlternateBackground;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __35__CHSWidgetTintParameters_isEqual___block_invoke_5;
  v36[3] = &unk_1E7452FB0;
  v23 = v20;
  v37 = v23;
  v24 = [v5 appendBool:accentedAlternateBackground counterpart:v36];
  accentedDesaturatedMode = self->_accentedDesaturatedMode;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __35__CHSWidgetTintParameters_isEqual___block_invoke_6;
  v34[3] = &unk_1E7453318;
  v26 = v23;
  v35 = v26;
  v27 = [v5 appendUnsignedInteger:accentedDesaturatedMode counterpart:v34];
  glassOptions = self->_glassOptions;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __35__CHSWidgetTintParameters_isEqual___block_invoke_7;
  v32[3] = &unk_1E7453390;
  v29 = v26;
  v33 = v29;
  v30 = [v5 appendObject:glassOptions counterpart:v32];
  LOBYTE(v26) = [v5 isEqual];

  return v26;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSWidgetTintParameters alloc];

  return [(CHSWidgetTintParameters *)v4 _initWithTintParameters:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHSMutableWidgetTintParameters allocWithZone:zone];

  return [(CHSWidgetTintParameters *)v4 _initWithTintParameters:self];
}

- (unint64_t)effectiveRenderingMode
{
  filterStyle = self->_filterStyle;
  if (filterStyle > 7)
  {
    return 1;
  }

  else
  {
    return qword_195FAA628[filterStyle];
  }
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_primaryTintColor forKey:@"primaryTintColor"];
  [coderCopy encodeObject:self->_secondaryTintColor forKey:@"secondaryTintColor"];
  [coderCopy encodeUInt64:self->_filterStyle forKey:@"filterStyle"];
  [coderCopy encodeDouble:@"fraction" forKey:self->_fraction];
  [coderCopy encodeBool:self->_accentedAlternateBackground forKey:@"accentedAlternateBackground"];
  [coderCopy encodeUInt64:self->_accentedDesaturatedMode forKey:@"accentedDesaturatedMode"];
  [coderCopy encodeObject:self->_glassOptions forKey:@"glassOptions"];
}

- (CHSWidgetTintParameters)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CHSWidgetTintParameters *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryTintColor"];
    primaryTintColor = v5->_primaryTintColor;
    v5->_primaryTintColor = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryTintColor"];
    secondaryTintColor = v5->_secondaryTintColor;
    v5->_secondaryTintColor = v8;

    v5->_filterStyle = [coderCopy decodeUInt64ForKey:@"filterStyle"];
    [coderCopy decodeDoubleForKey:@"fraction"];
    v5->_fraction = v10;
    v5->_accentedAlternateBackground = [coderCopy decodeBoolForKey:@"accentedAlternateBackground"];
    v5->_accentedDesaturatedMode = [coderCopy decodeUInt64ForKey:@"accentedDesaturatedMode"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"glassOptions"];
    glassOptions = v5->_glassOptions;
    v5->_glassOptions = v11;
  }

  return v5;
}

@end