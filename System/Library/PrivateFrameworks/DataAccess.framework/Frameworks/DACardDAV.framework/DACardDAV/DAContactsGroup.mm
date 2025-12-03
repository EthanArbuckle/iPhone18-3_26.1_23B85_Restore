@interface DAContactsGroup
- (DAContactsGroup)initWithGroup:(id)group;
- (id)eTag;
- (id)externalIdentifier;
- (id)externalUUID;
- (int)legacyIdentifier;
- (void)asABGroup;
- (void)setETag:(id)tag;
- (void)setExternalIdentifier:(id)identifier;
- (void)setExternalUUID:(id)d;
- (void)updateSaveRequest:(id)request;
@end

@implementation DAContactsGroup

- (DAContactsGroup)initWithGroup:(id)group
{
  groupCopy = group;
  v9.receiver = self;
  v9.super_class = DAContactsGroup;
  v5 = [(DAContactsGroup *)&v9 init];
  if (v5)
  {
    v6 = [groupCopy mutableCopy];
    group = v5->_group;
    v5->_group = v6;
  }

  return v5;
}

- (int)legacyIdentifier
{
  group = [(DAContactsGroup *)self group];
  iOSLegacyIdentifier = [group iOSLegacyIdentifier];

  return iOSLegacyIdentifier;
}

- (id)externalUUID
{
  group = [(DAContactsGroup *)self group];
  externalUUID = [group externalUUID];

  return externalUUID;
}

- (void)setExternalUUID:(id)d
{
  dCopy = d;
  group = [(DAContactsGroup *)self group];
  [group setExternalUUID:dCopy];
}

- (id)externalIdentifier
{
  group = [(DAContactsGroup *)self group];
  externalIdentifier = [group externalIdentifier];

  return externalIdentifier;
}

- (void)setExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  group = [(DAContactsGroup *)self group];
  [group setExternalIdentifier:identifierCopy];
}

- (id)eTag
{
  group = [(DAContactsGroup *)self group];
  externalModificationTag = [group externalModificationTag];

  return externalModificationTag;
}

- (void)setETag:(id)tag
{
  tagCopy = tag;
  group = [(DAContactsGroup *)self group];
  [group setExternalModificationTag:tagCopy];
}

- (void)updateSaveRequest:(id)request
{
  requestCopy = request;
  markedForDeletion = [(DAContactsGroup *)self markedForDeletion];
  group = [(DAContactsGroup *)self group];
  group2 = group;
  if (markedForDeletion)
  {
    [requestCopy deleteGroup:group];
  }

  else
  {
    iOSLegacyIdentifier = [group iOSLegacyIdentifier];

    if (iOSLegacyIdentifier == -1)
    {
      goto LABEL_6;
    }

    group2 = [(DAContactsGroup *)self group];
    [requestCopy updateGroup:group2];
  }

LABEL_6:
}

- (void)asABGroup
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAContactGroup cannot return an ABRecordRef" userInfo:0];
  objc_exception_throw(v2);
}

@end