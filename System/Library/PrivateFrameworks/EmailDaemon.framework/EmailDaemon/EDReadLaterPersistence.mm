@interface EDReadLaterPersistence
- (EDReadLaterPersistence)initWithDatabase:(id)database hookRegistry:(id)registry;
- (id)cloudStorageReadLaterDateForMessage:(id)message displayDate:(id *)date;
- (void)_persistDisplayDate:(id)date message:(id)message connection:(id)connection;
- (void)_persistReadLater:(id)later date:(id)date displayDate:(id)displayDate;
- (void)persistReadLaterForMessage:(id)message date:(id)date displayDate:(id)displayDate;
- (void)removeReadLaterForMessage:(id)message;
- (void)scheduleRecurringActivity;
@end

@implementation EDReadLaterPersistence

- (EDReadLaterPersistence)initWithDatabase:(id)database hookRegistry:(id)registry
{
  databaseCopy = database;
  registryCopy = registry;
  v12.receiver = self;
  v12.super_class = EDReadLaterPersistence;
  v9 = [(EDReadLaterPersistence *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, database);
    objc_storeStrong(&v10->_hookRegistry, registry);
  }

  return v10;
}

- (void)scheduleRecurringActivity
{
  v3 = [EDReadLaterCloudStorage alloc];
  hookRegistry = [(EDReadLaterPersistence *)self hookRegistry];
  v4 = [(EDReadLaterCloudStorage *)v3 initWithHookRegistry:?];
  cloudStorage = self->_cloudStorage;
  self->_cloudStorage = v4;
}

- (void)persistReadLaterForMessage:(id)message date:(id)date displayDate:(id)displayDate
{
  messageCopy = message;
  dateCopy = date;
  displayDateCopy = displayDate;
  dateReceived = displayDateCopy;
  if (dateCopy)
  {
    if (displayDateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"EDReadLaterPersistence.m" lineNumber:48 description:@"Expect a non-nil date"];

  if (!dateReceived)
  {
LABEL_3:
    dateReceived = [messageCopy dateReceived];
  }

LABEL_4:
  ec_integerDate = [dateCopy ec_integerDate];
  ec_integerDate2 = [dateReceived ec_integerDate];
  [(EDReadLaterPersistence *)self _persistReadLater:messageCopy date:ec_integerDate displayDate:ec_integerDate2];
}

- (void)removeReadLaterForMessage:(id)message
{
  messageCopy = message;
  dateReceived = [messageCopy dateReceived];
  ec_integerDate = [dateReceived ec_integerDate];
  [(EDReadLaterPersistence *)self _persistReadLater:messageCopy date:0 displayDate:ec_integerDate];
}

- (void)_persistReadLater:(id)later date:(id)date displayDate:(id)displayDate
{
  laterCopy = later;
  dateCopy = date;
  displayDateCopy = displayDate;
  database = [(EDReadLaterPersistence *)self database];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDReadLaterPersistence _persistReadLater:date:displayDate:]"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__EDReadLaterPersistence__persistReadLater_date_displayDate___block_invoke;
  v16[3] = &unk_1E8254150;
  v13 = dateCopy;
  v17 = v13;
  v14 = laterCopy;
  v18 = v14;
  v15 = displayDateCopy;
  v19 = v15;
  selfCopy = self;
  [database __performWriteWithCaller:v12 usingBlock:v16];
}

uint64_t __61__EDReadLaterPersistence__persistReadLater_date_displayDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"message_global_data" conflictResolution:1];
  v5 = *(a1 + 32);
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  [v4 setObject:v6 forKeyedSubscript:@"read_later_date"];
  if (!v5)
  {
  }

  v7 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "globalMessageID")}];
  v9 = [v7 equalTo:v8];
  [v4 setWhereClause:v9];

  v18 = 0;
  v10 = [v3 executeUpdateStatement:v4 error:&v18];
  v11 = v18;
  if (v10)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E699AE30]) initWithDate:*(a1 + 32)];
    }

    else
    {
      v13 = 0;
    }

    [*(a1 + 40) setReadLater:v13];
    if (v12)
    {
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = [*(a1 + 40) displayDate];
      v16 = [v14 isEqualToDate:v15];

      if ((v16 & 1) == 0)
      {
        [*(a1 + 56) _persistDisplayDate:*(a1 + 48) message:*(a1 + 40) connection:v3];
      }
    }
  }

  else
  {
    [v3 handleError:v11 message:@"Updating read later date"];
  }

  return v10;
}

- (void)_persistDisplayDate:(id)date message:(id)message connection:(id)connection
{
  dateCopy = date;
  messageCopy = message;
  connectionCopy = connection;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDReadLaterPersistence.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"displayDate"}];
  }

  v12 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"messages"];
  [v12 setObject:dateCopy forKeyedSubscript:@"display_date"];
  v13 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(messageCopy, "globalMessageID")}];
  v15 = [v13 equalTo:v14];
  [v12 setWhereClause:v15];

  v18 = 0;
  LODWORD(v15) = [connectionCopy executeUpdateStatement:v12 error:&v18];
  v16 = v18;
  if (v15)
  {
    [messageCopy setDisplayDate:dateCopy];
  }

  else
  {
    [connectionCopy handleError:v16 message:@"Resetting display date after updating read later"];
  }
}

- (id)cloudStorageReadLaterDateForMessage:(id)message displayDate:(id *)date
{
  messageCopy = message;
  cloudStorage = [(EDReadLaterPersistence *)self cloudStorage];
  v8 = [cloudStorage cloudStorageReadLaterDateForMessage:messageCopy displayDate:date];

  return v8;
}

@end