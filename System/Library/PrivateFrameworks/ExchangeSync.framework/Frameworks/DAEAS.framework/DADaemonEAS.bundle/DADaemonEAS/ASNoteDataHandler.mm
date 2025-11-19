@interface ASNoteDataHandler
- (BOOL)saveContainer;
- (BOOL)wipeServerIds;
- (id)copyOfAllLocalObjectsInContainer;
- (int)getIdFromLocalObject:(void *)a3;
- (void)drainContainer;
- (void)openDB;
@end

@implementation ASNoteDataHandler

- (int)getIdFromLocalObject:(void *)a3
{
  v3 = [a3 integerId];
  v4 = [v3 intValue];

  return v4;
}

- (BOOL)saveContainer
{
  v2 = +[ASLocalDBHelper sharedInstance];
  v3 = [v2 noteSaveDB];

  return v3;
}

- (id)copyOfAllLocalObjectsInContainer
{
  v3 = +[ASLocalDBHelper sharedInstance];
  v4 = [v3 noteDB];

  v5 = [v4 allVisibleNotesInCollection:*&self->super.ESDataHandler_opaque[OBJC_IVAR___ESDataHandler__container]];

  return v5;
}

- (BOOL)wipeServerIds
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(ASNoteDataHandler *)self copyOfAllLocalObjectsInContainer];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 serverId];

        if (v9)
        {
          [v8 setServerId:0];
          v5 = 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)drainContainer
{
  v3 = +[ASLocalDBHelper sharedInstance];
  v4 = [v3 noteDB];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(ASNoteDataHandler *)self copyOfAllLocalObjectsInContainer];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 deleteNoteRegardlessOfConstraints:*(*(&v10 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);

    v5 = +[ASLocalDBHelper sharedInstance];
    [v5 noteSaveDB];
  }
}

- (void)openDB
{
  v2 = +[ASLocalDBHelper sharedInstance];
  [v2 noteOpenDB];
}

@end