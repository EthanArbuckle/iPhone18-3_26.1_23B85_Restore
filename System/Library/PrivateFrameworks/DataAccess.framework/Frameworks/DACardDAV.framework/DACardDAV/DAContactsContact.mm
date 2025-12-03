@interface DAContactsContact
- (DAContactsContact)initWithContact:(id)contact;
- (id)eTag;
- (id)externalIdentifier;
- (id)externalUUID;
- (int)legacyIdentifier;
- (void)asPerson;
- (void)setETag:(id)tag;
- (void)setExternalIdentifier:(id)identifier;
- (void)setExternalUUID:(id)d;
- (void)updateSaveRequest:(id)request;
@end

@implementation DAContactsContact

- (DAContactsContact)initWithContact:(id)contact
{
  contactCopy = contact;
  v9.receiver = self;
  v9.super_class = DAContactsContact;
  v5 = [(DAContactsContact *)&v9 init];
  if (v5)
  {
    v6 = [contactCopy mutableCopy];
    mutableContact = v5->_mutableContact;
    v5->_mutableContact = v6;
  }

  return v5;
}

- (int)legacyIdentifier
{
  mutableContact = [(DAContactsContact *)self mutableContact];
  iOSLegacyIdentifier = [mutableContact iOSLegacyIdentifier];

  return iOSLegacyIdentifier;
}

- (id)eTag
{
  mutableContact = [(DAContactsContact *)self mutableContact];
  externalModificationTag = [mutableContact externalModificationTag];

  return externalModificationTag;
}

- (void)setETag:(id)tag
{
  tagCopy = tag;
  mutableContact = [(DAContactsContact *)self mutableContact];
  [mutableContact setExternalModificationTag:tagCopy];
}

- (id)externalUUID
{
  mutableContact = [(DAContactsContact *)self mutableContact];
  externalUUID = [mutableContact externalUUID];

  return externalUUID;
}

- (void)setExternalUUID:(id)d
{
  dCopy = d;
  mutableContact = [(DAContactsContact *)self mutableContact];
  [mutableContact setExternalUUID:dCopy];
}

- (id)externalIdentifier
{
  mutableContact = [(DAContactsContact *)self mutableContact];
  externalIdentifier = [mutableContact externalIdentifier];

  return externalIdentifier;
}

- (void)setExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mutableContact = [(DAContactsContact *)self mutableContact];
  [mutableContact setExternalIdentifier:identifierCopy];
}

- (void)updateSaveRequest:(id)request
{
  requestCopy = request;
  markedForDeletion = [(DAContactsContact *)self markedForDeletion];
  mutableContact = [(DAContactsContact *)self mutableContact];
  mutableContact2 = mutableContact;
  if (markedForDeletion)
  {
    [requestCopy deleteContact:mutableContact];
  }

  else
  {
    hasBeenPersisted = [mutableContact hasBeenPersisted];

    if (!hasBeenPersisted)
    {
      goto LABEL_6;
    }

    mutableContact2 = [(DAContactsContact *)self mutableContact];
    [requestCopy updateContact:mutableContact2];
  }

LABEL_6:
}

- (void)asPerson
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAContactsContact cannot return an ABRecordRef" userInfo:0];
  objc_exception_throw(v2);
}

@end