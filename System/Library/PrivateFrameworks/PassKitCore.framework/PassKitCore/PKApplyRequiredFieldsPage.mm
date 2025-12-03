@interface PKApplyRequiredFieldsPage
- (PKApplyRequiredFieldsPage)initWithDictionary:(id)dictionary fieldOptions:(id)options featureApplication:(id)application;
@end

@implementation PKApplyRequiredFieldsPage

- (PKApplyRequiredFieldsPage)initWithDictionary:(id)dictionary fieldOptions:(id)options featureApplication:(id)application
{
  optionsCopy = options;
  dictionaryCopy = dictionary;
  businessChatIdentifier = [application businessChatIdentifier];
  v13.receiver = self;
  v13.super_class = PKApplyRequiredFieldsPage;
  v11 = [(PKDynamicProvisioningFieldsPageContent *)&v13 initWithDictionary:dictionaryCopy fieldOptions:optionsCopy businessChatIdentifier:businessChatIdentifier];

  return v11;
}

@end