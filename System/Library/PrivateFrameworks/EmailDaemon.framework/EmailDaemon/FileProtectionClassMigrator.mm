@interface FileProtectionClassMigrator
- (BGSystemTask)task;
- (BOOL)startWithError:(id *)a3;
- (EDAttachmentPersistenceManager)attachmentPersistenceManager;
- (EDPersistenceDatabase)database;
- (EFCancelable)databaseAssertion;
- (EFManualCancelationToken)cancelationToken;
- (FileProtectionClassMigrator)initWithTask:(id)a3 database:(id)a4 messagePersistence:(id)a5 attachmentPersistenceManager:(id)a6 library:(id)a7;
- (MFMailMessageLibrary)library;
- (MFMessagePersistence_iOS)messagePersistence;
- (void)setDatabaseAssertion:(id)a3;
- (void)setTask:(id)a3;
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

- (void)setTask:(id)a3
{
  swift_getObjectType();
  _objc_retain(a3);
  _objc_retain(self);
  sub_1000BD910(a3);
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

- (void)setDatabaseAssertion:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1000BDE98(a3);
  _objc_release(self);
}

- (FileProtectionClassMigrator)initWithTask:(id)a3 database:(id)a4 messagePersistence:(id)a5 attachmentPersistenceManager:(id)a6 library:(id)a7
{
  swift_getObjectType();
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(a5);
  _objc_retain(a6);
  _objc_retain(a7);
  return sub_1000BDFD0(a3, a4, a5, a6, a7);
}

- (BOOL)startWithError:(id *)a3
{
  swift_getObjectType();
  _objc_retain(self);
  sub_1000BE3CC();
  _objc_release(self);
  return 1;
}

@end