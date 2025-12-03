@interface PKExpressPassInformation
+ (BOOL)extractApplicationIdentifier:(id *)identifier subcredentialIdentifier:(id *)subcredentialIdentifier fromIdentifiers:(id)identifiers;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)subcredentialCredentialIdentifiers;
- (PKExpressPassInformation)initWithCoder:(id)coder;
- (PKExpressPassInformation)initWithExpressPassInformation:(id)information;
- (id)_init;
- (id)_initForPaymentPass:(id)pass configuration:(id)configuration;
- (id)criteriaForApplication:(id)application;
- (id)criteriaForPaymentApplicationIdentifier:(id)identifier;
- (id)description;
- (id)expressMode;
- (id)initDummyExpressInfoForAutomaticSelectionCriteriaUpgradeRequest:(id)request paymentPass:(id)pass withTechologyTest:(id)test;
- (id)initForExpressMode:(id)mode withPassUniqueIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier;
- (id)initForPaymentPass:(id)pass withTechologyTest:(id)test;
- (id)paymentApplicationIdentifier;
- (id)paymentApplicationIdentifiers;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateCredentialsUsingBlock:(id)block;
- (void)enumerateCredentialsWithHandler:(id)handler;
- (void)enumerateCriteriaWithHandler:(id)handler;
@end

@implementation PKExpressPassInformation

+ (BOOL)extractApplicationIdentifier:(id *)identifier subcredentialIdentifier:(id *)subcredentialIdentifier fromIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v8 = identifiersCopy;
  if (identifiersCopy && (v9 = [identifiersCopy count], (v9 - 1) <= 1))
  {
    v10 = v9;
    if (identifier)
    {
      v11 = [v8 objectAtIndexedSubscript:0];
      v12 = *identifier;
      *identifier = v11;
    }

    if (subcredentialIdentifier)
    {
      if (v10 < 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = [v8 objectAtIndexedSubscript:1];
      }

      v15 = *subcredentialIdentifier;
      *subcredentialIdentifier = v13;
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKExpressPassInformation;
  return [(PKExpressPassInformation *)&v3 init];
}

- (id)_initForPaymentPass:(id)pass configuration:(id)configuration
{
  passCopy = pass;
  configurationCopy = configuration;
  uniqueID = [passCopy uniqueID];
  if (uniqueID && [configurationCopy count])
  {
    _init = [(PKExpressPassInformation *)self _init];
    if (_init)
    {
      _init[4] = [passCopy cardType];
      v10 = [uniqueID copy];
      v11 = _init[5];
      _init[5] = v10;

      *(_init + 24) = [passCopy contactlessActivationGroupingType] == 2;
      v12 = [configurationCopy copy];
      v13 = _init[1];
      _init[1] = v12;

      if (!_init[4])
      {
        if ([passCopy isTransitPass])
        {
          v14 = 2;
        }

        else
        {
          isAccessPass = [passCopy isAccessPass];
          v14 = 3;
          if (!isAccessPass)
          {
            v14 = 1;
          }
        }

        _init[4] = v14;
      }
    }

    self = _init;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKExpressPassInformation)initWithExpressPassInformation:(id)information
{
  informationCopy = information;
  v14.receiver = self;
  v14.super_class = PKExpressPassInformation;
  v5 = [(PKExpressPassInformation *)&v14 init];
  v6 = v5;
  if (v5 && (v5->_cardType = *(informationCopy + 4), v7 = [*(informationCopy + 5) copy], passUniqueIdentifier = v6->_passUniqueIdentifier, v6->_passUniqueIdentifier = v7, passUniqueIdentifier, v6->_userChoice = *(informationCopy + 24), v9 = objc_msgSend(*(informationCopy + 1), "copy"), configuration = v6->_configuration, v6->_configuration = v9, configuration, v11 = objc_msgSend(*(informationCopy + 2), "copy"), v0_expressMode = v6->_v0_expressMode, v6->_v0_expressMode = v11, v0_expressMode, *(informationCopy + 25) == 1))
  {
    __break(1u);
  }

  else
  {

    return v6;
  }

  return result;
}

- (id)initForPaymentPass:(id)pass withTechologyTest:(id)test
{
  v71 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  testCopy = test;
  v51 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v43 = passCopy;
  devicePaymentApplications = [passCopy devicePaymentApplications];
  v8 = [devicePaymentApplications countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v63;
    v44 = *v63;
    v45 = devicePaymentApplications;
    v47 = testCopy;
    do
    {
      v11 = 0;
      v48 = v9;
      do
      {
        if (*v63 != v10)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        v12 = *(*(&v62 + 1) + 8 * v11);
        if ([v12 supportsContactlessPayment] && objc_msgSend(v12, "supportsExpress"))
        {
          applicationIdentifier = [v12 applicationIdentifier];
          automaticSelectionCriteria = [v12 automaticSelectionCriteria];
          v52 = applicationIdentifier;
          if ([applicationIdentifier length] && objc_msgSend(automaticSelectionCriteria, "count"))
          {
            v50 = v11;
            v53 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v49 = automaticSelectionCriteria;
            v15 = automaticSelectionCriteria;
            v16 = [v15 countByEnumeratingWithState:&v58 objects:v69 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v59;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v59 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v58 + 1) + 8 * i);
                  if ([v20 supportsExpress])
                  {
                    technologyType = [v20 technologyType];
                    if (technologyType)
                    {
                      if (!testCopy || testCopy[2](testCopy, technologyType))
                      {
                        [v53 addObject:v20];
                      }
                    }
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v58 objects:v69 count:16];
              }

              while (v17);
            }

            if ([v53 count])
            {
              subcredentials = [v12 subcredentials];
              if ([subcredentials count])
              {
                v56 = 0u;
                v57 = 0u;
                v54 = 0u;
                v55 = 0u;
                subcredentials2 = [v12 subcredentials];
                v24 = [subcredentials2 countByEnumeratingWithState:&v54 objects:v68 count:16];
                if (v24)
                {
                  v25 = v24;
                  v46 = subcredentials;
                  v26 = *v55;
                  do
                  {
                    for (j = 0; j != v25; ++j)
                    {
                      if (*v55 != v26)
                      {
                        objc_enumerationMutation(subcredentials2);
                      }

                      v28 = *(*(&v54 + 1) + 8 * j);
                      identifier = [v28 identifier];
                      v30 = identifier;
                      if (identifier)
                      {
                        v67[0] = v52;
                        v67[1] = identifier;
                        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
                        v32 = [PKExpressPassCredentialEntry alloc];
                        v33 = PKPaymentApplicationSubcredentialEffectiveReaderIdentifier(v12, v28);
                        associatedReaders = [v12 associatedReaders];
                        v35 = [(PKExpressPassCredentialEntry *)v32 initWithSelectionCriteria:v53 readerIdentifier:v33 associatedReaders:associatedReaders];

                        [v51 setObject:v35 forKeyedSubscript:v31];
                      }
                    }

                    v25 = [subcredentials2 countByEnumeratingWithState:&v54 objects:v68 count:16];
                  }

                  while (v25);
                  v10 = v44;
                  devicePaymentApplications = v45;
                  subcredentials = v46;
                }
              }

              else
              {
                v66 = v52;
                subcredentials2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
                v36 = [PKExpressPassCredentialEntry alloc];
                v37 = PKPaymentApplicationSubcredentialEffectiveReaderIdentifier(v12, 0);
                associatedReaders2 = [v12 associatedReaders];
                v39 = [(PKExpressPassCredentialEntry *)v36 initWithSelectionCriteria:v53 readerIdentifier:v37 associatedReaders:associatedReaders2];

                [v51 setObject:v39 forKeyedSubscript:subcredentials2];
              }

              testCopy = v47;
            }

            v9 = v48;
            automaticSelectionCriteria = v49;
            v11 = v50;
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [devicePaymentApplications countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v9);
  }

  v40 = [(PKExpressPassInformation *)self _initForPaymentPass:v43 configuration:v51];
  return v40;
}

- (id)initDummyExpressInfoForAutomaticSelectionCriteriaUpgradeRequest:(id)request paymentPass:(id)pass withTechologyTest:(id)test
{
  v53 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  passCopy = pass;
  testCopy = test;
  v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v39 = requestCopy;
  technologyTypes = [requestCopy technologyTypes];
  v10 = [technologyTypes countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(technologyTypes);
        }

        v14 = *(*(&v46 + 1) + 8 * i);
        v15 = PKPassAutomaticSelectionTechnologyTypeFromType(v14);
        if (!testCopy || testCopy[2](testCopy, v15))
        {
          v16 = objc_alloc(MEMORY[0x1E695DF90]);
          v17 = [v16 initWithObjectsAndKeys:{v14, @"type", MEMORY[0x1E695E118], @"supportsExpress", 0}];
          v18 = v17;
          if (v15 == 5)
          {
            [v17 setObject:@"2000000000" forKeyedSubscript:@"openLoopExpressMask"];
            v19 = [[PKPassAutomaticSelectionCriterion alloc] initWithDictionary:v18];
            if (v19)
            {
              v20 = v19;
              [v41 addObject:v19];
            }
          }
        }
      }

      v11 = [technologyTypes countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v11);
  }

  v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v41 count])
  {
    v21 = objc_alloc(MEMORY[0x1E695DFD8]);
    paymentApplicationIdentifiers = [requestCopy paymentApplicationIdentifiers];
    v23 = [v21 initWithArray:paymentApplicationIdentifiers];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    devicePaymentApplications = [passCopy devicePaymentApplications];
    v25 = [devicePaymentApplications countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v43;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v43 != v27)
          {
            objc_enumerationMutation(devicePaymentApplications);
          }

          v29 = *(*(&v42 + 1) + 8 * j);
          applicationIdentifier = [v29 applicationIdentifier];
          if ([v29 supportsContactlessPayment] && objc_msgSend(v23, "containsObject:", applicationIdentifier))
          {
            v50 = applicationIdentifier;
            v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
            v32 = [PKExpressPassCredentialEntry alloc];
            v33 = PKPaymentApplicationSubcredentialEffectiveReaderIdentifier(v29, 0);
            v34 = [(PKExpressPassCredentialEntry *)v32 initWithSelectionCriteria:v41 readerIdentifier:v33 associatedReaders:0];
            [v40 setObject:v34 forKeyedSubscript:v31];
          }
        }

        v26 = [devicePaymentApplications countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v26);
    }
  }

  v35 = [(PKExpressPassInformation *)self _initForPaymentPass:passCopy configuration:v40];

  return v35;
}

- (PKExpressPassInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(PKExpressPassInformation *)self _init];
  if (!_init)
  {
    goto LABEL_12;
  }

  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v6 initWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"configuration.3"];
  v13 = _init[1];
  _init[1] = v12;

  if (_init[1])
  {
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    v15 = _init[5];
    _init[5] = v14;

    *(_init + 24) = [coderCopy decodeBoolForKey:@"userChoice"];
    _init[4] = [coderCopy decodeIntegerForKey:@"cardType"];
    goto LABEL_10;
  }

  v65 = v11;
  v16 = _init;
  v17 = coderCopy;
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v18, v19, v20, v21, objc_opt_class(), 0}];
  v23 = [v17 decodeObjectOfClasses:v22 forKey:@"configuration.1"];

  if (v23)
  {
    v24 = [v17 decodeObjectOfClass:v20 forKey:@"passUniqueIdentifier"];
    v25 = [v17 decodeBoolForKey:@"userChoice"];
    v26 = [v17 decodeIntegerForKey:@"cardType"];
    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v66 = MEMORY[0x1E69E9820];
    v67 = 3221225472;
    v68 = __DecodeV2Format_block_invoke;
    v69 = &unk_1E79DDB60;
    v70 = v27;
    v28 = v27;
    [v23 enumerateKeysAndObjectsUsingBlock:&v66];
    v29 = v16[5];
    v16[5] = v24;
    v30 = v24;

    *(v16 + 24) = v25;
    v16[4] = v26;
    v31 = [v28 copy];
    v32 = _init[1];
    _init[1] = v31;
  }

  else
  {

    v16 = v16;
    v17 = v17;
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v34, v35, v33, objc_opt_class(), 0}];
    v23 = [v17 decodeObjectOfClasses:v36 forKey:@"configuration"];

    if (!v23)
    {

      v51 = v16;
      v52 = v17;
      v53 = [v52 decodeObjectOfClass:objc_opt_class() forKey:@"expressMode"];
      if (!v53)
      {

        v63 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKExpressPassInformation" code:0 userInfo:0];
        [v52 failWithError:v63];

        goto LABEL_14;
      }

      v54 = v53;
      v55 = [v52 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
      v56 = [v52 decodeObjectOfClass:objc_opt_class() forKey:@"paymentApplicationIdentifier"];
      v57 = PKExpressPassTypeForExpressMode(v54);
      if (v57 < 3)
      {
        v58 = v57 + 1;
      }

      else
      {
        v58 = 0;
      }

      v59 = v51[5];
      v51[5] = v55;
      v60 = v55;

      v51[4] = v58;
      v61 = ConfigurationFromV0(v54, v60, v56);
      v62 = _init[1];
      _init[1] = v61;

      goto LABEL_9;
    }

    v37 = [v17 decodeObjectOfClass:v35 forKey:@"passUniqueIdentifier"];
    v64 = [v17 decodeBoolForKey:@"userChoice"];
    v38 = [v17 decodeIntegerForKey:@"cardType"];
    v39 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v34, v35, 0}];
    v40 = [v17 decodeObjectOfClasses:v39 forKey:@"subcredentialCredentialIdentifiers"];

    v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v66 = MEMORY[0x1E69E9820];
    v67 = 3221225472;
    v68 = __DecodeV1Format_block_invoke;
    v69 = &unk_1E79DDB88;
    v70 = v40;
    v71 = v41;
    v42 = v40;
    v43 = v41;
    [v23 enumerateKeysAndObjectsUsingBlock:&v66];
    v44 = v16[5];
    v16[5] = v37;
    v45 = v37;

    *(v16 + 24) = v64;
    v16[4] = v38;
    v46 = [v43 copy];
    v47 = _init[1];
    _init[1] = v46;
  }

LABEL_9:
  v11 = v65;
LABEL_10:
  if (!_init[5])
  {
    v49 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKExpressPassInformation" code:0 userInfo:0];
    [coderCopy failWithError:v49];

LABEL_14:
    v48 = 0;
    goto LABEL_15;
  }

LABEL_12:
  v48 = _init;
LABEL_15:

  return v48;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [coderCopy encodeBool:self->_userChoice forKey:@"userChoice"];
  [coderCopy encodeInteger:self->_cardType forKey:@"cardType"];
  [coderCopy encodeObject:self->_configuration forKey:@"configuration.3"];
  if (!self->_forceModernEncoding)
  {
    if (self->_configuration)
    {
      v5 = MEMORY[0x1E695DF90];
      selfCopy = self;
      v7 = coderCopy;
      v8 = objc_alloc_init(v5);
      configuration = self->_configuration;

      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __EncodeV2Format_block_invoke;
      v26 = &unk_1E79C52B8;
      v27 = v8;
      v10 = v8;
      [(NSDictionary *)configuration enumerateKeysAndObjectsUsingBlock:&v23];
      [v7 encodeObject:v10 forKey:@"configuration.1"];
    }

    selfCopy2 = self;
    v12 = coderCopy;
    if (self->_configuration)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = __Block_byref_object_copy__59;
      v27 = __Block_byref_object_dispose__59;
      v28 = 0;
      v14 = self->_configuration;
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __EncodeV1Format_block_invoke;
      v20 = &unk_1E79DDB10;
      v15 = v13;
      v21 = v15;
      v22 = &v23;
      [(NSDictionary *)v14 enumerateKeysAndObjectsUsingBlock:&v17];
      [v12 encodeObject:v15 forKey:{@"configuration", v17, v18, v19, v20}];
      [v12 encodeObject:*(v24 + 40) forKey:@"subcredentialCredentialIdentifiers"];

      _Block_object_dispose(&v23, 8);
    }

    v23 = 0;
    v17 = 0;
    v16 = v12;
    ExtractV0Format(selfCopy2, &v23, &v17);
    [v16 encodeObject:v23 forKey:@"expressMode"];
    [v16 encodeObject:v17 forKey:@"paymentApplicationIdentifier"];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = equalCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if ((isKindOfClass & 1) == 0 || self->_cardType != *(equalCopy + 4) || self->_userChoice != equalCopy[24])
  {
    goto LABEL_14;
  }

  passUniqueIdentifier = self->_passUniqueIdentifier;
  v9 = *(equalCopy + 5);
  if (!passUniqueIdentifier || !v9)
  {
    if (passUniqueIdentifier == v9)
    {
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  if (([(NSString *)passUniqueIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  configuration = self->_configuration;
  v11 = *(equalCopy + 1);
  if (configuration && v11)
  {
    v12 = [(NSDictionary *)configuration isEqual:?];
  }

  else
  {
    v12 = configuration == v11;
  }

LABEL_15:

  return v12;
}

- (unint64_t)hash
{
  v3 = self->_userChoice - self->_cardType + 32 * self->_cardType;
  v4 = [(NSString *)self->_passUniqueIdentifier hash]- v3 + 32 * v3;
  return [(NSDictionary *)self->_configuration hash]- v4 + 32 * v4 + 15699857;
}

- (id)paymentApplicationIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  configuration = self->_configuration;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PKExpressPassInformation_paymentApplicationIdentifiers__block_invoke;
  v7[3] = &unk_1E79C52B8;
  v5 = v3;
  v8 = v5;
  [(NSDictionary *)configuration enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __57__PKExpressPassInformation_paymentApplicationIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (NSDictionary)subcredentialCredentialIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__59;
  v10 = __Block_byref_object_dispose__59;
  v11 = 0;
  configuration = self->_configuration;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__PKExpressPassInformation_subcredentialCredentialIdentifiers__block_invoke;
  v5[3] = &unk_1E79DDAE8;
  v5[4] = &v6;
  [(NSDictionary *)configuration enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __62__PKExpressPassInformation_subcredentialCredentialIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 count] >= 2;
  v4 = v11;
  if (v3)
  {
    v5 = [v11 objectAtIndexedSubscript:0];
    v6 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v5];

    if (!v6)
    {
      if (!*(*(*(a1 + 32) + 8) + 40))
      {
        v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v8 = *(*(a1 + 32) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;
      }

      v10 = [v11 objectAtIndexedSubscript:1];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v10 forKeyedSubscript:v5];
    }

    v4 = v11;
  }
}

- (id)criteriaForApplication:(id)application
{
  v32 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  v5 = applicationCopy;
  if (applicationCopy)
  {
    applicationIdentifier = [applicationCopy applicationIdentifier];
    if (applicationIdentifier)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      subcredentials = [v5 subcredentials];
      if ([subcredentials count])
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        subcredentials2 = [v5 subcredentials];
        v9 = [subcredentials2 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v9)
        {
          v10 = v9;
          v22 = subcredentials;
          v23 = v5;
          v11 = *v26;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(subcredentials2);
              }

              identifier = [*(*(&v25 + 1) + 8 * i) identifier];
              v14 = identifier;
              if (identifier)
              {
                v30[0] = applicationIdentifier;
                v30[1] = identifier;
                v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
                v16 = [(NSDictionary *)self->_configuration objectForKeyedSubscript:v15];
                selectionCriteria = [v16 selectionCriteria];
                [v6 unionSet:selectionCriteria];
              }
            }

            v10 = [subcredentials2 countByEnumeratingWithState:&v25 objects:v31 count:16];
          }

          while (v10);
          subcredentials = v22;
          v5 = v23;
        }
      }

      else
      {
        v29 = applicationIdentifier;
        subcredentials2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
        v19 = [(NSDictionary *)self->_configuration objectForKeyedSubscript:subcredentials2];
        selectionCriteria2 = [v19 selectionCriteria];
        [v6 unionSet:selectionCriteria2];
      }

      if ([v6 count])
      {
        v18 = [v6 copy];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)criteriaForPaymentApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__59;
    v16 = __Block_byref_object_dispose__59;
    v17 = 0;
    configuration = self->_configuration;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__PKExpressPassInformation_criteriaForPaymentApplicationIdentifier___block_invoke;
    v9[3] = &unk_1E79DDB10;
    v10 = identifierCopy;
    v11 = &v12;
    [(NSDictionary *)configuration enumerateKeysAndObjectsUsingBlock:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __68__PKExpressPassInformation_criteriaForPaymentApplicationIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = a3;
  v7 = [a2 firstObject];
  v8 = *(a1 + 32);
  v9 = v7;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_7;
  }

  if (!v9 || !v10)
  {

    v13 = v17;
    goto LABEL_9;
  }

  v12 = [v9 isEqualToString:v10];

  v13 = v17;
  if (v12)
  {
LABEL_7:
    v14 = [v17 selectionCriteria];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v13 = v17;
    *a4 = 1;
  }

LABEL_9:
}

- (void)enumerateCredentialsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    configuration = self->_configuration;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PKExpressPassInformation_enumerateCredentialsUsingBlock___block_invoke;
    v7[3] = &unk_1E79DDB38;
    v8 = blockCopy;
    [(NSDictionary *)configuration enumerateKeysAndObjectsUsingBlock:v7];
  }
}

- (void)enumerateCriteriaWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__PKExpressPassInformation_enumerateCriteriaWithHandler___block_invoke;
    v6[3] = &unk_1E79DDB38;
    v7 = handlerCopy;
    [(PKExpressPassInformation *)self enumerateCredentialsUsingBlock:v6];
  }
}

void __57__PKExpressPassInformation_enumerateCriteriaWithHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v10 = a3;
  v7 = [a2 firstObject];
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v10 selectionCriteria];
    (*(v8 + 16))(v8, v7, v9, a4);
  }
}

- (void)enumerateCredentialsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__PKExpressPassInformation_enumerateCredentialsWithHandler___block_invoke;
    v6[3] = &unk_1E79DDB38;
    v7 = handlerCopy;
    [(PKExpressPassInformation *)self enumerateCredentialsUsingBlock:v6];
  }
}

void __60__PKExpressPassInformation_enumerateCredentialsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [a3 selectionCriteria];
  (*(v6 + 16))(v6, v7, v8, a4);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  if (self->_userChoice)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [v3 initWithFormat:@"<PKExpressPassInformation: %p; Pass %@; Card Type %ld; User Choice: %@; Configuration: ", self, self->_passUniqueIdentifier, self->_cardType, v4];
  configuration = self->_configuration;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__PKExpressPassInformation_description__block_invoke;
  v9[3] = &unk_1E79C52B8;
  v7 = v5;
  v10 = v7;
  [(NSDictionary *)configuration enumerateKeysAndObjectsUsingBlock:v9];
  [v7 appendString:@" >"];

  return v7;
}

- (id)initForExpressMode:(id)mode withPassUniqueIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier
{
  modeCopy = mode;
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  if (PKExpressPassTypeForExpressMode(modeCopy))
  {
    v20.receiver = self;
    v20.super_class = PKExpressPassInformation;
    v11 = [(PKExpressPassInformation *)&v20 init];
    if (v11)
    {
      v12 = [modeCopy copy];
      v13 = *(v11 + 2);
      *(v11 + 2) = v12;

      v14 = [identifierCopy copy];
      v15 = *(v11 + 5);
      *(v11 + 5) = v14;

      *(v11 + 4) = 0;
      v16 = ConfigurationFromV0(modeCopy, *(v11 + 5), applicationIdentifierCopy);
      v17 = *(v11 + 1);
      *(v11 + 1) = v16;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)paymentApplicationIdentifier
{
  v4 = 0;
  ExtractV0Format(self, 0, &v4);
  v2 = v4;

  return v2;
}

- (id)expressMode
{
  v4 = 0;
  ExtractV0Format(self, &v4, 0);
  v2 = v4;

  return v2;
}

@end