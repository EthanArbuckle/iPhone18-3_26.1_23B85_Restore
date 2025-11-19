@interface MFServerMessagePersistenceFactory_iOS
- (MFMailMessageLibrary)library;
- (MFServerMessagePersistenceFactory_iOS)initWithLibrary:(id)a3 database:(id)a4;
- (int64_t)mailboxIDForMailboxURL:(id)a3 useNumericSearch:(BOOL *)a4 supportsLabels:(BOOL *)a5;
@end

@implementation MFServerMessagePersistenceFactory_iOS

- (MFServerMessagePersistenceFactory_iOS)initWithLibrary:(id)a3 database:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 persistence];
  v9 = [v8 gmailLabelPersistence];
  v12.receiver = self;
  v12.super_class = MFServerMessagePersistenceFactory_iOS;
  v10 = [(EDServerMessagePersistenceFactory *)&v12 initWithDatabase:v7 gmailLabelPersistence:v9];

  if (v10)
  {
    objc_storeWeak(&v10->_library, v6);
  }

  return v10;
}

- (int64_t)mailboxIDForMailboxURL:(id)a3 useNumericSearch:(BOOL *)a4 supportsLabels:(BOOL *)a5
{
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v10 = [v8 scheme];
    *a4 = [v10 isEqualToString:*MEMORY[0x1E699A698]];
  }

  if (a5)
  {
    *a5 = 0;
  }

  v11 = [(MFServerMessagePersistenceFactory_iOS *)self library];
  v12 = [v9 absoluteString];
  v13 = [v11 mailboxIDForURLString:v12 createIfNecessary:1];

  return v13;
}

- (MFMailMessageLibrary)library
{
  WeakRetained = objc_loadWeakRetained(&self->_library);

  return WeakRetained;
}

@end