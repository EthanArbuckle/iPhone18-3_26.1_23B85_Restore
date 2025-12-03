@interface MFServerMessagePersistenceFactory_iOS
- (MFMailMessageLibrary)library;
- (MFServerMessagePersistenceFactory_iOS)initWithLibrary:(id)library database:(id)database;
- (int64_t)mailboxIDForMailboxURL:(id)l useNumericSearch:(BOOL *)search supportsLabels:(BOOL *)labels;
@end

@implementation MFServerMessagePersistenceFactory_iOS

- (MFServerMessagePersistenceFactory_iOS)initWithLibrary:(id)library database:(id)database
{
  libraryCopy = library;
  databaseCopy = database;
  persistence = [libraryCopy persistence];
  gmailLabelPersistence = [persistence gmailLabelPersistence];
  v12.receiver = self;
  v12.super_class = MFServerMessagePersistenceFactory_iOS;
  v10 = [(EDServerMessagePersistenceFactory *)&v12 initWithDatabase:databaseCopy gmailLabelPersistence:gmailLabelPersistence];

  if (v10)
  {
    objc_storeWeak(&v10->_library, libraryCopy);
  }

  return v10;
}

- (int64_t)mailboxIDForMailboxURL:(id)l useNumericSearch:(BOOL *)search supportsLabels:(BOOL *)labels
{
  lCopy = l;
  v9 = lCopy;
  if (search)
  {
    scheme = [lCopy scheme];
    *search = [scheme isEqualToString:*MEMORY[0x1E699A698]];
  }

  if (labels)
  {
    *labels = 0;
  }

  library = [(MFServerMessagePersistenceFactory_iOS *)self library];
  absoluteString = [v9 absoluteString];
  v13 = [library mailboxIDForURLString:absoluteString createIfNecessary:1];

  return v13;
}

- (MFMailMessageLibrary)library
{
  WeakRetained = objc_loadWeakRetained(&self->_library);

  return WeakRetained;
}

@end