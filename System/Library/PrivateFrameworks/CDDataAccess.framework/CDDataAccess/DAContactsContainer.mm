@interface DAContactsContainer
- (BOOL)arePropertiesReadonly;
- (BOOL)isContentReadonly;
- (BOOL)isLocal;
- (DAContactsContainer)initWithCNContainer:(id)container;
- (id)accountIdentifier;
- (id)cTag;
- (id)constraintsPath;
- (id)externalIdentifier;
- (id)identifier;
- (id)meContactidentifier;
- (id)name;
- (id)syncData;
- (id)syncTag;
- (int64_t)type;
- (void)asSource;
- (void)setAccountIdentifier:(id)identifier;
- (void)setArePropertiesReadonly:(BOOL)readonly;
- (void)setCTag:(id)tag;
- (void)setConstraintsPath:(id)path;
- (void)setContentReadonly:(BOOL)readonly;
- (void)setExternalIdentifier:(id)identifier;
- (void)setMeContactIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setSyncData:(id)data;
- (void)setSyncTag:(id)tag;
- (void)setType:(int64_t)type;
- (void)updateSaveRequest:(id)request;
@end

@implementation DAContactsContainer

- (DAContactsContainer)initWithCNContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = DAContactsContainer;
  v5 = [(DAContactsContainer *)&v9 init];
  if (v5)
  {
    v6 = [containerCopy mutableCopy];
    mutableContainer = v5->_mutableContainer;
    v5->_mutableContainer = v6;
  }

  return v5;
}

- (id)identifier
{
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  identifier = [mutableContainer identifier];

  return identifier;
}

- (id)name
{
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  name = [mutableContainer name];

  return name;
}

- (void)setName:(id)name
{
  nameCopy = name;
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  [mutableContainer setName:nameCopy];
}

- (BOOL)isLocal
{
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  v3 = [mutableContainer type] == 1;

  return v3;
}

- (int64_t)type
{
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  type = [mutableContainer type];

  return type;
}

- (void)setType:(int64_t)type
{
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  [mutableContainer setType:type];
}

- (id)externalIdentifier
{
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  externalIdentifier = [mutableContainer externalIdentifier];

  return externalIdentifier;
}

- (void)setExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  [mutableContainer setExternalIdentifier:identifierCopy];
}

- (id)cTag
{
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  externalModificationTag = [mutableContainer externalModificationTag];

  return externalModificationTag;
}

- (void)setCTag:(id)tag
{
  tagCopy = tag;
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  [mutableContainer setExternalModificationTag:tagCopy];
}

- (id)syncTag
{
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  externalSyncTag = [mutableContainer externalSyncTag];

  return externalSyncTag;
}

- (void)setSyncTag:(id)tag
{
  tagCopy = tag;
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  [mutableContainer setExternalSyncTag:tagCopy];
}

- (id)syncData
{
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  externalSyncData = [mutableContainer externalSyncData];

  return externalSyncData;
}

- (void)setSyncData:(id)data
{
  dataCopy = data;
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  [mutableContainer setExternalSyncData:dataCopy];
}

- (id)constraintsPath
{
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  constraintsPath = [mutableContainer constraintsPath];

  return constraintsPath;
}

- (void)setConstraintsPath:(id)path
{
  pathCopy = path;
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  [mutableContainer setConstraintsPath:pathCopy];
}

- (id)meContactidentifier
{
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  meIdentifier = [mutableContainer meIdentifier];

  return meIdentifier;
}

- (void)setMeContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  [mutableContainer setMeIdentifier:identifierCopy];
}

- (id)accountIdentifier
{
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  accountIdentifier = [mutableContainer accountIdentifier];

  return accountIdentifier;
}

- (void)setAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  [mutableContainer setAccountIdentifier:identifierCopy];
}

- (BOOL)isContentReadonly
{
  if (([(DAContactsContainer *)self type]& 0x1000000) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    mutableContainer = [(DAContactsContainer *)self mutableContainer];
    v4 = [mutableContainer restrictions] & 1;
  }

  return v4;
}

- (void)setContentReadonly:(BOOL)readonly
{
  readonlyCopy = readonly;
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  restrictions = [mutableContainer restrictions];
  mutableContainer2 = [(DAContactsContainer *)self mutableContainer];
  [mutableContainer2 setRestrictions:restrictions & 0xFFFFFFFFFFFFFFFELL | readonlyCopy];
}

- (BOOL)arePropertiesReadonly
{
  if (([(DAContactsContainer *)self type]& 0x1000000) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    mutableContainer = [(DAContactsContainer *)self mutableContainer];
    v4 = ([mutableContainer restrictions] >> 1) & 1;
  }

  return v4;
}

- (void)setArePropertiesReadonly:(BOOL)readonly
{
  readonlyCopy = readonly;
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  restrictions = [mutableContainer restrictions];
  mutableContainer2 = [(DAContactsContainer *)self mutableContainer];
  v7 = mutableContainer2;
  v8 = 2;
  if (!readonlyCopy)
  {
    v8 = 0;
  }

  [mutableContainer2 setRestrictions:restrictions & 0xFFFFFFFFFFFFFFFDLL | v8];
}

- (void)updateSaveRequest:(id)request
{
  requestCopy = request;
  markedForDeletion = [(DAContactsContainer *)self markedForDeletion];
  mutableContainer = [(DAContactsContainer *)self mutableContainer];
  mutableContainer2 = mutableContainer;
  if (markedForDeletion)
  {
    [requestCopy deleteContainer:mutableContainer];
  }

  else
  {
    iOSLegacyIdentifier = [mutableContainer iOSLegacyIdentifier];

    if (iOSLegacyIdentifier == -1)
    {
      goto LABEL_6;
    }

    mutableContainer2 = [(DAContactsContainer *)self mutableContainer];
    [requestCopy updateContainer:mutableContainer2];
  }

LABEL_6:
}

- (void)asSource
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAContactsContainer does not support asSource" userInfo:0];
  objc_exception_throw(v2);
}

@end