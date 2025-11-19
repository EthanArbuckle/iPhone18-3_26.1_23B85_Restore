@interface EDReadLaterPersistence
- (EDReadLaterPersistence)initWithDatabase:(id)a3 hookRegistry:(id)a4;
- (id)cloudStorageReadLaterDateForMessage:(id)a3 displayDate:(id *)a4;
- (void)_persistDisplayDate:(id)a3 message:(id)a4 connection:(id)a5;
- (void)_persistReadLater:(id)a3 date:(id)a4 displayDate:(id)a5;
- (void)persistReadLaterForMessage:(id)a3 date:(id)a4 displayDate:(id)a5;
- (void)removeReadLaterForMessage:(id)a3;
- (void)scheduleRecurringActivity;
@end

@implementation EDReadLaterPersistence

- (EDReadLaterPersistence)initWithDatabase:(id)a3 hookRegistry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EDReadLaterPersistence;
  v9 = [(EDReadLaterPersistence *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, a3);
    objc_storeStrong(&v10->_hookRegistry, a4);
  }

  return v10;
}

- (void)scheduleRecurringActivity
{
  v3 = [EDReadLaterCloudStorage alloc];
  v6 = [(EDReadLaterPersistence *)self hookRegistry];
  v4 = [(EDReadLaterCloudStorage *)v3 initWithHookRegistry:?];
  cloudStorage = self->_cloudStorage;
  self->_cloudStorage = v4;
}

- (void)persistReadLaterForMessage:(id)a3 date:(id)a4 displayDate:(id)a5
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"EDReadLaterPersistence.m" lineNumber:48 description:@"Expect a non-nil date"];

  if (!v11)
  {
LABEL_3:
    v11 = [v15 dateReceived];
  }

LABEL_4:
  v12 = [v9 ec_integerDate];
  v13 = [v11 ec_integerDate];
  [(EDReadLaterPersistence *)self _persistReadLater:v15 date:v12 displayDate:v13];
}

- (void)removeReadLaterForMessage:(id)a3
{
  v6 = a3;
  v4 = [v6 dateReceived];
  v5 = [v4 ec_integerDate];
  [(EDReadLaterPersistence *)self _persistReadLater:v6 date:0 displayDate:v5];
}

- (void)_persistReadLater:(id)a3 date:(id)a4 displayDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(EDReadLaterPersistence *)self database];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDReadLaterPersistence _persistReadLater:date:displayDate:]"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__EDReadLaterPersistence__persistReadLater_date_displayDate___block_invoke;
  v16[3] = &unk_1E8254150;
  v13 = v9;
  v17 = v13;
  v14 = v8;
  v18 = v14;
  v15 = v10;
  v19 = v15;
  v20 = self;
  [v11 __performWriteWithCaller:v12 usingBlock:v16];
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

- (void)_persistDisplayDate:(id)a3 message:(id)a4 connection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"EDReadLaterPersistence.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"displayDate"}];
  }

  v12 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"messages"];
  [v12 setObject:v9 forKeyedSubscript:@"display_date"];
  v13 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v10, "globalMessageID")}];
  v15 = [v13 equalTo:v14];
  [v12 setWhereClause:v15];

  v18 = 0;
  LODWORD(v15) = [v11 executeUpdateStatement:v12 error:&v18];
  v16 = v18;
  if (v15)
  {
    [v10 setDisplayDate:v9];
  }

  else
  {
    [v11 handleError:v16 message:@"Resetting display date after updating read later"];
  }
}

- (id)cloudStorageReadLaterDateForMessage:(id)a3 displayDate:(id *)a4
{
  v6 = a3;
  v7 = [(EDReadLaterPersistence *)self cloudStorage];
  v8 = [v7 cloudStorageReadLaterDateForMessage:v6 displayDate:a4];

  return v8;
}

@end