@interface PKPaymentSetupFieldsModel
+ (id)defaultPaymentSetupProvisioningFields;
+ (id)fakePaymentSetupProvisioningFields;
- (BOOL)hasFooterPaymentSetupField;
- (BOOL)hasIncompletePaymentSetupFields;
- (BOOL)hasVisibleEditableFields;
- (BOOL)requirementsMetForFieldWithIdentifier:(id)a3;
- (BOOL)requirementsMetForVisibleFields;
- (BOOL)validValuesProvidedForVisibleFields;
- (PKPaymentSetupFieldsModel)init;
- (PKPaymentSetupFieldsModel)initWithPaymentSetupFields:(id)a3 footerFields:(id)a4;
- (id)encryptedPerFieldSubmissionValuesForDestination:(id)a3;
- (id)incompletePaymentSetupFields;
- (id)odiAttributes;
- (id)paymentSetupFieldWithIdentifier:(id)a3;
- (id)secondaryEntryFieldsModelWithPaymentSetupFields:(id)a3;
- (id)secureSubmissionValuesForDestination:(id)a3;
- (id)setupFieldAnalytics;
- (id)submissionValuesForDestination:(id)a3;
- (void)_addField:(id)a3 result:(id)a4 destination:(id)a5 submissionSecurity:(unint64_t)a6;
- (void)disableDOBPrefill;
- (void)lockFields;
- (void)prefillDefaultValues;
- (void)prefillDefaultValuesWithPostalAddress:(id)a3;
- (void)prefillValuesWithFPAN:(id)a3 targetDevice:(id)a4;
- (void)prefillValuesWithPaymentCredential:(id)a3 targetDevice:(id)a4;
- (void)replaceAllPaymentSetupFields:(id)a3 footerFields:(id)a4;
- (void)replaceAllPaymentSetupFieldsPreservingCurrentValues:(id)a3;
- (void)resetAllPaymentSetupFieldValues;
- (void)unhideFieldsWithEnteredValues;
- (void)updateWithPaymentSetupFields:(id)a3 footerFields:(id)a4;
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

- (PKPaymentSetupFieldsModel)initWithPaymentSetupFields:(id)a3 footerFields:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentSetupFieldsModel *)self init];
  v9 = v8;
  if (v8)
  {
    [(PKPaymentSetupFieldsModel *)v8 replaceAllPaymentSetupFields:v6 footerFields:v7];
  }

  return v9;
}

+ (id)defaultPaymentSetupProvisioningFields
{
  if (PKShowFakePaymentSetupFields())
  {
    v3 = [a1 fakePaymentSetupProvisioningFields];
  }

  else
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"cardholderName"];
    [v4 addObject:v5];

    v6 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"primaryAccountNumber"];
    [v4 addObject:v6];

    v3 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];
  }

  return v3;
}

+ (id)fakePaymentSetupProvisioningFields
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"cardholderName"];
  [v2 addObject:v3];

  v4 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"primaryAccountNumber"];
  [v2 addObject:v4];

  v5 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"cardExpiration"];
  [v2 addObject:v5];

  v6 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"cardSecurityCode"];
  [v2 addObject:v6];

  v7 = +[PKPaymentSetupField sampleCustomPaymentSetupFields];
  [v2 addObjectsFromArray:v7];

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v2];

  return v8;
}

- (void)replaceAllPaymentSetupFields:(id)a3 footerFields:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_storeStrong(&self->_footerFields, a4);
  [(PKPaymentSetupFieldsModel *)self resetAllPaymentSetupFieldValues];
  [(NSMutableArray *)self->_paymentSetupFields removeAllObjects];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
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
          v14 = [v13 footerFieldObject];
          footerField = self->_footerField;
          self->_footerField = v14;
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

- (void)replaceAllPaymentSetupFieldsPreservingCurrentValues:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:v10];

        if (v11)
        {
          v12 = [v9 fieldType];
          if (v12 == [v11 fieldType])
          {
            v13 = [v11 currentValue];

            if (v13)
            {
              v14 = [v11 currentValue];
              [v9 setCurrentValue:v14];

              [v9 setSource:{objc_msgSend(v11, "source")}];
              v15 = [v11 originalCameraCaptureValue];
              [v9 setOriginalCameraCaptureValue:v15];

              if ([v9 isFieldTypeText])
              {
                v16 = [v11 displayFormat];
                v17 = [v16 length];

                if (v17)
                {
                  v18 = [v9 textFieldObject];
                  v19 = [v11 displayFormat];
                  [v18 updateDisplayFormat:v19];
                }
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  [(PKPaymentSetupFieldsModel *)self replaceAllPaymentSetupFields:v4];
}

- (void)updateWithPaymentSetupFields:(id)a3 footerFields:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_storeStrong(&self->_footerFields, a4);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
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
        v14 = [v13 identifier];
        v15 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:v14];

        if (v15)
        {
          v16 = [v13 rawConfigurationDictionary];
          [v15 updateWithConfiguration:v16];
        }

        else if ([v13 isFieldTypeFooter])
        {
          v17 = [v13 footerFieldObject];
          footerField = self->_footerField;
          self->_footerField = v17;
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

- (id)secondaryEntryFieldsModelWithPaymentSetupFields:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v4;
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
        v12 = [v11 identifier];
        v13 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:v12];
        v14 = [v13 copy];

        if (v14)
        {
          v15 = [v11 rawConfigurationDictionary];
          [v14 updateWithConfiguration:v15];

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
        [v6 addObject:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = [(PKPaymentSetupFieldsModel *)self paymentSetupFields];
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v30 + 1) + 8 * j);
        v24 = [v23 identifier];
        v25 = [v6 containsObject:v24];

        if ((v25 & 1) == 0)
        {
          v26 = [v23 copy];
          [v26 setHidden:1];
          [v5 addObject:v26];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
          v8 = [v7 currentValue];

          if (v8)
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

- (id)paymentSetupFieldWithIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v11 = [v10 identifier];
      v12 = [v11 isEqualToString:v4];

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
  if (footerField && (-[PKPaymentSetupField identifier](footerField, "identifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isEqualToString:v4], v15, v16))
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
  v3 = [MEMORY[0x1E695DF70] array];
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
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  return v10;
}

- (BOOL)hasIncompletePaymentSetupFields
{
  v2 = [(PKPaymentSetupFieldsModel *)self incompletePaymentSetupFields];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)submissionValuesForDestination:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      [(PKPaymentSetupFieldsModel *)self _addField:v13 result:v5 destination:v4 submissionSecurity:0];
      if ([v13 supportsAddressAutofill])
      {
        v14 = [v13 source];
        switch(v14)
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
  v2 = [(PKPaymentSetupFieldsModel *)self footerPaymentSetupField];
  v3 = v2 != 0;

  return v3;
}

- (id)secureSubmissionValuesForDestination:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        [(PKPaymentSetupFieldsModel *)self _addField:*(*(&v13 + 1) + 8 * i) result:v5 destination:v4 submissionSecurity:1, v13];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5];

  return v11;
}

- (id)encryptedPerFieldSubmissionValuesForDestination:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v27 = v4;
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
          if (!v4)
          {
            if ([v11 submissionSecurity] != 2)
            {
              continue;
            }

LABEL_12:
            v14 = [v11 submissionKey];
            v15 = [v11 submissionString];
            v16 = v14;
            v12 = v16;
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
            v20 = [v11 fieldSubmissionEncryptionScheme];
            v21 = [v11 fieldSubmissionEncryptionCertificates];
            v22 = [(PKEncryptedPaymentSetupFieldSubmissionContainer *)v19 initWithValue:v15 format:v18 scheme:v20 certificates:v21];

            [v11 addSupplementalSubmissionValues:v22];
            [v28 setObject:v22 forKeyedSubscript:v12];

            v5 = v26;
            v4 = v27;
            v9 = v25;
LABEL_22:

            continue;
          }

          v12 = [v11 submissionDestination];
          if (![v12 isEqualToString:v4])
          {
            goto LABEL_22;
          }

          v13 = [v11 submissionSecurity];

          if (v13 == 2)
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

- (void)_addField:(id)a3 result:(id)a4 destination:(id)a5 submissionSecurity:(unint64_t)a6
{
  v28 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v28 submissionSecurity];
  if ([v28 submissionStringMeetsAllRequirements])
  {
    if (!v10 || ([v28 submissionDestination], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", v10), v12, v13))
    {
      if (v11 == a6)
      {
        v14 = [v28 submissionKey];
        v15 = [v28 submissionString];
        v16 = v15;
        if (v14 && v15)
        {
          [v9 setObject:v15 forKey:v14];
        }
      }
    }
  }

  v17 = [v28 pickerFieldObject];
  if ([v17 pickerType] == 2)
  {
    v18 = [v17 currentValue];
    v19 = [v18 nextLevelPicker];

    if (v19)
    {
      do
      {
        v20 = [v19 submissionSecurity];
        if ([v19 submissionStringMeetsAllRequirements])
        {
          if (!v10 || ([v19 submissionDestination], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", v10), v21, v22))
          {
            if (v20 == a6)
            {
              v23 = [v19 submissionKey];
              v24 = [v19 submissionString];
              v25 = v24;
              if (v23 && v24)
              {
                [v9 setObject:v24 forKey:v23];
              }
            }
          }
        }

        v26 = [v19 currentValue];
        v27 = [v26 nextLevelPicker];

        v19 = v27;
      }

      while (v27);
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
        v8 = [v7 identifier];
        v9 = v8;
        if (v8 == @"dateOfBirth")
        {

LABEL_12:
          [v7 setPopulateFromMeCard:0];
          continue;
        }

        if (@"dateOfBirth" && v8)
        {
          v10 = [(__CFString *)v8 isEqualToString:@"dateOfBirth"];

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
  v5 = self->_paymentSetupFields;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v332 objects:v341 count:16];
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
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v332 + 1) + 8 * i);
      if (([v11 isFieldTypeFooter] & 1) == 0)
      {
        v12 = [v11 identifier];
        [v4 setObject:v11 forKey:v12];

        if (v8)
        {
          v8 = 1;
          continue;
        }

        if ([v11 isFieldTypeDate])
        {
          v13 = [v11 dateFieldObject];
          v14 = [v13 defaultDate];
          goto LABEL_14;
        }

        if ([v11 isFieldTypePicker])
        {
          v13 = [v11 pickerFieldObject];
          v14 = [v13 defaultPickerItem];
LABEL_14:
          v15 = v14;
        }

        else
        {
          v13 = [v11 defaultValue];
          v15 = v13;
        }

        v8 = v15 == 0;
        continue;
      }
    }

    v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v332 objects:v341 count:16];
  }

  while (v7);

  if (!v8)
  {
    goto LABEL_325;
  }

  v5 = [MEMORY[0x1E695DF58] currentLocale];
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
  v24 = [v22 defaultValue];
  if (v24)
  {
    goto LABEL_21;
  }

  v25 = [v23 defaultValue];

  if (!v25)
  {
    if (v22 && [v22 populateFromMeCard])
    {
      v79 = [v277 givenName];
      v80 = [v79 stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

      [v22 setDefaultValue:v80];
      v81 = [v22 currentValue];

      if (!v81)
      {
        [v22 setCurrentValue:v80];
      }
    }

    if (v23 && [v23 populateFromMeCard])
    {
      v82 = [v277 familyName];
      v24 = [v82 stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

      [v23 setDefaultValue:v24];
      v83 = [v23 currentValue];

      if (!v83)
      {
        [v23 setCurrentValue:v24];
      }

LABEL_21:
    }
  }

  v266 = v4;
  v269 = v23;
  if (v278)
  {
    v26 = [v278 defaultValue];
    if (v26)
    {
      goto LABEL_147;
    }

    if ([v278 populateFromMeCard])
    {
      [v277 emailAddresses];
      v328 = 0u;
      v329 = 0u;
      v330 = 0u;
      v26 = v331 = 0u;
      v295 = v26;
      v309 = [v26 countByEnumeratingWithState:&v328 objects:v339 count:16];
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
      v303 = v5;
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
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v328 + 1) + 8 * v30);
          v33 = [v32 label];
          v34 = [v32 value];
          v35 = v33;
          v36 = v28;
          v37 = v36;
          if (v35 == v36)
          {

            v29 = v31;
LABEL_42:
            if ([v27 length])
            {
              v5 = v303;
              v28 = v304;
              goto LABEL_98;
            }

            v47 = v27;
            v27 = v34;
            v28 = v304;
LABEL_90:
            v5 = v303;

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
              v299 = v34;
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
              v289 = v34;
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
              v281 = v34;
LABEL_87:
              v26 = v295;
LABEL_88:
              v27 = obj;
              v28 = v304;
LABEL_89:
              v29 = v31;
              goto LABEL_90;
            }

LABEL_94:
            v26 = v295;
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
              v26 = v295;
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

            v26 = v295;
            goto LABEL_89;
          }

          if (v275 && v35)
          {
            v77 = [v47 isEqualToString:v75];

            if (v77)
            {
LABEL_117:
              v26 = v295;
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
            v273 = v34;
            v26 = v295;
            goto LABEL_90;
          }

          v26 = v295;
LABEL_97:
          v5 = v303;
LABEL_98:

          ++v30;
        }

        while (v309 != v30);
        v78 = [v26 countByEnumeratingWithState:&v328 objects:v339 count:16];
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

          v26 = v295;
LABEL_144:
          [v278 setDefaultValue:v84];
          v87 = [v278 currentValue];

          if (!v87)
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
    v90 = [v88 defaultValue];
    if (v90)
    {
      goto LABEL_155;
    }

    if ([v89 populateFromMeCard])
    {
      v90 = [*(v16 + 3456) stringFromContact:v277 style:0];
      v91 = PKCurrentRegion();
      v92 = [v91 isEqual:@"JP"];

      if (v92 && ([v90 canBeConvertedToEncoding:5] & 1) == 0)
      {

        v90 = 0;
      }

      [v89 setDefaultValue:v90];
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
  v95 = [v93 defaultValue];
  if (v95)
  {
    v96 = 0;
  }

  else
  {
    v96 = [v93 populateFromMeCard];
  }

  v97 = [v94 defaultValue];
  v270 = v94;
  if (v97)
  {
    v98 = 0;
  }

  else
  {
    v98 = [v94 populateFromMeCard];
  }

  v99 = [v280 defaultValue];
  v267 = v93;
  if (v99)
  {
    v100 = 0;
  }

  else
  {
    v100 = [v280 populateFromMeCard];
  }

  v101 = [v276 defaultValue];
  if (v101)
  {
    v102 = 0;
  }

  else
  {
    v102 = [v276 populateFromMeCard];
  }

  v103 = [v282 defaultValue];
  if (v103)
  {
    v104 = 0;
  }

  else
  {
    v104 = [v282 populateFromMeCard];
  }

  v105 = [v284 defaultValue];
  if (v105)
  {
    v106 = 0;
  }

  else
  {
    v106 = [v284 populateFromMeCard];
  }

  v107 = [v286 defaultValue];
  if (v107)
  {
    LOBYTE(v108) = 1;
  }

  else
  {
    v108 = [v286 populateFromMeCard] ^ 1;
  }

  v310 = v108;

  v109 = [v290 defaultValue];
  if (v109)
  {
    LOBYTE(v110) = 1;
  }

  else
  {
    v110 = [v290 populateFromMeCard] ^ 1;
  }

  v264 = v89;

  v111 = [v288 defaultValue];
  if (v111)
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
    v135 = [v288 populateFromMeCard];
    v136 = (v96 & v98 | v100 & v102) & v104 & v106;
    v4 = v266;
    v112 = v269;
    v113 = v270;
    v114 = v290;
    v115 = v294;
    if ((v136 & 1) != 0 && v135)
    {
      v137 = MEMORY[0x1E695DA48];
      if (v267 || v270 || v280 || v276)
      {
        v138 = [v268 street];
        v139 = [v138 componentsSeparatedByString:@"\n"];

        v140 = [v139 firstObject];
        v141 = *v137;
        v142 = [v140 stringByApplyingTransform:*v137 reverse:0];

        [v267 setDefaultValue:v142];
        v143 = [v267 currentValue];

        if (!v143)
        {
          [v267 setCurrentValue:v142];
        }

        [v280 setDefaultValue:v142];
        v144 = [v280 currentValue];

        if (!v144)
        {
          [v280 setCurrentValue:v142];
        }

        if ([v139 count] >= 2)
        {
          v145 = [v139 objectAtIndex:1];
          v146 = [v145 stringByApplyingTransform:v141 reverse:0];

          [v270 setDefaultValue:v146];
          v147 = [v270 currentValue];

          if (!v147)
          {
            [v270 setCurrentValue:v146];
          }

          [v276 setDefaultValue:v146];
          v148 = [v276 currentValue];

          if (!v148)
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
        v149 = [v268 postalCode];
        [v284 setDefaultValue:v149];
        v150 = [v284 currentValue];

        if (!v150)
        {
          [v284 setCurrentValue:v149];
        }

        v115 = v294;
      }

      if (!((v286 == 0) | v310 & 1))
      {
        v151 = [v268 subLocality];
        v152 = [v151 stringByApplyingTransform:*v137 reverse:0];

        [v286 setDefaultValue:v152];
        v153 = [v286 currentValue];

        if (!v153)
        {
          [v286 setDefaultValue:v152];
        }

        v115 = v294;
      }

      if (!((v114 == 0) | v110 & 1))
      {
        v154 = [v268 subAdministrativeArea];
        v155 = [v154 stringByApplyingTransform:*v137 reverse:0];

        [v114 setDefaultValue:v155];
        v156 = [v114 currentValue];

        if (!v156)
        {
          [v114 setCurrentValue:v155];
        }

        v115 = v294;
      }

      if (v288)
      {
        v157 = [v268 state];
        v158 = [v157 stringByApplyingTransform:*v137 reverse:0];

        if (v158)
        {
          if ([v288 isFieldTypePicker])
          {
            v159 = v288;
            v160 = [v159 pickerItems];
            v325[0] = MEMORY[0x1E69E9820];
            v325[1] = 3221225472;
            v325[2] = __49__PKPaymentSetupFieldsModel_prefillDefaultValues__block_invoke;
            v325[3] = &unk_1E79C8418;
            v326 = v158;
            v161 = [v160 pk_firstObjectPassingTest:v325];

            if (v161)
            {
              v162 = [v159 currentValue];

              if (!v162)
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
            v172 = [v288 currentValue];

            if (!v172)
            {
              [v288 setCurrentValue:v158];
            }
          }
        }

        v115 = v294;
      }

      if (v282)
      {
        v173 = [v268 city];
        v111 = [v173 stringByApplyingTransform:*v137 reverse:0];

        [v282 setDefaultValue:v111];
        v174 = [v282 currentValue];

        if (!v174)
        {
          [v282 setCurrentValue:v111];
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

  v117 = [v115 pickerItems];
  v118 = [v117 count];

  if (!v118)
  {
    v119 = [MEMORY[0x1E695DF58] ISOCountryCodes];
    if ([v119 count])
    {
      v120 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v119, "count")}];
      v321 = 0u;
      v322 = 0u;
      v323 = 0u;
      v324 = 0u;
      v121 = v119;
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
            v127 = PKLocalizedStringForCountryCode(v5, v126);
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

  v130 = [v115 defaultValue];
  v131 = [v115 currentValue];

  if (v131)
  {
    goto LABEL_271;
  }

  if (v130)
  {
    v132 = [v294 pickerItems];
    v133 = [PKPaymentSetupFieldPicker pickerItemMatchingValue:v130 pickerItems:v132];

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

  v164 = [v268 ISOCountryCode];
  v165 = [v164 uppercaseString];

  v166 = [(NSMutableArray *)v5 regionCode];
  if (!v133)
  {
    if (v165)
    {
      v167 = [v294 pickerItems];
      v168 = [PKPaymentSetupFieldPicker pickerItemMatchingValue:v165 pickerItems:v167];

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

  if (v133 || !v166)
  {
    if (v133)
    {
      goto LABEL_265;
    }

    goto LABEL_260;
  }

  v171 = [v294 pickerItems];
  v168 = [PKPaymentSetupFieldPicker pickerItemMatchingValue:v166 pickerItems:v171];

  v4 = v266;
  if (!v168)
  {
LABEL_260:
    v175 = [v294 pickerItems];
    v168 = [PKPaymentSetupFieldPicker pickerItemMatchingValue:@"US" pickerItems:v175];

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
    v177 = [v274 defaultDate];
    if (v177)
    {
      goto LABEL_283;
    }

    if ([v274 populateFromMeCard])
    {
      v177 = [v277 birthday];
      v178 = objc_alloc(MEMORY[0x1E695DEE8]);
      v179 = [v178 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
      if (v177 && [v177 year] != 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v179, "dateFromComponents:", v177), (v180 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v181 = v180;

        [v274 setCurrentValue:v181];
      }

      else
      {
        v182 = objc_alloc_init(MEMORY[0x1E695DF10]);
        v183 = [MEMORY[0x1E695DF00] date];
        [v182 setYear:{objc_msgSend(v179, "component:fromDate:", 4, v183)}];

        [v182 setMonth:1];
        [v182 setDay:1];
        v181 = [v179 dateFromComponents:v182];
      }

      v184 = [v274 currentValue];

      if (!v184)
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
    v185 = [v272 defaultValue];
    if (v185)
    {
      goto LABEL_319;
    }

    if ([v272 populateFromMeCard])
    {
      v186 = v272;
      v185 = [v272 defaultValue];
      v187 = [(NSMutableArray *)v5 regionCode];
      v188 = [v272 pickerItems];
      v189 = [v188 count];

      if (!v189)
      {
        v190 = [MEMORY[0x1E695DF58] ISOCountryCodes];
        if ([v190 count])
        {
          v311 = v187;
          v191 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v190, "count")}];
          v317 = 0u;
          v318 = 0u;
          v319 = 0u;
          v320 = 0u;
          v307 = v190;
          v192 = v190;
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
                v198 = PKLocalizedStringForCountryCode(v5, v197);
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
          v190 = v307;
          v187 = v311;
        }
      }

      v201 = [v186 currentValue];

      if (!v201)
      {
        if (!v185 || ([v186 pickerItems], v202 = objc_claimAutoreleasedReturnValue(), +[PKPaymentSetupFieldPicker pickerItemMatchingValue:pickerItems:](PKPaymentSetupFieldPicker, "pickerItemMatchingValue:pickerItems:", v185, v202), v203 = objc_claimAutoreleasedReturnValue(), v202, !v203))
        {
          if (v187 && ([v186 pickerItems], v206 = objc_claimAutoreleasedReturnValue(), +[PKPaymentSetupFieldPicker pickerItemMatchingValue:pickerItems:](PKPaymentSetupFieldPicker, "pickerItemMatchingValue:pickerItems:", v187, v206), v203 = objc_claimAutoreleasedReturnValue(), v206, v203))
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
            v208 = [v186 pickerItems];
            v203 = [PKPaymentSetupFieldPicker pickerItemMatchingValue:@"US" pickerItems:v208];

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
    v212 = [v210 defaultValue];
    if (v212)
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
          v222 = [v221 label];
          v223 = [v221 value];
          v224 = [v223 stringValue];

          v225 = v222;
          v226 = v218;
          v227 = v226;
          if (v225 == v226)
          {

LABEL_345:
            v229 = v312;
            v312 = v224;
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
            v300 = v224;
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
            v298 = v224;
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

              v292 = v224;
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
            v257 = [v262 currentValue];

            if (!v257)
            {
              [v262 setCurrentValue:v259];
            }

            v212 = v259;
          }

          else
          {
            v258 = PKLogFacilityTypeGetObject(7uLL);
            if (os_log_type_enabled(v258, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v258, OS_LOG_TYPE_DEFAULT, "No prefilled phone number could be found", buf, 2u);
            }

            v212 = v259;
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

- (void)prefillDefaultValuesWithPostalAddress:(id)a3
{
  v4 = a3;
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
    v13 = [v4 street];
    v14 = [v13 componentsSeparatedByString:@"\n"];

    v15 = [v14 firstObject];
    v16 = *MEMORY[0x1E695DA48];
    v17 = [v15 stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

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
  v21 = [v4 postalCode];
  __67__PKPaymentSetupFieldsModel_prefillDefaultValuesWithPostalAddress___block_invoke(v20, v21);
  v22 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"city"];
  v23 = [v4 city];
  v24 = [v23 stringByApplyingTransform:v16 reverse:0];

  __67__PKPaymentSetupFieldsModel_prefillDefaultValuesWithPostalAddress___block_invoke(v22, v24);
  v25 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"state"];
  if (v25)
  {
    v26 = [v4 state];
    v27 = [v26 stringByApplyingTransform:v16 reverse:0];

    if (v27)
    {
      if ([v25 isFieldTypePicker])
      {
        v31 = v5;
        v30 = v25;
        v28 = [v30 pickerItems];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __67__PKPaymentSetupFieldsModel_prefillDefaultValuesWithPostalAddress___block_invoke_2;
        v34[3] = &unk_1E79C8418;
        v35 = v27;
        v29 = [v28 pk_firstObjectPassingTest:v34];

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

- (void)prefillValuesWithPaymentCredential:(id)a3 targetDevice:(id)a4
{
  v123[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 isFPANCredential])
  {
    v8 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"primaryAccountNumber"];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 currentValue];

      if (!v10)
      {
        [(NSMutableArray *)self->_paymentSetupFields removeObject:v9];
        v11 = [[PKPaymentSetupFieldBuiltInCardOnFilePrimaryAccountNumber alloc] initWithIdentifier:@"cardOnFilePrimaryAccountNumber"];
        [(NSMutableArray *)self->_paymentSetupFields insertObject:v11 atIndex:0];
      }
    }

    v12 = [v6 fpanCredential];
    v13 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"cardholderName"];
    v14 = [v13 currentValue];

    if (!v14)
    {
      v15 = [v12 cardholderName];
      [v13 setCurrentValue:v15];
    }

    v16 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"cardSecurityCode"];
    v17 = [v16 currentValue];

    if (!v17)
    {
      v18 = [v12 securityCode];
      [v16 setCurrentValue:v18];
    }
  }

  v19 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"cardOnFilePrimaryAccountNumber"];
  v20 = v19;
  if (v19)
  {
    [v19 setReadonly:1];
    v21 = PKSanitizedPrimaryAccountRepresentationForPaymentCredential(v6);
    [v20 setCurrentValue:v21];

    v22 = [v6 credentialType];
    if ([v6 isLocalPassCredential])
    {
      if (v22 == 123)
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

    else if ([v6 isFPANCredential])
    {
      v24 = @"CARD_NUMBER";
    }

    else
    {
      if (v22 == 123)
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
    v29 = [v27 currentValue];

    if (!v29)
    {
      v30 = [v6 remoteCredential];
      v31 = [v30 paymentPass];

      v32 = [v31 primaryAccountIdentifier];
      v33 = [v31 uniqueID];
      if (v32 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v120 = 0;
        [v7 fpanCredentialForPrimaryAccountIdentifier:v32 passUniqueID:v33 credential:&v120 error:0];
        v34 = v120;
        v35 = v34;
        if (v34)
        {
          v36 = [v34 securityCode];
          if (v36)
          {
            [v28 setCurrentValue:v36];
          }
        }
      }
    }
  }

  v37 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:@"cardExpiration"];
  v38 = v37;
  if (v37)
  {
    v39 = [v37 currentValue];

    if (!v39)
    {
      v40 = [v6 expiration];

      if (v40)
      {
        v41 = PKExpirationDateFormatter();
        v42 = [v6 expiration];
        v43 = [v41 dateFromString:v42];

        if (!v43)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      v44 = [v6 fpanCredential];
      v45 = [v44 expirationDate];

      if (v45)
      {
        v41 = [v6 fpanCredential];
        v43 = [v41 expirationDate];
LABEL_40:
        [v38 setCurrentValue:v43];
LABEL_41:
      }
    }
  }

  v46 = [v6 accountCredential];
  v47 = [v46 account];

  v48 = [v47 creditDetails];
  if ([v6 isAccountCredential] && v48)
  {
    v49 = [v48 currencyCode];
    v116 = [v47 feature];
    v50 = [v48 accountSummary];
    v51 = [v47 accessLevel];
    if (v51 >= 2)
    {
      if (v51 != 2)
      {
LABEL_67:

        goto LABEL_68;
      }

      v118 = v49;
      v113 = v28;
      v114 = v20;
      v115 = v7;
      v53 = [[PKPaymentSetupFieldText alloc] initWithIdentifier:@"spendActivity" type:1];
      [(PKPaymentSetupField *)v53 textFieldObject];
      v54 = v119 = v50;

      v55 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      v56 = [MEMORY[0x1E695DF00] date];
      v57 = [v55 components:8 fromDate:v56];
      v58 = [v57 month];

      v59 = PKGregorianMonthSpecificLocalizedStringKeyForKey(@"SPENDING_LABEL", v58);
      v65 = PKLocalizedFeatureString(v59, 2, 0, v60, v61, v62, v63, v64, v109);
      [v54 setLocalizedDisplayName:v65];

      v66 = PKCurrentUserAltDSID();
      v67 = [v119 accountUserActivityForAccountUserAltDSID:v66];

      v117 = v67;
      v68 = [(NSDecimalNumber *)v67 totalSpending];
      v69 = [v48 currencyCode];
      v70 = v69;
      if (v68 && v69)
      {
        v111 = PKCurrencyAmountCreate(v68, v69, 0);
        v71 = [MEMORY[0x1E696AB90] zero];
        v72 = [(NSDecimalNumber *)v68 compare:v71];

        if (v72 == -1)
        {
          v110 = [v111 negativeValue];

          v106 = [v110 formattedStringValue];
          v107 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F2281668.isa, v106);
          [v54 setCurrentValue:v107];

          v74 = v106;
          v73 = v110;
        }

        else
        {
          v73 = v111;
          v74 = [v111 formattedStringValue];
          [v54 setCurrentValue:v74];
        }
      }

      [v54 setReadonly:1];
      v121 = v54;
      v108 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
      [(PKPaymentSetupFieldsModel *)self updateWithPaymentSetupFields:v108];

      v28 = v113;
      v95 = v117;
    }

    else
    {
      v112 = v28;
      v114 = v20;
      v115 = v7;
      v118 = v49;
      v119 = v50;
      if ([v50 requiresDebtCollectionNotices])
      {
        v52 = 0;
      }

      else
      {
        v75 = [[PKPaymentSetupFieldBuiltInBalance alloc] initWithIdentifier:@"balance" type:1];
        v76 = [(PKPaymentSetupField *)v75 textFieldObject];

        v82 = PKLocalizedFeatureString(@"ACCOUNT_DASHBOARD_SUMMARY_CARD_BALANCE", v116, 0, v77, v78, v79, v80, v81, v109);
        v83 = v76;
        [v76 setLocalizedDisplayName:v82];

        v84 = [v47 creditDetails];
        v85 = [v84 cardBalance];

        v86 = [v85 amount];
        v87 = [MEMORY[0x1E696AB90] zero];
        v88 = [v86 compare:v87];

        if (v88 == -1)
        {
          v92 = [v85 negativeValue];

          v90 = [v92 formattedStringValue];
          v109 = v90;
          v93 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F2281668.isa);
          v52 = v83;
          [v83 setCurrentValue:v93];

          v85 = v92;
        }

        else
        {
          v89 = [v85 formattedStringValue];
          v90 = v89;
          if (v89)
          {
            v91 = v89;
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

        v49 = v118;
        v50 = v119;
      }

      v95 = [v50 creditLimit];
      v96 = [[PKPaymentSetupFieldText alloc] initWithIdentifier:@"limit" type:1];
      v54 = [(PKPaymentSetupField *)v96 textFieldObject];

      v102 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_CREDIT_DETAILS_CREDIT_LIMIT", v116, 0, v97, v98, v99, v100, v101, v109);
      [v54 setLocalizedDisplayName:v102];

      v68 = PKCurrencyAmountCreate(v95, v49, 0);
      v103 = [(NSDecimalNumber *)v68 formattedStringValue];
      v104 = v103;
      if (v103)
      {
        v105 = v103;
      }

      else
      {
        v105 = &stru_1F227FD28;
      }

      [v54 setCurrentValue:v105];

      [v54 setReadonly:1];
      v122 = v54;
      v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
      [(PKPaymentSetupFieldsModel *)self updateWithPaymentSetupFields:v70];
      v28 = v112;
    }

    v20 = v114;
    v7 = v115;
    v49 = v118;
    v50 = v119;
    goto LABEL_67;
  }

LABEL_68:
}

- (void)prefillValuesWithFPAN:(id)a3 targetDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = 0;
    v16 = 0;
    [v7 fpanDescriptorAndCredentialForFPAN:v6 descriptor:&v16 credential:&v15 error:0];
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
          v14 = [v12 currentValue];

          if (!v14)
          {
            [v13 setCurrentValue:v6];
          }
        }

        [(PKPaymentSetupFieldsModel *)self prefillValuesWithPaymentCredential:v11 targetDevice:v7];
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
        v10 = [v9 identifier];

        if (v10)
        {
          v11 = [v9 identifier];
          [v3 setObject:@"true" forKey:v11];
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
        v10 = [v9 odiAttribute];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 submissionString];

          if (v12)
          {
            v13 = [v9 submissionString];
            v14 = [v9 odiAttribute];
            [v3 setObject:v13 forKey:v14];
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

- (BOOL)requirementsMetForFieldWithIdentifier:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:v4];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [v5 requirements];
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v25 = v5;
    v26 = v4;
    v9 = *v30;
    v27 = self;
    v28 = v6;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if ([v11 type] == 1)
        {
          v12 = [v11 fieldIdentifier];
          v13 = [(PKPaymentSetupFieldsModel *)self paymentSetupFieldWithIdentifier:v12];
          v14 = v13;
          if (v13 && [v13 isFieldTypePicker])
          {
            v15 = [v14 pickerFieldObject];
            v16 = [v15 currentValue];
            v17 = [v16 submissionValue];
            v18 = [v11 value];
            v19 = v18;
            v20 = !v17 || v18 == 0;
            v21 = v20 ? v17 == v18 : [v17 isEqual:v18];

            self = v27;
            v6 = v28;
            if ((v21 & 1) == 0)
            {
              v23 = PKLogFacilityTypeGetObject(7uLL);
              v4 = v26;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v34 = v26;
                v35 = 2112;
                v36 = v12;
                _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "Requirement not met for %@, based on %@", buf, 0x16u);
              }

              v22 = 0;
              goto LABEL_23;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v22 = 1;
    v4 = v26;
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
  v2 = [(PKPaymentSetupFieldsModel *)self visiblePaymentSetupFields];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (([v7 submissionStringMeetsAllRequirements] & 1) == 0 && (objc_msgSend(v7, "isOptional") & 1) == 0 && !objc_msgSend(v7, "isReadonly"))
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = [(PKPaymentSetupFieldsModel *)self visiblePaymentSetupFields];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (([v7 submissionStringMeetsAllRequirements] & 1) == 0 && !objc_msgSend(v7, "isReadonly"))
        {
          v8 = 0;
          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = [(PKPaymentSetupFieldsModel *)self visiblePaymentSetupFields];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v7 + 1) + 8 * i) isReadonly])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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