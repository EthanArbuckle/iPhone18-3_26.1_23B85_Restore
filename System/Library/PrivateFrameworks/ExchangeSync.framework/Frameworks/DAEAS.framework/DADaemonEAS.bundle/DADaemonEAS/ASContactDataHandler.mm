@interface ASContactDataHandler
- (BOOL)saveContainer;
- (BOOL)wipeServerIds;
- (id)copyOfAllLocalObjectsInContainer;
- (void)copyLocalObjectFromId:(int)a3;
- (void)drainContainer;
- (void)openDB;
@end

@implementation ASContactDataHandler

- (void)copyLocalObjectFromId:(int)a3
{
  v4 = +[ASLocalDBHelper sharedInstance];
  PersonWithRecordID = ABAddressBookGetPersonWithRecordID([v4 abDB], a3);

  if (PersonWithRecordID)
  {
    CFRetain(PersonWithRecordID);
  }

  return PersonWithRecordID;
}

- (BOOL)saveContainer
{
  v2 = +[ASLocalDBHelper sharedInstance];
  v3 = [v2 abSaveDB];

  return v3;
}

- (id)copyOfAllLocalObjectsInContainer
{
  v3 = +[ASLocalDBHelper sharedInstance];
  v4 = [v3 abDB];
  v5 = ABAddressBookCopyArrayOfAllPeopleInSource(v4, *&self->super.ESDataHandler_opaque[OBJC_IVAR___ESDataHandler__container]);

  return v5;
}

- (BOOL)wipeServerIds
{
  v2 = [(ASContactDataHandler *)self copyOfAllLocalObjectsInContainer];
  v3 = 0;
  if ([v2 count])
  {
    v4 = 0;
    v5 = kABPersonExternalIdentifierProperty;
    do
    {
      v6 = [v2 objectAtIndexedSubscript:v4];

      v7 = ABRecordCopyValue(v6, v5);
      if (v7)
      {
        ABRecordRemoveValue(v6, v5, 0);
        v3 = 1;
      }

      ++v4;
    }

    while (v4 < [v2 count]);
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
  v3 = [(ASContactDataHandler *)self changeTrackingID];
  [v4 abOpenDBWithClientIdentifier:v3];
}

@end