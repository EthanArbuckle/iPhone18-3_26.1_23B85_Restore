@interface EDServerMessagePersistenceFactory
- (EDServerMessagePersistenceFactory)initWithDatabase:(id)database gmailLabelPersistence:(id)persistence;
- (id)serverMessagePersistenceForMailboxURL:(id)l;
@end

@implementation EDServerMessagePersistenceFactory

- (EDServerMessagePersistenceFactory)initWithDatabase:(id)database gmailLabelPersistence:(id)persistence
{
  databaseCopy = database;
  persistenceCopy = persistence;
  v12.receiver = self;
  v12.super_class = EDServerMessagePersistenceFactory;
  v9 = [(EDServerMessagePersistenceFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, database);
    objc_storeStrong(&v10->_gmailLabelPersistence, persistence);
  }

  return v10;
}

- (id)serverMessagePersistenceForMailboxURL:(id)l
{
  lCopy = l;
  v14 = 0;
  v6 = [(EDServerMessagePersistenceFactory *)self mailboxIDForMailboxURL:lCopy useNumericSearch:&v14 + 1 supportsLabels:&v14];
  if (v6 == *MEMORY[0x1E699A728])
  {
    lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't get mailboxID for URL %@", lCopy];
    qword_1EC1C4768 = [lCopy UTF8String];
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDServerMessagePersistence.m" lineNumber:79 description:@"EDServerMessagePersistenceFactory couldn't map mailboxURL"];
  }

  v9 = [EDServerMessagePersistence alloc];
  database = [(EDServerMessagePersistenceFactory *)self database];
  gmailLabelPersistence = [(EDServerMessagePersistenceFactory *)self gmailLabelPersistence];
  v12 = [(EDServerMessagePersistence *)v9 initWithDatabase:database gmailLabelPersistence:gmailLabelPersistence mailboxID:v6 useNumericSearch:HIBYTE(v14) supportsLabels:v14];

  return v12;
}

@end