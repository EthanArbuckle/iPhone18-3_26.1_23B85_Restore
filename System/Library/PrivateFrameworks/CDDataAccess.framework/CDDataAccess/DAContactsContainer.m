@interface DAContactsContainer
- (BOOL)arePropertiesReadonly;
- (BOOL)isContentReadonly;
- (BOOL)isLocal;
- (DAContactsContainer)initWithCNContainer:(id)a3;
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
- (void)setAccountIdentifier:(id)a3;
- (void)setArePropertiesReadonly:(BOOL)a3;
- (void)setCTag:(id)a3;
- (void)setConstraintsPath:(id)a3;
- (void)setContentReadonly:(BOOL)a3;
- (void)setExternalIdentifier:(id)a3;
- (void)setMeContactIdentifier:(id)a3;
- (void)setName:(id)a3;
- (void)setSyncData:(id)a3;
- (void)setSyncTag:(id)a3;
- (void)setType:(int64_t)a3;
- (void)updateSaveRequest:(id)a3;
@end

@implementation DAContactsContainer

- (DAContactsContainer)initWithCNContainer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DAContactsContainer;
  v5 = [(DAContactsContainer *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    mutableContainer = v5->_mutableContainer;
    v5->_mutableContainer = v6;
  }

  return v5;
}

- (id)identifier
{
  v2 = [(DAContactsContainer *)self mutableContainer];
  v3 = [v2 identifier];

  return v3;
}

- (id)name
{
  v2 = [(DAContactsContainer *)self mutableContainer];
  v3 = [v2 name];

  return v3;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [(DAContactsContainer *)self mutableContainer];
  [v5 setName:v4];
}

- (BOOL)isLocal
{
  v2 = [(DAContactsContainer *)self mutableContainer];
  v3 = [v2 type] == 1;

  return v3;
}

- (int64_t)type
{
  v2 = [(DAContactsContainer *)self mutableContainer];
  v3 = [v2 type];

  return v3;
}

- (void)setType:(int64_t)a3
{
  v4 = [(DAContactsContainer *)self mutableContainer];
  [v4 setType:a3];
}

- (id)externalIdentifier
{
  v2 = [(DAContactsContainer *)self mutableContainer];
  v3 = [v2 externalIdentifier];

  return v3;
}

- (void)setExternalIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DAContactsContainer *)self mutableContainer];
  [v5 setExternalIdentifier:v4];
}

- (id)cTag
{
  v2 = [(DAContactsContainer *)self mutableContainer];
  v3 = [v2 externalModificationTag];

  return v3;
}

- (void)setCTag:(id)a3
{
  v4 = a3;
  v5 = [(DAContactsContainer *)self mutableContainer];
  [v5 setExternalModificationTag:v4];
}

- (id)syncTag
{
  v2 = [(DAContactsContainer *)self mutableContainer];
  v3 = [v2 externalSyncTag];

  return v3;
}

- (void)setSyncTag:(id)a3
{
  v4 = a3;
  v5 = [(DAContactsContainer *)self mutableContainer];
  [v5 setExternalSyncTag:v4];
}

- (id)syncData
{
  v2 = [(DAContactsContainer *)self mutableContainer];
  v3 = [v2 externalSyncData];

  return v3;
}

- (void)setSyncData:(id)a3
{
  v4 = a3;
  v5 = [(DAContactsContainer *)self mutableContainer];
  [v5 setExternalSyncData:v4];
}

- (id)constraintsPath
{
  v2 = [(DAContactsContainer *)self mutableContainer];
  v3 = [v2 constraintsPath];

  return v3;
}

- (void)setConstraintsPath:(id)a3
{
  v4 = a3;
  v5 = [(DAContactsContainer *)self mutableContainer];
  [v5 setConstraintsPath:v4];
}

- (id)meContactidentifier
{
  v2 = [(DAContactsContainer *)self mutableContainer];
  v3 = [v2 meIdentifier];

  return v3;
}

- (void)setMeContactIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DAContactsContainer *)self mutableContainer];
  [v5 setMeIdentifier:v4];
}

- (id)accountIdentifier
{
  v2 = [(DAContactsContainer *)self mutableContainer];
  v3 = [v2 accountIdentifier];

  return v3;
}

- (void)setAccountIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DAContactsContainer *)self mutableContainer];
  [v5 setAccountIdentifier:v4];
}

- (BOOL)isContentReadonly
{
  if (([(DAContactsContainer *)self type]& 0x1000000) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v3 = [(DAContactsContainer *)self mutableContainer];
    v4 = [v3 restrictions] & 1;
  }

  return v4;
}

- (void)setContentReadonly:(BOOL)a3
{
  v3 = a3;
  v7 = [(DAContactsContainer *)self mutableContainer];
  v5 = [v7 restrictions];
  v6 = [(DAContactsContainer *)self mutableContainer];
  [v6 setRestrictions:v5 & 0xFFFFFFFFFFFFFFFELL | v3];
}

- (BOOL)arePropertiesReadonly
{
  if (([(DAContactsContainer *)self type]& 0x1000000) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v3 = [(DAContactsContainer *)self mutableContainer];
    v4 = ([v3 restrictions] >> 1) & 1;
  }

  return v4;
}

- (void)setArePropertiesReadonly:(BOOL)a3
{
  v3 = a3;
  v9 = [(DAContactsContainer *)self mutableContainer];
  v5 = [v9 restrictions];
  v6 = [(DAContactsContainer *)self mutableContainer];
  v7 = v6;
  v8 = 2;
  if (!v3)
  {
    v8 = 0;
  }

  [v6 setRestrictions:v5 & 0xFFFFFFFFFFFFFFFDLL | v8];
}

- (void)updateSaveRequest:(id)a3
{
  v8 = a3;
  v4 = [(DAContactsContainer *)self markedForDeletion];
  v5 = [(DAContactsContainer *)self mutableContainer];
  v6 = v5;
  if (v4)
  {
    [v8 deleteContainer:v5];
  }

  else
  {
    v7 = [v5 iOSLegacyIdentifier];

    if (v7 == -1)
    {
      goto LABEL_6;
    }

    v6 = [(DAContactsContainer *)self mutableContainer];
    [v8 updateContainer:v6];
  }

LABEL_6:
}

- (void)asSource
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAContactsContainer does not support asSource" userInfo:0];
  objc_exception_throw(v2);
}

@end