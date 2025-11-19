@interface EDServerMessagePersistenceFactory
- (EDServerMessagePersistenceFactory)initWithDatabase:(id)a3 gmailLabelPersistence:(id)a4;
- (id)serverMessagePersistenceForMailboxURL:(id)a3;
@end

@implementation EDServerMessagePersistenceFactory

- (EDServerMessagePersistenceFactory)initWithDatabase:(id)a3 gmailLabelPersistence:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EDServerMessagePersistenceFactory;
  v9 = [(EDServerMessagePersistenceFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, a3);
    objc_storeStrong(&v10->_gmailLabelPersistence, a4);
  }

  return v10;
}

- (id)serverMessagePersistenceForMailboxURL:(id)a3
{
  v5 = a3;
  v14 = 0;
  v6 = [(EDServerMessagePersistenceFactory *)self mailboxIDForMailboxURL:v5 useNumericSearch:&v14 + 1 supportsLabels:&v14];
  if (v6 == *MEMORY[0x1E699A728])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't get mailboxID for URL %@", v5];
    qword_1EC1C4768 = [v7 UTF8String];
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EDServerMessagePersistence.m" lineNumber:79 description:@"EDServerMessagePersistenceFactory couldn't map mailboxURL"];
  }

  v9 = [EDServerMessagePersistence alloc];
  v10 = [(EDServerMessagePersistenceFactory *)self database];
  v11 = [(EDServerMessagePersistenceFactory *)self gmailLabelPersistence];
  v12 = [(EDServerMessagePersistence *)v9 initWithDatabase:v10 gmailLabelPersistence:v11 mailboxID:v6 useNumericSearch:HIBYTE(v14) supportsLabels:v14];

  return v12;
}

@end