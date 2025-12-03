@interface PKDynamicProvisioningFieldsPageContent
- (PKDynamicProvisioningFieldsPageContent)initWithDictionary:(id)dictionary fieldOptions:(id)options businessChatIdentifier:(id)identifier;
@end

@implementation PKDynamicProvisioningFieldsPageContent

- (PKDynamicProvisioningFieldsPageContent)initWithDictionary:(id)dictionary fieldOptions:(id)options businessChatIdentifier:(id)identifier
{
  v41 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  optionsCopy = options;
  identifierCopy = identifier;
  v39.receiver = self;
  v39.super_class = PKDynamicProvisioningFieldsPageContent;
  v11 = [(PKDynamicProvisioningPageContent *)&v39 initWithDictonary:dictionaryCopy];
  if (v11)
  {
    v33 = identifierCopy;
    v34 = dictionaryCopy;
    v12 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"requiredFields"];
    array = [MEMORY[0x1E695DF70] array];
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
          v20 = [optionsCopy PKDictionaryForKey:{v19, v33}];
          v21 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:v19 configuration:v20];
          [array safelyAddObject:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v16);
    }

    learnMore = [(PKDynamicProvisioningPageContent *)v11 learnMore];
    buttonTitle = [learnMore buttonTitle];
    identifierCopy = v33;
    if (buttonTitle)
    {
      v24 = [[PKPaymentSetupFieldLabel alloc] initWithIdentifier:buttonTitle];
      [(PKPaymentSetupFieldLabel *)v24 setButtonTitle:buttonTitle];
      title = [learnMore title];
      [(PKPaymentSetupFieldLabel *)v24 setDetailTitle:title];

      subtitle = [learnMore subtitle];
      [(PKPaymentSetupFieldLabel *)v24 setDetailSubtitle:subtitle];

      body = [learnMore body];
      [(PKPaymentSetupFieldLabel *)v24 setDetailBody:body];

      [(PKPaymentSetupFieldLabel *)v24 setBusinessChatIdentifier:v33];
      businessChatIntentName = [learnMore businessChatIntentName];
      [(PKPaymentSetupFieldLabel *)v24 setBusinessChatIntentName:businessChatIntentName];

      businessChatButtonTitle = [learnMore businessChatButtonTitle];
      [(PKPaymentSetupFieldLabel *)v24 setBusinessChatButtonTitle:businessChatButtonTitle];

      [array safelyAddObject:v24];
    }

    v30 = [[PKPaymentSetupFieldsModel alloc] initWithPaymentSetupFields:array];
    fieldModel = v11->_fieldModel;
    v11->_fieldModel = v30;

    dictionaryCopy = v34;
  }

  return v11;
}

@end