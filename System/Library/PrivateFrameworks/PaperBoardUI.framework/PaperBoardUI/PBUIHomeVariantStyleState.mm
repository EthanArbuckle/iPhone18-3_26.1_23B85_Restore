@interface PBUIHomeVariantStyleState
+ (id)stateWithTintColorStyle:(id)style suggestedTintColor:(id)color tintSource:(id)source isHomeScreenDimmed:(BOOL)dimmed iconSize:(id)size iconStyle:(id)iconStyle iconStyleVariant:(id)variant lastUserSelectedVariantForStyleTypeOption:(id)self0;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToState:(id)state;
- (PBUIHomeVariantStyleState)initWithTintColorStyle:(id)style suggestedTintColor:(id)color tintSource:(id)source isHomeScreenDimmed:(BOOL)dimmed iconSize:(id)size iconStyle:(id)iconStyle iconStyleVariant:(id)variant lastUserSelectedVariantForStyleTypeOption:(id)self0;
- (id)description;
- (id)styleStateByUpdatingSuggestedTintColor:(id)color;
@end

@implementation PBUIHomeVariantStyleState

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  tintColorStyle = [(PBUIHomeVariantStyleState *)self tintColorStyle];
  v5 = [v3 appendObject:tintColorStyle withName:@"tintColorStyle"];

  suggestedTintColor = [(PBUIHomeVariantStyleState *)self suggestedTintColor];
  v7 = [v3 appendObject:suggestedTintColor withName:@"suggestedTintColor" skipIfNil:1];

  tintSource = [(PBUIHomeVariantStyleState *)self tintSource];
  [v3 appendString:tintSource withName:@"tintSource"];

  v9 = [v3 appendBool:-[PBUIHomeVariantStyleState isHomeScreenDimmed](self withName:{"isHomeScreenDimmed"), @"isHomeScreenDimmed"}];
  iconSize = [(PBUIHomeVariantStyleState *)self iconSize];
  v11 = [v3 appendObject:iconSize withName:@"iconSize"];

  iconStyle = [(PBUIHomeVariantStyleState *)self iconStyle];
  v13 = [v3 appendObject:iconStyle withName:@"iconStyle"];

  iconStyleVariant = [(PBUIHomeVariantStyleState *)self iconStyleVariant];
  v15 = [v3 appendObject:iconStyleVariant withName:@"iconStyleVariant"];

  lastUserSelectedVariantForStyleTypeOption = [(PBUIHomeVariantStyleState *)self lastUserSelectedVariantForStyleTypeOption];
  v17 = [v3 appendObject:lastUserSelectedVariantForStyleTypeOption withName:@"lastUserSelectedVariantForStyleTypeOption"];

  build = [v3 build];

  return build;
}

+ (id)stateWithTintColorStyle:(id)style suggestedTintColor:(id)color tintSource:(id)source isHomeScreenDimmed:(BOOL)dimmed iconSize:(id)size iconStyle:(id)iconStyle iconStyleVariant:(id)variant lastUserSelectedVariantForStyleTypeOption:(id)self0
{
  dimmedCopy = dimmed;
  optionCopy = option;
  variantCopy = variant;
  iconStyleCopy = iconStyle;
  sizeCopy = size;
  sourceCopy = source;
  colorCopy = color;
  styleCopy = style;
  v23 = [[PBUIHomeVariantStyleState alloc] initWithTintColorStyle:styleCopy suggestedTintColor:colorCopy tintSource:sourceCopy isHomeScreenDimmed:dimmedCopy iconSize:sizeCopy iconStyle:iconStyleCopy iconStyleVariant:variantCopy lastUserSelectedVariantForStyleTypeOption:optionCopy];

  return v23;
}

- (PBUIHomeVariantStyleState)initWithTintColorStyle:(id)style suggestedTintColor:(id)color tintSource:(id)source isHomeScreenDimmed:(BOOL)dimmed iconSize:(id)size iconStyle:(id)iconStyle iconStyleVariant:(id)variant lastUserSelectedVariantForStyleTypeOption:(id)self0
{
  styleCopy = style;
  colorCopy = color;
  sourceCopy = source;
  sizeCopy = size;
  iconStyleCopy = iconStyle;
  variantCopy = variant;
  optionCopy = option;
  v42.receiver = self;
  v42.super_class = PBUIHomeVariantStyleState;
  v23 = [(PBUIHomeVariantStyleState *)&v42 init];
  if (v23)
  {
    v24 = [styleCopy copy];
    tintColorStyle = v23->_tintColorStyle;
    v23->_tintColorStyle = v24;

    v26 = [colorCopy copy];
    suggestedTintColor = v23->_suggestedTintColor;
    v23->_suggestedTintColor = v26;

    v23->_isHomeScreenDimmed = dimmed;
    v28 = [sizeCopy copy];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = @"SMALL";
    }

    objc_storeStrong(&v23->_iconSize, v30);

    v31 = [iconStyleCopy copy];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = @"default";
    }

    objc_storeStrong(&v23->_iconStyle, v33);

    v34 = [variantCopy copy];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = @"light";
    }

    objc_storeStrong(&v23->_iconStyleVariant, v36);

    v37 = [sourceCopy copy];
    tintSource = v23->_tintSource;
    v23->_tintSource = v37;

    v39 = [optionCopy copy];
    lastUserSelectedVariantForStyleTypeOption = v23->_lastUserSelectedVariantForStyleTypeOption;
    v23->_lastUserSelectedVariantForStyleTypeOption = v39;
  }

  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PBUIHomeVariantStyleState *)self isEqualToState:v5];
  }

  return v6;
}

- (BOOL)isEqualToState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy == self)
  {
    v20 = 1;
  }

  else
    v20 = stateCopy && (-[PBUIHomeVariantStyleState tintColorStyle](stateCopy, "tintColorStyle"), v6 = {;
  }

  return v20;
}

- (id)styleStateByUpdatingSuggestedTintColor:(id)color
{
  colorCopy = color;
  v5 = [PBUIHomeVariantStyleState alloc];
  tintColorStyle = [(PBUIHomeVariantStyleState *)self tintColorStyle];
  tintSource = [(PBUIHomeVariantStyleState *)self tintSource];
  isHomeScreenDimmed = [(PBUIHomeVariantStyleState *)self isHomeScreenDimmed];
  iconSize = [(PBUIHomeVariantStyleState *)self iconSize];
  iconStyle = [(PBUIHomeVariantStyleState *)self iconStyle];
  iconStyleVariant = [(PBUIHomeVariantStyleState *)self iconStyleVariant];
  lastUserSelectedVariantForStyleTypeOption = [(PBUIHomeVariantStyleState *)self lastUserSelectedVariantForStyleTypeOption];
  v13 = [(PBUIHomeVariantStyleState *)v5 initWithTintColorStyle:tintColorStyle suggestedTintColor:colorCopy tintSource:tintSource isHomeScreenDimmed:isHomeScreenDimmed iconSize:iconSize iconStyle:iconStyle iconStyleVariant:iconStyleVariant lastUserSelectedVariantForStyleTypeOption:lastUserSelectedVariantForStyleTypeOption];

  return v13;
}

@end