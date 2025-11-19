@interface ML3DatabaseOperation
+ (id)databaseOperationForType:(unint64_t)a3 withLibrary:(id)a4 writer:(id)a5;
- (BOOL)_verifyLibraryConnectionAndAttributesProperties:(id *)a3;
- (ML3ActiveTransaction)transaction;
- (ML3DatabaseOperation)initWithLibrary:(id)a3 writer:(id)a4;
- (id)_operationTypeDescription;
- (id)description;
- (void)main;
@end

@implementation ML3DatabaseOperation

- (id)_operationTypeDescription
{
  v2 = [(ML3DatabaseOperation *)self type];
  if (v2 - 1 > 8)
  {
    return @"<Unknown Write Operation Type>";
  }

  else
  {
    return off_278764FF8[v2 - 1];
  }
}

- (BOOL)_verifyLibraryConnectionAndAttributesProperties:(id *)a3
{
  v5 = [(ML3DatabaseOperation *)self attributes];

  if (v5)
  {
    v6 = [(ML3DatabaseOperation *)self library];

    if (v6)
    {
      v7 = [(ML3DatabaseOperation *)self transaction];

      if (v7)
      {
        v8 = 0;
        goto LABEL_12;
      }

      v12 = @"Operation does not have a transaction set.";
    }

    else
    {
      v12 = @"Operation does not have library reference.";
    }

    v8 = [ML3MediaLibraryWriter writerErrorWithCode:600 description:v12];
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [(ML3DatabaseOperation *)self _operationTypeDescription];
    v11 = [v9 stringWithFormat:@"Missing attributes for operation type: %@", v10];

    v8 = [ML3MediaLibraryWriter writerErrorWithCode:500 description:v11];

    if (!a3)
    {
      goto LABEL_12;
    }
  }

  if (v8)
  {
    v13 = v8;
    *a3 = v8;
  }

LABEL_12:

  return v8 == 0;
}

- (ML3ActiveTransaction)transaction
{
  v27 = *MEMORY[0x277D85DE8];
  transaction = self->_transaction;
  if (!transaction)
  {
    v4 = [(ML3DatabaseOperation *)self options];
    v5 = [v4 objectForKey:@"MLDatabaseOperationOptionTransactionIdentifierKey"];

    WeakRetained = objc_loadWeakRetained(&self->_writer);
    v7 = WeakRetained;
    if (v5)
    {
      v8 = [WeakRetained _transactionForIdentifier:v5];
      v9 = self->_transaction;
      self->_transaction = v8;
    }

    if (!self->_transaction)
    {
      v10 = [(ML3DatabaseOperation *)self options];
      v11 = [v10 objectForKey:@"MLDatabaseOperationOptionReadOnlyKey"];
      v12 = [v11 BOOLValue];

      if (v12)
      {
        v13 = 2;
      }

      else
      {
        v13 = 0;
      }

      library = self->_library;
      v15 = +[ML3Client daemonClient];
      v22 = 0;
      v16 = [v7 beginTransactionForLibrary:library withClient:v15 options:v13 error:&v22];
      v17 = v22;
      v18 = self->_transaction;
      self->_transaction = v16;

      [(ML3ActiveTransaction *)self->_transaction setInUseByOperation:1];
      if (self->_transaction)
      {
        self->_beganNewTransaction = 1;
      }

      else
      {
        v19 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v24 = self;
          v25 = 2114;
          v26 = v17;
          _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_ERROR, "Error creating new transaction for operation %{public}@. %{public}@", buf, 0x16u);
        }

        [(ML3DatabaseOperation *)self setError:v17];
      }
    }

    transaction = self->_transaction;
  }

  [(ML3ActiveTransaction *)transaction updateLastUsed];
  v20 = self->_transaction;

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ML3DatabaseOperation *)self _operationTypeDescription];
  v6 = [v3 stringWithFormat:@"<%@ %p operationType = %@, attributes = %@, _transaction = %@, options = %@>", v4, self, v5, self->_attributes, self->_transaction, self->_options];

  return v6;
}

- (void)main
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v3 = [(ML3DatabaseOperation *)self _verifyLibraryConnectionAndAttributesProperties:&v15];
  v4 = v15;
  if (v3)
  {
    if (([(ML3DatabaseOperation *)self isCancelled]& 1) != 0)
    {
LABEL_3:
      v3 = 0;
      goto LABEL_11;
    }

    v14 = v4;
    v3 = [(ML3DatabaseOperation *)self _execute:&v14];
    v5 = v14;

    if (v3)
    {
      if ([(ML3DatabaseOperation *)self isCancelled])
      {
        v4 = [ML3MediaLibraryWriter writerErrorWithCode:400 description:@"Operation cancelled."];

        v6 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v17 = self;
          v18 = 2114;
          v19 = v4;
          _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "Not running operation %{public}@ - error=%{public}@", buf, 0x16u);
        }

        goto LABEL_3;
      }

      v3 = 1;
    }

    v4 = v5;
  }

LABEL_11:
  if (self->_beganNewTransaction)
  {
    WeakRetained = objc_loadWeakRetained(&self->_writer);
    v8 = [(ML3ActiveTransaction *)self->_transaction identifier];
    v13 = 0;
    v3 = [WeakRetained endTransaction:v8 shouldCommit:v3 error:&v13];
    v9 = v13;

    if ((v3 & 1) == 0)
    {
      v10 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v17 = self;
        v18 = 2114;
        v19 = v9;
        _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "Failed to end transaction for operation %{public}@. %{public}@", buf, 0x16u);
      }
    }

    transaction = self->_transaction;
    self->_transaction = 0;
  }

  else
  {
    v9 = 0;
  }

  [(ML3DatabaseOperation *)self setSuccess:v3];
  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = v9;
  }

  [(ML3DatabaseOperation *)self setError:v12];
}

- (ML3DatabaseOperation)initWithLibrary:(id)a3 writer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ML3DatabaseOperation;
  v9 = [(ML3DatabaseOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_library, a3);
    v10->_type = 0;
    objc_storeWeak(&v10->_writer, v8);
  }

  return v10;
}

+ (id)databaseOperationForType:(unint64_t)a3 withLibrary:(id)a4 writer:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3 - 1 <= 8 && (v9 = objc_opt_class()) != 0)
  {
    v10 = [[v9 alloc] initWithLibrary:v7 writer:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end