@interface PKProvisioningAnalyticsSessionProvisioningSubjectHandle
- (PKProvisioningAnalyticsSessionProvisioningSubjectHandle)initWithArchivedParent:(id)parent;
- (void)reportEvent:(id)event state:(id)state;
@end

@implementation PKProvisioningAnalyticsSessionProvisioningSubjectHandle

- (PKProvisioningAnalyticsSessionProvisioningSubjectHandle)initWithArchivedParent:(id)parent
{
  v4.receiver = self;
  v4.super_class = PKProvisioningAnalyticsSessionProvisioningSubjectHandle;
  return [(PKProvisioningAnalyticsSessionSubjectHandle *)&v4 _initWithSubject:@"walletProvisioning" archivedParent:parent];
}

- (void)reportEvent:(id)event state:(id)state
{
  v19[1] = *MEMORY[0x1E69E9840];
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

  sessionID = [stateCopy sessionID];
  [v8 setObject:sessionID forKeyedSubscript:@"provisioningSessionID"];

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
  v19[0] = subject;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [PKAnalyticsReporter subjects:v18 sendEvent:v8];
}

@end