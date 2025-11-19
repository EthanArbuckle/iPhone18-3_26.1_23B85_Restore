@interface PKDynamicProvisioningFieldsPageContent
- (PKDynamicProvisioningFieldsPageContent)initWithDictionary:(id)a3 fieldOptions:(id)a4 businessChatIdentifier:(id)a5;
@end

@implementation PKDynamicProvisioningFieldsPageContent

- (PKDynamicProvisioningFieldsPageContent)initWithDictionary:(id)a3 fieldOptions:(id)a4 businessChatIdentifier:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v39.receiver = self;
  v39.super_class = PKDynamicProvisioningFieldsPageContent;
  v11 = [(PKDynamicProvisioningPageContent *)&v39 initWithDictonary:v8];
  if (v11)
  {
    v33 = v10;
    v34 = v8;
    v12 = [v8 PKArrayContaining:objc_opt_class() forKey:@"requiredFields"];
    v13 = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v35 + 1) + 8 * i);
          v20 = [v9 PKDictionaryForKey:{v19, v33}];
          v21 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:v19 configuration:v20];
          [v13 safelyAddObject:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v16);
    }

    v22 = [(PKDynamicProvisioningPageContent *)v11 learnMore];
    v23 = [v22 buttonTitle];
    v10 = v33;
    if (v23)
    {
      v24 = [[PKPaymentSetupFieldLabel alloc] initWithIdentifier:v23];
      [(PKPaymentSetupFieldLabel *)v24 setButtonTitle:v23];
      v25 = [v22 title];
      [(PKPaymentSetupFieldLabel *)v24 setDetailTitle:v25];

      v26 = [v22 subtitle];
      [(PKPaymentSetupFieldLabel *)v24 setDetailSubtitle:v26];

      v27 = [v22 body];
      [(PKPaymentSetupFieldLabel *)v24 setDetailBody:v27];

      [(PKPaymentSetupFieldLabel *)v24 setBusinessChatIdentifier:v33];
      v28 = [v22 businessChatIntentName];
      [(PKPaymentSetupFieldLabel *)v24 setBusinessChatIntentName:v28];

      v29 = [v22 businessChatButtonTitle];
      [(PKPaymentSetupFieldLabel *)v24 setBusinessChatButtonTitle:v29];

      [v13 safelyAddObject:v24];
    }

    v30 = [[PKPaymentSetupFieldsModel alloc] initWithPaymentSetupFields:v13];
    fieldModel = v11->_fieldModel;
    v11->_fieldModel = v30;

    v8 = v34;
  }

  return v11;
}

@end