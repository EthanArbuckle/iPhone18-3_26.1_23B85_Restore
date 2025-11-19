@interface DAContactsContact
- (DAContactsContact)initWithContact:(id)a3;
- (id)eTag;
- (id)externalIdentifier;
- (id)externalUUID;
- (int)legacyIdentifier;
- (void)asPerson;
- (void)setETag:(id)a3;
- (void)setExternalIdentifier:(id)a3;
- (void)setExternalUUID:(id)a3;
- (void)updateSaveRequest:(id)a3;
@end

@implementation DAContactsContact

- (DAContactsContact)initWithContact:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DAContactsContact;
  v5 = [(DAContactsContact *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    mutableContact = v5->_mutableContact;
    v5->_mutableContact = v6;
  }

  return v5;
}

- (int)legacyIdentifier
{
  v2 = [(DAContactsContact *)self mutableContact];
  v3 = [v2 iOSLegacyIdentifier];

  return v3;
}

- (id)eTag
{
  v2 = [(DAContactsContact *)self mutableContact];
  v3 = [v2 externalModificationTag];

  return v3;
}

- (void)setETag:(id)a3
{
  v4 = a3;
  v5 = [(DAContactsContact *)self mutableContact];
  [v5 setExternalModificationTag:v4];
}

- (id)externalUUID
{
  v2 = [(DAContactsContact *)self mutableContact];
  v3 = [v2 externalUUID];

  return v3;
}

- (void)setExternalUUID:(id)a3
{
  v4 = a3;
  v5 = [(DAContactsContact *)self mutableContact];
  [v5 setExternalUUID:v4];
}

- (id)externalIdentifier
{
  v2 = [(DAContactsContact *)self mutableContact];
  v3 = [v2 externalIdentifier];

  return v3;
}

- (void)setExternalIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DAContactsContact *)self mutableContact];
  [v5 setExternalIdentifier:v4];
}

- (void)updateSaveRequest:(id)a3
{
  v8 = a3;
  v4 = [(DAContactsContact *)self markedForDeletion];
  v5 = [(DAContactsContact *)self mutableContact];
  v6 = v5;
  if (v4)
  {
    [v8 deleteContact:v5];
  }

  else
  {
    v7 = [v5 hasBeenPersisted];

    if (!v7)
    {
      goto LABEL_6;
    }

    v6 = [(DAContactsContact *)self mutableContact];
    [v8 updateContact:v6];
  }

LABEL_6:
}

- (void)asPerson
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"DAContactsContact cannot return an ABRecordRef" userInfo:0];
  objc_exception_throw(v2);
}

@end