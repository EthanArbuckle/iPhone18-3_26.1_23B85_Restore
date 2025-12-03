@interface FileProtectionClassMigrator
- (BGSystemTask)task;
- (BOOL)startWithError:(id *)error;
- (EDAttachmentPersistenceManager)attachmentPersistenceManager;
- (EDPersistenceDatabase)database;
- (EFCancelable)databaseAssertion;
- (EFManualCancelationToken)cancelationToken;
- (FileProtectionClassMigrator)initWithTask:(id)task database:(id)database messagePersistence:(id)persistence attachmentPersistenceManager:(id)manager library:(id)library;
- (MFMailMessageLibrary)library;
- (MFMessagePersistence_iOS)messagePersistence;
- (void)setDatabaseAssertion:(id)assertion;
- (void)setTask:(id)task;
@end

@implementation FileProtectionClassMigrator

- (BGSystemTask)task
{
  swift_getObjectType();
  _objc_retain(self);
  v5 = sub_1000BD830();
  _objc_release(self);

  return v5;
}

- (void)setTask:(id)task
{
  swift_getObjectType();
  _objc_retain(task);
  _objc_retain(self);
  sub_1000BD910(task);
  _objc_release(self);
}

- (EDPersistenceDatabase)database
{
  swift_getObjectType();
  _objc_retain(self);
  v5 = sub_1000BDA1C();
  _objc_release(self);

  return v5;
}

- (MFMessagePersistence_iOS)messagePersistence
{
  swift_getObjectType();
  _objc_retain(self);
  v5 = sub_1000BDAD8();
  _objc_release(self);

  return v5;
}

- (EDAttachmentPersistenceManager)attachmentPersistenceManager
{
  swift_getObjectType();
  _objc_retain(self);
  v5 = sub_1000BDB94();
  _objc_release(self);

  return v5;
}

- (MFMailMessageLibrary)library
{
  swift_getObjectType();
  _objc_retain(self);
  v5 = sub_1000BDC50();
  _objc_release(self);

  return v5;
}

- (EFManualCancelationToken)cancelationToken
{
  swift_getObjectType();
  _objc_retain(self);
  v5 = sub_1000BDD0C();
  _objc_release(self);

  return v5;
}

- (EFCancelable)databaseAssertion
{
  swift_getObjectType();
  _objc_retain(self);
  v5 = sub_1000BDDC8();
  _objc_release(self);

  return v5;
}

- (void)setDatabaseAssertion:(id)assertion
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1000BDE98(assertion);
  _objc_release(self);
}

- (FileProtectionClassMigrator)initWithTask:(id)task database:(id)database messagePersistence:(id)persistence attachmentPersistenceManager:(id)manager library:(id)library
{
  swift_getObjectType();
  _objc_retain(task);
  _objc_retain(database);
  _objc_retain(persistence);
  _objc_retain(manager);
  _objc_retain(library);
  return sub_1000BDFD0(task, database, persistence, manager, library);
}

- (BOOL)startWithError:(id *)error
{
  swift_getObjectType();
  _objc_retain(self);
  sub_1000BE3CC();
  _objc_release(self);
  return 1;
}

@end