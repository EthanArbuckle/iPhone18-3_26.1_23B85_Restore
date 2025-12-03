@interface PKProvisioningAnalyticsSessionMarketingSubjectHandle
- (PKProvisioningAnalyticsSessionMarketingSubjectHandle)initWithArchivedParent:(id)parent;
- (void)reportEvent:(id)event state:(id)state;
@end

@implementation PKProvisioningAnalyticsSessionMarketingSubjectHandle

- (PKProvisioningAnalyticsSessionMarketingSubjectHandle)initWithArchivedParent:(id)parent
{
  v4.receiver = self;
  v4.super_class = PKProvisioningAnalyticsSessionMarketingSubjectHandle;
  return [(PKProvisioningAnalyticsSessionSubjectHandle *)&v4 _initWithSubject:@"marketingProvisioning" archivedParent:parent];
}

- (void)reportEvent:(id)event state:(id)state
{
  v20[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  eventCopy = event;
  [(PKProvisioningAnalyticsSessionSubjectHandle *)self _startReportingIfNecessary];
  v8 = [eventCopy mutableCopy];

  environment = [stateCopy environment];
  [v8 setObject:environment forKeyedSubscript:@"environment"];

  productTypeDescriptor = [stateCopy productTypeDescriptor];
  [v8 setObject:productTypeDescriptor forKeyedSubscript:@"productType"];

  productSubtypeDescriptor = [stateCopy productSubtypeDescriptor];
  [v8 setObject:productSubtypeDescriptor forKeyedSubscript:@"productSubType"];

  referralSource = [stateCopy referralSource];
  [v8 setObject:referralSource forKeyedSubscript:@"referralSource"];

  productIssuer = [stateCopy productIssuer];
  [v8 setObject:productIssuer forKeyedSubscript:@"issuer"];

  productMetadata = [stateCopy productMetadata];

  if (productMetadata)
  {
    productMetadata2 = [stateCopy productMetadata];
    [v8 addEntriesFromDictionary:productMetadata2];
  }

  passMetadata = [stateCopy passMetadata];

  if (passMetadata)
  {
    passMetadata2 = [stateCopy passMetadata];
    [v8 addEntriesFromDictionary:passMetadata2];
  }

  subject = [(PKProvisioningAnalyticsSessionSubjectHandle *)self subject];
  v20[0] = subject;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [PKAnalyticsReporter subjects:v19 sendEvent:v8];
}

@end