@interface LACDTOMutableFeatureRequirements
+ (id)nullInstance;
- (BOOL)hasAPRequirements;
- (BOOL)isEqual:(id)a3;
- (LACDTOMutableFeatureRequirements)initWithRequirements:(id)a3;
- (NSString)description;
@end

@implementation LACDTOMutableFeatureRequirements

- (LACDTOMutableFeatureRequirements)initWithRequirements:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = LACDTOMutableFeatureRequirements;
  v5 = [(LACDTOMutableFeatureRequirements *)&v7 init];
  if (v5)
  {
    v5->_hasPasscodeSet = [v4 hasPasscodeSet];
    v5->_hasBiometricEnrollments = [v4 hasBiometricEnrollments];
    v5->_hasHSA2Account = [v4 hasHSA2Account];
    v5->_hasLocationServicesEnabled = [v4 hasLocationServicesEnabled];
  }

  return v5;
}

+ (id)nullInstance
{
  v2 = objc_alloc_init(LACDTOMutableFeatureRequirements);
  [(LACDTOMutableFeatureRequirements *)v2 setHasPasscodeSet:0];
  [(LACDTOMutableFeatureRequirements *)v2 setHasBiometricEnrollments:0];
  [(LACDTOMutableFeatureRequirements *)v2 setHasHSA2Account:0];
  [(LACDTOMutableFeatureRequirements *)v2 setHasLocationServicesEnabled:0];

  return v2;
}

- (BOOL)hasAPRequirements
{
  v3 = [(LACDTOMutableFeatureRequirements *)self hasPasscodeSet];
  v4 = v3 & [(LACDTOMutableFeatureRequirements *)self hasBiometricEnrollments];
  v5 = [(LACDTOMutableFeatureRequirements *)self hasHSA2Account];
  return v4 & v5 & [(LACDTOMutableFeatureRequirements *)self hasLocationServicesEnabled];
}

- (NSString)description
{
  v28[6] = *MEMORY[0x1E69E9840];
  v24 = MEMORY[0x1E696AEC0];
  v22 = objc_opt_class();
  v3 = MEMORY[0x1E696AEC0];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACDTOMutableFeatureRequirements hasPasscodeSet](self, "hasPasscodeSet")}];
  v26 = [v3 stringWithFormat:@"hasPasscodeSet: %@", v27];
  v28[0] = v26;
  v4 = MEMORY[0x1E696AEC0];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACDTOMutableFeatureRequirements hasBiometricEnrollments](self, "hasBiometricEnrollments")}];
  v23 = [v4 stringWithFormat:@"hasBiometricEnrollments: %@", v25];
  v28[1] = v23;
  v5 = MEMORY[0x1E696AEC0];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACDTOMutableFeatureRequirements hasLocationServicesEnabled](self, "hasLocationServicesEnabled")}];
  v6 = [v5 stringWithFormat:@"hasLocationServicesEnabled: %@", v21];
  v28[2] = v6;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACDTOMutableFeatureRequirements hasHSA2Account](self, "hasHSA2Account")}];
  v9 = [v7 stringWithFormat:@"hasHSA2Account: %@", v8];
  v28[3] = v9;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACDTOMutableFeatureRequirements hasSEPRequirements](self, "hasSEPRequirements")}];
  v12 = [v10 stringWithFormat:@"hasSEPRequirements: %@", v11];
  v28[4] = v12;
  v13 = MEMORY[0x1E696AEC0];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACDTOMutableFeatureRequirements hasAPRequirements](self, "hasAPRequirements")}];
  v15 = [v13 stringWithFormat:@"hasAPRequirements: %@", v14];
  v28[5] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:6];
  v17 = [v16 componentsJoinedByString:@" "];;
  v18 = [v24 stringWithFormat:@"<%@ %p %@>", v22, self, v17];;

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F2697190])
  {
    v5 = v4;
    v6 = [(LACDTOMutableFeatureRequirements *)self hasPasscodeSet];
    if (v6 == [v5 hasPasscodeSet] && (v7 = -[LACDTOMutableFeatureRequirements hasBiometricEnrollments](self, "hasBiometricEnrollments"), v7 == objc_msgSend(v5, "hasBiometricEnrollments")) && (v8 = -[LACDTOMutableFeatureRequirements hasLocationServicesEnabled](self, "hasLocationServicesEnabled"), v8 == objc_msgSend(v5, "hasLocationServicesEnabled")) && (v9 = -[LACDTOMutableFeatureRequirements hasHSA2Account](self, "hasHSA2Account"), v9 == objc_msgSend(v5, "hasHSA2Account")) && (v10 = -[LACDTOMutableFeatureRequirements hasSEPRequirements](self, "hasSEPRequirements"), v10 == objc_msgSend(v5, "hasSEPRequirements")))
    {
      v13 = [(LACDTOMutableFeatureRequirements *)self hasAPRequirements];
      v11 = v13 ^ [v5 hasAPRequirements] ^ 1;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

@end