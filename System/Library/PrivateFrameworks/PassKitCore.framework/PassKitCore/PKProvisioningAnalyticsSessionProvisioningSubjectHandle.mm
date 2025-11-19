@interface PKProvisioningAnalyticsSessionProvisioningSubjectHandle
- (PKProvisioningAnalyticsSessionProvisioningSubjectHandle)initWithArchivedParent:(id)a3;
- (void)reportEvent:(id)a3 state:(id)a4;
@end

@implementation PKProvisioningAnalyticsSessionProvisioningSubjectHandle

- (PKProvisioningAnalyticsSessionProvisioningSubjectHandle)initWithArchivedParent:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKProvisioningAnalyticsSessionProvisioningSubjectHandle;
  return [(PKProvisioningAnalyticsSessionSubjectHandle *)&v4 _initWithSubject:@"walletProvisioning" archivedParent:a3];
}

- (void)reportEvent:(id)a3 state:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
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

  v12 = [v6 sessionID];
  [v8 setObject:v12 forKeyedSubscript:@"provisioningSessionID"];

  v13 = [v6 productMetadata];

  if (v13)
  {
    v14 = [v6 productMetadata];
    [v8 addEntriesFromDictionary:v14];
  }

  v15 = [v6 passMetadata];

  if (v15)
  {
    v16 = [v6 passMetadata];
    [v8 addEntriesFromDictionary:v16];
  }

  v17 = [(PKProvisioningAnalyticsSessionSubjectHandle *)self subject];
  v19[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [PKAnalyticsReporter subjects:v18 sendEvent:v8];
}

@end