@interface PKSharingCarKeyInvitation
+ (id)_activationOptionsFromDictionary:(id)a3;
+ (void)_mergeActivationOptions:(id)a3 intoDictionary:(id)a4;
- (BOOL)configureWithContent:(id)a3;
- (NSString)brandIdentifier;
- (NSString)partnerIdentifier;
- (NSString)readerIdentifier;
- (NSString)vehicleIssuer;
- (NSString)vehicleModel;
- (PKSharingCarKeyInvitation)initWithRawInvite:(id)a3 shareIdentifier:(id)a4 radioTechnology:(unint64_t)a5 vehicleModel:(id)a6 vehicleIssuer:(id)a7 readerIdentifier:(id)a8 partnerIdentifier:(id)a9 brandIdentifier:(id)a10 carKeySharingDict:(id)a11 proprietaryData:(id)a12 activationOptions:(id)a13 displayInformation:(id)a14;
- (unint64_t)radioTechnology;
@end

@implementation PKSharingCarKeyInvitation

- (PKSharingCarKeyInvitation)initWithRawInvite:(id)a3 shareIdentifier:(id)a4 radioTechnology:(unint64_t)a5 vehicleModel:(id)a6 vehicleIssuer:(id)a7 readerIdentifier:(id)a8 partnerIdentifier:(id)a9 brandIdentifier:(id)a10 carKeySharingDict:(id)a11 proprietaryData:(id)a12 activationOptions:(id)a13 displayInformation:(id)a14
{
  v14 = self;
  v15 = 0;
  if (a3 && a4)
  {
    v39 = MEMORY[0x1E695DF90];
    v42 = a5;
    v44 = a14;
    v40 = a13;
    v43 = a12;
    v21 = a11;
    v22 = a10;
    v23 = a9;
    v24 = a8;
    v41 = a7;
    v25 = a6;
    v26 = a4;
    v27 = a3;
    v28 = objc_alloc_init(v39);
    v29 = [v27 hexEncoding];

    [v28 setObject:v29 forKeyedSubscript:@"sharingData"];
    [v28 setObject:v26 forKeyedSubscript:@"sharingId"];

    [v28 setObject:v25 forKeyedSubscript:@"model"];
    [v28 setObject:v22 forKeyedSubscript:@"brand"];
    [v28 setObject:v24 forKeyedSubscript:@"vehicleIdentifier"];
    [PKSharingCarKeyInvitation _mergeActivationOptions:v40 intoDictionary:v28];

    v30 = [v21 mutableCopy];
    v31 = PKRadioTechnologiesToString(v42);
    [v30 setObject:v31 forKeyedSubscript:@"radioTechnologies"];

    [v30 setObject:v25 forKeyedSubscript:@"vehicleModel"];
    [v30 setObject:v41 forKeyedSubscript:@"vehicleIssuer"];

    [v30 setObject:v24 forKeyedSubscript:@"readerIdentifier"];
    [v30 setObject:v23 forKeyedSubscript:@"partnerIdentifier"];

    [v30 setObject:v22 forKeyedSubscript:@"brandIdentifier"];
    v32 = [v43 dictionaryRepresentation];

    v33 = [v32 mutableCopy];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v36 = v35;

    [v36 setObject:v30 forKeyedSubscript:@"carKey"];
    v46.receiver = self;
    v46.super_class = PKSharingCarKeyInvitation;
    v37 = [(PKSharingGenericMessage *)&v46 initWithFormat:2 type:1 genericSharingDict:v28 appleSharingDict:v36 displayInformation:v44];

    v14 = v37;
    v15 = v14;
  }

  return v15;
}

- (BOOL)configureWithContent:(id)a3
{
  v13.receiver = self;
  v13.super_class = PKSharingCarKeyInvitation;
  v4 = [(PKSharingCarKeyMessage *)&v13 configureWithContent:a3];
  if (v4)
  {
    v5 = [PKSharingMesageProprietaryData alloc];
    v6 = [(PKSharingGenericMessage *)self appleSharingDict];
    v7 = [(PKSharingMesageProprietaryData *)v5 initWithDictionary:v6];
    proprietaryData = self->_proprietaryData;
    self->_proprietaryData = v7;

    v9 = [(PKSharingGenericMessage *)self genericSharingDict];
    v10 = [PKSharingCarKeyInvitation _activationOptionsFromDictionary:v9];
    activationOptions = self->_activationOptions;
    self->_activationOptions = v10;
  }

  return v4;
}

- (unint64_t)radioTechnology
{
  v2 = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v3 = [v2 PKStringForKey:@"radioTechnologies"];

  v4 = PKRadioTechnologiesFromString(v3);
  return v4;
}

- (NSString)vehicleModel
{
  v3 = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v4 = [v3 PKStringForKey:@"vehicleModel"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PKSharingGenericMessage *)self genericSharingDict];
    v6 = [v7 PKStringForKey:@"model"];
  }

  return v6;
}

- (NSString)vehicleIssuer
{
  v2 = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v3 = [v2 PKStringForKey:@"vehicleIssuer"];

  return v3;
}

- (NSString)readerIdentifier
{
  v3 = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v4 = [v3 PKStringForKey:@"readerIdentifier"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PKSharingGenericMessage *)self genericSharingDict];
    v6 = [v7 PKStringForKey:@"vehicleIdentifier"];
  }

  return v6;
}

- (NSString)partnerIdentifier
{
  v2 = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v3 = [v2 PKStringForKey:@"partnerIdentifier"];

  return v3;
}

- (NSString)brandIdentifier
{
  v3 = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v4 = [v3 PKStringForKey:@"brandIdentifier"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PKSharingGenericMessage *)self genericSharingDict];
    v6 = [v7 PKStringForKey:@"brand"];
  }

  return v6;
}

+ (void)_mergeActivationOptions:(id)a3 intoDictionary:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 containsOptionOfType:4];
    if ((v7 & 1) != 0 || ![v5 containsOptionOfType:1])
    {
      v8 = @"VehicleActivation";
      v11 = [v5 identifiers];
      [v6 setObject:v11 forKeyedSubscript:@"activationOptions"];

      if (!v7)
      {
LABEL_10:
        v18[0] = v8;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        [v6 setObject:v17 forKeyedSubscript:@"authType"];

        goto LABEL_11;
      }

      v9 = v5;
      v10 = 4;
    }

    else
    {
      v8 = @"DevicePIN";
      v9 = v5;
      v10 = 1;
    }

    v12 = [v9 optionOfType:v10];
    v13 = [v12 valueLength];
    if (v13)
    {
      v14 = v13;
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
      [v6 setObject:v15 forKeyedSubscript:@"pinLength"];

      v16 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
      [v6 setObject:v16 forKeyedSubscript:@"pinCodeLength"];
    }

    goto LABEL_10;
  }

LABEL_11:
}

+ (id)_activationOptionsFromDictionary:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_25;
  }

  v4 = [v3 PKArrayContaining:objc_opt_class() forKey:@"authType"];
  v5 = [v4 firstObject];
  v6 = v5;
  if (v5 != @"DevicePIN")
  {
    if (v5)
    {
      v7 = @"DevicePIN" == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
    }

    else
    {
      v9 = [(__CFString *)v5 isEqualToString:@"DevicePIN"];

      if (v9)
      {
        goto LABEL_12;
      }
    }

    if (v6)
    {
      v15 = @"VehicleActivation" == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (v6 == @"VehicleActivation")
      {
        goto LABEL_29;
      }
    }

    else
    {
      v17 = [(__CFString *)v6 isEqual:?];
      if (v17)
      {
LABEL_29:
        v10 = [v3 PKArrayContaining:objc_opt_class() forKey:@"activationOptions"];
        v8 = [[PKPassShareActivationOptions alloc] initWithCarKeyIdentifiers:v10];
        v14 = [(PKPassShareActivationOptions *)v8 optionOfType:4];
        if (v14)
        {
          v18 = [v3 PKNumberForKey:@"pinLength"];
          if (v18 || ([v3 PKNumberForKey:@"pinCodeLength"], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v19 = v18;
            [v14 setValueLength:{objc_msgSend(v18, "integerValue")}];
          }
        }

        goto LABEL_16;
      }
    }

    v8 = 0;
    goto LABEL_24;
  }

LABEL_12:
  v10 = [[PKPassShareActivationOption alloc] initWithDefaultIdentifierForType:1];
  v11 = [v3 PKNumberForKey:@"pinLength"];
  if (v11 || ([v3 PKNumberForKey:@"pinCodeLength"], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    -[PKPassShareActivationOption setValueLength:](v10, "setValueLength:", [v11 integerValue]);
  }

  v13 = [PKPassShareActivationOptions alloc];
  v20[0] = v10;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v8 = [(PKPassShareActivationOptions *)v13 initWithOptions:v14];
LABEL_16:

LABEL_24:
LABEL_25:

  return v8;
}

@end