@interface PKPeerPaymentRequiredFieldsPage
- (PKPeerPaymentRequiredFieldsPage)initWithDictionary:(id)a3 fieldOptions:(id)a4;
@end

@implementation PKPeerPaymentRequiredFieldsPage

- (PKPeerPaymentRequiredFieldsPage)initWithDictionary:(id)a3 fieldOptions:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v33 = a4;
  v38.receiver = self;
  v38.super_class = PKPeerPaymentRequiredFieldsPage;
  v7 = [(PKPeerPaymentRequiredFieldsPage *)&v38 init];
  if (v7)
  {
    v8 = [v6 objectForKey:@"localizedTitle"];
    localizedTitle = v7->_localizedTitle;
    v7->_localizedTitle = v8;

    v10 = [v6 objectForKey:@"localizedDescription"];
    localizedDescription = v7->_localizedDescription;
    v7->_localizedDescription = v10;

    v12 = [v6 PKArrayContaining:objc_opt_class() forKey:@"requiredFields"];
    v13 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v31 = v7;
      v32 = v6;
      v17 = 0;
      v18 = *v35;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v34 + 1) + 8 * i);
          v21 = [v20 lowercaseString];
          v22 = [v21 isEqualToString:@"disclosure_footer"];

          v17 |= v22;
          v23 = [v33 PKDictionaryForKey:v20];
          v24 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:v20 configuration:v23];
          [v13 safelyAddObject:v24];
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v16);

      v7 = v31;
      v6 = v32;
      if (v17)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v39[0] = @"fieldType";
    v39[1] = @"position";
    v40[0] = @"footer";
    v40[1] = @"inline";
    v39[2] = @"defaultValue";
    v25 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_3.isa, 0);
    v40[2] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:3];

    v27 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"disclosure_footer" configuration:v26];
    [v13 addObject:v27];

LABEL_13:
    v28 = [v13 copy];
    requiredFields = v7->_requiredFields;
    v7->_requiredFields = v28;
  }

  return v7;
}

@end