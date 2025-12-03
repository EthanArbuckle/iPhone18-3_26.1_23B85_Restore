@interface PKSharingCarKeyInvitation
+ (id)_activationOptionsFromDictionary:(id)dictionary;
+ (void)_mergeActivationOptions:(id)options intoDictionary:(id)dictionary;
- (BOOL)configureWithContent:(id)content;
- (NSString)brandIdentifier;
- (NSString)partnerIdentifier;
- (NSString)readerIdentifier;
- (NSString)vehicleIssuer;
- (NSString)vehicleModel;
- (PKSharingCarKeyInvitation)initWithRawInvite:(id)invite shareIdentifier:(id)identifier radioTechnology:(unint64_t)technology vehicleModel:(id)model vehicleIssuer:(id)issuer readerIdentifier:(id)readerIdentifier partnerIdentifier:(id)partnerIdentifier brandIdentifier:(id)self0 carKeySharingDict:(id)self1 proprietaryData:(id)self2 activationOptions:(id)self3 displayInformation:(id)self4;
- (unint64_t)radioTechnology;
@end

@implementation PKSharingCarKeyInvitation

- (PKSharingCarKeyInvitation)initWithRawInvite:(id)invite shareIdentifier:(id)identifier radioTechnology:(unint64_t)technology vehicleModel:(id)model vehicleIssuer:(id)issuer readerIdentifier:(id)readerIdentifier partnerIdentifier:(id)partnerIdentifier brandIdentifier:(id)self0 carKeySharingDict:(id)self1 proprietaryData:(id)self2 activationOptions:(id)self3 displayInformation:(id)self4
{
  selfCopy = self;
  v15 = 0;
  if (invite && identifier)
  {
    v39 = MEMORY[0x1E695DF90];
    technologyCopy = technology;
    informationCopy = information;
    optionsCopy = options;
    dataCopy = data;
    dictCopy = dict;
    brandIdentifierCopy = brandIdentifier;
    partnerIdentifierCopy = partnerIdentifier;
    readerIdentifierCopy = readerIdentifier;
    issuerCopy = issuer;
    modelCopy = model;
    identifierCopy = identifier;
    inviteCopy = invite;
    v28 = objc_alloc_init(v39);
    hexEncoding = [inviteCopy hexEncoding];

    [v28 setObject:hexEncoding forKeyedSubscript:@"sharingData"];
    [v28 setObject:identifierCopy forKeyedSubscript:@"sharingId"];

    [v28 setObject:modelCopy forKeyedSubscript:@"model"];
    [v28 setObject:brandIdentifierCopy forKeyedSubscript:@"brand"];
    [v28 setObject:readerIdentifierCopy forKeyedSubscript:@"vehicleIdentifier"];
    [PKSharingCarKeyInvitation _mergeActivationOptions:optionsCopy intoDictionary:v28];

    v30 = [dictCopy mutableCopy];
    v31 = PKRadioTechnologiesToString(technologyCopy);
    [v30 setObject:v31 forKeyedSubscript:@"radioTechnologies"];

    [v30 setObject:modelCopy forKeyedSubscript:@"vehicleModel"];
    [v30 setObject:issuerCopy forKeyedSubscript:@"vehicleIssuer"];

    [v30 setObject:readerIdentifierCopy forKeyedSubscript:@"readerIdentifier"];
    [v30 setObject:partnerIdentifierCopy forKeyedSubscript:@"partnerIdentifier"];

    [v30 setObject:brandIdentifierCopy forKeyedSubscript:@"brandIdentifier"];
    dictionaryRepresentation = [dataCopy dictionaryRepresentation];

    v33 = [dictionaryRepresentation mutableCopy];
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
    v37 = [(PKSharingGenericMessage *)&v46 initWithFormat:2 type:1 genericSharingDict:v28 appleSharingDict:v36 displayInformation:informationCopy];

    selfCopy = v37;
    v15 = selfCopy;
  }

  return v15;
}

- (BOOL)configureWithContent:(id)content
{
  v13.receiver = self;
  v13.super_class = PKSharingCarKeyInvitation;
  v4 = [(PKSharingCarKeyMessage *)&v13 configureWithContent:content];
  if (v4)
  {
    v5 = [PKSharingMesageProprietaryData alloc];
    appleSharingDict = [(PKSharingGenericMessage *)self appleSharingDict];
    v7 = [(PKSharingMesageProprietaryData *)v5 initWithDictionary:appleSharingDict];
    proprietaryData = self->_proprietaryData;
    self->_proprietaryData = v7;

    genericSharingDict = [(PKSharingGenericMessage *)self genericSharingDict];
    v10 = [PKSharingCarKeyInvitation _activationOptionsFromDictionary:genericSharingDict];
    activationOptions = self->_activationOptions;
    self->_activationOptions = v10;
  }

  return v4;
}

- (unint64_t)radioTechnology
{
  carKeySharingDict = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v3 = [carKeySharingDict PKStringForKey:@"radioTechnologies"];

  v4 = PKRadioTechnologiesFromString(v3);
  return v4;
}

- (NSString)vehicleModel
{
  carKeySharingDict = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v4 = [carKeySharingDict PKStringForKey:@"vehicleModel"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    genericSharingDict = [(PKSharingGenericMessage *)self genericSharingDict];
    v6 = [genericSharingDict PKStringForKey:@"model"];
  }

  return v6;
}

- (NSString)vehicleIssuer
{
  carKeySharingDict = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v3 = [carKeySharingDict PKStringForKey:@"vehicleIssuer"];

  return v3;
}

- (NSString)readerIdentifier
{
  carKeySharingDict = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v4 = [carKeySharingDict PKStringForKey:@"readerIdentifier"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    genericSharingDict = [(PKSharingGenericMessage *)self genericSharingDict];
    v6 = [genericSharingDict PKStringForKey:@"vehicleIdentifier"];
  }

  return v6;
}

- (NSString)partnerIdentifier
{
  carKeySharingDict = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v3 = [carKeySharingDict PKStringForKey:@"partnerIdentifier"];

  return v3;
}

- (NSString)brandIdentifier
{
  carKeySharingDict = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v4 = [carKeySharingDict PKStringForKey:@"brandIdentifier"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    genericSharingDict = [(PKSharingGenericMessage *)self genericSharingDict];
    v6 = [genericSharingDict PKStringForKey:@"brand"];
  }

  return v6;
}

+ (void)_mergeActivationOptions:(id)options intoDictionary:(id)dictionary
{
  v18[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  dictionaryCopy = dictionary;
  if (optionsCopy)
  {
    v7 = [optionsCopy containsOptionOfType:4];
    if ((v7 & 1) != 0 || ![optionsCopy containsOptionOfType:1])
    {
      v8 = @"VehicleActivation";
      identifiers = [optionsCopy identifiers];
      [dictionaryCopy setObject:identifiers forKeyedSubscript:@"activationOptions"];

      if (!v7)
      {
LABEL_10:
        v18[0] = v8;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        [dictionaryCopy setObject:v17 forKeyedSubscript:@"authType"];

        goto LABEL_11;
      }

      v9 = optionsCopy;
      v10 = 4;
    }

    else
    {
      v8 = @"DevicePIN";
      v9 = optionsCopy;
      v10 = 1;
    }

    v12 = [v9 optionOfType:v10];
    valueLength = [v12 valueLength];
    if (valueLength)
    {
      v14 = valueLength;
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:valueLength];
      [dictionaryCopy setObject:v15 forKeyedSubscript:@"pinLength"];

      v16 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
      [dictionaryCopy setObject:v16 forKeyedSubscript:@"pinCodeLength"];
    }

    goto LABEL_10;
  }

LABEL_11:
}

+ (id)_activationOptionsFromDictionary:(id)dictionary
{
  v20[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    v8 = 0;
    goto LABEL_25;
  }

  v4 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"authType"];
  firstObject = [v4 firstObject];
  v6 = firstObject;
  if (firstObject != @"DevicePIN")
  {
    if (firstObject)
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
      v9 = [(__CFString *)firstObject isEqualToString:@"DevicePIN"];

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
        v10 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"activationOptions"];
        v8 = [[PKPassShareActivationOptions alloc] initWithCarKeyIdentifiers:v10];
        v14 = [(PKPassShareActivationOptions *)v8 optionOfType:4];
        if (v14)
        {
          v18 = [dictionaryCopy PKNumberForKey:@"pinLength"];
          if (v18 || ([dictionaryCopy PKNumberForKey:@"pinCodeLength"], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
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
  v11 = [dictionaryCopy PKNumberForKey:@"pinLength"];
  if (v11 || ([dictionaryCopy PKNumberForKey:@"pinCodeLength"], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
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