@interface PKApplyWebServiceApplyResponse
- (PKApplyWebServiceApplyResponse)initWithCoder:(id)coder;
- (PKApplyWebServiceApplyResponse)initWithData:(id)data;
- (id)nextStepInfo;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplyWebServiceApplyResponse

- (PKApplyWebServiceApplyResponse)initWithData:(id)data
{
  v17.receiver = self;
  v17.super_class = PKApplyWebServiceApplyResponse;
  v3 = [(PKWebServiceResponse *)&v17 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      v7 = [v6 PKDictionaryForKey:@"application"];
      if (v7)
      {
        v8 = [[PKFeatureApplication alloc] initWithDictionary:v7];
        featureApplication = v4->_featureApplication;
        v4->_featureApplication = v8;
      }

      v10 = [v6 PKDictionaryForKey:@"account"];
      if (v10)
      {
        v11 = [[PKAccount alloc] initWithDictionary:v10];
        account = v4->_account;
        v4->_account = v11;
      }

      v13 = [v6 PKSetContaining:objc_opt_class() forKey:@"requiredDeviceMetadataFields"];
      if ([v13 count])
      {
        v4->_requiredDeviceMetadataFields = PKPaymentDeviceMetadataFieldsFromStrings(v13);
      }

      v14 = [v6 PKSetContaining:objc_opt_class() forKey:@"actionIdentifiersRequiringAuthentication"];
      actionIdentifiersRequiringAuthentication = v4->_actionIdentifiersRequiringAuthentication;
      v4->_actionIdentifiersRequiringAuthentication = v14;

      v4->_requiresODIAssessment = [v6 PKBoolForKey:@"requiresODIAssessment"];
    }
  }

  return v4;
}

- (id)nextStepInfo
{
  v3 = [PKApplyWebServiceApplyStepInfo alloc];
  jSONObject = [(PKWebServiceResponse *)self JSONObject];
  v5 = [(PKApplyWebServiceApplyStepInfo *)v3 initWithJSONObject:jSONObject featureApplication:self->_featureApplication];

  conversationIdentifier = [(PKApplyWebServiceResponse *)self conversationIdentifier];
  [(PKApplyWebServiceApplyStepInfo *)v5 setConversationIdentifier:conversationIdentifier];

  return v5;
}

- (PKApplyWebServiceApplyResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKApplyWebServiceApplyResponse;
  v5 = [(PKWebServiceResponse *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    account = v5->_account;
    v5->_account = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureApplication"];
    featureApplication = v5->_featureApplication;
    v5->_featureApplication = v8;

    v5->_requiredDeviceMetadataFields = [coderCopy decodeIntegerForKey:@"requiredDeviceMetadataFields"];
    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"actionIdentifiersRequiringAuthentication"];
    actionIdentifiersRequiringAuthentication = v5->_actionIdentifiersRequiringAuthentication;
    v5->_actionIdentifiersRequiringAuthentication = v13;

    v5->_requiresODIAssessment = [coderCopy decodeBoolForKey:@"requiresODIAssessment"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceApplyResponse;
  coderCopy = coder;
  [(PKWebServiceResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_featureApplication forKey:{@"featureApplication", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_account forKey:@"account"];
  [coderCopy encodeInteger:self->_requiredDeviceMetadataFields forKey:@"requiredDeviceMetadataFields"];
  [coderCopy encodeObject:self->_actionIdentifiersRequiringAuthentication forKey:@"actionIdentifiersRequiringAuthentication"];
  [coderCopy encodeBool:self->_requiresODIAssessment forKey:@"requiresODIAssessment"];
}

@end