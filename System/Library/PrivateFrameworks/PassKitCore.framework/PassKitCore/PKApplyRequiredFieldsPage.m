@interface PKApplyRequiredFieldsPage
- (PKApplyRequiredFieldsPage)initWithDictionary:(id)a3 fieldOptions:(id)a4 featureApplication:(id)a5;
@end

@implementation PKApplyRequiredFieldsPage

- (PKApplyRequiredFieldsPage)initWithDictionary:(id)a3 fieldOptions:(id)a4 featureApplication:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a5 businessChatIdentifier];
  v13.receiver = self;
  v13.super_class = PKApplyRequiredFieldsPage;
  v11 = [(PKDynamicProvisioningFieldsPageContent *)&v13 initWithDictionary:v9 fieldOptions:v8 businessChatIdentifier:v10];

  return v11;
}

@end