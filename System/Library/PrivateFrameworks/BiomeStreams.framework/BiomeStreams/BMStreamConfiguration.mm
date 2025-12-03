@interface BMStreamConfiguration
+ (id)_libraryStreamConfigurationWithUUID:(id)d streamIdentifier:(id)identifier eventClass:(Class)class storeConfig:(id)config syncPolicy:(id)policy legacyNames:(id)names internalMetadata:(id)metadata enableSubscriptions:(BOOL)self0 enableSubscriptionSubstream:(BOOL)self1 enableTombstoneSubstream:(BOOL)self2 allowedClients:(id)self3 pruningTriggers:(id)self4 spaceAttributionOwner:(id)self5;
- (BMStreamConfiguration)initWithStreamIdentifier:(id)identifier eventClass:(Class)class storeConfig:(id)config;
- (id)description;
@end

@implementation BMStreamConfiguration

- (BMStreamConfiguration)initWithStreamIdentifier:(id)identifier eventClass:(Class)class storeConfig:(id)config
{
  configCopy = config;
  identifierCopy = identifier;
  BYTE2(v12) = 1;
  LOWORD(v12) = 1;
  v10 = [objc_opt_class() _libraryStreamConfigurationWithUUID:0 streamIdentifier:identifierCopy eventClass:class storeConfig:configCopy syncPolicy:0 legacyNames:MEMORY[0x1E695E0F0] internalMetadata:0 enableSubscriptions:v12 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v10;
}

+ (id)_libraryStreamConfigurationWithUUID:(id)d streamIdentifier:(id)identifier eventClass:(Class)class storeConfig:(id)config syncPolicy:(id)policy legacyNames:(id)names internalMetadata:(id)metadata enableSubscriptions:(BOOL)self0 enableSubscriptionSubstream:(BOOL)self1 enableTombstoneSubstream:(BOOL)self2 allowedClients:(id)self3 pruningTriggers:(id)self4 spaceAttributionOwner:(id)self5
{
  dCopy = d;
  identifierCopy = identifier;
  configCopy = config;
  policyCopy = policy;
  policyCopy2 = policy;
  namesCopy = names;
  namesCopy2 = names;
  metadataCopy = metadata;
  clientsCopy = clients;
  triggersCopy = triggers;
  ownerCopy = owner;
  v25 = [BMStreamConfiguration alloc];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_streamUUID, d);
    objc_storeStrong(&v26->_streamIdentifier, identifier);
    objc_storeStrong(&v26->_eventClass, class);
    objc_storeStrong(&v26->_storeConfig, config);
    objc_storeStrong(&v26->_syncPolicy, policyCopy);
    objc_storeStrong(&v26->_legacyNames, namesCopy);
    objc_storeStrong(&v26->_internalMetadata, metadata);
    v26->_enableSubscriptions = subscriptions;
    v26->_enableSubscriptionSubstream = substream;
    v26->_enableTombstoneSubstream = tombstoneSubstream;
    objc_storeStrong(&v26->_allowedClients, clients);
    objc_storeStrong(&v26->_pruningTriggers, triggers);
    objc_storeStrong(&v26->_spaceAttribution, owner);
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