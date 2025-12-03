@interface PKProvisioningAnalyticsState
- (PKProvisioningAnalyticsState)initWithCoder:(id)coder;
- (void)clear;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKProvisioningAnalyticsState

- (void)clear
{
  productTypeDescriptor = self->_productTypeDescriptor;
  self->_productTypeDescriptor = 0;

  productSubtypeDescriptor = self->_productSubtypeDescriptor;
  self->_productSubtypeDescriptor = 0;

  productMetadata = self->_productMetadata;
  self->_productMetadata = 0;

  passMetadata = self->_passMetadata;
  self->_passMetadata = 0;
}

- (void)encodeWithCoder:(id)coder
{
  sessionID = self->_sessionID;
  coderCopy = coder;
  [coderCopy encodeObject:sessionID forKey:@"sessionID"];
  [coderCopy encodeObject:self->_environment forKey:@"environment"];
  [coderCopy encodeObject:self->_intent forKey:@"intent"];
  [coderCopy encodeObject:self->_referralSource forKey:@"referralSource"];
  [coderCopy encodeObject:self->_campaignAttributionReferrerIdentifier forKey:@"campaignAttributionReferrerIdentifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_campaignAttributionProductType];
  [coderCopy encodeObject:v5 forKey:@"campaignAttributionProductType"];

  [coderCopy encodeObject:self->_productTypeDescriptor forKey:@"productTypeDescriptor"];
  [coderCopy encodeObject:self->_productSubtypeDescriptor forKey:@"productSubtypeDescriptor"];
  [coderCopy encodeObject:self->_productMetadata forKey:@"productMetadata"];
  [coderCopy encodeObject:self->_passMetadata forKey:@"passMetadata"];
  [coderCopy encodeObject:self->_productIssuer forKey:@"productIssuer"];
  [coderCopy encodeBool:self->_firstViewAppeared forKey:@"firstViewAppeared"];
}

- (PKProvisioningAnalyticsState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = PKProvisioningAnalyticsState;
  v5 = [(PKProvisioningAnalyticsState *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    environment = v5->_environment;
    v5->_environment = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
    intent = v5->_intent;
    v5->_intent = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referralSource"];
    referralSource = v5->_referralSource;
    v5->_referralSource = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"campaignAttributionReferrerIdentifier"];
    campaignAttributionReferrerIdentifier = v5->_campaignAttributionReferrerIdentifier;
    v5->_campaignAttributionReferrerIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"campaignAttributionProductType"];
    v5->_campaignAttributionProductType = [v16 unsignedIntegerValue];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productTypeDescriptor"];
    productTypeDescriptor = v5->_productTypeDescriptor;
    v5->_productTypeDescriptor = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productSubtypeDescriptor"];
    productSubtypeDescriptor = v5->_productSubtypeDescriptor;
    v5->_productSubtypeDescriptor = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productIssuer"];
    productIssuer = v5->_productIssuer;
    v5->_productIssuer = v21;

    v5->_firstViewAppeared = [coderCopy decodeBoolForKey:@"firstViewAppeared"];
    v23 = objc_alloc(MEMORY[0x1E695DFD8]);
    v24 = objc_opt_class();
    v25 = [v23 initWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"productMetadata"];
    productMetadata = v5->_productMetadata;
    v5->_productMetadata = v26;

    v28 = [coderCopy decodeObjectOfClasses:v25 forKey:@"passMetadata"];
    passMetadata = v5->_passMetadata;
    v5->_passMetadata = v28;
  }

  return v5;
}

@end