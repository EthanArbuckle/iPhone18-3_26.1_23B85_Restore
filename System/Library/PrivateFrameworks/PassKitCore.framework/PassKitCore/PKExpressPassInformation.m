@interface PKExpressPassInformation
+ (BOOL)extractApplicationIdentifier:(id *)a3 subcredentialIdentifier:(id *)a4 fromIdentifiers:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)subcredentialCredentialIdentifiers;
- (PKExpressPassInformation)initWithCoder:(id)a3;
- (PKExpressPassInformation)initWithExpressPassInformation:(id)a3;
- (id)_init;
- (id)_initForPaymentPass:(id)a3 configuration:(id)a4;
- (id)criteriaForApplication:(id)a3;
- (id)criteriaForPaymentApplicationIdentifier:(id)a3;
- (id)description;
- (id)expressMode;
- (id)initDummyExpressInfoForAutomaticSelectionCriteriaUpgradeRequest:(id)a3 paymentPass:(id)a4 withTechologyTest:(id)a5;
- (id)initForExpressMode:(id)a3 withPassUniqueIdentifier:(id)a4 paymentApplicationIdentifier:(id)a5;
- (id)initForPaymentPass:(id)a3 withTechologyTest:(id)a4;
- (id)paymentApplicationIdentifier;
- (id)paymentApplicationIdentifiers;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateCredentialsUsingBlock:(id)a3;
- (void)enumerateCredentialsWithHandler:(id)a3;
- (void)enumerateCriteriaWithHandler:(id)a3;
@end

@implementation PKExpressPassInformation

+ (BOOL)extractApplicationIdentifier:(id *)a3 subcredentialIdentifier:(id *)a4 fromIdentifiers:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (v7 && (v9 = [v7 count], (v9 - 1) <= 1))
  {
    v10 = v9;
    if (a3)
    {
      v11 = [v8 objectAtIndexedSubscript:0];
      v12 = *a3;
      *a3 = v11;
    }

    if (a4)
    {
      if (v10 < 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = [v8 objectAtIndexedSubscript:1];
      }

      v15 = *a4;
      *a4 = v13;
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

- (id)_initForPaymentPass:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uniqueID];
  if (v8 && [v7 count])
  {
    v9 = [(PKExpressPassInformation *)self _init];
    if (v9)
    {
      v9[4] = [v6 cardType];
      v10 = [v8 copy];
      v11 = v9[5];
      v9[5] = v10;

      *(v9 + 24) = [v6 contactlessActivationGroupingType] == 2;
      v12 = [v7 copy];
      v13 = v9[1];
      v9[1] = v12;

      if (!v9[4])
      {
        if ([v6 isTransitPass])
        {
          v14 = 2;
        }

        else
        {
          v16 = [v6 isAccessPass];
          v14 = 3;
          if (!v16)
          {
            v14 = 1;
          }
        }

        v9[4] = v14;
      }
    }

    self = v9;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (PKExpressPassInformation)initWithExpressPassInformation:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKExpressPassInformation;
  v5 = [(PKExpressPassInformation *)&v14 init];
  v6 = v5;
  if (v5 && (v5->_cardType = *(v4 + 4), v7 = [*(v4 + 5) copy], passUniqueIdentifier = v6->_passUniqueIdentifier, v6->_passUniqueIdentifier = v7, passUniqueIdentifier, v6->_userChoice = *(v4 + 24), v9 = objc_msgSend(*(v4 + 1), "copy"), configuration = v6->_configuration, v6->_configuration = v9, configuration, v11 = objc_msgSend(*(v4 + 2), "copy"), v0_expressMode = v6->_v0_expressMode, v6->_v0_expressMode = v11, v0_expressMode, *(v4 + 25) == 1))
  {
    __break(1u);
  }

  else
  {

    return v6;
  }

  return result;
}

- (id)initForPaymentPass:(id)a3 withTechologyTest:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v51 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v43 = v5;
  v7 = [v5 devicePaymentApplications];
  v8 = [v7 countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v63;
    v44 = *v63;
    v45 = v7;
    v47 = v6;
    do
    {
      v11 = 0;
      v48 = v9;
      do
      {
        if (*v63 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v62 + 1) + 8 * v11);
        if ([v12 supportsContactlessPayment] && objc_msgSend(v12, "supportsExpress"))
        {
          v13 = [v12 applicationIdentifier];
          v14 = [v12 automaticSelectionCriteria];
          v52 = v13;
          if ([v13 length] && objc_msgSend(v14, "count"))
          {
            v50 = v11;
            v53 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v49 = v14;
            v15 = v14;
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
                    v21 = [v20 technologyType];
                    if (v21)
                    {
                      if (!v6 || v6[2](v6, v21))
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
              v22 = [v12 subcredentials];
              if ([v22 count])
              {
                v56 = 0u;
                v57 = 0u;
                v54 = 0u;
                v55 = 0u;
                v23 = [v12 subcredentials];
                v24 = [v23 countByEnumeratingWithState:&v54 objects:v68 count:16];
                if (v24)
                {
                  v25 = v24;
                  v46 = v22;
                  v26 = *v55;
                  do
                  {
                    for (j = 0; j != v25; ++j)
                    {
                      if (*v55 != v26)
                      {
                        objc_enumerationMutation(v23);
                      }

                      v28 = *(*(&v54 + 1) + 8 * j);
                      v29 = [v28 identifier];
                      v30 = v29;
                      if (v29)
                      {
                        v67[0] = v52;
                        v67[1] = v29;
                        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
                        v32 = [PKExpressPassCredentialEntry alloc];
                        v33 = PKPaymentApplicationSubcredentialEffectiveReaderIdentifier(v12, v28);
                        v34 = [v12 associatedReaders];
                        v35 = [(PKExpressPassCredentialEntry *)v32 initWithSelectionCriteria:v53 readerIdentifier:v33 associatedReaders:v34];

                        [v51 setObject:v35 forKeyedSubscript:v31];
                      }
                    }

                    v25 = [v23 countByEnumeratingWithState:&v54 objects:v68 count:16];
                  }

                  while (v25);
                  v10 = v44;
                  v7 = v45;
                  v22 = v46;
                }
              }

              else
              {
                v66 = v52;
                v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
                v36 = [PKExpressPassCredentialEntry alloc];
                v37 = PKPaymentApplicationSubcredentialEffectiveReaderIdentifier(v12, 0);
                v38 = [v12 associatedReaders];
                v39 = [(PKExpressPassCredentialEntry *)v36 initWithSelectionCriteria:v53 readerIdentifier:v37 associatedReaders:v38];

                [v51 setObject:v39 forKeyedSubscript:v23];
              }

              v6 = v47;
            }

            v9 = v48;
            v14 = v49;
            v11 = v50;
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v9);
  }

  v40 = [(PKExpressPassInformation *)self _initForPaymentPass:v43 configuration:v51];
  return v40;
}

- (id)initDummyExpressInfoForAutomaticSelectionCriteriaUpgradeRequest:(id)a3 paymentPass:(id)a4 withTechologyTest:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v38 = a4;
  v8 = a5;
  v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v39 = v7;
  v9 = [v7 technologyTypes];
  v10 = [v9 countByEnumeratingWithState:&v46 objects:v52 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v46 + 1) + 8 * i);
        v15 = PKPassAutomaticSelectionTechnologyTypeFromType(v14);
        if (!v8 || v8[2](v8, v15))
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

      v11 = [v9 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v11);
  }

  v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v41 count])
  {
    v21 = objc_alloc(MEMORY[0x1E695DFD8]);
    v22 = [v7 paymentApplicationIdentifiers];
    v23 = [v21 initWithArray:v22];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v24 = [v38 devicePaymentApplications];
    v25 = [v24 countByEnumeratingWithState:&v42 objects:v51 count:16];
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
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v42 + 1) + 8 * j);
          v30 = [v29 applicationIdentifier];
          if ([v29 supportsContactlessPayment] && objc_msgSend(v23, "containsObject:", v30))
          {
            v50 = v30;
            v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
            v32 = [PKExpressPassCredentialEntry alloc];
            v33 = PKPaymentApplicationSubcredentialEffectiveReaderIdentifier(v29, 0);
            v34 = [(PKExpressPassCredentialEntry *)v32 initWithSelectionCriteria:v41 readerIdentifier:v33 associatedReaders:0];
            [v40 setObject:v34 forKeyedSubscript:v31];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v26);
    }
  }

  v35 = [(PKExpressPassInformation *)self _initForPaymentPass:v38 configuration:v40];

  return v35;
}

- (PKExpressPassInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKExpressPassInformation *)self _init];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v6 initWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"configuration.3"];
  v13 = v5[1];
  v5[1] = v12;

  if (v5[1])
  {
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    v15 = v5[5];
    v5[5] = v14;

    *(v5 + 24) = [v4 decodeBoolForKey:@"userChoice"];
    v5[4] = [v4 decodeIntegerForKey:@"cardType"];
    goto LABEL_10;
  }

  v65 = v11;
  v16 = v5;
  v17 = v4;
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
    v32 = v5[1];
    v5[1] = v31;
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
      v62 = v5[1];
      v5[1] = v61;

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
    v47 = v5[1];
    v5[1] = v46;
  }

LABEL_9:
  v11 = v65;
LABEL_10:
  if (!v5[5])
  {
    v49 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKExpressPassInformation" code:0 userInfo:0];
    [v4 failWithError:v49];

LABEL_14:
    v48 = 0;
    goto LABEL_15;
  }

LABEL_12:
  v48 = v5;
LABEL_15:

  return v48;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [v4 encodeBool:self->_userChoice forKey:@"userChoice"];
  [v4 encodeInteger:self->_cardType forKey:@"cardType"];
  [v4 encodeObject:self->_configuration forKey:@"configuration.3"];
  if (!self->_forceModernEncoding)
  {
    if (self->_configuration)
    {
      v5 = MEMORY[0x1E695DF90];
      v6 = self;
      v7 = v4;
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

    v11 = self;
    v12 = v4;
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
    ExtractV0Format(v11, &v23, &v17);
    [v16 encodeObject:v23 forKey:@"expressMode"];
    [v16 encodeObject:v17 forKey:@"paymentApplicationIdentifier"];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if ((isKindOfClass & 1) == 0 || self->_cardType != *(v4 + 4) || self->_userChoice != v4[24])
  {
    goto LABEL_14;
  }

  passUniqueIdentifier = self->_passUniqueIdentifier;
  v9 = *(v4 + 5);
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
  v11 = *(v4 + 1);
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

- (id)criteriaForApplication:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v24 = [v4 applicationIdentifier];
    if (v24)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = [v5 subcredentials];
      if ([v7 count])
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v8 = [v5 subcredentials];
        v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v9)
        {
          v10 = v9;
          v22 = v7;
          v23 = v5;
          v11 = *v26;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v25 + 1) + 8 * i) identifier];
              v14 = v13;
              if (v13)
              {
                v30[0] = v24;
                v30[1] = v13;
                v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
                v16 = [(NSDictionary *)self->_configuration objectForKeyedSubscript:v15];
                v17 = [v16 selectionCriteria];
                [v6 unionSet:v17];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
          }

          while (v10);
          v7 = v22;
          v5 = v23;
        }
      }

      else
      {
        v29 = v24;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
        v19 = [(NSDictionary *)self->_configuration objectForKeyedSubscript:v8];
        v20 = [v19 selectionCriteria];
        [v6 unionSet:v20];
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

- (id)criteriaForPaymentApplicationIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
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
    v10 = v4;
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

- (void)enumerateCredentialsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    configuration = self->_configuration;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PKExpressPassInformation_enumerateCredentialsUsingBlock___block_invoke;
    v7[3] = &unk_1E79DDB38;
    v8 = v4;
    [(NSDictionary *)configuration enumerateKeysAndObjectsUsingBlock:v7];
  }
}

- (void)enumerateCriteriaWithHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__PKExpressPassInformation_enumerateCriteriaWithHandler___block_invoke;
    v6[3] = &unk_1E79DDB38;
    v7 = v4;
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

- (void)enumerateCredentialsWithHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__PKExpressPassInformation_enumerateCredentialsWithHandler___block_invoke;
    v6[3] = &unk_1E79DDB38;
    v7 = v4;
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

- (id)initForExpressMode:(id)a3 withPassUniqueIdentifier:(id)a4 paymentApplicationIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (PKExpressPassTypeForExpressMode(v8))
  {
    v20.receiver = self;
    v20.super_class = PKExpressPassInformation;
    v11 = [(PKExpressPassInformation *)&v20 init];
    if (v11)
    {
      v12 = [v8 copy];
      v13 = *(v11 + 2);
      *(v11 + 2) = v12;

      v14 = [v9 copy];
      v15 = *(v11 + 5);
      *(v11 + 5) = v14;

      *(v11 + 4) = 0;
      v16 = ConfigurationFromV0(v8, *(v11 + 5), v10);
      v17 = *(v11 + 1);
      *(v11 + 1) = v16;
    }

    self = v11;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
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