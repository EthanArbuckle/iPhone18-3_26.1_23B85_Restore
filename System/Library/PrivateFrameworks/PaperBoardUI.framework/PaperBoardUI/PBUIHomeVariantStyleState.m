@interface PBUIHomeVariantStyleState
+ (id)stateWithTintColorStyle:(id)a3 suggestedTintColor:(id)a4 tintSource:(id)a5 isHomeScreenDimmed:(BOOL)a6 iconSize:(id)a7 iconStyle:(id)a8 iconStyleVariant:(id)a9 lastUserSelectedVariantForStyleTypeOption:(id)a10;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToState:(id)a3;
- (PBUIHomeVariantStyleState)initWithTintColorStyle:(id)a3 suggestedTintColor:(id)a4 tintSource:(id)a5 isHomeScreenDimmed:(BOOL)a6 iconSize:(id)a7 iconStyle:(id)a8 iconStyleVariant:(id)a9 lastUserSelectedVariantForStyleTypeOption:(id)a10;
- (id)description;
- (id)styleStateByUpdatingSuggestedTintColor:(id)a3;
@end

@implementation PBUIHomeVariantStyleState

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(PBUIHomeVariantStyleState *)self tintColorStyle];
  v5 = [v3 appendObject:v4 withName:@"tintColorStyle"];

  v6 = [(PBUIHomeVariantStyleState *)self suggestedTintColor];
  v7 = [v3 appendObject:v6 withName:@"suggestedTintColor" skipIfNil:1];

  v8 = [(PBUIHomeVariantStyleState *)self tintSource];
  [v3 appendString:v8 withName:@"tintSource"];

  v9 = [v3 appendBool:-[PBUIHomeVariantStyleState isHomeScreenDimmed](self withName:{"isHomeScreenDimmed"), @"isHomeScreenDimmed"}];
  v10 = [(PBUIHomeVariantStyleState *)self iconSize];
  v11 = [v3 appendObject:v10 withName:@"iconSize"];

  v12 = [(PBUIHomeVariantStyleState *)self iconStyle];
  v13 = [v3 appendObject:v12 withName:@"iconStyle"];

  v14 = [(PBUIHomeVariantStyleState *)self iconStyleVariant];
  v15 = [v3 appendObject:v14 withName:@"iconStyleVariant"];

  v16 = [(PBUIHomeVariantStyleState *)self lastUserSelectedVariantForStyleTypeOption];
  v17 = [v3 appendObject:v16 withName:@"lastUserSelectedVariantForStyleTypeOption"];

  v18 = [v3 build];

  return v18;
}

+ (id)stateWithTintColorStyle:(id)a3 suggestedTintColor:(id)a4 tintSource:(id)a5 isHomeScreenDimmed:(BOOL)a6 iconSize:(id)a7 iconStyle:(id)a8 iconStyleVariant:(id)a9 lastUserSelectedVariantForStyleTypeOption:(id)a10
{
  v12 = a6;
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [[PBUIHomeVariantStyleState alloc] initWithTintColorStyle:v22 suggestedTintColor:v21 tintSource:v20 isHomeScreenDimmed:v12 iconSize:v19 iconStyle:v18 iconStyleVariant:v17 lastUserSelectedVariantForStyleTypeOption:v16];

  return v23;
}

- (PBUIHomeVariantStyleState)initWithTintColorStyle:(id)a3 suggestedTintColor:(id)a4 tintSource:(id)a5 isHomeScreenDimmed:(BOOL)a6 iconSize:(id)a7 iconStyle:(id)a8 iconStyleVariant:(id)a9 lastUserSelectedVariantForStyleTypeOption:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v42.receiver = self;
  v42.super_class = PBUIHomeVariantStyleState;
  v23 = [(PBUIHomeVariantStyleState *)&v42 init];
  if (v23)
  {
    v24 = [v16 copy];
    tintColorStyle = v23->_tintColorStyle;
    v23->_tintColorStyle = v24;

    v26 = [v17 copy];
    suggestedTintColor = v23->_suggestedTintColor;
    v23->_suggestedTintColor = v26;

    v23->_isHomeScreenDimmed = a6;
    v28 = [v19 copy];
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

    v31 = [v20 copy];
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

    v34 = [v21 copy];
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

    v37 = [v18 copy];
    tintSource = v23->_tintSource;
    v23->_tintSource = v37;

    v39 = [v22 copy];
    lastUserSelectedVariantForStyleTypeOption = v23->_lastUserSelectedVariantForStyleTypeOption;
    v23->_lastUserSelectedVariantForStyleTypeOption = v39;
  }

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PBUIHomeVariantStyleState *)self isEqualToState:v5];
  }

  return v6;
}

- (BOOL)isEqualToState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v20 = 1;
  }

  else
    v20 = v4 && (-[PBUIHomeVariantStyleState tintColorStyle](v4, "tintColorStyle"), v6 = {;
  }

  return v20;
}

- (id)styleStateByUpdatingSuggestedTintColor:(id)a3
{
  v4 = a3;
  v5 = [PBUIHomeVariantStyleState alloc];
  v6 = [(PBUIHomeVariantStyleState *)self tintColorStyle];
  v7 = [(PBUIHomeVariantStyleState *)self tintSource];
  v8 = [(PBUIHomeVariantStyleState *)self isHomeScreenDimmed];
  v9 = [(PBUIHomeVariantStyleState *)self iconSize];
  v10 = [(PBUIHomeVariantStyleState *)self iconStyle];
  v11 = [(PBUIHomeVariantStyleState *)self iconStyleVariant];
  v12 = [(PBUIHomeVariantStyleState *)self lastUserSelectedVariantForStyleTypeOption];
  v13 = [(PBUIHomeVariantStyleState *)v5 initWithTintColorStyle:v6 suggestedTintColor:v4 tintSource:v7 isHomeScreenDimmed:v8 iconSize:v9 iconStyle:v10 iconStyleVariant:v11 lastUserSelectedVariantForStyleTypeOption:v12];

  return v13;
}

@end