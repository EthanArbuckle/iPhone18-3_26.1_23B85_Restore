@interface ENFileSessionDaemon
- (BOOL)_resetAndAdvanceArchive:(id)archive toPathWithExtension:(id)extension error:(id *)error;
- (ENFileSessionDaemon)init;
- (id)_readTEKBatchAndReturnError:(id *)error;
- (id)readSignaturesAndReturnError:(id *)error;
- (id)readTEKBatchAndReturnError:(id *)error;
- (void)_createTransaction;
- (void)dealloc;
- (void)invalidate;
- (void)prepareNextTEKBatchIfNecessary;
- (void)setBatchSize:(unint64_t)size;
@end

@implementation ENFileSessionDaemon

- (void)dealloc
{
  [(ENFileSessionDaemon *)self invalidate];
  v3.receiver = self;
  v3.super_class = ENFileSessionDaemon;
  [(ENFileSessionDaemon *)&v3 dealloc];
}

- (ENFileSessionDaemon)init
{
  v5.receiver = self;
  v5.super_class = ENFileSessionDaemon;
  v2 = [(ENFileSessionDaemon *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ENFileSessionDaemon *)v2 setBatchSize:0];
  }

  return v3;
}

- (void)setBatchSize:(unint64_t)size
{
  sizeCopy = 256;
  if (size)
  {
    sizeCopy = size;
  }

  self->_batchSize = sizeCopy;
}

- (void)_createTransaction
{
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;
}

- (void)invalidate
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

- (id)readSignaturesAndReturnError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = self->_signatures;
  if (v4)
  {
    v5 = xpc_array_create(0, 0);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = xpc_dictionary_create(0, 0, 0);
          [v11 encodeWithXPCObject:{v12, v15}];
          xpc_array_set_value(v5, 0xFFFFFFFFFFFFFFFFLL, v12);
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else if (error)
  {
    ENErrorF();
    *error = v5 = 0;
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)readTEKBatchAndReturnError:(id *)error
{
  v5 = self->_nextTEKBatch;
  if (v5)
  {
    v6 = v5;
    nextTEKBatch = self->_nextTEKBatch;
    self->_nextTEKBatch = 0;
  }

  else
  {
    v6 = [(ENFileSessionDaemon *)self _readTEKBatchAndReturnError:error];
  }

  return v6;
}

- (id)_readTEKBatchAndReturnError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = self->_file;
  if (v5)
  {
    sha256Data = [(ENFile *)self->_file sha256Data];
    v7 = objc_alloc_init(MEMORY[0x277CBEB10]);
    if (self->_batchSize)
    {
      errorCopy = error;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v34 = 0;
        v10 = [(ENFile *)v5 readTEKAndReturnError:&v34];
        v11 = v34;
        v12 = v11;
        if (!v10)
        {
          break;
        }

        if ([v10 isValid])
        {
          [v7 addObject:v10];
        }

        else
        {
          keyData = [v10 keyData];
          v14 = keyData;
          if (keyData)
          {
            data = keyData;
          }

          else
          {
            data = [MEMORY[0x277CBEA98] data];
          }

          v16 = data;

          if (sha256Data)
          {
            data2 = sha256Data;
          }

          else
          {
            data2 = [MEMORY[0x277CBEA98] data];
          }

          v18 = data2;
          if (gLogCategory__ENFileSessionDaemon <= 90 && (gLogCategory__ENFileSessionDaemon != -1 || _LogCategory_Initialize()))
          {
            [ENFileSessionDaemon _readTEKBatchAndReturnError:];
          }

          ++v8;
        }

        if (++v9 >= self->_batchSize)
        {
          goto LABEL_22;
        }
      }

      if (v11)
      {
        if (errorCopy)
        {
          v28 = v11;
          v19 = 0;
          *errorCopy = v12;
        }

        else
        {
          v19 = 0;
        }

LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_22:
    self->_invalidKeyCount += v8;
    if (self->_flags)
    {
      [v7 enRandomlyShuffle];
    }

    v19 = xpc_array_create(0, 0);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = v7;
    v20 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v12);
          }

          v24 = *(*(&v30 + 1) + 8 * i);
          v25 = xpc_dictionary_create(0, 0, 0);
          [v24 encodeWithXPCObject:v25];
          xpc_array_set_value(v19, 0xFFFFFFFFFFFFFFFFLL, v25);
        }

        v21 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v21);
    }

    goto LABEL_31;
  }

  if (error)
  {
    ENErrorF();
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_32:

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)_resetAndAdvanceArchive:(id)archive toPathWithExtension:(id)extension error:(id *)error
{
  archiveCopy = archive;
  extensionCopy = extension;
  if ([archiveCopy resetAndReturnError:error])
  {
    while (1)
    {
      v9 = [archiveCopy advanceEntryAndReturnError:error];
      if (!v9)
      {
        break;
      }

      if ([archiveCopy entryFileType] == 0x8000)
      {
        entryPath = [archiveCopy entryPath];
        pathExtension = [entryPath pathExtension];
        v12 = [pathExtension isEqualToString:extensionCopy];

        if (v12)
        {
          break;
        }
      }

      if ([archiveCopy endOfArchive])
      {
        if (!error)
        {
          goto LABEL_8;
        }

        ENErrorF();
        *error = LOBYTE(v9) = 0;
        break;
      }
    }
  }

  else
  {
LABEL_8:
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)prepareNextTEKBatchIfNecessary
{
  if (self->_file && !self->_nextTEKBatch)
  {
    v7 = 0;
    v3 = [(ENFileSessionDaemon *)self _readTEKBatchAndReturnError:&v7];
    v4 = v7;
    nextTEKBatch = self->_nextTEKBatch;
    self->_nextTEKBatch = v3;

    if (!self->_nextTEKBatch && gLogCategory__ENFileSessionDaemon <= 90 && (gLogCategory__ENFileSessionDaemon != -1 || _LogCategory_Initialize()))
    {
      v6 = CUPrintNSError();
      LogPrintF_safe();
    }
  }
}

- (void)_readTEKBatchAndReturnError:.cold.1()
{
  v0 = CUPrintNSDataHex();
  v1 = CUPrintNSDataHex();
  LogPrintF_safe();
}

@end