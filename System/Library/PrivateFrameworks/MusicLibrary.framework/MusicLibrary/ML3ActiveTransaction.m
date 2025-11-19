@interface ML3ActiveTransaction
- (ML3ActiveTransaction)init;
- (ML3ActiveTransaction)initWithLibrary:(id)a3 connection:(id)a4 client:(id)a5;
- (ML3DatabaseConnection)connection;
- (id)_relinquishConnection;
- (id)debugDescription;
- (id)description;
@end

@implementation ML3ActiveTransaction

- (ML3DatabaseConnection)connection
{
  [(ML3ActiveTransaction *)self updateLastUsed];
  connection = self->_connection;

  return connection;
}

- (id)_relinquishConnection
{
  connection = self->_connection;
  v4 = connection;
  v5 = self->_connection;
  self->_connection = 0;

  return connection;
}

- (id)debugDescription
{
  v3 = [(ML3Client *)self->_client processID];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(NSUUID *)self->_identifier UUIDString];
  v7 = @"YES";
  if (self->_readOnly)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(ML3Client *)self->_client bundleID];
  if (!self->_pendingCancel)
  {
    v7 = @"NO";
  }

  v10 = [(ML3DatabaseConnection *)self->_connection debugDescription];
  v11 = [v4 stringWithFormat:@"<%@ %p\n\tidentifier:             %@\n\treadonly:               %@\n\toriginating process:    %@ [%d]\n\tpendingCancel:          %@\n\tconnection:             %@\n\tlast used time:         %f", v5, self, v6, v8, v9, v3, v7, v10, *&self->_lastUsedTime];

  return v11;
}

- (id)description
{
  v3 = [(ML3Client *)self->_client processID];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(NSUUID *)self->_identifier UUIDString];
  if (self->_readOnly)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(ML3Client *)self->_client bundleID];
  v9 = v8;
  if (self->_pendingCancel)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v4 stringWithFormat:@"<%@ %p\n\tidentifier:             %@\n\treadonly:               %@\n\toriginating process:    %@ [%d]\n\tpendingCancel:          %@\n\tconnection:             %@\n\tlast used time:         %f", v5, self, v6, v7, v8, v3, v10, self->_connection, *&self->_lastUsedTime];

  return v11;
}

- (ML3ActiveTransaction)initWithLibrary:(id)a3 connection:(id)a4 client:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"ML3ActiveTransaction.m" lineNumber:32 description:@"Tried to create a transaction object with a nil connection."];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"ML3ActiveTransaction.m" lineNumber:33 description:@"Tried to create a transaction object without a library."];

LABEL_3:
  v28.receiver = self;
  v28.super_class = ML3ActiveTransaction;
  v13 = [(ML3ActiveTransaction *)&v28 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_library, a3);
    objc_storeStrong(&v14->_client, a5);
    objc_storeStrong(&v14->_connection, a4);
    v15 = [(ML3DatabaseConnection *)v14->_connection currentTransactionID];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277CCAD78]);
    }

    identifier = v14->_identifier;
    v14->_identifier = v17;

    v14->_pendingCancel = 0;
    v14->_terminable = 1;
    v19 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v14->_lock;
    v14->_lock = v19;

    v21 = objc_alloc(MEMORY[0x277D27F58]);
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Database transaction %@", v14->_identifier];
    v23 = [v21 initWithName:v22];
    xpcTransaction = v14->_xpcTransaction;
    v14->_xpcTransaction = v23;

    [(MSVXPCTransaction *)v14->_xpcTransaction beginTransaction];
    [(ML3ActiveTransaction *)v14 updateLastUsed];
  }

  return v14;
}

- (ML3ActiveTransaction)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE648];
  v5 = NSStringFromSelector(a2);
  v6 = NSStringFromSelector(sel_initWithLibrary_connection_client_);
  [v3 raise:v4 format:{@"%@ is invalid. use %@ instead", v5, v6}];

  return 0;
}

@end