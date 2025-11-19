@interface PKProvisioningAnalyticsSessionMarketingSubjectHandle
- (PKProvisioningAnalyticsSessionMarketingSubjectHandle)initWithArchivedParent:(id)a3;
- (void)reportEvent:(id)a3 state:(id)a4;
@end

@implementation PKProvisioningAnalyticsSessionMarketingSubjectHandle

- (PKProvisioningAnalyticsSessionMarketingSubjectHandle)initWithArchivedParent:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKProvisioningAnalyticsSessionMarketingSubjectHandle;
  return [(PKProvisioningAnalyticsSessionSubjectHandle *)&v4 _initWithSubject:@"marketingProvisioning" archivedParent:a3];
}

- (void)reportEvent:(id)a3 state:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  [(PKProvisioningAnalyticsSessionSubjectHandle *)self _startReportingIfNecessary];
  v8 = [v7 mutableCopy];

  v9 = [v6 environment];
  [v8 setObject:v9 forKeyedSubscript:@"environment"];

  v10 = [v6 productTypeDescriptor];
  [v8 setObject:v10 forKeyedSubscript:@"productType"];

  v11 = [v6 productSubtypeDescriptor];
  [v8 setObject:v11 forKeyedSubscript:@"productSubType"];

  v12 = [v6 referralSource];
  [v8 setObject:v12 forKeyedSubscript:@"referralSource"];

  v13 = [v6 productIssuer];
  [v8 setObject:v13 forKeyedSubscript:@"issuer"];

  v14 = [v6 productMetadata];

  if (v14)
  {
    v15 = [v6 productMetadata];
    [v8 addEntriesFromDictionary:v15];
  }

  v16 = [v6 passMetadata];

  if (v16)
  {
    v17 = [v6 passMetadata];
    [v8 addEntriesFromDictionary:v17];
  }

  v18 = [(PKProvisioningAnalyticsSessionSubjectHandle *)self subject];
  v20[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [PKAnalyticsReporter subjects:v19 sendEvent:v8];
}

@end