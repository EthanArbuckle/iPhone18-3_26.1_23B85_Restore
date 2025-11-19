@interface MLDDiagnostic
- (BOOL)writeToFile:(id)a3 error:(id *)a4;
- (MLDDiagnostic)initWithReason:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)_copyWithZone:(_NSZone *)a3 usingConcreteClass:(Class)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_appendDescribableArray:(id)a3 toString:(id)a4 withTitle:(id)a5 indentLevel:(unsigned int)a6;
@end

@implementation MLDDiagnostic

- (void)_appendDescribableArray:(id)a3 toString:(id)a4 withTitle:(id)a5 indentLevel:(unsigned int)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  for (i = objc_alloc_init(NSMutableString); a6; --a6)
  {
    [i appendString:@"    "];
  }

  [v10 appendFormat:@"%@%@:", i, v11];
  if ([v9 count])
  {
    v20 = v11;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        v17 = 0;
        do
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v21 + 1) + 8 * v17);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v18 longDescription];
          }

          else
          {
            [v18 description];
          }
          v19 = ;
          [v10 appendFormat:@"\n%@%@", i, v19];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }

    v11 = v20;
  }

  else
  {
    [v10 appendFormat:@"\n%@(None)", i];
  }

  [v10 appendString:@"\n"];
}

- (id)_copyWithZone:(_NSZone *)a3 usingConcreteClass:(Class)a4
{
  v5 = objc_alloc_init(a4);
  objc_storeStrong(v5 + 1, self->_date);
  *(v5 + 16) = self->_locked;
  v6 = [(NSArray *)self->_activeClients copy];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSArray *)self->_activeXPCTransactions copy];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSArray *)self->_databaseFileDiagnostics copy];
  v11 = v5[5];
  v5[5] = v10;

  *(v5 + 48) = self->_writerSuspended;
  v12 = [(NSArray *)self->_activeTransactions copy];
  v13 = v5[7];
  v5[7] = v12;

  v14 = [(NSArray *)self->_enqueuedConcurrentOperations copy];
  v15 = v5[8];
  v5[8] = v14;

  v16 = [(NSArray *)self->_enqueuedSerialOperations copy];
  v17 = v5[9];
  v5[9] = v16;

  v18 = [(NSArray *)self->_enqueuedLimitedQueueOperations copy];
  v19 = v5[10];
  v5[10] = v18;

  objc_storeStrong(v5 + 11, self->_lastImportError);
  v20 = [(NSArray *)self->_activeImportOperations copy];
  v21 = v5[12];
  v5[12] = v20;

  v22 = [(NSArray *)self->_suspendedImportOperations copy];
  v23 = v5[13];
  v5[13] = v22;

  v24 = [(NSDictionary *)self->_libraryConnectionDiagnostics copy];
  v25 = v5[14];
  v5[14] = v24;

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MLDDiagnostic *)self _copyWithZone:a3 usingConcreteClass:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MLDDiagnostic *)self _copyWithZone:a3 usingConcreteClass:v5];
}

- (BOOL)writeToFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MLDDiagnostic *)self description];
  LOBYTE(a4) = [v7 writeToFile:v6 atomically:1 encoding:4 error:a4];

  return a4;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendString:@"MediaLibrary Diagnostic\n"];
  [v3 appendFormat:@"Collected at %@\n", self->_date];
  if (self->_reason)
  {
    [v3 appendFormat:@"Reason: %@\n", self->_reason];
  }

  [v3 appendString:@"\n"];
  if (self->_locked)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"Locked: %@\n\n", v4];
  [(MLDDiagnostic *)self _appendDescribableArray:self->_activeClients toString:v3 withTitle:@"Active Clients"];
  [v3 appendString:@"\n"];
  [(MLDDiagnostic *)self _appendDescribableArray:self->_activeXPCTransactions toString:v3 withTitle:@"Active XPC Transactions"];
  [v3 appendString:@"\n"];
  [(MLDDiagnostic *)self _appendDescribableArray:self->_databaseFileDiagnostics toString:v3 withTitle:@"Database Files"];
  [v3 appendString:@"\n"];
  if (self->_writerSuspended)
  {
    v5 = @"SUSPENDED";
  }

  else
  {
    v5 = @"ACTIVE";
  }

  [v3 appendFormat:@"Writer State: %@\n\n", v5];
  [(MLDDiagnostic *)self _appendDescribableArray:self->_activeTransactions toString:v3 withTitle:@"Active Transactions"];
  [v3 appendString:@"\n"];
  [(MLDDiagnostic *)self _appendDescribableArray:self->_enqueuedConcurrentOperations toString:v3 withTitle:@"Enqueued Concurrent Operations"];
  [v3 appendString:@"\n"];
  [(MLDDiagnostic *)self _appendDescribableArray:self->_enqueuedSerialOperations toString:v3 withTitle:@"Enqueued Serial Operations"];
  [v3 appendString:@"\n"];
  [(MLDDiagnostic *)self _appendDescribableArray:self->_enqueuedLimitedQueueOperations toString:v3 withTitle:@"Enqueue Limited Size Queue Operatons"];
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"Last Importer Error: %@\n\n", self->_lastImportError];
  [(MLDDiagnostic *)self _appendDescribableArray:self->_activeImportOperations toString:v3 withTitle:@"Active Import Operations"];
  [v3 appendString:@"\n"];
  [(MLDDiagnostic *)self _appendDescribableArray:self->_suspendedImportOperations toString:v3 withTitle:@"Suspended Import Operations"];
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"Database Connections:\n"];
  libraryConnectionDiagnostics = self->_libraryConnectionDiagnostics;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100007420;
  v10[3] = &unk_1000310C0;
  v7 = v3;
  v11 = v7;
  v12 = self;
  [(NSDictionary *)libraryConnectionDiagnostics enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v7;

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  date = self->_date;
  v17[0] = @"_date";
  v17[1] = @"_reason";
  reason = self->_reason;
  if (!reason)
  {
    reason = @"@";
  }

  v18[0] = date;
  v18[1] = reason;
  v17[2] = @"_locked";
  v5 = [NSNumber numberWithBool:self->_locked];
  v19 = *&self->_activeClients;
  v17[3] = @"_activeClients";
  v17[4] = @"_activeXPCTransactions";
  databaseFileDiagnostics = self->_databaseFileDiagnostics;
  v18[2] = v5;
  v20 = databaseFileDiagnostics;
  v17[5] = @"_databaseFileDiagnostics";
  v17[6] = @"_writerSuspended";
  v7 = [NSNumber numberWithBool:self->_writerSuspended];
  v21 = v7;
  v17[7] = @"_activeTransactions";
  v8 = [(NSArray *)self->_activeTransactions debugDescription];
  v23 = *&self->_enqueuedConcurrentOperations;
  v17[8] = @"_enqueuedConcurrentOperations";
  v17[9] = @"_enqueuedSerialOperations";
  enqueuedLimitedQueueOperations = self->_enqueuedLimitedQueueOperations;
  lastImportError = self->_lastImportError;
  v22 = v8;
  v24 = enqueuedLimitedQueueOperations;
  v17[10] = @"_enqueuedLimitedSizeQueueOperations";
  v17[11] = @"_lastImportError";
  if (lastImportError)
  {
    v11 = lastImportError;
  }

  else
  {
    v11 = @"@";
  }

  activeImportOperations = self->_activeImportOperations;
  suspendedImportOperations = self->_suspendedImportOperations;
  v25 = v11;
  v26 = activeImportOperations;
  v17[12] = @"_activeImportOperations";
  v17[13] = @"_suspendedImportOperations";
  v17[14] = @"_libraryConnectionDiagnostics";
  libraryConnectionDiagnostics = self->_libraryConnectionDiagnostics;
  v27 = suspendedImportOperations;
  v28 = libraryConnectionDiagnostics;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:15];

  return v15;
}

- (MLDDiagnostic)initWithReason:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MLDDiagnostic;
  v5 = [(MLDDiagnostic *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSDate);
    date = v5->_date;
    v5->_date = v6;

    v8 = [v4 copy];
    reason = v5->_reason;
    v5->_reason = v8;
  }

  return v5;
}

@end