@interface MFDebugAccountState
- (MFDebugAccountState)initWithStateEventDictionary:(id)dictionary identifier:(id)identifier lastKnownCapabilities:(id)capabilities;
- (id)dictionaryRepresentation;
@end

@implementation MFDebugAccountState

- (MFDebugAccountState)initWithStateEventDictionary:(id)dictionary identifier:(id)identifier lastKnownCapabilities:(id)capabilities
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  capabilitiesCopy = capabilities;
  v15.receiver = self;
  v15.super_class = MFDebugAccountState;
  v12 = [(MFDebugAccountState *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_mailAccount, dictionary);
    objc_storeStrong(&v13->_lastKnownCapabilities, capabilities);
  }

  return v13;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  identifier = [(MFDebugAccountState *)self identifier];

  if (identifier)
  {
    identifier2 = [(MFDebugAccountState *)self identifier];
    [v3 setObject:identifier2 forKeyedSubscript:@"identifier"];
  }

  mailAccount = [(MFDebugAccountState *)self mailAccount];

  if (mailAccount)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    mailAccount2 = [(MFDebugAccountState *)self mailAccount];
    v9 = [v7 initWithFormat:@"%@", mailAccount2];
    [v3 setObject:v9 forKeyedSubscript:@"account"];
  }

  lastKnownCapabilities = [(MFDebugAccountState *)self lastKnownCapabilities];

  if (lastKnownCapabilities)
  {
    lastKnownCapabilities2 = [(MFDebugAccountState *)self lastKnownCapabilities];
    [v3 setObject:lastKnownCapabilities2 forKeyedSubscript:@"last capabilities"];
  }

  return v3;
}

@end