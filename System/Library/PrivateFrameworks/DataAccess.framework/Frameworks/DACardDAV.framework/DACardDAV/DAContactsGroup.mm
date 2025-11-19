@interface DAContactsGroup
- (DAContactsGroup)initWithGroup:(id)a3;
- (id)eTag;
- (id)externalIdentifier;
- (id)externalUUID;
- (int)legacyIdentifier;
- (void)asABGroup;
- (void)setETag:(id)a3;
- (void)setExternalIdentifier:(id)a3;
- (void)setExternalUUID:(id)a3;
- (void)updateSaveRequest:(id)a3;
@end

@implementation DAContactsGroup

- (DAContactsGroup)initWithGroup:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DAContactsGroup;
  v5 = [(DAContactsGroup *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    group = v5->_group;
    v5->_group = v6;
  }

  return v5;
}

- (int)legacyIdentifier
{
  v2 = [(DAContactsGroup *)self group];
  v3 = [v2 iOSLegacyIdentifier];

  return v3;
}

- (id)externalUUID
{
  v2 = [(DAContactsGroup *)self group];
  v3 = [v2 externalUUID];

  return v3;
}

- (void)setExternalUUID:(id)a3
{
  v4 = a3;
  v5 = [(DAContactsGroup *)self group];
  [v5 setExternalUUID:v4];
}

- (id)externalIdentifier
{
  v2 = [(DAContactsGroup *)self group];
  v3 = [v2 externalIdentifier];

  return v3;
}

- (void)setExternalIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DAContactsGroup *)self group];
  [v5 setExternalIdentifier:v4];
}

- (id)eTag
{
  v2 = [(DAContactsGroup *)self group];
  v3 = [v2 externalModificationTag];

  return v3;
}

- (void)setETag:(id)a3
{
  v4 = a3;
  v5 = [(DAContactsGroup *)self group];
  [v5 setExternalModificationTag:v4];
}

- (void)updateSaveRequest:(id)a3
{
  v8 = a3;
  v4 = [(DAContactsGroup *)self markedForDeletion];
  v5 = [(DAContactsGroup *)self group];
  v6 = v5;
  if (v4)
  {
    [v8 deleteGroup:v5];
  }

  else
  {
    v7 = [v5 iOSLegacyIdentifier];

    if (v7 == -1)
    {
      goto LABEL_6;
    }

    v6 = [(DAContactsGroup *)self group];
    [v8 updateGroup:v6];
  }

LABEL_6:
}

- (void)asABGroup
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAContactGroup cannot return an ABRecordRef" userInfo:0];
  objc_exception_throw(v2);
}

@end