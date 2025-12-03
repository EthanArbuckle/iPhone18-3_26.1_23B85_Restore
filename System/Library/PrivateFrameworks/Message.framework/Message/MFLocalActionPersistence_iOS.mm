@interface MFLocalActionPersistence_iOS
- (BOOL)moveSupportedFromMailboxURL:(id)l toURL:(id)rL;
- (MFLocalActionPersistence_iOS)initWithDatabase:(id)database;
- (MFLocalActionPersistence_iOS)initWithDatabase:(id)database gmailLabelPersistence:(id)persistence;
- (MFLocalActionPersistence_iOS)initWithLibrary:(id)library database:(id)database;
- (MFMailMessageLibrary)library;
- (id)mailboxURLForDatabaseID:(int64_t)d;
- (id)messageForDatabaseID:(int64_t)d;
- (int64_t)mailboxDatabaseIDForURL:(id)l;
@end

@implementation MFLocalActionPersistence_iOS

- (MFLocalActionPersistence_iOS)initWithDatabase:(id)database gmailLabelPersistence:(id)persistence
{
  databaseCopy = database;
  persistenceCopy = persistence;
  [(MFLocalActionPersistence_iOS *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFLocalActionPersistence_iOS initWithDatabase:gmailLabelPersistence:]", "MFLocalActionPersistence_iOS.m", 24, "0");
}

- (MFLocalActionPersistence_iOS)initWithLibrary:(id)library database:(id)database
{
  libraryCopy = library;
  databaseCopy = database;
  persistence = [libraryCopy persistence];
  gmailLabelPersistence = [persistence gmailLabelPersistence];
  v12.receiver = self;
  v12.super_class = MFLocalActionPersistence_iOS;
  v10 = [(EDLocalActionPersistence *)&v12 initWithDatabase:databaseCopy gmailLabelPersistence:gmailLabelPersistence];

  if (v10)
  {
    objc_storeWeak(&v10->_library, libraryCopy);
  }

  return v10;
}

- (MFLocalActionPersistence_iOS)initWithDatabase:(id)database
{
  databaseCopy = database;
  [(MFLocalActionPersistence_iOS *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFLocalActionPersistence_iOS initWithDatabase:]", "MFLocalActionPersistence_iOS.m", 36, "0");
}

- (id)messageForDatabaseID:(int64_t)d
{
  library = [(MFLocalActionPersistence_iOS *)self library];
  v5 = [library messageWithLibraryID:d options:7346239 inMailbox:0];

  return v5;
}

- (BOOL)moveSupportedFromMailboxURL:(id)l toURL:(id)rL
{
  rLCopy = rL;
  v6 = [MailAccount accountWithURL:l];
  v7 = [MailAccount accountWithURL:rLCopy];
  if (v6 == v7)
  {
    moveSupported = [v6 moveSupported];
  }

  else
  {
    moveSupported = 0;
  }

  return moveSupported;
}

- (id)mailboxURLForDatabaseID:(int64_t)d
{
  v4 = MEMORY[0x1E695DFF8];
  library = [(MFLocalActionPersistence_iOS *)self library];
  v6 = [library urlForMailboxID:d];
  v7 = [v4 URLWithString:v6];

  return v7;
}

- (int64_t)mailboxDatabaseIDForURL:(id)l
{
  lCopy = l;
  library = [(MFLocalActionPersistence_iOS *)self library];
  absoluteString = [lCopy absoluteString];
  v7 = [library mailboxIDForURLString:absoluteString createIfNecessary:1];

  return v7;
}

- (MFMailMessageLibrary)library
{
  WeakRetained = objc_loadWeakRetained(&self->_library);

  return WeakRetained;
}

@end