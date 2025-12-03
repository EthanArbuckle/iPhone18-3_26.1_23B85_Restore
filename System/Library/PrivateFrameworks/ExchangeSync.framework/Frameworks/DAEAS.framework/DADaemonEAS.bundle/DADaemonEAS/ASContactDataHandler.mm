@interface ASContactDataHandler
- (BOOL)saveContainer;
- (BOOL)wipeServerIds;
- (id)copyOfAllLocalObjectsInContainer;
- (void)copyLocalObjectFromId:(int)id;
- (void)drainContainer;
- (void)openDB;
@end

@implementation ASContactDataHandler

- (void)copyLocalObjectFromId:(int)id
{
  v4 = +[ASLocalDBHelper sharedInstance];
  PersonWithRecordID = ABAddressBookGetPersonWithRecordID([v4 abDB], id);

  if (PersonWithRecordID)
  {
    CFRetain(PersonWithRecordID);
  }

  return PersonWithRecordID;
}

- (BOOL)saveContainer
{
  v2 = +[ASLocalDBHelper sharedInstance];
  abSaveDB = [v2 abSaveDB];

  return abSaveDB;
}

- (id)copyOfAllLocalObjectsInContainer
{
  v3 = +[ASLocalDBHelper sharedInstance];
  abDB = [v3 abDB];
  v5 = ABAddressBookCopyArrayOfAllPeopleInSource(abDB, *&self->super.ESDataHandler_opaque[OBJC_IVAR___ESDataHandler__container]);

  return v5;
}

- (BOOL)wipeServerIds
{
  copyOfAllLocalObjectsInContainer = [(ASContactDataHandler *)self copyOfAllLocalObjectsInContainer];
  v3 = 0;
  if ([copyOfAllLocalObjectsInContainer count])
  {
    v4 = 0;
    v5 = kABPersonExternalIdentifierProperty;
    do
    {
      v6 = [copyOfAllLocalObjectsInContainer objectAtIndexedSubscript:v4];

      v7 = ABRecordCopyValue(v6, v5);
      if (v7)
      {
        ABRecordRemoveValue(v6, v5, 0);
        v3 = 1;
      }

      ++v4;
    }

    while (v4 < [copyOfAllLocalObjectsInContainer count]);
  }

  return v3 & 1;
}

- (void)drainContainer
{
  v3 = +[ASLocalDBHelper sharedInstance];
  [v3 abDB];
  v4 = *&self->super.ESDataHandler_opaque[OBJC_IVAR___ESDataHandler__container];
  ABAddressBookDeleteAllRecordsWithStore();

  v5 = +[ASLocalDBHelper sharedInstance];
  [v5 abSaveDB];
}

- (void)openDB
{
  v4 = +[ASLocalDBHelper sharedInstance];
  changeTrackingID = [(ASContactDataHandler *)self changeTrackingID];
  [v4 abOpenDBWithClientIdentifier:changeTrackingID];
}

@end