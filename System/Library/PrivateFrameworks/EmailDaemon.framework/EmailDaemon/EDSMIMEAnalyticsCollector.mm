@interface EDSMIMEAnalyticsCollector
- (EDSMIMEAnalyticsCollector)initWithAnalyticsCollector:(id)a3 smimeConfigurationProvider:(id)a4 messagePersistence:(id)a5;
- (id)coreAnalyticsPeriodicEvent;
@end

@implementation EDSMIMEAnalyticsCollector

- (EDSMIMEAnalyticsCollector)initWithAnalyticsCollector:(id)a3 smimeConfigurationProvider:(id)a4 messagePersistence:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = EDSMIMEAnalyticsCollector;
  v11 = [(EDSMIMEAnalyticsCollector *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_smimeConfigurationProvider, a4);
    objc_storeStrong(&v12->_messagePersistence, a5);
    v13 = [v8 registerForLogEventsWithPeriodicDataProvider:v12];
  }

  return v12;
}

- (id)coreAnalyticsPeriodicEvent
{
  v68[3] = *MEMORY[0x1E69E9840];
  v57 = [MEMORY[0x1E695DF00] ef_midnightNdaysAgo:30];
  v3 = [MEMORY[0x1E699B8C8] column:@"date_received"];
  v4 = MEMORY[0x1E696AD98];
  v51 = v3;
  [v57 timeIntervalSince1970];
  v5 = [v4 numberWithDouble:?];
  v63 = [v3 greaterThan:v5];

  v6 = [(EDSMIMEAnalyticsCollector *)self messagePersistence];
  v7 = [v6 mailboxPersistence];
  v56 = [v7 mailboxObjectIDsForMailboxType:4];

  v8 = [(EDSMIMEAnalyticsCollector *)self messagePersistence];
  v9 = [v8 mailboxPersistence];
  v55 = [v9 mailboxDatabaseIDsForMailboxObjectIDs:v56 createIfNecessary:0];

  v10 = [MEMORY[0x1E699B8C8] column:@"mailbox"];
  v62 = [v10 in:v55];

  v11 = objc_alloc(MEMORY[0x1E699B948]);
  v12 = [MEMORY[0x1E699B890] count:0];
  v13 = +[EDMessagePersistence messagesTableName];
  v60 = [v11 initWithResult:v12 table:v13];

  v14 = MEMORY[0x1E699B8B8];
  v15 = [MEMORY[0x1E699B8C8] column:@"flags"];
  v16 = [MEMORY[0x1E699B8B8] leftShift:&unk_1F45E6AD8 by:&unk_1F45E6AF0];
  v61 = [v14 and:v15 with:v16];

  v17 = objc_alloc(MEMORY[0x1E699B898]);
  v68[0] = v61;
  v68[1] = v63;
  v68[2] = v62;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:3];
  v54 = [v17 initWithExpressions:v18];

  [v60 setWhere:v54];
  v19 = objc_alloc(MEMORY[0x1E699B948]);
  v20 = [MEMORY[0x1E699B890] count:0];
  v21 = +[EDMessagePersistence messagesTableName];
  v58 = [v19 initWithResult:v20 table:v21];

  v22 = MEMORY[0x1E699B8B8];
  v23 = [MEMORY[0x1E699B8C8] column:@"flags"];
  v24 = [MEMORY[0x1E699B8B8] leftShift:&unk_1F45E6AD8 by:&unk_1F45E6B08];
  v59 = [v22 and:v23 with:v24];

  v25 = objc_alloc(MEMORY[0x1E699B898]);
  v67[0] = v59;
  v67[1] = v63;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
  v53 = [v25 initWithExpressions:v26];

  [v58 setWhere:v53];
  v27 = objc_alloc(MEMORY[0x1E699B948]);
  v28 = [MEMORY[0x1E699B890] count:0];
  v29 = +[EDMessagePersistence messagesTableName];
  v30 = [v27 initWithResult:v28 table:v29];

  v52 = [objc_alloc(MEMORY[0x1E699B918]) initWithExpression:v61];
  v31 = objc_alloc(MEMORY[0x1E699B898]);
  v66[0] = v59;
  v66[1] = v52;
  v66[2] = v63;
  v66[3] = v62;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:4];
  v33 = [v31 initWithExpressions:v32];

  [v30 setWhere:v33];
  v34 = [(EDSMIMEAnalyticsCollector *)self messagePersistence];
  v35 = [v34 countOfMessageStatement:v60];

  v36 = [(EDSMIMEAnalyticsCollector *)self messagePersistence];
  v37 = [v36 countOfMessageStatement:v58];

  v38 = [(EDSMIMEAnalyticsCollector *)self messagePersistence];
  v39 = [v38 countOfMessageStatement:v30];

  v40 = [(EDSMIMEAnalyticsCollector *)self smimeConfigurationProvider];
  LODWORD(v38) = [v40 signingIsConfigured];
  v41 = [v40 encryptionIsConfigured];
  LODWORD(v22) = [v40 signingEnabledByDefault];
  v42 = v38 & v22 | v41 & [v40 encryptionIsEnabledByDefault];
  if ((v35 < 1) | v38 & 1)
  {
    v43 = (v37 > 0) & (v41 ^ 1u);
  }

  else
  {
    v43 = 1;
  }

  v64[0] = @"usesSMIME";
  v44 = [MEMORY[0x1E696AD98] numberWithBool:v42 & 1];
  v65[0] = v44;
  v64[1] = @"usesSMIMEButNotOnThisDevice";
  v45 = [MEMORY[0x1E696AD98] numberWithBool:v43];
  v65[1] = v45;
  v64[2] = @"sendsEncryptedNotSignedMessages";
  v46 = [MEMORY[0x1E696AD98] numberWithBool:v39 > 0];
  v65[2] = v46;
  v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:3];

  v48 = [objc_alloc(MEMORY[0x1E699AC78]) initWithEventName:@"com.apple.mail.smime.usage" collectionData:v47];
  v49 = *MEMORY[0x1E69E9840];

  return v48;
}

@end