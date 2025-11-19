@interface BMStreamConfiguration
+ (id)_libraryStreamConfigurationWithUUID:(id)a3 streamIdentifier:(id)a4 eventClass:(Class)a5 storeConfig:(id)a6 syncPolicy:(id)a7 legacyNames:(id)a8 internalMetadata:(id)a9 enableSubscriptions:(BOOL)a10 enableSubscriptionSubstream:(BOOL)a11 enableTombstoneSubstream:(BOOL)a12 allowedClients:(id)a13 pruningTriggers:(id)a14 spaceAttributionOwner:(id)a15;
- (BMStreamConfiguration)initWithStreamIdentifier:(id)a3 eventClass:(Class)a4 storeConfig:(id)a5;
- (id)description;
@end

@implementation BMStreamConfiguration

- (BMStreamConfiguration)initWithStreamIdentifier:(id)a3 eventClass:(Class)a4 storeConfig:(id)a5
{
  v8 = a5;
  v9 = a3;
  BYTE2(v12) = 1;
  LOWORD(v12) = 1;
  v10 = [objc_opt_class() _libraryStreamConfigurationWithUUID:0 streamIdentifier:v9 eventClass:a4 storeConfig:v8 syncPolicy:0 legacyNames:MEMORY[0x1E695E0F0] internalMetadata:0 enableSubscriptions:v12 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v10;
}

+ (id)_libraryStreamConfigurationWithUUID:(id)a3 streamIdentifier:(id)a4 eventClass:(Class)a5 storeConfig:(id)a6 syncPolicy:(id)a7 legacyNames:(id)a8 internalMetadata:(id)a9 enableSubscriptions:(BOOL)a10 enableSubscriptionSubstream:(BOOL)a11 enableTombstoneSubstream:(BOOL)a12 allowedClients:(id)a13 pruningTriggers:(id)a14 spaceAttributionOwner:(id)a15
{
  v34 = a3;
  v20 = a4;
  v33 = a6;
  v29 = a7;
  v32 = a7;
  v30 = a8;
  v31 = a8;
  v21 = a9;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v25 = [BMStreamConfiguration alloc];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_streamUUID, a3);
    objc_storeStrong(&v26->_streamIdentifier, a4);
    objc_storeStrong(&v26->_eventClass, a5);
    objc_storeStrong(&v26->_storeConfig, a6);
    objc_storeStrong(&v26->_syncPolicy, v29);
    objc_storeStrong(&v26->_legacyNames, v30);
    objc_storeStrong(&v26->_internalMetadata, a9);
    v26->_enableSubscriptions = a10;
    v26->_enableSubscriptionSubstream = a11;
    v26->_enableTombstoneSubstream = a12;
    objc_storeStrong(&v26->_allowedClients, a13);
    objc_storeStrong(&v26->_pruningTriggers, a14);
    objc_storeStrong(&v26->_spaceAttribution, a15);
  }

  return v26;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = @"NO";
  if (self->_enableSubscriptions)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_enableSubscriptionSubstream)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_enableTombstoneSubstream)
  {
    v4 = @"YES";
  }

  v7 = [v3 initWithFormat:@"BMStreamConfiguration {\n\tstreamIdentifier = %@\n\tstreamUUID = %@\n\teventClass = %@\n\tstoreConfig = %@\n\tsyncPolicy = %@\n\tlegacyNames = %@\n\tinternalMetadata = %@\n\tenableSubscriptions = %@\n\tenableSubscriptionSubstream = %@\n\tenableTombstoneSubstream = %@\n\tallowedClients = %@\n\tpruningTriggers = %@\n\tspaceAttribution = %@\n}", *&self->_streamIdentifier, *&self->_eventClass, self->_syncPolicy, self->_legacyNames, self->_internalMetadata, v5, v6, v4, self->_allowedClients, self->_pruningTriggers, self->_spaceAttribution];

  return v7;
}

@end