@interface PKPaymentSetupFieldsModel
+ (id)defaultPaymentSetupProvisioningFields;
+ (id)fakePaymentSetupProvisioningFields;
- (BOOL)hasFooterPaymentSetupField;
- (BOOL)hasIncompletePaymentSetupFields;
- (BOOL)hasVisibleEditableFields;
- (BOOL)requirementsMetForFieldWithIdentifier:(id)identifier;
- (BOOL)requirementsMetForVisibleFields;
- (BOOL)validValuesProvidedForVisibleFields;
- (PKPaymentSetupFieldsModel)init;
- (PKPaymentSetupFieldsModel)initWithPaymentSetupFields:(id)fields footerFields:(id)footerFields;
- (id)encryptedPerFieldSubmissionValuesForDestination:(id)destination;
- (id)incompletePaymentSetupFields;
- (id)odiAttributes;
- (id)paymentSetupFieldWithIdentifier:(id)identifier;
- (id)secondaryEntryFieldsModelWithPaymentSetupFields:(id)fields;
- (id)secureSubmissionValuesForDestination:(id)destination;
- (id)setupFieldAnalytics;
- (id)submissionValuesForDestination:(id)destination;
- (void)_addField:(id)field result:(id)result destination:(id)destination submissionSecurity:(unint64_t)security;
- (void)disableDOBPrefill;
- (void)lockFields;
- (void)prefillDefaultValues;
- (void)prefillDefaultValuesWithPostalAddress:(id)address;
- (void)prefillValuesWithFPAN:(id)n targetDevice:(id)device;
- (void)prefillValuesWithPaymentCredential:(id)credential targetDevice:(id)device;
- (void)replaceAllPaymentSetupFields:(id)fields footerFields:(id)footerFields;
- (void)replaceAllPaymentSetupFieldsPreservingCurrentValues:(id)values;
- (void)resetAllPaymentSetupFieldValues;
- (void)unhideFieldsWithEnteredValues;
- (void)updateWithPaymentSetupFields:(id)fields footerFields:(id)footerFields;
@end

@implementation PKPaymentSetupFieldsModel

- (PKPaymentSetupFieldsModel)init
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupFieldsModel;
  v2 = [(PKPaymentSetupFieldsModel *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    paymentSetupFields = v2->_paymentSetupFields;
    v2->_paymentSetupFields = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    footerFields = v2->_footerFields;
    v2->_footerFields = v5;
  }

  return v2;
}

- (PKPaymentSetupFieldsModel)initWithPaymentSetupFields:(id)fields footerFields:(id)footerFields
{
  fieldsCopy = fields;
  footerFieldsCopy = footerFields;
  v8 = [(PKPaymentSetupFieldsModel *)self init];
  v9 = v8;
  if (v8)
  {
    [(PKPaymentSetupFieldsModel *)v8 replaceAllPaymentSetupFields:fieldsCopy footerFields:footerFieldsCopy];
  }

  return v9;
}

+ (id)defaultPaymentSetupProvisioningFields
{
  if (PKShowFakePaymentSetupFields())
  {
    fakePaymentSetupProvisioningFields = [self fakePaymentSetupProvisioningFields];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"cardholderName"];
    [array addObject:v5];

    v6 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"primaryAccountNumber"];
    [array addObject:v6];

    fakePaymentSetupProvisioningFields = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  }

  return fakePaymentSetupProvisioningFields;
}

+ (id)fakePaymentSetupProvisioningFields
{
  array = [MEMORY[0x1E695DF70] array];
  v3 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"cardholderName"];
  [array addObject:v3];

  v4 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"primaryAccountNumber"];
  [array addObject:v4];

  v5 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"cardExpiration"];
  [array addObject:v5];

  v6 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"cardSecurityCode"];
  [array addObject:v6];

  v7 = +[PKPaymentSetupField sampleCustomPaymentSetupFields];
  [array addObjectsFromArray:v7];

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v8;
}

- (void)replaceAllPaymentSetupFields:(id)fields footerFields:(id)footerFields
{
  v21 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  footerFieldsCopy = footerFields;
  objc_storeStrong(&self->_footerFields, footerFields);
  [(PKPaymentSetupFieldsModel *)self resetAllPaymentSetupFieldValues];
  [(NSMutableArray *)self->_paymentSetupFields removeAllObjects];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = fieldsCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isFieldTypeFooter])
        {
          footerFieldObject = [v13 footerFieldObject];
          footerField = self->_footerField;
          self->_footerField = footerFieldObject;
        }

        else
        {
          [(NSMutableArray *)self->_paymentSetupFields addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [(PKPaymentSetupFieldsModel *)self prefillDefaultValues];
}

- (void)replaceAllPaymentSetupFieldsPreservingCurrentValues:(id)values
{
  v25 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [valuesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(valuesCopy);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:identifier];

        if (v11)
        {
          fieldType = [v9 fieldType];
          if (fieldType == [v11 fieldType])
          {
            currentValue = [v11 currentValue];

            if (currentValue)
            {
              currentValue2 = [v11 currentValue];
              [v9 setCurrentValue:currentValue2];

              [v9 setSource:{objc_msgSend(v11, "source")}];
              originalCameraCaptureValue = [v11 originalCameraCaptureValue];
              [v9 setOriginalCameraCaptureValue:originalCameraCaptureValue];

              if ([v9 isFieldTypeText])
              {
                displayFormat = [v11 displayFormat];
                v17 = [displayFormat length];

                if (v17)
                {
                  textFieldObject = [v9 textFieldObject];
                  displayFormat2 = [v11 displayFormat];
                  [textFieldObject updateDisplayFormat:displayFormat2];
                }
              }
            }
          }
        }
      }

      v6 = [valuesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  [(PKPaymentSetupFieldsModel *)self replaceAllPaymentSetupFields:valuesCopy];
}

- (void)updateWithPaymentSetupFields:(id)fields footerFields:(id)footerFields
{
  v24 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  footerFieldsCopy = footerFields;
  objc_storeStrong(&self->_footerFields, footerFields);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = fieldsCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        identifier = [v13 identifier];
        v15 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:identifier];

        if (v15)
        {
          rawConfigurationDictionary = [v13 rawConfigurationDictionary];
          [v15 updateWithConfiguration:rawConfigurationDictionary];
        }

        else if ([v13 isFieldTypeFooter])
        {
          footerFieldObject = [v13 footerFieldObject];
          footerField = self->_footerField;
          self->_footerField = footerFieldObject;
        }

        else
        {
          [(NSMutableArray *)self->_paymentSetupFields addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  [(PKPaymentSetupFieldsModel *)self prefillDefaultValues];
}

- (id)secondaryEntryFieldsModelWithPaymentSetupFields:(id)fields
{
  v40 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = fieldsCopy;
  v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        identifier = [v11 identifier];
        v13 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:identifier];
        v14 = [v13 copy];

        if (v14)
        {
          rawConfigurationDictionary = [v11 rawConfigurationDictionary];
          [v14 updateWithConfiguration:rawConfigurationDictionary];

          [v14 setHidden:{objc_msgSend(v14, "isHidden") ^ 1}];
          v16 = v5;
          v17 = v14;
        }

        else
        {
          v16 = v5;
          v17 = v11;
        }

        [v16 addObject:v17];
        [v6 addObject:identifier];
      }

      v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  paymentSetupFields = [(PKPaymentSetupFieldsModel *)self paymentSetupFields];
  v19 = [paymentSetupFields countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v31;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(paymentSetupFields);
        }

        v23 = *(*(&v30 + 1) + 8 * j);
        identifier2 = [v23 identifier];
        v25 = [v6 containsObject:identifier2];

        if ((v25 & 1) == 0)
        {
          v26 = [v23 copy];
          [v26 setHidden:1];
          [v5 addObject:v26];
        }
      }

      v20 = [paymentSetupFields countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v20);
  }

  v27 = [[PKPaymentSetupFieldsModel alloc] initWithPaymentSetupFields:v5];
  [(PKPaymentSetupFieldsModel *)v27 prefillDefaultValues];

  return v27;
}

- (void)unhideFieldsWithEnteredValues
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_paymentSetupFields;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isHidden])
        {
          currentValue = [v7 currentValue];

          if (currentValue)
          {
            [v7 setHidden:0];
          }
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)lockFields
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_paymentSetupFields;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setReadonly:{1, v7}];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

uint64_t __54__PKPaymentSetupFieldsModel_visiblePaymentSetupFields__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isHidden] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __57__PKPaymentSetupFieldsModel_visibleSetupFieldIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    if ([v3 isHidden])
    {
      v4 = 0;
    }

    else
    {
      v4 = [v3 identifier];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __58__PKPaymentSetupFieldsModel_readonlySetupFieldIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    if ([v3 isReadonly])
    {
      v4 = [v3 identifier];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)paymentSetupFieldWithIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_paymentSetupFields;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      identifier = [v10 identifier];
      v12 = [identifier isEqualToString:identifierCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_9:
  }

  footerField = self->_footerField;
  if (footerField && (-[PKPaymentSetupField identifier](footerField, "identifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isEqualToString:identifierCopy], v15, v16))
  {
    v13 = self->_footerField;
  }

  else
  {
    v13 = 0;
  }

LABEL_15:

  return v13;
}

- (id)incompletePaymentSetupFields
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_paymentSetupFields;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 submissionStringMeetsAllRequirements] & 1) == 0)
        {
          [array addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v10;
}

- (BOOL)hasIncompletePaymentSetupFields
{
  incompletePaymentSetupFields = [(PKPaymentSetupFieldsModel *)self incompletePaymentSetupFields];
  v3 = [incompletePaymentSetupFields count] != 0;

  return v3;
}

- (id)submissionValuesForDestination:(id)destination
{
  v24 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_paymentSetupFields;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  v18 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *v20;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v19 + 1) + 8 * i);
      [(PKPaymentSetupFieldsModel *)self _addField:v13 result:v5 destination:destinationCopy submissionSecurity:0];
      if ([v13 supportsAddressAutofill])
      {
        source = [v13 source];
        switch(source)
        {
          case 4:
            v9 = 1;
            break;
          case 3:
            v18 = 1;
            break;
          case 2:
            v10 = 1;
            break;
        }
      }
    }

    v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v8);

  if ((v18 | v10 & v9))
  {
    v15 = 3;
LABEL_17:
    v6 = PKPaymentSetupFieldSourceToString(v15);
    [v5 setObject:v6 forKey:@"addressSource"];
LABEL_18:

    goto LABEL_19;
  }

  if (v10 & 1 | (((v10 ^ 1 | v9) & 1) == 0))
  {
    if (((v10 ^ 1 | v9) & 1) == 0)
    {
      v15 = 2;
      goto LABEL_17;
    }
  }

  else if (v9)
  {
    v15 = 4;
    goto LABEL_17;
  }

LABEL_19:
  v16 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5];

  return v16;
}

- (BOOL)hasFooterPaymentSetupField
{
  footerPaymentSetupField = [(PKPaymentSetupFieldsModel *)self footerPaymentSetupField];
  v3 = footerPaymentSetupField != 0;

  return v3;
}

- (id)secureSubmissionValuesForDestination:(id)destination
{
  v18 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_paymentSetupFields;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PKPaymentSetupFieldsModel *)self _addField:*(*(&v13 + 1) + 8 * i) result:v5 destination:destinationCopy submissionSecurity:1, v13];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5];

  return v11;
}

- (id)encryptedPerFieldSubmissionValuesForDestination:(id)destination
{
  v34 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = self->_paymentSetupFields;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    v9 = @"cardPIN";
    v26 = v5;
    v27 = destinationCopy;
    v25 = @"cardPIN";
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if ([v11 submissionStringMeetsAllRequirements])
        {
          if (!destinationCopy)
          {
            if ([v11 submissionSecurity] != 2)
            {
              continue;
            }

LABEL_12:
            submissionKey = [v11 submissionKey];
            submissionString = [v11 submissionString];
            v16 = submissionKey;
            submissionDestination = v16;
            if (v16 == v9)
            {
            }

            else
            {
              if (!v9 || !v16)
              {

                goto LABEL_20;
              }

              v17 = [(__CFString *)v16 isEqualToString:v9];

              if (!v17)
              {
LABEL_20:
                v18 = 0;
                goto LABEL_21;
              }
            }

            v18 = 1;
LABEL_21:
            v19 = [PKEncryptedPaymentSetupFieldSubmissionContainer alloc];
            fieldSubmissionEncryptionScheme = [v11 fieldSubmissionEncryptionScheme];
            fieldSubmissionEncryptionCertificates = [v11 fieldSubmissionEncryptionCertificates];
            v22 = [(PKEncryptedPaymentSetupFieldSubmissionContainer *)v19 initWithValue:submissionString format:v18 scheme:fieldSubmissionEncryptionScheme certificates:fieldSubmissionEncryptionCertificates];

            [v11 addSupplementalSubmissionValues:v22];
            [v28 setObject:v22 forKeyedSubscript:submissionDestination];

            v5 = v26;
            destinationCopy = v27;
            v9 = v25;
LABEL_22:

            continue;
          }

          submissionDestination = [v11 submissionDestination];
          if (![submissionDestination isEqualToString:destinationCopy])
          {
            goto LABEL_22;
          }

          submissionSecurity = [v11 submissionSecurity];

          if (submissionSecurity == 2)
          {
            goto LABEL_12;
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  v23 = [v28 copy];

  return v23;
}

- (void)_addField:(id)field result:(id)result destination:(id)destination submissionSecurity:(unint64_t)security
{
  fieldCopy = field;
  resultCopy = result;
  destinationCopy = destination;
  submissionSecurity = [fieldCopy submissionSecurity];
  if ([fieldCopy submissionStringMeetsAllRequirements])
  {
    if (!destinationCopy || ([fieldCopy submissionDestination], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", destinationCopy), v12, v13))
    {
      if (submissionSecurity == security)
      {
        submissionKey = [fieldCopy submissionKey];
        submissionString = [fieldCopy submissionString];
        v16 = submissionString;
        if (submissionKey && submissionString)
        {
          [resultCopy setObject:submissionString forKey:submissionKey];
        }
      }
    }
  }

  pickerFieldObject = [fieldCopy pickerFieldObject];
  if ([pickerFieldObject pickerType] == 2)
  {
    currentValue = [pickerFieldObject currentValue];
    nextLevelPicker = [currentValue nextLevelPicker];

    if (nextLevelPicker)
    {
      do
      {
        submissionSecurity2 = [nextLevelPicker submissionSecurity];
        if ([nextLevelPicker submissionStringMeetsAllRequirements])
        {
          if (!destinationCopy || ([nextLevelPicker submissionDestination], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", destinationCopy), v21, v22))
          {
            if (submissionSecurity2 == security)
            {
              submissionKey2 = [nextLevelPicker submissionKey];
              submissionString2 = [nextLevelPicker submissionString];
              v25 = submissionString2;
              if (submissionKey2 && submissionString2)
              {
                [resultCopy setObject:submissionString2 forKey:submissionKey2];
              }
            }
          }
        }

        currentValue2 = [nextLevelPicker currentValue];
        nextLevelPicker2 = [currentValue2 nextLevelPicker];

        nextLevelPicker = nextLevelPicker2;
      }

      while (nextLevelPicker2);
    }
  }
}

- (void)resetAllPaymentSetupFieldValues
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_paymentSetupFields;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 setCurrentValue:{0, v8}];
        [v7 setSource:0];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)disableDOBPrefill
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_paymentSetupFields;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        identifier = [v7 identifier];
        v9 = identifier;
        if (identifier == @"dateOfBirth")
        {

LABEL_12:
          [v7 setPopulateFromMeCard:0];
          continue;
        }

        if (@"dateOfBirth" && identifier)
        {
          v10 = [(__CFString *)identifier isEqualToString:@"dateOfBirth"];

          if (v10)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)prefillDefaultValues
{
  v342 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_paymentSetupFields count];
  if (!v3)
  {
    return;
  }

  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v3];
  v332 = 0u;
  v333 = 0u;
  v334 = 0u;
  v335 = 0u;
  currentLocale = self->_paymentSetupFields;
  v6 = [(NSMutableArray *)currentLocale countByEnumeratingWithState:&v332 objects:v341 count:16];
  if (!v6)
  {
    goto LABEL_324;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v333;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v333 != v9)
      {
        objc_enumerationMutation(currentLocale);
      }

      v11 = *(*(&v332 + 1) + 8 * i);
      if (([v11 isFieldTypeFooter] & 1) == 0)
      {
        identifier = [v11 identifier];
        [v4 setObject:v11 forKey:identifier];

        if (v8)
        {
          v8 = 1;
          continue;
        }

        if ([v11 isFieldTypeDate])
        {
          dateFieldObject = [v11 dateFieldObject];
          defaultDate = [dateFieldObject defaultDate];
          goto LABEL_14;
        }

        if ([v11 isFieldTypePicker])
        {
          dateFieldObject = [v11 pickerFieldObject];
          defaultDate = [dateFieldObject defaultPickerItem];
LABEL_14:
          v15 = defaultDate;
        }

        else
        {
          dateFieldObject = [v11 defaultValue];
          v15 = dateFieldObject;
        }

        v8 = v15 == 0;
        continue;
      }
    }

    v7 = [(NSMutableArray *)currentLocale countByEnumeratingWithState:&v332 objects:v341 count:16];
  }

  while (v7);

  if (!v8)
  {
    goto LABEL_325;
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v16 = 0x1E695C000uLL;
  v17 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v18 = *MEMORY[0x1E695C240];
  v340[0] = v17;
  v340[1] = v18;
  v19 = *MEMORY[0x1E695C360];
  v340[2] = *MEMORY[0x1E695C230];
  v340[3] = v19;
  v20 = *MEMORY[0x1E695C1D0];
  v340[4] = *MEMORY[0x1E695C330];
  v340[5] = v20;
  v340[6] = *MEMORY[0x1E695C208];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v340 count:7];
  v277 = PKMeContactWithKeysToFetch(v21);

  v22 = [v4 objectForKey:@"firstName"];
  v23 = [v4 objectForKey:@"lastName"];
  v278 = [v4 objectForKey:@"email"];
  v265 = v22;
  defaultValue = [v22 defaultValue];
  if (defaultValue)
  {
    goto LABEL_21;
  }

  defaultValue2 = [v23 defaultValue];

  if (!defaultValue2)
  {
    if (v22 && [v22 populateFromMeCard])
    {
      givenName = [v277 givenName];
      v80 = [givenName stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

      [v22 setDefaultValue:v80];
      currentValue = [v22 currentValue];

      if (!currentValue)
      {
        [v22 setCurrentValue:v80];
      }
    }

    if (v23 && [v23 populateFromMeCard])
    {
      familyName = [v277 familyName];
      defaultValue = [familyName stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

      [v23 setDefaultValue:defaultValue];
      currentValue2 = [v23 currentValue];

      if (!currentValue2)
      {
        [v23 setCurrentValue:defaultValue];
      }

LABEL_21:
    }
  }

  v266 = v4;
  v269 = v23;
  if (v278)
  {
    defaultValue3 = [v278 defaultValue];
    if (defaultValue3)
    {
      goto LABEL_147;
    }

    if ([v278 populateFromMeCard])
    {
      [v277 emailAddresses];
      v328 = 0u;
      v329 = 0u;
      v330 = 0u;
      defaultValue3 = v331 = 0u;
      v295 = defaultValue3;
      v309 = [defaultValue3 countByEnumeratingWithState:&v328 objects:v339 count:16];
      if (!v309)
      {
        v273 = 0;
        v289 = 0;
        v281 = 0;
        v299 = 0;
        v27 = 0;
        goto LABEL_135;
      }

      v273 = 0;
      v289 = 0;
      v281 = 0;
      v299 = 0;
      v27 = 0;
      v306 = *v329;
      v28 = *MEMORY[0x1E695CB58];
      v29 = *MEMORY[0x1E695CB60];
      v293 = *MEMORY[0x1E695CB68];
      v275 = *MEMORY[0x1E695CBC8];
      v303 = currentLocale;
      v304 = *MEMORY[0x1E695CB58];
      v287 = *MEMORY[0x1E695CBD8];
      while (1)
      {
        v30 = 0;
        do
        {
          v31 = v29;
          if (*v329 != v306)
          {
            objc_enumerationMutation(defaultValue3);
          }

          v32 = *(*(&v328 + 1) + 8 * v30);
          label = [v32 label];
          value = [v32 value];
          v35 = label;
          v36 = v28;
          v37 = v36;
          if (v35 == v36)
          {

            v29 = v31;
LABEL_42:
            if ([v27 length])
            {
              currentLocale = v303;
              v28 = v304;
              goto LABEL_98;
            }

            v47 = v27;
            v27 = value;
            v28 = v304;
LABEL_90:
            currentLocale = v303;

            goto LABEL_98;
          }

          if (v28)
          {
            v38 = v35 == 0;
          }

          else
          {
            v38 = 1;
          }

          v39 = !v38;
          v29 = v31;
          if (v38)
          {
          }

          else
          {
            v40 = [v35 isEqualToString:v36];

            if (v40)
            {
              goto LABEL_42;
            }
          }

          obj = v27;
          v41 = v35;
          v42 = v31;
          v43 = v42;
          if (v41 == v42)
          {

LABEL_57:
            v47 = v299;
            if (![v299 length])
            {
              v299 = value;
              goto LABEL_88;
            }

            goto LABEL_95;
          }

          if (v31)
          {
            v44 = v35 == 0;
          }

          else
          {
            v44 = 1;
          }

          v45 = !v44;
          v297 = v45;
          if (v44)
          {
          }

          else
          {
            v46 = [v41 isEqualToString:v42];

            if (v46)
            {
              goto LABEL_57;
            }
          }

          v48 = v41;
          v49 = v293;
          v50 = v49;
          if (v48 == v49)
          {

LABEL_71:
            v47 = v289;
            if (![v289 length])
            {
              v289 = value;
              goto LABEL_87;
            }

            goto LABEL_94;
          }

          if (v293)
          {
            v51 = v35 == 0;
          }

          else
          {
            v51 = 1;
          }

          v52 = !v51;
          v291 = v52;
          if (v51)
          {
          }

          else
          {
            v53 = [v48 isEqualToString:v49];

            if (v53)
            {
              goto LABEL_71;
            }
          }

          v54 = v48;
          v55 = v287;
          if (v54 == v55)
          {

LABEL_85:
            v47 = v281;
            if (![v281 length])
            {
              v281 = value;
LABEL_87:
              defaultValue3 = v295;
LABEL_88:
              v27 = obj;
              v28 = v304;
LABEL_89:
              v29 = v31;
              goto LABEL_90;
            }

LABEL_94:
            defaultValue3 = v295;
LABEL_95:
            v27 = obj;
            v28 = v304;
LABEL_96:
            v29 = v31;
            goto LABEL_97;
          }

          if (v287)
          {
            v56 = v35 == 0;
          }

          else
          {
            v56 = 1;
          }

          v57 = !v56;
          v283 = v57;
          v285 = v55;
          if (v56)
          {
          }

          else
          {
            v58 = v55;
            v279 = [v54 isEqualToString:v55];

            if (v279)
            {
              goto LABEL_85;
            }
          }

          v59 = v54;
          v60 = v37;
          v61 = v60;
          if (v39)
          {
            v62 = [v59 isEqualToString:v60];

            if (v62)
            {
              goto LABEL_94;
            }
          }

          else
          {
          }

          v63 = v59;
          v64 = v43;
          v65 = v64;
          v28 = v304;
          if (v297)
          {
            v66 = [v63 isEqualToString:v64];

            if (v66)
            {
              defaultValue3 = v295;
              v27 = obj;
              goto LABEL_96;
            }
          }

          else
          {
          }

          v67 = v63;
          v68 = v50;
          v69 = v68;
          if (v291)
          {
            v70 = [v67 isEqualToString:v68];

            v27 = obj;
            if (v70)
            {
              goto LABEL_117;
            }
          }

          else
          {

            v27 = obj;
          }

          v71 = v67;
          v72 = v285;
          v73 = v72;
          if (v283)
          {
            v74 = [v71 isEqualToString:v72];

            if (v74)
            {
              goto LABEL_117;
            }
          }

          else
          {
          }

          v47 = v71;
          v75 = v275;
          v76 = v75;
          if (v47 == v75)
          {

            defaultValue3 = v295;
            goto LABEL_89;
          }

          if (v275 && v35)
          {
            v77 = [v47 isEqualToString:v75];

            if (v77)
            {
LABEL_117:
              defaultValue3 = v295;
              goto LABEL_96;
            }
          }

          else
          {
          }

          v47 = v273;
          v29 = v31;
          if (![v273 length])
          {
            v273 = value;
            defaultValue3 = v295;
            goto LABEL_90;
          }

          defaultValue3 = v295;
LABEL_97:
          currentLocale = v303;
LABEL_98:

          ++v30;
        }

        while (v309 != v30);
        v78 = [defaultValue3 countByEnumeratingWithState:&v328 objects:v339 count:16];
        v309 = v78;
        if (!v78)
        {
LABEL_135:

          if ([v27 length])
          {
            v84 = v27;
            v85 = PKLogFacilityTypeGetObject(7uLL);
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v86 = "Using me card iCloud email prefill";
              goto LABEL_141;
            }

            goto LABEL_142;
          }

          if (![v299 length])
          {
            if ([v289 length])
            {
              v84 = v289;
              v85 = PKLogFacilityTypeGetObject(7uLL);
              v16 = 0x1E695C000;
              if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_143;
              }

              *buf = 0;
              v207 = "Using me card other email prefill";
            }

            else
            {
              v16 = 0x1E695C000;
              if ([v273 length])
              {
                v84 = v273;
                v85 = PKLogFacilityTypeGetObject(7uLL);
                if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_143;
                }

                *buf = 0;
                v207 = "Using me card other custom prefill";
              }

              else
              {
                if (![v281 length])
                {
                  v84 = 0;
                  goto LABEL_144;
                }

                v84 = v281;
                v85 = PKLogFacilityTypeGetObject(7uLL);
                if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_143;
                }

                *buf = 0;
                v207 = "Using me card other work prefill";
              }
            }

            _os_log_impl(&dword_1AD337000, v85, OS_LOG_TYPE_DEFAULT, v207, buf, 2u);
            goto LABEL_143;
          }

          v84 = v299;
          v85 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v86 = "Using me card home email prefill";
LABEL_141:
            _os_log_impl(&dword_1AD337000, v85, OS_LOG_TYPE_DEFAULT, v86, buf, 2u);
          }

LABEL_142:
          v16 = 0x1E695C000uLL;
LABEL_143:

          defaultValue3 = v295;
LABEL_144:
          [v278 setDefaultValue:v84];
          currentValue3 = [v278 currentValue];

          if (!currentValue3)
          {
            [v278 setCurrentValue:v84];
          }

          v4 = v266;
LABEL_147:

          break;
        }
      }
    }
  }

  v88 = [v4 objectForKey:@"cardholderName"];
  v89 = v88;
  if (v88)
  {
    defaultValue4 = [v88 defaultValue];
    if (defaultValue4)
    {
      goto LABEL_155;
    }

    if ([v89 populateFromMeCard])
    {
      defaultValue4 = [*(v16 + 3456) stringFromContact:v277 style:0];
      v91 = PKCurrentRegion();
      v92 = [v91 isEqual:@"JP"];

      if (v92 && ([defaultValue4 canBeConvertedToEncoding:5] & 1) == 0)
      {

        defaultValue4 = 0;
      }

      [v89 setDefaultValue:defaultValue4];
LABEL_155:
    }
  }

  v268 = PKHomeAddressFromContact(v277);
  v93 = [v4 objectForKey:@"street1"];
  v94 = [v4 objectForKey:@"street2"];
  v280 = [v4 objectForKey:@"addressLine1"];
  v276 = [v4 objectForKey:@"addressLine2"];
  v282 = [v4 objectForKey:@"city"];
  v284 = [v4 objectForKey:@"postalCode"];
  v286 = [v4 objectForKey:@"subLocality"];
  v290 = [v4 objectForKey:@"administrativeArea"];
  v288 = [v4 objectForKey:@"state"];
  v294 = [v4 objectForKey:@"countryCode"];
  defaultValue5 = [v93 defaultValue];
  if (defaultValue5)
  {
    populateFromMeCard = 0;
  }

  else
  {
    populateFromMeCard = [v93 populateFromMeCard];
  }

  defaultValue6 = [v94 defaultValue];
  v270 = v94;
  if (defaultValue6)
  {
    populateFromMeCard2 = 0;
  }

  else
  {
    populateFromMeCard2 = [v94 populateFromMeCard];
  }

  defaultValue7 = [v280 defaultValue];
  v267 = v93;
  if (defaultValue7)
  {
    populateFromMeCard3 = 0;
  }

  else
  {
    populateFromMeCard3 = [v280 populateFromMeCard];
  }

  defaultValue8 = [v276 defaultValue];
  if (defaultValue8)
  {
    populateFromMeCard4 = 0;
  }

  else
  {
    populateFromMeCard4 = [v276 populateFromMeCard];
  }

  defaultValue9 = [v282 defaultValue];
  if (defaultValue9)
  {
    populateFromMeCard5 = 0;
  }

  else
  {
    populateFromMeCard5 = [v282 populateFromMeCard];
  }

  defaultValue10 = [v284 defaultValue];
  if (defaultValue10)
  {
    populateFromMeCard6 = 0;
  }

  else
  {
    populateFromMeCard6 = [v284 populateFromMeCard];
  }

  defaultValue11 = [v286 defaultValue];
  if (defaultValue11)
  {
    LOBYTE(v108) = 1;
  }

  else
  {
    v108 = [v286 populateFromMeCard] ^ 1;
  }

  v310 = v108;

  defaultValue12 = [v290 defaultValue];
  if (defaultValue12)
  {
    LOBYTE(v110) = 1;
  }

  else
  {
    v110 = [v290 populateFromMeCard] ^ 1;
  }

  v264 = v89;

  defaultValue13 = [v288 defaultValue];
  if (defaultValue13)
  {
LABEL_181:

    v4 = v266;
    v112 = v269;
    v113 = v270;
    v114 = v290;
    v115 = v294;
  }

  else
  {
    populateFromMeCard7 = [v288 populateFromMeCard];
    v136 = (populateFromMeCard & populateFromMeCard2 | populateFromMeCard3 & populateFromMeCard4) & populateFromMeCard5 & populateFromMeCard6;
    v4 = v266;
    v112 = v269;
    v113 = v270;
    v114 = v290;
    v115 = v294;
    if ((v136 & 1) != 0 && populateFromMeCard7)
    {
      v137 = MEMORY[0x1E695DA48];
      if (v267 || v270 || v280 || v276)
      {
        street = [v268 street];
        v139 = [street componentsSeparatedByString:@"\n"];

        firstObject = [v139 firstObject];
        v141 = *v137;
        v142 = [firstObject stringByApplyingTransform:*v137 reverse:0];

        [v267 setDefaultValue:v142];
        currentValue4 = [v267 currentValue];

        if (!currentValue4)
        {
          [v267 setCurrentValue:v142];
        }

        [v280 setDefaultValue:v142];
        currentValue5 = [v280 currentValue];

        if (!currentValue5)
        {
          [v280 setCurrentValue:v142];
        }

        if ([v139 count] >= 2)
        {
          v145 = [v139 objectAtIndex:1];
          v146 = [v145 stringByApplyingTransform:v141 reverse:0];

          [v270 setDefaultValue:v146];
          currentValue6 = [v270 currentValue];

          if (!currentValue6)
          {
            [v270 setCurrentValue:v146];
          }

          [v276 setDefaultValue:v146];
          currentValue7 = [v276 currentValue];

          if (!currentValue7)
          {
            [v276 setCurrentValue:v146];
          }
        }

        v112 = v269;
        v113 = v270;
        v114 = v290;
        v115 = v294;
      }

      if (v284)
      {
        postalCode = [v268 postalCode];
        [v284 setDefaultValue:postalCode];
        currentValue8 = [v284 currentValue];

        if (!currentValue8)
        {
          [v284 setCurrentValue:postalCode];
        }

        v115 = v294;
      }

      if (!((v286 == 0) | v310 & 1))
      {
        subLocality = [v268 subLocality];
        v152 = [subLocality stringByApplyingTransform:*v137 reverse:0];

        [v286 setDefaultValue:v152];
        currentValue9 = [v286 currentValue];

        if (!currentValue9)
        {
          [v286 setDefaultValue:v152];
        }

        v115 = v294;
      }

      if (!((v114 == 0) | v110 & 1))
      {
        subAdministrativeArea = [v268 subAdministrativeArea];
        v155 = [subAdministrativeArea stringByApplyingTransform:*v137 reverse:0];

        [v114 setDefaultValue:v155];
        currentValue10 = [v114 currentValue];

        if (!currentValue10)
        {
          [v114 setCurrentValue:v155];
        }

        v115 = v294;
      }

      if (v288)
      {
        state = [v268 state];
        v158 = [state stringByApplyingTransform:*v137 reverse:0];

        if (v158)
        {
          if ([v288 isFieldTypePicker])
          {
            v159 = v288;
            pickerItems = [v159 pickerItems];
            v325[0] = MEMORY[0x1E69E9820];
            v325[1] = 3221225472;
            v325[2] = __49__PKPaymentSetupFieldsModel_prefillDefaultValues__block_invoke;
            v325[3] = &unk_1E79C8418;
            v326 = v158;
            v161 = [pickerItems pk_firstObjectPassingTest:v325];

            if (v161)
            {
              currentValue11 = [v159 currentValue];

              if (!currentValue11)
              {
                [v159 setCurrentValue:v161];
              }
            }

            v112 = v269;
            v113 = v270;
            v114 = v290;
          }

          else
          {
            [v288 setDefaultValue:v158];
            currentValue12 = [v288 currentValue];

            if (!currentValue12)
            {
              [v288 setCurrentValue:v158];
            }
          }
        }

        v115 = v294;
      }

      if (v282)
      {
        city = [v268 city];
        defaultValue13 = [city stringByApplyingTransform:*v137 reverse:0];

        [v282 setDefaultValue:defaultValue13];
        currentValue13 = [v282 currentValue];

        if (!currentValue13)
        {
          [v282 setCurrentValue:defaultValue13];
        }

        goto LABEL_181;
      }
    }
  }

  v116 = v267;
  if (!v115 || [v115 fieldType] != 5)
  {
    goto LABEL_272;
  }

  pickerItems2 = [v115 pickerItems];
  v118 = [pickerItems2 count];

  if (!v118)
  {
    iSOCountryCodes = [MEMORY[0x1E695DF58] ISOCountryCodes];
    if ([iSOCountryCodes count])
    {
      v120 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(iSOCountryCodes, "count")}];
      v321 = 0u;
      v322 = 0u;
      v323 = 0u;
      v324 = 0u;
      v121 = iSOCountryCodes;
      v122 = [v121 countByEnumeratingWithState:&v321 objects:v338 count:16];
      if (v122)
      {
        v123 = v122;
        v124 = *v322;
        do
        {
          for (j = 0; j != v123; ++j)
          {
            if (*v322 != v124)
            {
              objc_enumerationMutation(v121);
            }

            v126 = *(*(&v321 + 1) + 8 * j);
            v127 = PKLocalizedStringForCountryCode(currentLocale, v126);
            if ([v127 length])
            {
              v128 = [[PKPaymentSetupFieldPickerItem alloc] initWithName:v127 value:v126];
              [v120 safelyAddObject:v128];
            }
          }

          v123 = [v121 countByEnumeratingWithState:&v321 objects:v338 count:16];
        }

        while (v123);
      }

      [v120 sortUsingComparator:&__block_literal_global_42];
      v129 = [v120 copy];
      [v294 setPickerItems:v129];

      v4 = v266;
      v116 = v267;
      v112 = v269;
      v113 = v270;
      v114 = v290;
    }

    v115 = v294;
  }

  defaultValue14 = [v115 defaultValue];
  currentValue14 = [v115 currentValue];

  if (currentValue14)
  {
    goto LABEL_271;
  }

  if (defaultValue14)
  {
    pickerItems3 = [v294 pickerItems];
    v133 = [PKPaymentSetupFieldPicker pickerItemMatchingValue:defaultValue14 pickerItems:pickerItems3];

    if (v133)
    {
      v134 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v134, OS_LOG_TYPE_DEFAULT, "Using server given default value for country code field", buf, 2u);
      }
    }

    v112 = v269;
    v114 = v290;
  }

  else
  {
    v133 = 0;
  }

  v163 = v294;
  if (![v294 populateFromMeCard])
  {
    goto LABEL_266;
  }

  iSOCountryCode = [v268 ISOCountryCode];
  uppercaseString = [iSOCountryCode uppercaseString];

  regionCode = [(NSMutableArray *)currentLocale regionCode];
  if (!v133)
  {
    if (uppercaseString)
    {
      pickerItems4 = [v294 pickerItems];
      v168 = [PKPaymentSetupFieldPicker pickerItemMatchingValue:uppercaseString pickerItems:pickerItems4];

      v4 = v266;
      if (v168)
      {
        v169 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v170 = "Using users meCard region as default countryCode value";
          goto LABEL_252;
        }

        goto LABEL_264;
      }
    }
  }

  if (v133 || !regionCode)
  {
    if (v133)
    {
      goto LABEL_265;
    }

    goto LABEL_260;
  }

  pickerItems5 = [v294 pickerItems];
  v168 = [PKPaymentSetupFieldPicker pickerItemMatchingValue:regionCode pickerItems:pickerItems5];

  v4 = v266;
  if (!v168)
  {
LABEL_260:
    pickerItems6 = [v294 pickerItems];
    v168 = [PKPaymentSetupFieldPicker pickerItemMatchingValue:@"US" pickerItems:pickerItems6];

    if (v168)
    {
      v169 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v169, OS_LOG_TYPE_DEFAULT, "No device region using US as default", buf, 2u);
      }

      v4 = v266;
      goto LABEL_264;
    }

    v133 = 0;
    v4 = v266;
    goto LABEL_265;
  }

  v169 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v170 = "Using device region as default countryCode value";
LABEL_252:
    _os_log_impl(&dword_1AD337000, v169, OS_LOG_TYPE_DEFAULT, v170, buf, 2u);
  }

LABEL_264:

  v133 = v168;
LABEL_265:

  v112 = v269;
  v116 = v267;
  v114 = v290;
  v163 = v294;
LABEL_266:
  if (v133)
  {
    [v163 setCurrentValue:v133];
  }

  else
  {
    v133 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v133, OS_LOG_TYPE_DEFAULT, "Could not find a currentValue for the countryCode picker", buf, 2u);
    }
  }

  v113 = v270;
LABEL_271:

LABEL_272:
  [v4 objectForKey:@"dateOfBirth"];
  v274 = v176 = v286;
  if (v274)
  {
    defaultDate2 = [v274 defaultDate];
    if (defaultDate2)
    {
      goto LABEL_283;
    }

    if ([v274 populateFromMeCard])
    {
      defaultDate2 = [v277 birthday];
      v178 = objc_alloc(MEMORY[0x1E695DEE8]);
      v179 = [v178 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
      if (defaultDate2 && [defaultDate2 year] != 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v179, "dateFromComponents:", defaultDate2), (v180 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v181 = v180;

        [v274 setCurrentValue:v181];
      }

      else
      {
        v182 = objc_alloc_init(MEMORY[0x1E695DF10]);
        date = [MEMORY[0x1E695DF00] date];
        [v182 setYear:{objc_msgSend(v179, "component:fromDate:", 4, date)}];

        [v182 setMonth:1];
        [v182 setDay:1];
        v181 = [v179 dateFromComponents:v182];
      }

      currentValue15 = [v274 currentValue];

      if (!currentValue15)
      {
        [v274 setDefaultDate:v181];
      }

      v112 = v269;
      v113 = v270;
      v176 = v286;
      v114 = v290;
LABEL_283:
    }
  }

  v272 = [v4 objectForKey:@"citizenship"];
  if (v272)
  {
    defaultValue15 = [v272 defaultValue];
    if (defaultValue15)
    {
      goto LABEL_319;
    }

    if ([v272 populateFromMeCard])
    {
      v186 = v272;
      defaultValue15 = [v272 defaultValue];
      regionCode2 = [(NSMutableArray *)currentLocale regionCode];
      pickerItems7 = [v272 pickerItems];
      v189 = [pickerItems7 count];

      if (!v189)
      {
        iSOCountryCodes2 = [MEMORY[0x1E695DF58] ISOCountryCodes];
        if ([iSOCountryCodes2 count])
        {
          v311 = regionCode2;
          v191 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(iSOCountryCodes2, "count")}];
          v317 = 0u;
          v318 = 0u;
          v319 = 0u;
          v320 = 0u;
          v307 = iSOCountryCodes2;
          v192 = iSOCountryCodes2;
          v193 = [v192 countByEnumeratingWithState:&v317 objects:v337 count:16];
          if (v193)
          {
            v194 = v193;
            v195 = *v318;
            do
            {
              for (k = 0; k != v194; ++k)
              {
                if (*v318 != v195)
                {
                  objc_enumerationMutation(v192);
                }

                v197 = *(*(&v317 + 1) + 8 * k);
                v198 = PKLocalizedStringForCountryCode(currentLocale, v197);
                if ([v198 length])
                {
                  v199 = [[PKPaymentSetupFieldPickerItem alloc] initWithName:v198 value:v197];
                  [v191 safelyAddObject:v199];
                }
              }

              v194 = [v192 countByEnumeratingWithState:&v317 objects:v337 count:16];
            }

            while (v194);
          }

          [v191 sortUsingComparator:&__block_literal_global_52];
          v200 = [v191 copy];
          v186 = v272;
          [v272 setPickerItems:v200];

          v4 = v266;
          v116 = v267;
          v176 = v286;
          iSOCountryCodes2 = v307;
          regionCode2 = v311;
        }
      }

      currentValue16 = [v186 currentValue];

      if (!currentValue16)
      {
        if (!defaultValue15 || ([v186 pickerItems], v202 = objc_claimAutoreleasedReturnValue(), +[PKPaymentSetupFieldPicker pickerItemMatchingValue:pickerItems:](PKPaymentSetupFieldPicker, "pickerItemMatchingValue:pickerItems:", defaultValue15, v202), v203 = objc_claimAutoreleasedReturnValue(), v202, !v203))
        {
          if (regionCode2 && ([v186 pickerItems], v206 = objc_claimAutoreleasedReturnValue(), +[PKPaymentSetupFieldPicker pickerItemMatchingValue:pickerItems:](PKPaymentSetupFieldPicker, "pickerItemMatchingValue:pickerItems:", regionCode2, v206), v203 = objc_claimAutoreleasedReturnValue(), v206, v203))
          {
            v204 = PKLogFacilityTypeGetObject(7uLL);
            if (!os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_316;
            }

            *buf = 0;
            v205 = "Using user region code as default citizenship value";
          }

          else
          {
            pickerItems8 = [v186 pickerItems];
            v203 = [PKPaymentSetupFieldPicker pickerItemMatchingValue:@"US" pickerItems:pickerItems8];

            v204 = PKLogFacilityTypeGetObject(7uLL);
            v209 = os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT);
            if (!v203)
            {
              if (v209)
              {
                *buf = 0;
                _os_log_impl(&dword_1AD337000, v204, OS_LOG_TYPE_DEFAULT, "Could not find a currentValue for the citizenship picker", buf, 2u);
              }

              goto LABEL_317;
            }

            if (!v209)
            {
              goto LABEL_316;
            }

            *buf = 0;
            v205 = "No user region code, using US as default for citizenship";
          }

LABEL_315:
          _os_log_impl(&dword_1AD337000, v204, OS_LOG_TYPE_DEFAULT, v205, buf, 2u);
          goto LABEL_316;
        }

        v204 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v205 = "Using server given default value for citizenship field";
          goto LABEL_315;
        }

LABEL_316:

        [v186 setCurrentValue:v203];
        v204 = v203;
LABEL_317:
      }

      v112 = v269;
      v113 = v270;
      v114 = v290;
LABEL_319:
    }
  }

  v210 = [v4 objectForKey:@"phoneNumber"];
  v211 = v210;
  if (v210)
  {
    v262 = v210;
    defaultValue16 = [v210 defaultValue];
    if (defaultValue16)
    {
      goto LABEL_322;
    }

    v211 = v262;
    if ([v262 populateFromMeCard])
    {
      if (PKIsPhone())
      {
        v213 = PKDevicePhoneNumber();
      }

      else
      {
        v213 = 0;
      }

      if ([v213 length])
      {
        v214 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v215 = v214;
          _os_log_impl(&dword_1AD337000, v214, OS_LOG_TYPE_DEFAULT, "Using device number prefill", buf, 2u);
        }

        else
        {
          v215 = v214;
        }

        goto LABEL_422;
      }

      v315 = 0u;
      v316 = 0u;
      v313 = 0u;
      v314 = 0u;
      obja = [v277 phoneNumbers];
      v216 = [obja countByEnumeratingWithState:&v313 objects:v336 count:16];
      if (!v216)
      {
        v312 = 0;
        v298 = 0;
        v300 = 0;
        v292 = 0;
        goto LABEL_397;
      }

      v217 = v216;
      v298 = 0;
      v300 = 0;
      v292 = 0;
      v308 = *v314;
      v312 = 0;
      v218 = *MEMORY[0x1E695CBC0];
      v219 = *MEMORY[0x1E695CB90];
      v296 = *MEMORY[0x1E695CB88];
      v271 = *MEMORY[0x1E695CB78];
      v263 = *MEMORY[0x1E695CBB8];
      v261 = *MEMORY[0x1E695CB98];
      v260 = *MEMORY[0x1E695CBA0];
      v305 = *MEMORY[0x1E695CB90];
      while (1)
      {
        v220 = 0;
        do
        {
          if (*v314 != v308)
          {
            objc_enumerationMutation(obja);
          }

          v221 = *(*(&v313 + 1) + 8 * v220);
          label2 = [v221 label];
          value2 = [v221 value];
          stringValue = [value2 stringValue];

          v225 = label2;
          v226 = v218;
          v227 = v226;
          if (v225 == v226)
          {

LABEL_345:
            v229 = v312;
            v312 = stringValue;
            goto LABEL_389;
          }

          if (v218 && v225)
          {
            v228 = [v225 isEqualToString:v226];

            if (v228)
            {
              goto LABEL_345;
            }
          }

          else
          {
          }

          v230 = v225;
          v231 = v219;
          v232 = v231;
          if (v230 == v231)
          {

LABEL_353:
            v229 = v300;
            v300 = stringValue;
            goto LABEL_389;
          }

          if (v219 && v225)
          {
            v233 = [v230 isEqualToString:v231];

            if (v233)
            {
              goto LABEL_353;
            }
          }

          else
          {
          }

          v234 = v230;
          v235 = v296;
          v236 = v235;
          if (v234 == v235)
          {

LABEL_361:
            v229 = v298;
            v298 = stringValue;
            goto LABEL_389;
          }

          if (v296 && v225)
          {
            v237 = [v234 isEqualToString:v235];

            if (v237)
            {
              goto LABEL_361;
            }
          }

          else
          {
          }

          v238 = v234;
          v239 = v271;
          v240 = v239;
          if (v238 == v239)
          {
          }

          else
          {
            if (!v271 || !v225)
            {
LABEL_386:

LABEL_387:
              v229 = v292;
              if ([v292 length])
              {
                goto LABEL_390;
              }

              v292 = stringValue;
LABEL_389:

              goto LABEL_390;
            }

            v241 = [v238 isEqualToString:v239];

            if (!v241)
            {
              goto LABEL_387;
            }
          }

          v242 = v238;
          v243 = v263;
          v240 = v243;
          if (v242 == v243)
          {
          }

          else
          {
            if (!v263 || !v225)
            {
              goto LABEL_386;
            }

            v244 = [v242 isEqualToString:v243];

            if (!v244)
            {
              goto LABEL_387;
            }
          }

          v245 = v242;
          v246 = v261;
          v240 = v246;
          if (v245 == v246)
          {
          }

          else
          {
            if (!v261 || !v225)
            {
              goto LABEL_386;
            }

            v247 = [v245 isEqualToString:v246];

            if (!v247)
            {
              goto LABEL_387;
            }
          }

          v229 = v245;
          v248 = v260;
          v240 = v248;
          if (v229 == v248)
          {

            goto LABEL_389;
          }

          if (!v260 || !v225)
          {
            goto LABEL_386;
          }

          v249 = [v229 isEqualToString:v248];

          if ((v249 & 1) == 0)
          {
            goto LABEL_387;
          }

LABEL_390:

          ++v220;
          v219 = v305;
        }

        while (v217 != v220);
        v250 = [obja countByEnumeratingWithState:&v313 objects:v336 count:16];
        v217 = v250;
        if (!v250)
        {
LABEL_397:

          v215 = v312;
          if (![v312 length])
          {
            v254 = v300;
            v4 = v266;
            v116 = v267;
            v113 = v270;
            if ([v300 length])
            {
              v251 = v300;

              v252 = PKLogFacilityTypeGetObject(7uLL);
              if (!os_log_type_enabled(v252, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_420;
              }

              *buf = 0;
              v253 = "Using me card mobile number prefill";
            }

            else
            {
              v255 = v298;
              if ([v298 length])
              {
                v251 = v298;

                v252 = PKLogFacilityTypeGetObject(7uLL);
                if (!os_log_type_enabled(v252, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_420;
                }

                *buf = 0;
                v253 = "Using me card main number prefill";
              }

              else
              {
                v256 = v292;
                if (![v292 length])
                {
                  goto LABEL_421;
                }

                v251 = v292;

                v252 = PKLogFacilityTypeGetObject(7uLL);
                if (!os_log_type_enabled(v252, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_420;
                }

                *buf = 0;
                v253 = "Using me card other number prefill";
              }
            }

LABEL_419:
            _os_log_impl(&dword_1AD337000, v252, OS_LOG_TYPE_DEFAULT, v253, buf, 2u);
            goto LABEL_420;
          }

          v251 = v312;

          v252 = PKLogFacilityTypeGetObject(7uLL);
          v4 = v266;
          v116 = v267;
          v113 = v270;
          if (os_log_type_enabled(v252, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v253 = "Using me card iPhone number prefill";
            goto LABEL_419;
          }

LABEL_420:

          v259 = v251;
          v255 = v298;
          v254 = v300;
          v256 = v292;
LABEL_421:

          v112 = v269;
          v176 = v286;
          v114 = v290;
LABEL_422:

          if ([v259 length])
          {
            [v262 setDefaultValue:v259];
            currentValue17 = [v262 currentValue];

            if (!currentValue17)
            {
              [v262 setCurrentValue:v259];
            }

            defaultValue16 = v259;
          }

          else
          {
            v258 = PKLogFacilityTypeGetObject(7uLL);
            if (os_log_type_enabled(v258, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v258, OS_LOG_TYPE_DEFAULT, "No prefilled phone number could be found", buf, 2u);
            }

            defaultValue16 = v259;
          }

LABEL_322:

          v211 = v262;
          break;
        }
      }
    }
  }

LABEL_324:
LABEL_325:
}

BOOL __49__PKPaymentSetupFieldsModel_prefillDefaultValues__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 localizedDisplayName];
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v10 = 1;
    v11 = v6;
LABEL_14:

    goto LABEL_15;
  }

  if (!v6 || !v7)
  {

    goto LABEL_8;
  }

  v9 = [v6 caseInsensitiveCompare:v7];

  if (v9)
  {
LABEL_8:
    v12 = [v3 submissionValue];
    v13 = *(a1 + 32);
    v8 = v12;
    v14 = v13;
    v15 = v14;
    if (v8 == v14)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v8 && v14)
      {
        v10 = [v8 caseInsensitiveCompare:v14] == 0;
      }
    }

    v11 = v8;
    goto LABEL_14;
  }

  v10 = 1;
LABEL_15:

  return v10;
}

uint64_t __49__PKPaymentSetupFieldsModel_prefillDefaultValues__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedDisplayName];
  v6 = [v4 localizedDisplayName];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

uint64_t __49__PKPaymentSetupFieldsModel_prefillDefaultValues__block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedDisplayName];
  v6 = [v4 localizedDisplayName];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)prefillDefaultValuesWithPostalAddress:(id)address
{
  addressCopy = address;
  v5 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"street1"];
  v6 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"street2"];
  v7 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"addressLine1"];
  v8 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"addressLine2"];
  v9 = v8;
  if (v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = v6 == 0;
  }

  v12 = v10 && v7 == 0 && v8 == 0;
  v32 = v7;
  v33 = v6;
  if (v12)
  {
    v16 = *MEMORY[0x1E695DA48];
  }

  else
  {
    street = [addressCopy street];
    v14 = [street componentsSeparatedByString:@"\n"];

    firstObject = [v14 firstObject];
    v16 = *MEMORY[0x1E695DA48];
    v17 = [firstObject stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

    __67__PKPaymentSetupFieldsModel_prefillDefaultValuesWithPostalAddress___block_invoke(v5, v17);
    __67__PKPaymentSetupFieldsModel_prefillDefaultValuesWithPostalAddress___block_invoke(v7, v17);
    if ([v14 count] < 2)
    {
      v19 = 0;
    }

    else
    {
      v18 = [v14 objectAtIndex:1];
      v19 = [v18 stringByApplyingTransform:v16 reverse:0];
    }

    __67__PKPaymentSetupFieldsModel_prefillDefaultValuesWithPostalAddress___block_invoke(v6, v19);
    __67__PKPaymentSetupFieldsModel_prefillDefaultValuesWithPostalAddress___block_invoke(v9, v19);
  }

  v20 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"postalCode"];
  postalCode = [addressCopy postalCode];
  __67__PKPaymentSetupFieldsModel_prefillDefaultValuesWithPostalAddress___block_invoke(v20, postalCode);
  v22 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"city"];
  city = [addressCopy city];
  v24 = [city stringByApplyingTransform:v16 reverse:0];

  __67__PKPaymentSetupFieldsModel_prefillDefaultValuesWithPostalAddress___block_invoke(v22, v24);
  v25 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"state"];
  if (v25)
  {
    state = [addressCopy state];
    v27 = [state stringByApplyingTransform:v16 reverse:0];

    if (v27)
    {
      if ([v25 isFieldTypePicker])
      {
        v31 = v5;
        v30 = v25;
        pickerItems = [v30 pickerItems];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __67__PKPaymentSetupFieldsModel_prefillDefaultValuesWithPostalAddress___block_invoke_2;
        v34[3] = &unk_1E79C8418;
        v35 = v27;
        v29 = [pickerItems pk_firstObjectPassingTest:v34];

        if (v29)
        {
          [v30 setCurrentValue:v29];
          [v30 setSource:2];
        }

        v5 = v31;
      }

      else
      {
        __67__PKPaymentSetupFieldsModel_prefillDefaultValuesWithPostalAddress___block_invoke(v25, v27);
      }
    }
  }
}

void __67__PKPaymentSetupFieldsModel_prefillDefaultValuesWithPostalAddress___block_invoke(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = a1;
    [v4 setDefaultValue:v3];
    [v4 setCurrentValue:v3];

    [v4 setSource:2];
  }
}

BOOL __67__PKPaymentSetupFieldsModel_prefillDefaultValuesWithPostalAddress___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 localizedDisplayName];
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v10 = 1;
    v11 = v6;
LABEL_14:

    goto LABEL_15;
  }

  if (!v6 || !v7)
  {

    goto LABEL_8;
  }

  v9 = [v6 caseInsensitiveCompare:v7];

  if (v9)
  {
LABEL_8:
    v12 = [v3 submissionValue];
    v13 = *(a1 + 32);
    v8 = v12;
    v14 = v13;
    v15 = v14;
    if (v8 == v14)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v8 && v14)
      {
        v10 = [v8 caseInsensitiveCompare:v14] == 0;
      }
    }

    v11 = v8;
    goto LABEL_14;
  }

  v10 = 1;
LABEL_15:

  return v10;
}

- (void)prefillValuesWithPaymentCredential:(id)credential targetDevice:(id)device
{
  v123[1] = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  deviceCopy = device;
  if ([credentialCopy isFPANCredential])
  {
    v8 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"primaryAccountNumber"];
    v9 = v8;
    if (v8)
    {
      currentValue = [v8 currentValue];

      if (!currentValue)
      {
        [(NSMutableArray *)self->_paymentSetupFields removeObject:v9];
        v11 = [[PKPaymentSetupFieldBuiltInCardOnFilePrimaryAccountNumber alloc] initWithIdentifier:@"cardOnFilePrimaryAccountNumber"];
        [(NSMutableArray *)self->_paymentSetupFields insertObject:v11 atIndex:0];
      }
    }

    fpanCredential = [credentialCopy fpanCredential];
    v13 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"cardholderName"];
    currentValue2 = [v13 currentValue];

    if (!currentValue2)
    {
      cardholderName = [fpanCredential cardholderName];
      [v13 setCurrentValue:cardholderName];
    }

    v16 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"cardSecurityCode"];
    currentValue3 = [v16 currentValue];

    if (!currentValue3)
    {
      securityCode = [fpanCredential securityCode];
      [v16 setCurrentValue:securityCode];
    }
  }

  v19 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"cardOnFilePrimaryAccountNumber"];
  v20 = v19;
  if (v19)
  {
    [v19 setReadonly:1];
    v21 = PKSanitizedPrimaryAccountRepresentationForPaymentCredential(credentialCopy);
    [v20 setCurrentValue:v21];

    credentialType = [credentialCopy credentialType];
    if ([credentialCopy isLocalPassCredential])
    {
      if (credentialType == 123)
      {
        v23 = @"ACCOUNT_ON_IPHONE";
LABEL_19:
        v25 = PKLocalizedAquamanString(&v23->isa, 0);
LABEL_22:
        v26 = v25;
        [v20 setLocalizedDisplayName:v25];

        goto LABEL_23;
      }

      v24 = @"CARD_ON_IPHONE";
    }

    else if ([credentialCopy isFPANCredential])
    {
      v24 = @"CARD_NUMBER";
    }

    else
    {
      if (credentialType == 123)
      {
        v23 = @"ACCOUNT_ON_FILE";
        goto LABEL_19;
      }

      v24 = @"CARD_ON_FILE";
    }

    v25 = PKLocalizedPaymentString(&v24->isa, 0);
    goto LABEL_22;
  }

LABEL_23:
  v27 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"cardSecurityCode"];
  v28 = v27;
  if (v27)
  {
    currentValue4 = [v27 currentValue];

    if (!currentValue4)
    {
      remoteCredential = [credentialCopy remoteCredential];
      paymentPass = [remoteCredential paymentPass];

      primaryAccountIdentifier = [paymentPass primaryAccountIdentifier];
      uniqueID = [paymentPass uniqueID];
      if (primaryAccountIdentifier && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v120 = 0;
        [deviceCopy fpanCredentialForPrimaryAccountIdentifier:primaryAccountIdentifier passUniqueID:uniqueID credential:&v120 error:0];
        v34 = v120;
        v35 = v34;
        if (v34)
        {
          securityCode2 = [v34 securityCode];
          if (securityCode2)
          {
            [v28 setCurrentValue:securityCode2];
          }
        }
      }
    }
  }

  v37 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"cardExpiration"];
  v38 = v37;
  if (v37)
  {
    currentValue5 = [v37 currentValue];

    if (!currentValue5)
    {
      expiration = [credentialCopy expiration];

      if (expiration)
      {
        fpanCredential3 = PKExpirationDateFormatter();
        expiration2 = [credentialCopy expiration];
        expirationDate2 = [fpanCredential3 dateFromString:expiration2];

        if (!expirationDate2)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      fpanCredential2 = [credentialCopy fpanCredential];
      expirationDate = [fpanCredential2 expirationDate];

      if (expirationDate)
      {
        fpanCredential3 = [credentialCopy fpanCredential];
        expirationDate2 = [fpanCredential3 expirationDate];
LABEL_40:
        [v38 setCurrentValue:expirationDate2];
LABEL_41:
      }
    }
  }

  accountCredential = [credentialCopy accountCredential];
  account = [accountCredential account];

  creditDetails = [account creditDetails];
  if ([credentialCopy isAccountCredential] && creditDetails)
  {
    currencyCode = [creditDetails currencyCode];
    feature = [account feature];
    accountSummary = [creditDetails accountSummary];
    accessLevel = [account accessLevel];
    if (accessLevel >= 2)
    {
      if (accessLevel != 2)
      {
LABEL_67:

        goto LABEL_68;
      }

      v118 = currencyCode;
      v113 = v28;
      v114 = v20;
      v115 = deviceCopy;
      v53 = [[PKPaymentSetupFieldText alloc] initWithIdentifier:@"spendActivity" type:1];
      [(PKPaymentSetupField *)v53 textFieldObject];
      textFieldObject2 = v119 = accountSummary;

      v55 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      date = [MEMORY[0x1E695DF00] date];
      v57 = [v55 components:8 fromDate:date];
      month = [v57 month];

      v59 = PKGregorianMonthSpecificLocalizedStringKeyForKey(@"SPENDING_LABEL", month);
      v65 = PKLocalizedFeatureString(v59, 2, 0, v60, v61, v62, v63, v64, v109);
      [textFieldObject2 setLocalizedDisplayName:v65];

      v66 = PKCurrentUserAltDSID();
      v67 = [v119 accountUserActivityForAccountUserAltDSID:v66];

      v117 = v67;
      totalSpending = [(NSDecimalNumber *)v67 totalSpending];
      currencyCode2 = [creditDetails currencyCode];
      v70 = currencyCode2;
      if (totalSpending && currencyCode2)
      {
        v111 = PKCurrencyAmountCreate(totalSpending, currencyCode2, 0);
        zero = [MEMORY[0x1E696AB90] zero];
        v72 = [(NSDecimalNumber *)totalSpending compare:zero];

        if (v72 == -1)
        {
          negativeValue = [v111 negativeValue];

          formattedStringValue = [negativeValue formattedStringValue];
          v107 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F2281668.isa, formattedStringValue);
          [textFieldObject2 setCurrentValue:v107];

          formattedStringValue2 = formattedStringValue;
          v73 = negativeValue;
        }

        else
        {
          v73 = v111;
          formattedStringValue2 = [v111 formattedStringValue];
          [textFieldObject2 setCurrentValue:formattedStringValue2];
        }
      }

      [textFieldObject2 setReadonly:1];
      v121 = textFieldObject2;
      v108 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
      [(PKPaymentSetupFieldsModel *)self updateWithPaymentSetupFields:v108];

      v28 = v113;
      creditLimit = v117;
    }

    else
    {
      v112 = v28;
      v114 = v20;
      v115 = deviceCopy;
      v118 = currencyCode;
      v119 = accountSummary;
      if ([accountSummary requiresDebtCollectionNotices])
      {
        v52 = 0;
      }

      else
      {
        v75 = [[PKPaymentSetupFieldBuiltInBalance alloc] initWithIdentifier:@"balance" type:1];
        textFieldObject = [(PKPaymentSetupField *)v75 textFieldObject];

        v82 = PKLocalizedFeatureString(@"ACCOUNT_DASHBOARD_SUMMARY_CARD_BALANCE", feature, 0, v77, v78, v79, v80, v81, v109);
        v83 = textFieldObject;
        [textFieldObject setLocalizedDisplayName:v82];

        creditDetails2 = [account creditDetails];
        cardBalance = [creditDetails2 cardBalance];

        amount = [cardBalance amount];
        zero2 = [MEMORY[0x1E696AB90] zero];
        v88 = [amount compare:zero2];

        if (v88 == -1)
        {
          negativeValue2 = [cardBalance negativeValue];

          formattedStringValue3 = [negativeValue2 formattedStringValue];
          v109 = formattedStringValue3;
          v93 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F2281668.isa);
          v52 = v83;
          [v83 setCurrentValue:v93];

          cardBalance = negativeValue2;
        }

        else
        {
          formattedStringValue4 = [cardBalance formattedStringValue];
          formattedStringValue3 = formattedStringValue4;
          if (formattedStringValue4)
          {
            v91 = formattedStringValue4;
          }

          else
          {
            v91 = &stru_1F227FD28;
          }

          v52 = v83;
          [v83 setCurrentValue:v91];
        }

        v123[0] = v52;
        v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:1];
        [(PKPaymentSetupFieldsModel *)self updateWithPaymentSetupFields:v94];

        currencyCode = v118;
        accountSummary = v119;
      }

      creditLimit = [accountSummary creditLimit];
      v96 = [[PKPaymentSetupFieldText alloc] initWithIdentifier:@"limit" type:1];
      textFieldObject2 = [(PKPaymentSetupField *)v96 textFieldObject];

      v102 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_CREDIT_DETAILS_CREDIT_LIMIT", feature, 0, v97, v98, v99, v100, v101, v109);
      [textFieldObject2 setLocalizedDisplayName:v102];

      totalSpending = PKCurrencyAmountCreate(creditLimit, currencyCode, 0);
      formattedStringValue5 = [(NSDecimalNumber *)totalSpending formattedStringValue];
      v104 = formattedStringValue5;
      if (formattedStringValue5)
      {
        v105 = formattedStringValue5;
      }

      else
      {
        v105 = &stru_1F227FD28;
      }

      [textFieldObject2 setCurrentValue:v105];

      [textFieldObject2 setReadonly:1];
      v122 = textFieldObject2;
      v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
      [(PKPaymentSetupFieldsModel *)self updateWithPaymentSetupFields:v70];
      v28 = v112;
    }

    v20 = v114;
    deviceCopy = v115;
    currencyCode = v118;
    accountSummary = v119;
    goto LABEL_67;
  }

LABEL_68:
}

- (void)prefillValuesWithFPAN:(id)n targetDevice:(id)device
{
  nCopy = n;
  deviceCopy = device;
  if (nCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = 0;
    v16 = 0;
    [deviceCopy fpanDescriptorAndCredentialForFPAN:nCopy descriptor:&v16 credential:&v15 error:0];
    v8 = v16;
    v9 = v15;
    v10 = v9;
    if (v8 && v9)
    {
      v11 = [[PKFPANCredential alloc] initWithFPANCardDescriptor:v8 credential:v9];
      if (v11)
      {
        v12 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"primaryAccountNumber"];
        v13 = v12;
        if (v12)
        {
          currentValue = [v12 currentValue];

          if (!currentValue)
          {
            [v13 setCurrentValue:nCopy];
          }
        }

        [(PKPaymentSetupFieldsModel *)self prefillValuesWithPaymentCredential:v11 targetDevice:deviceCopy];
      }
    }
  }
}

- (id)setupFieldAnalytics
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_paymentSetupFields;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];

        if (identifier)
        {
          identifier2 = [v9 identifier];
          [v3 setObject:@"true" forKey:identifier2];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (id)odiAttributes
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_paymentSetupFields;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        odiAttribute = [v9 odiAttribute];
        if (odiAttribute)
        {
          v11 = odiAttribute;
          submissionString = [v9 submissionString];

          if (submissionString)
          {
            submissionString2 = [v9 submissionString];
            odiAttribute2 = [v9 odiAttribute];
            [v3 setObject:submissionString2 forKey:odiAttribute2];
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v15 = objc_alloc_init(MEMORY[0x1E69983B0]);
    v16 = [v3 copy];
    [v15 setAttributes:v16];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)requirementsMetForFieldWithIdentifier:(id)identifier
{
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:identifierCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  requirements = [v5 requirements];
  v7 = [requirements countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v25 = v5;
    v26 = identifierCopy;
    v9 = *v30;
    selfCopy = self;
    v28 = requirements;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(requirements);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if ([v11 type] == 1)
        {
          fieldIdentifier = [v11 fieldIdentifier];
          v13 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:fieldIdentifier];
          v14 = v13;
          if (v13 && [v13 isFieldTypePicker])
          {
            pickerFieldObject = [v14 pickerFieldObject];
            currentValue = [pickerFieldObject currentValue];
            submissionValue = [currentValue submissionValue];
            value = [v11 value];
            v19 = value;
            v20 = !submissionValue || value == 0;
            v21 = v20 ? submissionValue == value : [submissionValue isEqual:value];

            self = selfCopy;
            requirements = v28;
            if ((v21 & 1) == 0)
            {
              v23 = PKLogFacilityTypeGetObject(7uLL);
              identifierCopy = v26;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v34 = v26;
                v35 = 2112;
                v36 = fieldIdentifier;
                _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "Requirement not met for %@, based on %@", buf, 0x16u);
              }

              v22 = 0;
              goto LABEL_23;
            }
          }
        }
      }

      v8 = [requirements countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v22 = 1;
    identifierCopy = v26;
LABEL_23:
    v5 = v25;
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

- (BOOL)requirementsMetForVisibleFields
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  visiblePaymentSetupFields = [(PKPaymentSetupFieldsModel *)self visiblePaymentSetupFields];
  v3 = [visiblePaymentSetupFields countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(visiblePaymentSetupFields);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (([v7 submissionStringMeetsAllRequirements] & 1) == 0 && (objc_msgSend(v7, "isOptional") & 1) == 0 && !objc_msgSend(v7, "isReadonly"))
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v4 = [visiblePaymentSetupFields countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (BOOL)validValuesProvidedForVisibleFields
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  visiblePaymentSetupFields = [(PKPaymentSetupFieldsModel *)self visiblePaymentSetupFields];
  v3 = [visiblePaymentSetupFields countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(visiblePaymentSetupFields);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (([v7 submissionStringMeetsAllRequirements] & 1) == 0 && !objc_msgSend(v7, "isReadonly"))
        {
          v8 = 0;
          goto LABEL_12;
        }
      }

      v4 = [visiblePaymentSetupFields countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (BOOL)hasVisibleEditableFields
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  visiblePaymentSetupFields = [(PKPaymentSetupFieldsModel *)self visiblePaymentSetupFields];
  v3 = [visiblePaymentSetupFields countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(visiblePaymentSetupFields);
        }

        if (![*(*(&v7 + 1) + 8 * i) isReadonly])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [visiblePaymentSetupFields countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

@end