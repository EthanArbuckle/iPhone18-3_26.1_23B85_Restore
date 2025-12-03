@interface IDSDMessageStore
+ (BOOL)databaseSizeBiggerThanThreshold:(int64_t)threshold;
+ (id)allExpiredOutgoingMessages:(int64_t)messages;
+ (id)allOutgoingMessagesByGUID:(id)d;
+ (id)allOutgoingMessagesOnAccountGUID:(id)d localDestinationDeviceID:(id)iD;
+ (id)allOutgoingMessagesPendingDeleteWithLimit:(int64_t)limit;
+ (id)allUnsentOutgoingMessagesForAccounts:(id)accounts localDestinationDeviceID:(id)d hardLimit:(int64_t)limit;
+ (id)allUnsentOutgoingMessagesForAccounts:(id)accounts localDestinationDeviceID:(id)d priority:(int64_t)priority hardLimit:(int64_t)limit;
+ (id)allUnsentOutgoingMessagesForAccounts:(id)accounts localDestinationDeviceID:(id)d priority:(int64_t)priority hardLimit:(int64_t)limit wantsPayload:(BOOL)payload messageType:(int64_t)type success:(BOOL *)success;
+ (id)deleteExpiredIncomingRestrictedMessagesOlderThan:(double)than;
+ (id)incomingExpiredRestrictedMessages:(double)messages success:(BOOL *)success;
+ (id)incomingMessagesUpToLimit:(unint64_t)limit controlCategory:(unsigned int)category messageTransportType:(unsigned __int8)type success:(BOOL *)success;
+ (id)largestEnquedMessagesAccountUUIDOverThreshold:(int64_t)threshold;
+ (id)largestPayloadSizeAccountUUID;
+ (id)outgoingMessagesWithEnqueueDateOlderThan:(int64_t)than notToDestinationDeviceID:(id)d andLimit:(int64_t)limit;
+ (id)sharedInstance;
+ (id)sharedInstanceForDataProtectionClass:(unsigned int)class;
+ (id)uniqueAccountGUIDsForUnsentOutgoingMessages:(int64_t)messages;
+ (id)unsentNonUrgentAccountUUIDsRequiringDuetOverrides:(BOOL)overrides priority:(int64_t)priority dataProtectionClass:(unsigned int)class;
+ (id)unsentNonUrgentAccountUUIDsRequiringDuetOverrides:(BOOL)overrides priority:(int64_t)priority dataProtectionClass:(unsigned int)class withMessageTypes:(id)types;
+ (id)unsentOutgoingMessagesUpToLimit:(unint64_t)limit priority:(int64_t)priority localDestinationDeviceID:(id)d;
+ (id)unsentOutgoingMessagesUpToLimit:(unint64_t)limit priority:(int64_t)priority wantsPayload:(BOOL)payload localDestinationDeviceID:(id)d;
+ (id)unsentUrgentAccountUUIDsWithDataProtectionClass:(unsigned int)class withMessageTypes:(id)types;
+ (void)checkpointAndVacuumDBWithDataProtectionClass:(unsigned int)class;
+ (void)clearStatementCache;
+ (void)deleteAllMessagesWithAccountGUID:(id)d;
+ (void)deleteExpiredIncomingMessagesOlderThan:(double)than withLimit:(int64_t)limit;
+ (void)deleteIncomingMessageWithGUID:(id)d;
+ (void)deleteOutgoingMessageWithGUID:(id)d alternateGUID:(id)iD;
+ (void)deleteOutgoingMessageWithGUID:(id)d alternateGUID:(id)iD dataProtectionClass:(unsigned int)class;
+ (void)deletePostponedMessages;
+ (void)markAllMessageAsPendingDeleteForAccounts:(id)accounts withDestinationDevice:(id)device;
+ (void)markLocalDestinationDeviceUUIDForAccounts:(id)accounts deviceUUID:(id)d;
+ (void)markOutgoingMessagesAsUnsentForDestination:(id)destination;
+ (void)markOutgoingMessagesAsUnsentIncludingClassD:(BOOL)d;
+ (void)updateExpirationForIncomingMessageWithGUID:(id)d expirationDate:(int64_t)date;
- (IDSDMessageStore)initWithDataProtectionClass:(unsigned int)class;
- (IDSDMessageStore)initWithDatabase:(id)database;
- (id)_createOutgoingMessageRecordsFromSQLRecords:(__CFArray *)records includeMessagePayloads:(BOOL)payloads;
- (id)_incomingMessageIdentifierForMessageUUID:(id)d messagePayload:(id)payload;
- (id)_unsentOutgoingMessagesUpToLimit:(unint64_t)limit byteLimit:(unint64_t)byteLimit priority:(int64_t)priority accountUUID:(id)d wantsPayload:(BOOL)payload requireDuet:(BOOL)duet localDestinationDeviceID:(id)iD;
- (id)_unsentOutgoingMessagesUpToLimit:(unint64_t)limit byteLimit:(unint64_t)byteLimit priority:(int64_t)priority accountUUID:(id)d wantsPayload:(BOOL)payload requireDuet:(BOOL)duet localDestinationDeviceID:(id)iD messageTypes:(id)self0;
- (id)allExpiredOutgoingMessages:(int64_t)messages;
- (id)allOutgoingMessagesByGUID:(id)d;
- (id)allOutgoingMessagesOnAccountGUID:(id)d localDestinationDeviceID:(id)iD;
- (id)allOutgoingMessagesPendingDeleteWithLimit:(int64_t)limit;
- (id)allUnsentOutgoingMessagesForAccounts:(id)accounts localDestinationDeviceID:(id)d hardLimit:(int64_t)limit;
- (id)allUnsentOutgoingMessagesForAccounts:(id)accounts localDestinationDeviceID:(id)d priority:(int64_t)priority hardLimit:(int64_t)limit wantsPayload:(BOOL)payload messageType:(int64_t)type success:(BOOL *)success;
- (id)allUnsentOutgoingMessagesForAccounts:(id)accounts priority:(int64_t)priority localDestinationDeviceID:(id)d hardLimit:(int64_t)limit;
- (id)deleteExpiredIncomingRestrictedMessagesOlderThan:(double)than;
- (id)duetIdentifiersOverrideForAccountWithGUID:(id)d priority:(int64_t)priority;
- (id)incomingExpiredRestrictedMessages:(double)messages success:(BOOL *)success;
- (id)incomingMessagesUpToLimit:(unint64_t)limit controlCategory:(unsigned int)category messageTransportType:(unsigned __int8)type success:(BOOL *)success;
- (id)largestEnquedMessagesAmountAccountUUID;
- (id)largestPayloadSizeAccountUUID;
- (id)outgoingMessagesWithEnqueueDateOlderThan:(int64_t)than notToDestinationDeviceID:(id)d andLimit:(int64_t)limit;
- (id)uniqueAccountGUIDsForUnsentOutgoingMessages:(int64_t)messages;
- (id)unsentNonUrgentAccountUUIDsRequiringDuetOverrides:(BOOL)overrides priority:(int64_t)priority;
- (id)unsentNonUrgentAccountUUIDsRequiringDuetOverrides:(BOOL)overrides priority:(int64_t)priority messageTypes:(id)types;
- (id)unsentUrgentAccountUUIDsForMessageTypes:(id)types;
- (int)internalMigrationVersionOnDatabase;
- (int64_t)databaseSizeInMB;
- (void)__closeDatabase;
- (void)_clearDatabaseCloseTimer;
- (void)_performInitialHousekeeping;
- (void)_setDatabaseCloseTimer;
- (void)checkpointAndVacuumDB;
- (void)clearStatementCache;
- (void)closeDatabase;
- (void)deleteAllMessagesWithAccountGUID:(id)d;
- (void)deleteDatabase;
- (void)deleteExpiredIncomingMessagesOlderThan:(double)than withLimit:(int64_t)limit;
- (void)deleteIncomingMessageWithGUID:(id)d;
- (void)deleteOutgoingMessageWithGUID:(id)d alternateGUID:(id)iD classDDatabase:(id)database;
- (void)deletePostponedMessages:(id)messages classDDatabase:(id)database;
- (void)markAllMessageAsPendingDeleteForAccounts:(id)accounts withDestinationDevice:(id)device;
- (void)markAllOutgoingMessagesAsUnsent;
- (void)markAllOutgoingMessagesAsUnsentForLocalDestination:(id)destination;
- (void)markLocalDestinationDeviceUUIDForAccounts:(id)accounts deviceUUID:(id)d;
- (void)markOutgoingMessageWithGUID:(id)d asSent:(BOOL)sent;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block afterDelay:(double)delay;
- (void)performBlock:(id)block waitUntilDone:(BOOL)done;
- (void)storeIncomingMessage:(id)message forTopic:(id)topic fromID:(id)d messageUUID:(id)iD messagePayload:(id)payload isLocal:(BOOL)local controlCategory:(unsigned int)category dedupBehavior:(unsigned __int8)self0 completionBlock:(id)self1;
- (void)storeOutgoingMessageWithSendParameters:(id)parameters guid:(id)guid canSend:(BOOL)send canBypassSimilarMessages:(BOOL)messages fromQueue:(id)queue completionBlock:(id)block;
- (void)updateExpirationForIncomingMessageWithGUID:(id)d expirationDate:(int64_t)date;
- (void)updateInternalMigrationVersionOnDatabaseWithValue:(int)value;
@end

@implementation IDSDMessageStore

- (void)_setDatabaseCloseTimer
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  self->_databaseLastUpdateTime = CFAbsoluteTimeGetCurrent();
  if (self->_databaseCloseTimer)
  {
    recursiveLock = self->_recursiveLock;

    [(NSRecursiveLock *)recursiveLock unlock];
  }

  else
  {
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
    databaseCloseTimer = self->_databaseCloseTimer;
    self->_databaseCloseTimer = v4;

    v6 = self->_databaseCloseTimer;
    v7 = dispatch_time(0, 0x8BB2C90000);
    dispatch_source_set_timer(v6, v7, 0x7FFFFFFFFFFFFFFFuLL, 0xDF8474CCCuLL);
    v8 = self->_databaseCloseTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000A7C8;
    handler[3] = &unk_100BD6ED0;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(self->_databaseCloseTimer);
    [(NSRecursiveLock *)self->_recursiveLock unlock];
  }
}

+ (void)clearStatementCache
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v2 messageStores];

  v4 = [messageStores countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(messageStores);
        }

        [*(*(&v8 + 1) + 8 * v7) clearStatementCache];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [messageStores countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)clearStatementCache
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000113F4;
  v2[3] = &unk_100BD6ED0;
  v2[4] = self;
  [(IDSDMessageStore *)self performBlock:v2];
}

- (int64_t)databaseSizeInMB
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012DB8;
  v4[3] = &unk_100BD9038;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDMessageStore *)self performBlock:v4 waitUntilDone:1];
  v2 = v6[3] / 0x100000;
  v6[3] = v2;
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)largestEnquedMessagesAmountAccountUUID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000AA94;
  v9 = sub_10000BCBC;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100013174;
  v4[3] = &unk_100BD9038;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDMessageStore *)self performBlock:v4 waitUntilDone:1];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (id)sharedInstance
{
  if (qword_100CBF2F8 != -1)
  {
    sub_10092CB00();
  }

  v3 = qword_100CBF300;

  return v3;
}

+ (id)sharedInstanceForDataProtectionClass:(unsigned int)class
{
  v3 = *&class;
  v4 = +[IDSDMessageStoreMap sharedInstance];
  v5 = [v4 getOrCreateMessageStoreForDataProtectionClass:v3];

  return v5;
}

+ (id)unsentNonUrgentAccountUUIDsRequiringDuetOverrides:(BOOL)overrides priority:(int64_t)priority dataProtectionClass:(unsigned int)class
{
  v5 = *&class;
  overridesCopy = overrides;
  v8 = +[IDSDMessageStoreMap sharedInstance];
  v9 = [v8 getOrCreateMessageStoreForDataProtectionClass:v5];

  v10 = [v9 unsentNonUrgentAccountUUIDsRequiringDuetOverrides:overridesCopy priority:priority];

  return v10;
}

+ (id)unsentNonUrgentAccountUUIDsRequiringDuetOverrides:(BOOL)overrides priority:(int64_t)priority dataProtectionClass:(unsigned int)class withMessageTypes:(id)types
{
  v6 = *&class;
  overridesCopy = overrides;
  typesCopy = types;
  v10 = +[IDSDMessageStoreMap sharedInstance];
  v11 = [v10 getOrCreateMessageStoreForDataProtectionClass:v6];

  v12 = [v11 unsentNonUrgentAccountUUIDsRequiringDuetOverrides:overridesCopy priority:priority messageTypes:typesCopy];

  return v12;
}

+ (id)unsentUrgentAccountUUIDsWithDataProtectionClass:(unsigned int)class withMessageTypes:(id)types
{
  v4 = *&class;
  typesCopy = types;
  v6 = +[IDSDMessageStoreMap sharedInstance];
  v7 = [v6 getOrCreateMessageStoreForDataProtectionClass:v4];

  v8 = [v7 unsentUrgentAccountUUIDsForMessageTypes:typesCopy];

  return v8;
}

+ (void)markLocalDestinationDeviceUUIDForAccounts:(id)accounts deviceUUID:(id)d
{
  accountsCopy = accounts;
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v7 messageStores];

  v9 = [messageStores countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(messageStores);
        }

        [*(*(&v13 + 1) + 8 * v12) markLocalDestinationDeviceUUIDForAccounts:accountsCopy deviceUUID:dCopy];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [messageStores countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

+ (void)markAllMessageAsPendingDeleteForAccounts:(id)accounts withDestinationDevice:(id)device
{
  accountsCopy = accounts;
  deviceCopy = device;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v7 messageStores];

  v9 = [messageStores countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(messageStores);
        }

        [*(*(&v13 + 1) + 8 * v12) markAllMessageAsPendingDeleteForAccounts:accountsCopy withDestinationDevice:deviceCopy];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [messageStores countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

+ (id)allOutgoingMessagesPendingDeleteWithLimit:(int64_t)limit
{
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v5 messageStores];

  v7 = [messageStores countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(messageStores);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if (limit - [v4 count] < 1)
      {
        break;
      }

      v12 = [v11 allOutgoingMessagesPendingDeleteWithLimit:?];
      [v4 addObjectsFromArray:v12];

      if (v8 == ++v10)
      {
        v8 = [messageStores countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v4;
}

+ (id)outgoingMessagesWithEnqueueDateOlderThan:(int64_t)than notToDestinationDeviceID:(id)d andLimit:(int64_t)limit
{
  dCopy = d;
  v8 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v9 messageStores];

  v11 = [messageStores countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(messageStores);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      if (limit - [v8 count] < 1)
      {
        break;
      }

      v16 = [v15 outgoingMessagesWithEnqueueDateOlderThan:than notToDestinationDeviceID:dCopy andLimit:?];
      [v8 addObjectsFromArray:v16];

      if (v12 == ++v14)
      {
        v12 = [messageStores countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v8;
}

+ (void)deletePostponedMessages
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_10000AA94;
  v42 = sub_10000BCBC;
  v43 = objc_alloc_init(NSMutableDictionary);
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = -1;
  v2 = +[IDSDMessageStoreMap sharedInstance];
  v3 = [v2 getOrCreateMessageStoreForDataProtectionClass:2];
  database = [v3 database];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1005F58B8;
  v31[3] = &unk_100BE1D28;
  v33 = &v44;
  v34 = v37;
  v35 = &v38;
  v36 = @"SELECT ROWID, data_protection_class, guid, alternate_guid FROM outgoing_messages_to_delete;";
  v5 = database;
  v32 = v5;
  sub_10000B240(v31, 1, v5);
  if (!v45[3])
  {
    goto LABEL_22;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v6 messageStores];

  v8 = [messageStores countByEnumeratingWithState:&v27 objects:v48 count:16];
  if (!v8)
  {

    v21 = v39[5];
    v39[5] = 0;
    goto LABEL_21;
  }

  v9 = 0;
  v10 = 0;
  v22 = 0;
  v11 = *v28;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(messageStores);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      if ([v13 dataProtectionClass] == 1)
      {
        v14 = v39[5];
        v15 = IDSDataProtectionClassStringFromDataProtectionClass();
        v16 = [v14 objectForKey:v15];
        [v13 deletePostponedMessages:v16 classDDatabase:v5];
        v9 = 1;
      }

      else if ([v13 dataProtectionClass])
      {
        if ([v13 dataProtectionClass] != 2)
        {
          continue;
        }

        v17 = v39[5];
        v15 = IDSDataProtectionClassStringFromDataProtectionClass();
        v16 = [v17 objectForKey:v15];
        [v13 deletePostponedMessages:v16 classDDatabase:v5];
        v22 = 1;
      }

      else
      {
        v18 = v39[5];
        v15 = IDSDataProtectionClassStringFromDataProtectionClass();
        v16 = [v18 objectForKey:v15];
        [v13 deletePostponedMessages:v16 classDDatabase:v5];
        v10 = 1;
      }
    }

    v8 = [messageStores countByEnumeratingWithState:&v27 objects:v48 count:16];
  }

  while (v8);

  v19 = v39[5];
  v39[5] = 0;

  if (v9 & v10 & v22)
  {
    v20 = +[IDSFoundationLog IDSMessageStore];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Clearing postponed messages", buf, 2u);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1005F5B7C;
    v23[3] = &unk_100BD9060;
    v25 = v37;
    v24 = v5;
    sub_10000B240(v23, 1, v24);
    v21 = v24;
LABEL_21:
  }

LABEL_22:

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
}

+ (void)deleteIncomingMessageWithGUID:(id)d
{
  dCopy = d;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v4 messageStores];

  v6 = [messageStores countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(messageStores);
        }

        [*(*(&v10 + 1) + 8 * v9) deleteIncomingMessageWithGUID:dCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [messageStores countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

+ (void)deleteExpiredIncomingMessagesOlderThan:(double)than withLimit:(int64_t)limit
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v6 messageStores];

  v8 = [messageStores countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(messageStores);
        }

        [*(*(&v12 + 1) + 8 * v11) deleteExpiredIncomingMessagesOlderThan:limit withLimit:than];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [messageStores countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (id)deleteExpiredIncomingRestrictedMessagesOlderThan:(double)than
{
  v4 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v5 messageStores];

  v7 = [messageStores countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(messageStores);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) deleteExpiredIncomingRestrictedMessagesOlderThan:than];
        [v4 addObjectsFromArray:v11];
      }

      v8 = [messageStores countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v4;
}

+ (void)deleteOutgoingMessageWithGUID:(id)d alternateGUID:(id)iD dataProtectionClass:(unsigned int)class
{
  v5 = *&class;
  iDCopy = iD;
  dCopy = d;
  v9 = +[IDSDMessageStoreMap sharedInstance];
  v10 = [v9 getOrCreateMessageStoreForDataProtectionClass:2];
  database = [v10 database];

  v11 = +[IDSDMessageStoreMap sharedInstance];
  v12 = [v11 getOrCreateMessageStoreForDataProtectionClass:v5];

  [v12 deleteOutgoingMessageWithGUID:dCopy alternateGUID:iDCopy classDDatabase:database];
}

+ (void)deleteOutgoingMessageWithGUID:(id)d alternateGUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = +[IDSDMessageStoreMap sharedInstance];
  v8 = [v7 getOrCreateMessageStoreForDataProtectionClass:2];
  database = [v8 database];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v10 messageStores];

  v12 = [messageStores countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(messageStores);
        }

        [*(*(&v16 + 1) + 8 * v15) deleteOutgoingMessageWithGUID:dCopy alternateGUID:iDCopy classDDatabase:database];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [messageStores countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

+ (id)incomingMessagesUpToLimit:(unint64_t)limit controlCategory:(unsigned int)category messageTransportType:(unsigned __int8)type success:(BOOL *)success
{
  successCopy = success;
  v7 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v8 messageStores];

  v10 = [messageStores countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    v13 = 1;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(messageStores);
      }

      v15 = *(*(&v19 + 1) + 8 * v14);
      if ((limit - [v7 count]) < 1)
      {
        break;
      }

      v16 = [v15 incomingMessagesUpToLimit:? controlCategory:? messageTransportType:? success:?];
      [v7 addObjectsFromArray:v16];

      v13 = 0;
      if (v11 == ++v14)
      {
        v11 = [messageStores countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (successCopy)
  {
    *successCopy = v13 & 1;
  }

  return v7;
}

+ (id)incomingExpiredRestrictedMessages:(double)messages success:(BOOL *)success
{
  v6 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v7 messageStores];

  v9 = [messageStores countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    v12 = 1;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(messageStores);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v17 = 0;
        v15 = [v14 incomingExpiredRestrictedMessages:&v17 success:messages];
        [v6 addObjectsFromArray:v15];

        v12 &= v17;
      }

      v10 = [messageStores countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 1;
  }

  if (success)
  {
    *success = v12 & 1;
  }

  return v6;
}

+ (id)unsentOutgoingMessagesUpToLimit:(unint64_t)limit priority:(int64_t)priority wantsPayload:(BOOL)payload localDestinationDeviceID:(id)d
{
  dCopy = d;
  v8 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v9 messageStores];

  v11 = [messageStores countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(messageStores);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      if ((limit - [v8 count]) < 1)
      {
        break;
      }

      v16 = [v15 unsentOutgoingMessagesUpToLimit:? priority:? wantsPayload:? localDestinationDeviceID:?];
      [v8 addObjectsFromArray:v16];

      if (v12 == ++v14)
      {
        v12 = [messageStores countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v8;
}

+ (id)unsentOutgoingMessagesUpToLimit:(unint64_t)limit priority:(int64_t)priority localDestinationDeviceID:(id)d
{
  dCopy = d;
  v7 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v8 messageStores];

  v10 = [messageStores countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(messageStores);
      }

      v14 = *(*(&v17 + 1) + 8 * v13);
      if ((limit - [v7 count]) < 1)
      {
        break;
      }

      v15 = [v14 unsentOutgoingMessagesUpToLimit:? priority:? localDestinationDeviceID:?];
      [v7 addObjectsFromArray:v15];

      if (v11 == ++v13)
      {
        v11 = [messageStores countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v7;
}

+ (void)markOutgoingMessagesAsUnsentIncludingClassD:(BOOL)d
{
  dCopy = d;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v4 messageStores];

  v6 = [messageStores countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(messageStores);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 dataProtectionClass] != 2 || dCopy)
        {
          [v10 markAllOutgoingMessagesAsUnsent];
        }
      }

      v7 = [messageStores countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

+ (void)markOutgoingMessagesAsUnsentForDestination:(id)destination
{
  destinationCopy = destination;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v4 messageStores];

  v6 = [messageStores countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(messageStores);
        }

        [*(*(&v10 + 1) + 8 * v9) markAllOutgoingMessagesAsUnsentForLocalDestination:destinationCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [messageStores countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

+ (BOOL)databaseSizeBiggerThanThreshold:(int64_t)threshold
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v4 messageStores];

  v6 = [messageStores countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(messageStores);
        }

        v8 += [*(*(&v12 + 1) + 8 * i) databaseSizeInMB];
      }

      v7 = [messageStores countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 >= threshold;
}

+ (id)largestPayloadSizeAccountUUID
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v2 messageStores];

  v4 = [messageStores countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(messageStores);
        }

        largestPayloadSizeAccountUUID = [*(*(&v16 + 1) + 8 * i) largestPayloadSizeAccountUUID];
        if ([largestPayloadSizeAccountUUID count] == 2)
        {
          v11 = [largestPayloadSizeAccountUUID objectAtIndex:0];
          v12 = [largestPayloadSizeAccountUUID objectAtIndex:1];
          intValue = [v12 intValue];

          if (v6 < intValue)
          {
            v14 = v11;

            v6 = intValue;
            v7 = v14;
          }
        }
      }

      v5 = [messageStores countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)largestEnquedMessagesAccountUUIDOverThreshold:(int64_t)threshold
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v4 messageStores];

  v6 = [messageStores countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(messageStores);
        }

        largestEnquedMessagesAmountAccountUUID = [*(*(&v17 + 1) + 8 * i) largestEnquedMessagesAmountAccountUUID];
        if ([largestEnquedMessagesAmountAccountUUID count] == 2)
        {
          v10 = [largestEnquedMessagesAmountAccountUUID objectAtIndex:0];
          v11 = [largestEnquedMessagesAmountAccountUUID objectAtIndex:1];
          intValue = [v11 intValue];

          v13 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v22 = v10;
            v23 = 1024;
            v24 = intValue;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "RunawayCheck: Account Guid %@ has %d messages", buf, 0x12u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v15 = v10;
            v16 = intValue;
            _IDSLogV();
          }

          if (intValue > threshold)
          {

            goto LABEL_18;
          }
        }
      }

      v6 = [messageStores countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_18:

  return v10;
}

+ (void)deleteAllMessagesWithAccountGUID:(id)d
{
  dCopy = d;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v4 messageStores];

  v6 = [messageStores countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(messageStores);
        }

        [*(*(&v10 + 1) + 8 * v9) deleteAllMessagesWithAccountGUID:dCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [messageStores countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

+ (id)allOutgoingMessagesByGUID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v5 messageStores];

  v7 = [messageStores countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(messageStores);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) allOutgoingMessagesByGUID:dCopy];
        [v4 addObjectsFromArray:v11];
      }

      v8 = [messageStores countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v4;
}

+ (id)allOutgoingMessagesOnAccountGUID:(id)d localDestinationDeviceID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v8 messageStores];

  v10 = [messageStores countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(messageStores);
        }

        v14 = [*(*(&v16 + 1) + 8 * i) allOutgoingMessagesOnAccountGUID:dCopy localDestinationDeviceID:iDCopy];
        [v7 addObjectsFromArray:v14];
      }

      v11 = [messageStores countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v7;
}

+ (id)allExpiredOutgoingMessages:(int64_t)messages
{
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v5 messageStores];

  v7 = [messageStores countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(messageStores);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if (messages - [v4 count] < 1)
      {
        break;
      }

      v12 = [v11 allExpiredOutgoingMessages:?];
      [v4 addObjectsFromArray:v12];

      if (v8 == ++v10)
      {
        v8 = [messageStores countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v4;
}

+ (id)uniqueAccountGUIDsForUnsentOutgoingMessages:(int64_t)messages
{
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v5 messageStores];

  v7 = [messageStores countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(messageStores);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if (messages - [v4 count] < 1)
      {
        break;
      }

      v12 = [v11 uniqueAccountGUIDsForUnsentOutgoingMessages:?];
      [v4 addObjectsFromArray:v12];

      if (v8 == ++v10)
      {
        v8 = [messageStores countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v4;
}

+ (id)allUnsentOutgoingMessagesForAccounts:(id)accounts localDestinationDeviceID:(id)d hardLimit:(int64_t)limit
{
  accountsCopy = accounts;
  dCopy = d;
  v9 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v10 messageStores];

  v12 = [messageStores countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v20 != v14)
      {
        objc_enumerationMutation(messageStores);
      }

      v16 = *(*(&v19 + 1) + 8 * v15);
      if (limit - [v9 count] < 1)
      {
        break;
      }

      v17 = [v16 allUnsentOutgoingMessagesForAccounts:accountsCopy localDestinationDeviceID:dCopy hardLimit:?];
      [v9 addObjectsFromArray:v17];

      if (v13 == ++v15)
      {
        v13 = [messageStores countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v9;
}

+ (id)allUnsentOutgoingMessagesForAccounts:(id)accounts localDestinationDeviceID:(id)d priority:(int64_t)priority hardLimit:(int64_t)limit
{
  accountsCopy = accounts;
  dCopy = d;
  v11 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v12 messageStores];

  v14 = [messageStores countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v22 != v16)
      {
        objc_enumerationMutation(messageStores);
      }

      v18 = *(*(&v21 + 1) + 8 * v17);
      if (limit - [v11 count] < 1)
      {
        break;
      }

      v19 = [v18 allUnsentOutgoingMessagesForAccounts:accountsCopy priority:priority localDestinationDeviceID:dCopy hardLimit:?];
      [v11 addObjectsFromArray:v19];

      if (v15 == ++v17)
      {
        v15 = [messageStores countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v11;
}

+ (id)allUnsentOutgoingMessagesForAccounts:(id)accounts localDestinationDeviceID:(id)d priority:(int64_t)priority hardLimit:(int64_t)limit wantsPayload:(BOOL)payload messageType:(int64_t)type success:(BOOL *)success
{
  accountsCopy = accounts;
  dCopy = d;
  v13 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v14 messageStores];

  obj = messageStores;
  v16 = [messageStores countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    v19 = 1;
LABEL_3:
    v20 = 0;
    while (1)
    {
      if (*v28 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v27 + 1) + 8 * v20);
      if (limit - [v13 count] < 1)
      {
        break;
      }

      v26 = 0;
      v22 = [v21 allUnsentOutgoingMessagesForAccounts:accountsCopy localDestinationDeviceID:dCopy priority:priority hardLimit:&v26 wantsPayload:? messageType:? success:?];
      [v13 addObjectsFromArray:v22];

      v19 &= v26;
      if (v17 == ++v20)
      {
        v17 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v17)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (success)
  {
    *success = v19 & 1;
  }

  return v13;
}

+ (void)updateExpirationForIncomingMessageWithGUID:(id)d expirationDate:(int64_t)date
{
  dCopy = d;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = +[IDSDMessageStoreMap sharedInstance];
  messageStores = [v6 messageStores];

  v8 = [messageStores countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(messageStores);
        }

        [*(*(&v12 + 1) + 8 * v11) updateExpirationForIncomingMessageWithGUID:dCopy expirationDate:date];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [messageStores countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (void)checkpointAndVacuumDBWithDataProtectionClass:(unsigned int)class
{
  v3 = *&class;
  v4 = +[IDSDMessageStoreMap sharedInstance];
  v5 = [v4 getOrCreateMessageStoreForDataProtectionClass:v3];

  [v5 checkpointAndVacuumDB];
}

- (IDSDMessageStore)initWithDataProtectionClass:(unsigned int)class
{
  v4 = [[IDSDatabase alloc] initWithDataProtectionClass:*&class];
  v5 = [(IDSDMessageStore *)self initWithDatabase:v4];

  return v5;
}

- (IDSDMessageStore)initWithDatabase:(id)database
{
  databaseCopy = database;
  v21.receiver = self;
  v21.super_class = IDSDMessageStore;
  v6 = [(IDSDMessageStore *)&v21 init];
  if (v6)
  {
    v6->_dataProtectionClass = [databaseCopy dataProtectionClass];
    objc_storeStrong(&v6->_database, database);
    v7 = objc_alloc_init(NSRecursiveLock);
    recursiveLock = v6->_recursiveLock;
    v6->_recursiveLock = v7;

    objc_initWeak(&location, v6);
    if (_os_feature_enabled_impl())
    {
      v9 = +[IDSDiagnosticInfoHandler sharedInstance];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1005F8000;
      v17[3] = &unk_100BE1DA0;
      v18 = v6;
      v10 = &v19;
      objc_copyWeak(&v19, &location);
      v11 = im_primary_queue();
      [v9 registerDiagnosticInfoBlock:v17 title:@"IDS-DB-List" queue:v11];
      v12 = &v18;
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1005F8374;
      v14[3] = &unk_100BE1DC8;
      v15 = v6;
      v10 = &v16;
      objc_copyWeak(&v16, &location);
      v9 = im_primary_queue();
      sub_1006085C4(v14, @"IDS-DB-List", v9);
      v12 = &v15;
    }

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)_performInitialHousekeeping
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1005F85D4;
  v2[3] = &unk_100BD6ED0;
  v2[4] = self;
  [(IDSDMessageStore *)self performBlock:v2];
}

- (id)incomingMessagesUpToLimit:(unint64_t)limit controlCategory:(unsigned int)category messageTransportType:(unsigned __int8)type success:(BOOL *)success
{
  +[NSMutableArray array];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1005F8750;
  v15[3] = &unk_100BE1DF0;
  categoryCopy = category;
  v15[4] = self;
  limitCopy = limit;
  successCopy = success;
  v11 = v20 = type;
  v16 = v11;
  [(IDSDMessageStore *)self performBlock:v15 waitUntilDone:1];
  v12 = v16;
  v13 = v11;

  return v11;
}

- (id)incomingExpiredRestrictedMessages:(double)messages success:(BOOL *)success
{
  +[NSMutableArray array];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005F8BD4;
  v11[3] = &unk_100BD7E20;
  v11[4] = self;
  messagesCopy = messages;
  v7 = v14 = success;
  v12 = v7;
  [(IDSDMessageStore *)self performBlock:v11 waitUntilDone:1];
  v8 = v12;
  v9 = v7;

  return v7;
}

- (id)_incomingMessageIdentifierForMessageUUID:(id)d messagePayload:(id)payload
{
  dCopy = d;
  v6 = 0;
  if (dCopy && payload)
  {
    sHA256Data = [payload SHA256Data];
    __imHexString = [sHA256Data __imHexString];

    if (__imHexString)
    {
      v6 = [dCopy stringByAppendingString:__imHexString];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)storeIncomingMessage:(id)message forTopic:(id)topic fromID:(id)d messageUUID:(id)iD messagePayload:(id)payload isLocal:(BOOL)local controlCategory:(unsigned int)category dedupBehavior:(unsigned __int8)self0 completionBlock:(id)self1
{
  messageCopy = message;
  topicCopy = topic;
  dCopy = d;
  iDCopy = iD;
  payloadCopy = payload;
  blockCopy = block;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v39 = _os_activity_create(&_mh_execute_header, "Storing incoming message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v39, &state);
  if ([topicCopy length])
  {
    v21 = JWEncodeDictionary();
    if (v21)
    {
      v22 = messageCopy;
      if (behavior)
      {
        v23 = iDCopy;
        blockCopy = [(IDSDMessageStore *)self _incomingMessageIdentifierForMessageUUID:iDCopy messagePayload:payloadCopy, blockCopy];
        v25 = payloadCopy;
      }

      else
      {
        v25 = payloadCopy;
        v23 = iDCopy;
        blockCopy = 0;
      }

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1005F931C;
      v29[3] = &unk_100BE1E40;
      v29[4] = self;
      v30 = topicCopy;
      v31 = dCopy;
      v32 = v21;
      localCopy = local;
      v26 = blockCopy;
      v33 = v26;
      categoryCopy = category;
      behaviorCopy = behavior;
      v34 = blockCopy;
      [(IDSDMessageStore *)self performBlock:v29];
      payloadCopy = v25;

      iDCopy = v23;
      messageCopy = v22;
    }

    else
    {
      v26 = +[IDSFoundationLog IDSMessageStore];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10092CB14();
      }
    }
  }

  else
  {
    v21 = +[IDSFoundationLog IDSMessageStore];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v41 = messageCopy;
      v42 = 2112;
      v43 = topicCopy;
      v44 = 2112;
      v45 = dCopy;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Ignoring storeMessage: %@ forTopic: %@ fromID: %@", buf, 0x20u);
    }
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (id)_createOutgoingMessageRecordsFromSQLRecords:(__CFArray *)records includeMessagePayloads:(BOOL)payloads
{
  if (records && (v4 = payloads, Count = CFArrayGetCount(records), Count >= 1))
  {
    v53 = 0;
    idx = 0;
    v6 = &v151;
    if (!v4)
    {
      v6 = 0;
    }

    v49 = v6;
    theArray = records;
    if (v4)
    {
      v7 = &v150;
    }

    else
    {
      v7 = 0;
    }

    v8 = &v149;
    if (!v4)
    {
      v8 = 0;
    }

    v47 = v8;
    v48 = v7;
    v9 = &v147;
    if (!v4)
    {
      v9 = 0;
    }

    v46 = v9;
    do
    {
      context = objc_autoreleasePoolPush();
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
      v154 = 0;
      v155 = 0;
      v153 = 0;
      v152 = 0;
      v151 = 0;
      v150 = 0;
      v149 = 0;
      v148 = 0;
      v147 = 0;
      v146 = -86;
      v145 = -86;
      v144 = -86;
      v143 = -86;
      memset(v142, 170, 17);
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      cf = 0;
      v135 = -86;
      v134 = -86;
      v133 = -86;
      v132 = -86;
      v131 = -86;
      v130 = -86;
      memset(v129, 170, 17);
      v128 = -86;
      v127 = 0xAAAAAAAAAAAAAAAALL;
      v126 = -86;
      memset(v125, 170, sizeof(v125));
      v124 = -86;
      memset(v123, 170, 17);
      v122 = -86;
      v121 = -86;
      v120 = -86;
      v119 = -86;
      v118 = -86;
      v117 = -86;
      v116 = -86;
      v115 = 0xAAAAAAAAAAAAAAAALL;
      v114 = 0;
      v113 = -86;
      memset(v112, 170, sizeof(v112));
      v111 = 0xAAAAAAAAAAAAAAAALL;
      database = [(IDSDMessageStore *)self database];
      sub_10033F95C(ValueAtIndex, 0, &v155, &v154, &v153, &v152, v49, v48, v47, &v148, v46, &v146, &v145, &v144, &v143, &v142[9], &v142[1], v142, &v141, &v140, &v139, v125, &v124, &v138, &v134, &v137, &v135, &v133, &v132, &v131, &v130, &v129[9], &v129[1], v129, &cf, &v128, &v127, &v126, &v125[2], &v125[1], &v123[9], v123, &v122, &v123[1], &v121, &v120, &v119, &v118, &v117, &v116, &v115, &v114, &v113, &v112[2], &v112[1], v112, &v111, database);

      if (v151)
      {
        v104 = JWDecodeDictionary();
      }

      else
      {
        v104 = 0;
      }

      if (v149)
      {
        v105 = JWDecodeDictionary();
      }

      else
      {
        v105 = 0;
      }

      if (v114)
      {
        v12 = objc_alloc_init(NSMutableDictionary);
        v13 = JWDecodeDictionary();
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v107 objects:v156 count:16];
        if (v15)
        {
          v16 = *v108;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v108 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v107 + 1) + 8 * i);
              v19 = [NSUUID alloc];
              v20 = [v14 objectForKey:v18];
              v21 = [v19 initWithUUIDString:v20];

              [v12 setObject:v21 forKey:v18];
            }

            v15 = [v14 countByEnumeratingWithState:&v107 objects:v156 count:16];
          }

          while (v15);
        }

        v106 = v12;
      }

      else
      {
        v106 = 0;
      }

      if (v148)
      {
        v22 = [NSKeyedUnarchiver ids_secureUnarchiveObjectOfClass:objc_opt_class() withData:v148];
      }

      else
      {
        v22 = 0;
      }

      if (v141)
      {
        v23 = JWDecodeDictionary();
      }

      else
      {
        v23 = 0;
      }

      if (*&v129[1])
      {
        v95 = JWDecodeArray();
      }

      else
      {
        v95 = 0;
      }

      v94 = v23;
      v93 = v22;
      if (*&v142[9] < 1)
      {
        v96 = 0;
      }

      else
      {
        v96 = [NSDate dateWithTimeIntervalSinceReferenceDate:*&v142[9]];
      }

      if (v125[1] < 1)
      {
        v97 = 0;
      }

      else
      {
        v97 = [NSDate dateWithTimeIntervalSinceReferenceDate:v125[1]];
      }

      if (v111)
      {
        v98 = [IDSSendReasonContainer createWithReasonString:?];
      }

      else
      {
        v98 = 0;
      }

      v91 = [IDSDOutgoingMessage alloc];
      v88 = v150;
      v89 = v152;
      v90 = v153;
      v87 = v144;
      v86 = v147;
      v85 = v146;
      v84 = v145;
      v83 = v143;
      v82 = v128;
      v102 = [NSNumber numberWithInteger:*&v142[1]];
      v81 = v142[0];
      v80 = v140;
      v79 = v139;
      v78 = v155;
      v77 = v154;
      v76 = v138;
      v75 = v134;
      v74 = v137;
      v73 = v135;
      v72 = v133;
      v71 = v130;
      v70 = v132;
      v69 = v131;
      v101 = [NSNumber numberWithUnsignedInteger:*&v129[9]];
      v68 = v129[0];
      v67 = v127;
      v66 = v125[2];
      v100 = [NSNumber numberWithLongLong:*&v123[9]];
      v65 = v123[0];
      v64 = v122;
      v59 = *&v123[1];
      if (*&v123[1] < 1)
      {
        v63 = 0;
      }

      else
      {
        v56 = [NSNumber numberWithLongLong:?];
        v63 = v56;
      }

      v62 = cf;
      v24 = v121;
      v25 = v120;
      v26 = v119;
      v27 = v124;
      v28 = v118;
      v29 = v117;
      v30 = v116;
      v99 = [NSNumber numberWithLongLong:v115];
      v61 = v113;
      v58 = v112[2];
      if (v112[2] < 1)
      {
        v60 = 0;
      }

      else
      {
        v55 = [NSNumber numberWithLongLong:?];
        v60 = v55;
      }

      v57 = v112[1];
      if (v112[1] < 1)
      {
        v31 = 0;
      }

      else
      {
        v54 = [NSNumber numberWithLongLong:?];
        v31 = v54;
      }

      if (v112[0] <= 0)
      {
        LOBYTE(v45) = v61;
        BYTE6(v44) = v30;
        BYTE5(v44) = v29;
        BYTE4(v44) = v28;
        BYTE3(v44) = v27;
        BYTE2(v44) = v26;
        BYTE1(v44) = v25;
        LOBYTE(v44) = v24;
        BYTE1(v43) = v64;
        LOBYTE(v43) = v65;
        LOBYTE(v42) = v68;
        BYTE4(v41) = v69;
        BYTE3(v41) = v70;
        BYTE2(v41) = v71;
        BYTE1(v41) = v72;
        LOBYTE(v41) = v73;
        LOBYTE(v40) = v75;
        LOBYTE(v39) = v81;
        LOBYTE(v38) = v82;
        BYTE2(v37) = v83;
        BYTE1(v37) = v84;
        LOBYTE(v37) = v85;
        LOBYTE(v36) = v87;
        v33 = [IDSDOutgoingMessage initWithMessage:v91 data:"initWithMessage:data:protobuf:fromID:toDestinations:accountGUID:useDictAsTopLevel:dataToEncrypt:encryptPayload:compressPayload:wantsResponse:expirationDate:enforceRemoteTimeouts:command:wantsDeliveryStatus:deliveryStatusContext:messageUUID:priority:guid:alternateGUID:identifier:forcedLocal:peerResponseIdentifier:expectsPeerResponse:wantsAppAck:fireAndForget:nonWaking:nonCloudWaking:storedSize:duetIdentifiersOverride:bypassDuet:mainAccountGuid:localDestinationDeviceUUID:enqueuedDate:messageType:alwaysSkipSelf:alwaysIncludeSelf:pushPriority:queueOneIdentifier:liveMessageDelivery:requireBluetooth:requireLocalWiFi:sent:wantsProgress:ignoreMaxRetryCount:wantsCertifiedDelivery:originalTimestamp:ktUriVerificationMap:wantsFirewallDonation:sendMode:deliveryMinimumTimeDelay:deliveryMinimumTime:sendReasonContainer:" protobuf:v104 fromID:v88 toDestinations:v105 accountGUID:v89 useDictAsTopLevel:v93 dataToEncrypt:v90 encryptPayload:v36 compressPayload:v86 wantsResponse:v37 expirationDate:v96 enforceRemoteTimeouts:v38 command:v102 wantsDeliveryStatus:v39 deliveryStatusContext:v94 messageUUID:v80 priority:v79 guid:v78 alternateGUID:v77 identifier:v76 forcedLocal:v40 peerResponseIdentifier:v74 expectsPeerResponse:v41 wantsAppAck:v101 fireAndForget:v95 nonWaking:v42 nonCloudWaking:v67 storedSize:v66 duetIdentifiersOverride:v97 bypassDuet:v100 mainAccountGuid:v43 localDestinationDeviceUUID:v63 enqueuedDate:v62 messageType:v44 alwaysSkipSelf:v99 alwaysIncludeSelf:v106 pushPriority:v45 queueOneIdentifier:v60 liveMessageDelivery:v31 requireBluetooth:0 requireLocalWiFi:v98 sent:? wantsProgress:? ignoreMaxRetryCount:? wantsCertifiedDelivery:? originalTimestamp:? ktUriVerificationMap:? wantsFirewallDonation:? sendMode:? deliveryMinimumTimeDelay:? deliveryMinimumTime:? sendReasonContainer:?];
      }

      else
      {
        v32 = [NSNumber numberWithLongLong:?];
        LOBYTE(v45) = v61;
        BYTE6(v44) = v30;
        BYTE5(v44) = v29;
        BYTE4(v44) = v28;
        BYTE3(v44) = v27;
        BYTE2(v44) = v26;
        BYTE1(v44) = v25;
        LOBYTE(v44) = v24;
        BYTE1(v43) = v64;
        LOBYTE(v43) = v65;
        LOBYTE(v42) = v68;
        BYTE4(v41) = v69;
        BYTE3(v41) = v70;
        BYTE2(v41) = v71;
        BYTE1(v41) = v72;
        LOBYTE(v41) = v73;
        LOBYTE(v40) = v75;
        LOBYTE(v39) = v81;
        LOBYTE(v38) = v82;
        BYTE2(v37) = v83;
        BYTE1(v37) = v84;
        LOBYTE(v37) = v85;
        LOBYTE(v36) = v87;
        v33 = [IDSDOutgoingMessage initWithMessage:v91 data:"initWithMessage:data:protobuf:fromID:toDestinations:accountGUID:useDictAsTopLevel:dataToEncrypt:encryptPayload:compressPayload:wantsResponse:expirationDate:enforceRemoteTimeouts:command:wantsDeliveryStatus:deliveryStatusContext:messageUUID:priority:guid:alternateGUID:identifier:forcedLocal:peerResponseIdentifier:expectsPeerResponse:wantsAppAck:fireAndForget:nonWaking:nonCloudWaking:storedSize:duetIdentifiersOverride:bypassDuet:mainAccountGuid:localDestinationDeviceUUID:enqueuedDate:messageType:alwaysSkipSelf:alwaysIncludeSelf:pushPriority:queueOneIdentifier:liveMessageDelivery:requireBluetooth:requireLocalWiFi:sent:wantsProgress:ignoreMaxRetryCount:wantsCertifiedDelivery:originalTimestamp:ktUriVerificationMap:wantsFirewallDonation:sendMode:deliveryMinimumTimeDelay:deliveryMinimumTime:sendReasonContainer:" protobuf:v104 fromID:v88 toDestinations:v105 accountGUID:v89 useDictAsTopLevel:v93 dataToEncrypt:v90 encryptPayload:v36 compressPayload:v86 wantsResponse:v37 expirationDate:v96 enforceRemoteTimeouts:v38 command:v102 wantsDeliveryStatus:v39 deliveryStatusContext:v94 messageUUID:v80 priority:v79 guid:v78 alternateGUID:v77 identifier:v76 forcedLocal:v40 peerResponseIdentifier:v74 expectsPeerResponse:v41 wantsAppAck:v101 fireAndForget:v95 nonWaking:v42 nonCloudWaking:v67 storedSize:v66 duetIdentifiersOverride:v97 bypassDuet:v100 mainAccountGuid:v43 localDestinationDeviceUUID:v63 enqueuedDate:v62 messageType:v44 alwaysSkipSelf:v99 alwaysIncludeSelf:v106 pushPriority:v45 queueOneIdentifier:v60 liveMessageDelivery:v31 requireBluetooth:v32 requireLocalWiFi:v98 sent:? wantsProgress:? ignoreMaxRetryCount:? wantsCertifiedDelivery:? originalTimestamp:? ktUriVerificationMap:? wantsFirewallDonation:? sendMode:? deliveryMinimumTimeDelay:? deliveryMinimumTime:? sendReasonContainer:?];
      }

      if (v57 >= 1)
      {
      }

      if (v58 >= 1)
      {
      }

      if (v59 > 0)
      {
      }

      if (v33)
      {
        v34 = v53;
        if (!v53)
        {
          v34 = objc_alloc_init(NSMutableArray);
        }

        v53 = v34;
        [v34 addObject:v33];
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v150)
      {
        CFRelease(v150);
        v150 = 0;
      }

      if (v149)
      {
        CFRelease(v149);
        v149 = 0;
      }

      if (v138)
      {
        CFRelease(v138);
        v138 = 0;
      }

      if (v137)
      {
        CFRelease(v137);
        v137 = 0;
      }

      if (v155)
      {
        CFRelease(v155);
        v155 = 0;
      }

      if (v153)
      {
        CFRelease(v153);
        v153 = 0;
      }

      if (v152)
      {
        CFRelease(v152);
        v152 = 0;
      }

      if (v151)
      {
        CFRelease(v151);
        v151 = 0;
      }

      if (v148)
      {
        CFRelease(v148);
        v148 = 0;
      }

      if (v147)
      {
        CFRelease(v147);
        v147 = 0;
      }

      if (v141)
      {
        CFRelease(v141);
        v141 = 0;
      }

      if (v140)
      {
        CFRelease(v140);
        v140 = 0;
      }

      if (*&v129[1])
      {
        CFRelease(*&v129[1]);
        *&v129[1] = 0;
      }

      if (v127)
      {
        CFRelease(v127);
        v127 = 0;
      }

      if (v125[2])
      {
        CFRelease(v125[2]);
        v125[2] = 0;
      }

      objc_autoreleasePoolPop(context);
      ++idx;
    }

    while (idx != Count);
  }

  else
  {
    v53 = 0;
  }

  return v53;
}

- (id)largestPayloadSizeAccountUUID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000AA94;
  v9 = sub_10000BCBC;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005FA544;
  v4[3] = &unk_100BD9038;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDMessageStore *)self performBlock:v4 waitUntilDone:1];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)allOutgoingMessagesByGUID:(id)d
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10000AA94;
  v14 = sub_10000BCBC;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005FA6F0;
  v6[3] = &unk_100BE0810;
  selfCopy = self;
  dCopy = d;
  v8 = dCopy;
  v9 = &v10;
  [(IDSDMessageStore *)selfCopy performBlock:v6 waitUntilDone:1];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)allOutgoingMessagesOnAccountGUID:(id)d localDestinationDeviceID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10000AA94;
  v20 = sub_10000BCBC;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1005FA908;
  v12[3] = &unk_100BE1E68;
  v12[4] = self;
  v8 = dCopy;
  v13 = v8;
  v9 = iDCopy;
  v14 = v9;
  v15 = &v16;
  [(IDSDMessageStore *)self performBlock:v12 waitUntilDone:1];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)allExpiredOutgoingMessages:(int64_t)messages
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10000AA94;
  v10 = sub_10000BCBC;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005FAAD0;
  v5[3] = &unk_100BD7E68;
  v5[5] = &v6;
  v5[6] = messages;
  v5[4] = self;
  [(IDSDMessageStore *)self performBlock:v5 waitUntilDone:1];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)uniqueAccountGUIDsForUnsentOutgoingMessages:(int64_t)messages
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10000AA94;
  v10 = sub_10000BCBC;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005FAC94;
  v5[3] = &unk_100BD7E68;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = messages;
  [(IDSDMessageStore *)self performBlock:v5 waitUntilDone:1];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)allUnsentOutgoingMessagesForAccounts:(id)accounts localDestinationDeviceID:(id)d hardLimit:(int64_t)limit
{
  accountsCopy = accounts;
  dCopy = d;
  if ([accountsCopy count])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_10000AA94;
    v21 = sub_10000BCBC;
    v22 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1005FAEA0;
    v12[3] = &unk_100BE1E90;
    v12[4] = self;
    v13 = accountsCopy;
    v15 = &v17;
    limitCopy = limit;
    v14 = dCopy;
    [(IDSDMessageStore *)self performBlock:v12 waitUntilDone:1];
    v10 = v18[5];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v10 = +[NSArray array];
  }

  return v10;
}

- (id)allUnsentOutgoingMessagesForAccounts:(id)accounts priority:(int64_t)priority localDestinationDeviceID:(id)d hardLimit:(int64_t)limit
{
  accountsCopy = accounts;
  dCopy = d;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000AA94;
  v26 = sub_10000BCBC;
  v27 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1005FB0EC;
  v16[3] = &unk_100BE1EB8;
  v16[4] = self;
  v12 = accountsCopy;
  v17 = v12;
  priorityCopy = priority;
  v13 = dCopy;
  limitCopy = limit;
  v18 = v13;
  v19 = &v22;
  [(IDSDMessageStore *)self performBlock:v16 waitUntilDone:1];
  v14 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v14;
}

- (id)allUnsentOutgoingMessagesForAccounts:(id)accounts localDestinationDeviceID:(id)d priority:(int64_t)priority hardLimit:(int64_t)limit wantsPayload:(BOOL)payload messageType:(int64_t)type success:(BOOL *)success
{
  accountsCopy = accounts;
  dCopy = d;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10000AA94;
  v34 = sub_10000BCBC;
  v35 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1005FB358;
  v21[3] = &unk_100BE1EE0;
  v21[4] = self;
  v17 = accountsCopy;
  v22 = v17;
  priorityCopy = priority;
  v18 = dCopy;
  payloadCopy = payload;
  limitCopy = limit;
  typeCopy = type;
  successCopy = success;
  v23 = v18;
  v24 = &v30;
  [(IDSDMessageStore *)self performBlock:v21 waitUntilDone:1];
  v19 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v19;
}

- (id)unsentNonUrgentAccountUUIDsRequiringDuetOverrides:(BOOL)overrides priority:(int64_t)priority
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10000AA94;
  v12 = sub_10000BCBC;
  v13 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005FB540;
  v6[3] = &unk_100BE1F08;
  v6[4] = self;
  v6[5] = &v8;
  v6[6] = priority;
  overridesCopy = overrides;
  [(IDSDMessageStore *)self performBlock:v6 waitUntilDone:1];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (id)unsentNonUrgentAccountUUIDsRequiringDuetOverrides:(BOOL)overrides priority:(int64_t)priority messageTypes:(id)types
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10000AA94;
  v18 = sub_10000BCBC;
  v19 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005FB720;
  v8[3] = &unk_100BE1F30;
  selfCopy = self;
  v11 = &v14;
  priorityCopy = priority;
  overridesCopy = overrides;
  typesCopy = types;
  v10 = typesCopy;
  [(IDSDMessageStore *)selfCopy performBlock:v8 waitUntilDone:1];
  v6 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v6;
}

- (id)unsentUrgentAccountUUIDsForMessageTypes:(id)types
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10000AA94;
  v14 = sub_10000BCBC;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005FB8EC;
  v6[3] = &unk_100BE1F58;
  selfCopy = self;
  v9 = &v10;
  typesCopy = types;
  v8 = typesCopy;
  [(IDSDMessageStore *)selfCopy performBlock:v6 waitUntilDone:1];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)_unsentOutgoingMessagesUpToLimit:(unint64_t)limit byteLimit:(unint64_t)byteLimit priority:(int64_t)priority accountUUID:(id)d wantsPayload:(BOOL)payload requireDuet:(BOOL)duet localDestinationDeviceID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10000AA94;
  v34 = sub_10000BCBC;
  v35 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1005FBB84;
  v21[3] = &unk_100BE1F80;
  payloadCopy = payload;
  v21[4] = self;
  byteLimitCopy = byteLimit;
  limitCopy = limit;
  priorityCopy = priority;
  v17 = dCopy;
  v22 = v17;
  duetCopy = duet;
  v18 = iDCopy;
  v23 = v18;
  v24 = &v30;
  [(IDSDMessageStore *)self performBlock:v21 waitUntilDone:1];
  v19 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v19;
}

- (id)_unsentOutgoingMessagesUpToLimit:(unint64_t)limit byteLimit:(unint64_t)byteLimit priority:(int64_t)priority accountUUID:(id)d wantsPayload:(BOOL)payload requireDuet:(BOOL)duet localDestinationDeviceID:(id)iD messageTypes:(id)self0
{
  dCopy = d;
  iDCopy = iD;
  typesCopy = types;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10000AA94;
  v36 = sub_10000BCBC;
  v37 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1005FBE58;
  v23[3] = &unk_100BE1FA8;
  v23[4] = self;
  byteLimitCopy = byteLimit;
  limitCopy = limit;
  priorityCopy = priority;
  v18 = dCopy;
  v24 = v18;
  duetCopy = duet;
  v19 = iDCopy;
  v25 = v19;
  v20 = typesCopy;
  v26 = v20;
  v27 = &v32;
  [(IDSDMessageStore *)self performBlock:v23 waitUntilDone:1];
  v21 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v21;
}

- (id)duetIdentifiersOverrideForAccountWithGUID:(id)d priority:(int64_t)priority
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1005FC0EC;
  v10[3] = &unk_100BE0E40;
  selfCopy = self;
  dCopy = d;
  priorityCopy = priority;
  v5 = objc_alloc_init(NSMutableSet);
  v13 = v5;
  v6 = dCopy;
  [(IDSDMessageStore *)selfCopy performBlock:v10 waitUntilDone:1];
  v7 = v13;
  v8 = v5;

  return v5;
}

- (void)markLocalDestinationDeviceUUIDForAccounts:(id)accounts deviceUUID:(id)d
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005FC3F4;
  v7[3] = &unk_100BD6E18;
  selfCopy = self;
  accountsCopy = accounts;
  dCopy = d;
  v5 = dCopy;
  v6 = accountsCopy;
  [(IDSDMessageStore *)selfCopy performBlock:v7];
}

- (void)markAllMessageAsPendingDeleteForAccounts:(id)accounts withDestinationDevice:(id)device
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005FC5B8;
  v7[3] = &unk_100BD6E18;
  selfCopy = self;
  accountsCopy = accounts;
  deviceCopy = device;
  v5 = deviceCopy;
  v6 = accountsCopy;
  [(IDSDMessageStore *)selfCopy performBlock:v7];
}

- (id)allOutgoingMessagesPendingDeleteWithLimit:(int64_t)limit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10000AA94;
  v10 = sub_10000BCBC;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005FC7B8;
  v5[3] = &unk_100BD7E68;
  v5[5] = &v6;
  v5[6] = limit;
  v5[4] = self;
  [(IDSDMessageStore *)self performBlock:v5 waitUntilDone:1];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)outgoingMessagesWithEnqueueDateOlderThan:(int64_t)than notToDestinationDeviceID:(id)d andLimit:(int64_t)limit
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000AA94;
  v19 = sub_10000BCBC;
  v20 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005FC9B4;
  v9[3] = &unk_100BE1FD0;
  selfCopy = self;
  thanCopy = than;
  dCopy = d;
  limitCopy = limit;
  v11 = dCopy;
  v12 = &v15;
  [(IDSDMessageStore *)selfCopy performBlock:v9 waitUntilDone:1];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

- (void)deleteAllMessagesWithAccountGUID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1005FCB24;
    v5[3] = &unk_100BD6E40;
    v5[4] = self;
    v6 = dCopy;
    [(IDSDMessageStore *)self performBlock:v5];
  }
}

- (void)updateInternalMigrationVersionOnDatabaseWithValue:(int)value
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005FCC04;
  v3[3] = &unk_100BD89B0;
  v3[4] = self;
  valueCopy = value;
  [(IDSDMessageStore *)self performBlock:v3];
}

- (int)internalMigrationVersionOnDatabase
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1431655766;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005FCD3C;
  v4[3] = &unk_100BD9038;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDMessageStore *)self performBlock:v4 waitUntilDone:1];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)checkpointAndVacuumDB
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1005FCE20;
  v2[3] = &unk_100BD6ED0;
  v2[4] = self;
  [(IDSDMessageStore *)self performBlock:v2 waitUntilDone:1];
}

- (void)storeOutgoingMessageWithSendParameters:(id)parameters guid:(id)guid canSend:(BOOL)send canBypassSimilarMessages:(BOOL)messages fromQueue:(id)queue completionBlock:(id)block
{
  parametersCopy = parameters;
  guidCopy = guid;
  queueCopy = queue;
  blockCopy = block;
  dispatch_assert_queue_V2(queueCopy);
  destinations = [parametersCopy destinations];
  destinationURIs = [destinations destinationURIs];
  if ([destinationURIs count])
  {
    accountUUID = [parametersCopy accountUUID];
    v15 = [accountUUID length];

    if (v15)
    {
      if ([parametersCopy bypassStorage])
      {
        v16 = +[IDSFoundationLog IDSMessageStore];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v84 = guidCopy;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Asked to bypass storage for message with GUID %@", buf, 0xCu);
        }

        blockCopy[2](blockCopy, guidCopy, 1, 1);
      }

      else
      {
        message = [parametersCopy message];
        if (message)
        {
          message2 = [parametersCopy message];
          v22 = JWEncodeDictionary();

          v54 = v22;
        }

        else
        {
          v54 = 0;
        }

        data = [parametersCopy data];
        protobuf = [parametersCopy protobuf];
        if (protobuf)
        {
          protobuf2 = [parametersCopy protobuf];
          v25 = JWEncodeDictionary();

          v53 = v25;
        }

        else
        {
          v53 = 0;
        }

        keyTransparencyURIVerificationMap = [parametersCopy keyTransparencyURIVerificationMap];

        if (keyTransparencyURIVerificationMap)
        {
          v27 = objc_alloc_init(NSMutableDictionary);
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          keyTransparencyURIVerificationMap2 = [parametersCopy keyTransparencyURIVerificationMap];
          v29 = [keyTransparencyURIVerificationMap2 countByEnumeratingWithState:&v78 objects:v82 count:16];
          if (v29)
          {
            v30 = *v79;
            do
            {
              for (i = 0; i != v29; i = i + 1)
              {
                if (*v79 != v30)
                {
                  objc_enumerationMutation(keyTransparencyURIVerificationMap2);
                }

                v32 = *(*(&v78 + 1) + 8 * i);
                keyTransparencyURIVerificationMap3 = [parametersCopy keyTransparencyURIVerificationMap];
                v34 = [keyTransparencyURIVerificationMap3 objectForKey:v32];
                uUIDString = [v34 UUIDString];
                [v27 setObject:uUIDString forKey:v32];
              }

              v29 = [keyTransparencyURIVerificationMap2 countByEnumeratingWithState:&v78 objects:v82 count:16];
            }

            while (v29);
          }

          v36 = JWEncodeDictionary();
        }

        else
        {
          v36 = 0;
        }

        destinations2 = [parametersCopy destinations];
        v77 = 0;
        v38 = [NSKeyedArchiver archivedDataWithRootObject:destinations2 requiringSecureCoding:0 error:&v77];
        v39 = v77;

        v40 = v38;
        if (!v38)
        {
          v41 = +[IDSFoundationLog IDSMessageStore];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            destinations3 = [parametersCopy destinations];
            sub_10092CB7C(destinations3, v39, buf, v41);
          }
        }

        deliveryStatusContext = [parametersCopy deliveryStatusContext];
        v44 = JWEncodeDictionary();

        duetIdentifiersOverride = [parametersCopy duetIdentifiersOverride];
        v46 = JWEncodeArray();

        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_1005FD5AC;
        v63[3] = &unk_100BE2020;
        v63[4] = self;
        sendCopy = send;
        messagesCopy = messages;
        v64 = parametersCopy;
        v65 = guidCopy;
        v66 = v54;
        v67 = data;
        v68 = v53;
        v69 = v40;
        v70 = v44;
        v71 = v46;
        v72 = v36;
        v74 = blockCopy;
        v73 = queueCopy;
        v47 = v36;
        v58 = v46;
        v48 = v44;
        v49 = v40;
        v50 = v53;
        v51 = data;
        v52 = v54;
        [(IDSDMessageStore *)self performBlock:v63];
      }

      goto LABEL_32;
    }
  }

  else
  {
  }

  v17 = +[IDSFoundationLog IDSMessageStore];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    destinations4 = [parametersCopy destinations];
    accountUUID2 = [parametersCopy accountUUID];
    *buf = 138412802;
    v84 = parametersCopy;
    v85 = 2112;
    v86 = destinations4;
    v87 = 2112;
    v88 = accountUUID2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Ignoring storeOutgoingMessageWithSendParameters: %@ destinations: %@ accountID: %@", buf, 0x20u);
  }

LABEL_32:
}

- (void)markOutgoingMessageWithGUID:(id)d asSent:(BOOL)sent
{
  dCopy = d;
  if ([dCopy length])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005FDE74;
    v7[3] = &unk_100BD8FC0;
    v7[4] = self;
    v8 = dCopy;
    sentCopy = sent;
    [(IDSDMessageStore *)self performBlock:v7];
  }
}

- (void)markAllOutgoingMessagesAsUnsent
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1005FDF60;
  v2[3] = &unk_100BD6ED0;
  v2[4] = self;
  [(IDSDMessageStore *)self performBlock:v2];
}

- (void)markAllOutgoingMessagesAsUnsentForLocalDestination:(id)destination
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005FE05C;
  v4[3] = &unk_100BD6E40;
  selfCopy = self;
  destinationCopy = destination;
  v3 = destinationCopy;
  [(IDSDMessageStore *)selfCopy performBlock:v4];
}

- (void)deletePostponedMessages:(id)messages classDDatabase:(id)database
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005FE188;
  v8[3] = &unk_100BD6E18;
  messagesCopy = messages;
  selfCopy = self;
  databaseCopy = database;
  v6 = databaseCopy;
  v7 = messagesCopy;
  [(IDSDMessageStore *)self performBlock:v8];
}

- (void)deleteOutgoingMessageWithGUID:(id)d alternateGUID:(id)iD classDDatabase:(id)database
{
  dCopy = d;
  iDCopy = iD;
  databaseCopy = database;
  if ([dCopy length])
  {
    v11 = +[IDSFoundationLog IDSMessageStore];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = dCopy;
      v18 = 2112;
      v19 = iDCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "deleteOutgoingMessageWithGUID:alternateGUID: {guid: %@, alternateGUID: %@}", buf, 0x16u);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1005FE368;
    v12[3] = &unk_100BD7020;
    v12[4] = self;
    v13 = dCopy;
    v14 = iDCopy;
    v15 = databaseCopy;
    [(IDSDMessageStore *)self performBlock:v12];
  }
}

- (void)deleteIncomingMessageWithGUID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1005FE55C;
    v5[3] = &unk_100BD6E40;
    v5[4] = self;
    v6 = dCopy;
    [(IDSDMessageStore *)self performBlock:v5];
  }
}

- (void)deleteExpiredIncomingMessagesOlderThan:(double)than withLimit:(int64_t)limit
{
  if (than != 0.0)
  {
    v6[7] = v4;
    v6[8] = v5;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1005FE650;
    v6[3] = &unk_100BE2048;
    v6[4] = self;
    *&v6[5] = than;
    v6[6] = limit;
    [(IDSDMessageStore *)self performBlock:v6];
  }
}

- (id)deleteExpiredIncomingRestrictedMessagesOlderThan:(double)than
{
  if (than == 0.0)
  {
    v3 = &__NSArray0__struct;
  }

  else
  {
    +[NSMutableArray array];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1005FE7C4;
    v9[3] = &unk_100BE04B0;
    v6 = v9[4] = self;
    v10 = v6;
    thanCopy = than;
    [(IDSDMessageStore *)self performBlock:v9];
    v7 = v10;
    v3 = v6;
  }

  return v3;
}

- (void)updateExpirationForIncomingMessageWithGUID:(id)d expirationDate:(int64_t)date
{
  dCopy = d;
  if ([dCopy length])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005FE918;
    v7[3] = &unk_100BE04B0;
    v7[4] = self;
    v8 = dCopy;
    dateCopy = date;
    [(IDSDMessageStore *)self performBlock:v7];
  }
}

- (void)__closeDatabase
{
  [(IDSDMessageStore *)self _clearDatabaseCloseTimer];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005FEA30;
  v4[3] = &unk_100BD6ED0;
  v4[4] = self;
  database = [(IDSDMessageStore *)self database];
  sub_10000B240(v4, 1, database);
}

- (void)_clearDatabaseCloseTimer
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  databaseCloseTimer = self->_databaseCloseTimer;
  if (databaseCloseTimer)
  {
    dispatch_source_cancel(databaseCloseTimer);
    v4 = self->_databaseCloseTimer;
    self->_databaseCloseTimer = 0;
  }

  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (void)closeDatabase
{
  [(IDSDMessageStore *)self _clearDatabaseCloseTimer];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005FEB4C;
  v3[3] = &unk_100BD6ED0;
  v3[4] = self;
  [(IDSDMessageStore *)self performBlock:v3 waitUntilDone:1];
}

- (void)deleteDatabase
{
  [(IDSDMessageStore *)self closeDatabase];
  database = [(IDSDMessageStore *)self database];
  [database deleteDatabase];
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = blockCopy;
    v6 = [blockCopy copy];

    v10 = v6;
    v7 = v6;
    v8 = [(IDSDMessageStore *)self database:_NSConcreteStackBlock];
    sub_10000B240(&v9, 0, v8);
  }
}

- (void)performBlock:(id)block afterDelay:(double)delay
{
  blockCopy = block;
  if (blockCopy)
  {
    v6 = blockCopy;
    v7 = [blockCopy copy];

    v11 = v7;
    v8 = v7;
    v9 = [(IDSDMessageStore *)self database:_NSConcreteStackBlock];
    sub_1006B7380(&v10, v9);
  }
}

- (void)performBlock:(id)block waitUntilDone:(BOOL)done
{
  doneCopy = done;
  blockCopy = block;
  if (blockCopy)
  {
    v7 = blockCopy;
    v8 = [blockCopy copy];

    v12 = v8;
    v9 = v8;
    v10 = [(IDSDMessageStore *)self database:_NSConcreteStackBlock];
    sub_10000B240(&v11, doneCopy, v10);
  }
}

@end