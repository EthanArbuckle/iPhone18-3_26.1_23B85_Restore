@interface CHSGaugeParameters
- (BOOL)isEqual:(id)equal;
- (CHSGaugeParameters)initWithBSXPCCoder:(id)coder;
- (CHSGaugeParameters)initWithLeadingText:(id)text trailingText:(id)trailingText style:(unint64_t)style gradientColors:(id)colors gradientLocations:(id)locations fraction:(double)fraction;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CHSGaugeParameters

- (CHSGaugeParameters)initWithLeadingText:(id)text trailingText:(id)trailingText style:(unint64_t)style gradientColors:(id)colors gradientLocations:(id)locations fraction:(double)fraction
{
  textCopy = text;
  trailingTextCopy = trailingText;
  colorsCopy = colors;
  locationsCopy = locations;
  v28.receiver = self;
  v28.super_class = CHSGaugeParameters;
  v18 = [(CHSGaugeParameters *)&v28 init];
  if (v18)
  {
    v19 = [textCopy copy];
    leadingText = v18->_leadingText;
    v18->_leadingText = v19;

    v21 = [trailingTextCopy copy];
    trailingText = v18->_trailingText;
    v18->_trailingText = v21;

    v18->_style = style;
    v23 = [colorsCopy copy];
    gradientColors = v18->_gradientColors;
    v18->_gradientColors = v23;

    v25 = [locationsCopy copy];
    gradientLocations = v18->_gradientLocations;
    v18->_gradientLocations = v25;

    v18->_fraction = fraction;
  }

  return v18;
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

  leadingText = self->_leadingText;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __30__CHSGaugeParameters_isEqual___block_invoke;
  v42[3] = &unk_1E74538E0;
  v11 = v9;
  v43 = v11;
  v12 = [v5 appendObject:leadingText counterpart:v42];
  trailingText = self->_trailingText;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __30__CHSGaugeParameters_isEqual___block_invoke_2;
  v40[3] = &unk_1E74538E0;
  v14 = v11;
  v41 = v14;
  v15 = [v5 appendObject:trailingText counterpart:v40];
  style = self->_style;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __30__CHSGaugeParameters_isEqual___block_invoke_3;
  v38[3] = &unk_1E7453318;
  v17 = v14;
  v39 = v17;
  v18 = [v5 appendUnsignedInteger:style counterpart:v38];
  gradientColors = self->_gradientColors;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __30__CHSGaugeParameters_isEqual___block_invoke_4;
  v36[3] = &unk_1E7453028;
  v20 = v17;
  v37 = v20;
  v21 = [v5 appendObject:gradientColors counterpart:v36];
  gradientLocations = self->_gradientLocations;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __30__CHSGaugeParameters_isEqual___block_invoke_5;
  v34[3] = &unk_1E7453028;
  v23 = v20;
  v35 = v23;
  v24 = [v5 appendObject:gradientLocations counterpart:v34];
  fraction = self->_fraction;
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __30__CHSGaugeParameters_isEqual___block_invoke_6;
  v32 = &unk_1E74530A0;
  v26 = v23;
  v33 = v26;
  v27 = [v5 appendDouble:&v29 counterpart:fraction];
  LOBYTE(v23) = [v5 isEqual];

  return v23;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_leadingText];
  v5 = [builder appendObject:self->_trailingText];
  v6 = [builder appendUnsignedInteger:self->_style];
  v7 = [builder appendObject:self->_gradientColors];
  v8 = [builder appendObject:self->_gradientLocations];
  v9 = [builder appendDouble:self->_fraction];
  v10 = [builder hash];

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_leadingText forKey:@"leadingText"];
  [coderCopy encodeObject:self->_trailingText forKey:@"trailingText"];
  [coderCopy encodeUInt64:self->_style forKey:@"style"];
  [coderCopy encodeCollection:self->_gradientColors forKey:@"gradientColors"];
  [coderCopy encodeCollection:self->_gradientLocations forKey:@"gradientLocations"];
  [coderCopy encodeDouble:@"fraction" forKey:self->_fraction];
}

- (CHSGaugeParameters)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CHSGaugeParameters;
  v5 = [(CHSGaugeParameters *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"leadingText"];
    leadingText = v5->_leadingText;
    v5->_leadingText = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trailingText"];
    trailingText = v5->_trailingText;
    v5->_trailingText = v8;

    v5->_style = [coderCopy decodeUInt64ForKey:@"style"];
    v10 = objc_opt_class();
    v11 = [coderCopy decodeCollectionOfClass:v10 containingClass:objc_opt_class() forKey:@"gradientColors"];
    gradientColors = v5->_gradientColors;
    v5->_gradientColors = v11;

    v13 = objc_opt_class();
    v14 = [coderCopy decodeCollectionOfClass:v13 containingClass:objc_opt_class() forKey:@"gradientLocations"];
    gradientLocations = v5->_gradientLocations;
    v5->_gradientLocations = v14;

    [coderCopy decodeDoubleForKey:@"fraction"];
    v5->_fraction = v16;
  }

  return v5;
}

@end