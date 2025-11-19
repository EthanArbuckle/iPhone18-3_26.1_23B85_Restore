@interface CCDataResourceWriter
+ (BOOL)incrementRowsModified:(unint64_t)a3 database:(id)a4;
- (BOOL)_cleanupDatabaseIfRequired;
- (BOOL)_createDatabaseWithLocalDeviceSite:(id)a3;
- (BOOL)_didCompleteMaintenance:(id *)a3 shouldDefer:(id)a4;
- (BOOL)_executeDatabaseTransactionUsingBlock:(id)a3;
- (BOOL)_removeResource:(id *)a3;
- (BOOL)_tombstoneResource:(id *)a3;
- (BOOL)initializeDatabaseWithLocalDeviceSite:(id)a3;
- (BOOL)performMaintenance:(id *)a3 shouldDefer:(id)a4;
- (BOOL)removeResource:(id *)a3;
- (BOOL)submitDatabaseTransactionUsingBlock:(id)a3;
- (CCDataResourceWriter)initWithDataResource:(id)a3 accessAssertion:(id)a4;
- (id)_loadDatabase:(id *)a3;
- (id)_temporaryDirectoryURLWithError:(id *)a3;
- (id)description;
- (void)_cleanupDatabaseIfRequired;
@end

@implementation CCDataResourceWriter

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CCDataResourceWriter;
  v4 = [(CCDataResourceWriter *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %@", v4, self->_dataResource];

  return v5;
}

- (CCDataResourceWriter)initWithDataResource:(id)a3 accessAssertion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = CCDataResourceWriter;
  v9 = [(CCDataResourceWriter *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataResource, a3);
    objc_storeStrong(&v10->_accessAssertion, a4);
    v11 = [(CCDataResourceWriter *)v10 description];
    v12 = [v11 cStringUsingEncoding:4];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(v12, v13);
    queue = v10->_queue;
    v10->_queue = v14;
  }

  return v10;
}

- (BOOL)initializeDatabaseWithLocalDeviceSite:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CCDataResourceWriter_initializeDatabaseWithLocalDeviceSite___block_invoke;
  block[3] = &unk_1E7C8B9D0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

uint64_t __62__CCDataResourceWriter_initializeDatabaseWithLocalDeviceSite___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _createDatabaseWithLocalDeviceSite:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)removeResource:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CCDataResourceWriter_removeResource___block_invoke;
  block[3] = &unk_1E7C8B9F8;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(queue, block);
  v5 = v10[5];
  if (v5)
  {
    CCSetError(a3, v5);
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __39__CCDataResourceWriter_removeResource___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _removeResource:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (BOOL)submitDatabaseTransactionUsingBlock:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CCDataResourceWriter_submitDatabaseTransactionUsingBlock___block_invoke;
  block[3] = &unk_1E7C8BA20;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

uint64_t __60__CCDataResourceWriter_submitDatabaseTransactionUsingBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _executeDatabaseTransactionUsingBlock:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)performMaintenance:(id *)a3 shouldDefer:(id)a4
{
  v6 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CCDataResourceWriter_performMaintenance_shouldDefer___block_invoke;
  v11[3] = &unk_1E7C8BA48;
  v13 = &v21;
  v14 = &v15;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  dispatch_sync(queue, v11);
  if (a3)
  {
    *a3 = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __55__CCDataResourceWriter_performMaintenance_shouldDefer___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 56) + 8);
  obj = *(v2 + 40);
  v3 = [*(a1 + 32) _didCompleteMaintenance:&obj shouldDefer:*(a1 + 40)];
  objc_storeStrong((v2 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (id)_temporaryDirectoryURLWithError:(id *)a3
{
  p_dataResource = &self->_dataResource;
  dataResource = self->_dataResource;
  v23 = 0;
  v6 = [(CCDataResource *)dataResource setWithError:&v23];
  v7 = v23;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v12 = CCTypeIdentifierRegistryBridge();
    v13 = [v12 setIdentifierForItemType:{objc_msgSend(v6, "itemType")}];

    if (v13)
    {
      v14 = MEMORY[0x1E698E9C8];
      v15 = [(CCDataResource *)*p_dataResource container];
      v16 = [v14 biomeTemporaryDirectoryForContainer:v15];

      v17 = objc_alloc(MEMORY[0x1E696AEC0]);
      v18 = objc_opt_new();
      v19 = [v18 UUIDString];
      v20 = [v17 initWithFormat:@"%@-%@-%@", @".tmp.", v13, v19];

      v21 = [v16 stringByAppendingPathComponent:v20];
      v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v21];
    }

    else
    {
      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CCDataResourceWriter _temporaryDirectoryURLWithError:v6];
      }

      v11 = 0;
    }
  }

  else
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CCDataResourceWriter _temporaryDirectoryURLWithError:?];
    }

    CCSetError(a3, v8);
    v11 = 0;
  }

  return v11;
}

- (BOOL)_createDatabaseWithLocalDeviceSite:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v47 = 0;
  v5 = [(CCDataResourceWriter *)self _temporaryDirectoryURLWithError:&v47];
  v6 = v47;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [CCDataResource databaseURLFromParentDirectoryURL:v5];
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      dataResource = self->_dataResource;
      v11 = [v8 path];
      *buf = 138412546;
      v49 = dataResource;
      v50 = 2112;
      v51 = v11;
      _os_log_impl(&dword_1B6DB2000, v9, OS_LOG_TYPE_DEFAULT, "(%@) Creating database in temporary path: %@", buf, 0x16u);
    }

    v12 = +[CCDatabaseConnection connectionToDatabaseAtURL:dataProtectionClass:openMode:accessAssertion:](CCDatabaseConnection, "connectionToDatabaseAtURL:dataProtectionClass:openMode:accessAssertion:", v8, [objc_opt_class() defaultDataProtectionClass], 3, self->_accessAssertion);
    v46 = 0;
    v13 = [v12 openWithError:&v46];
    v14 = v46;
    v7 = v14;
    if (v13)
    {
      v45 = v14;
      v15 = [v12 beginTransactionWithError:&v45];
      v16 = v45;

      if ((v15 & 1) == 0)
      {
        v18 = __biome_log_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
        }

        v35 = 0;
        v7 = v16;
        goto LABEL_35;
      }

      v44 = v16;
      v17 = [v12 prepareWithError:&v44];
      v7 = v44;

      if (v17)
      {
        v18 = [CCDatabaseUpdater updaterForDatabase:v12];
        if (([v18 registerLocalDeviceSite:v4]& 1) != 0)
        {
          v43 = v7;
          v19 = [v12 commitTransactionWithError:&v43];
          v20 = v43;

          if ((v19 & 1) == 0)
          {
            v34 = __biome_log_for_category();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
            }

            goto LABEL_33;
          }

          v42 = v20;
          v21 = [v12 closeWithError:&v42];
          v7 = v42;

          if (v21)
          {
            v22 = [MEMORY[0x1E696AC08] defaultManager];
            v24 = self->_dataResource;
            p_dataResource = &self->_dataResource;
            v25 = [(CCDataResource *)v24 resourceDirectoryURL];
            v26 = [v25 path];
            LODWORD(v39) = [v22 fileExistsAtPath:v26];

            if (v39)
            {
LABEL_14:
              v29 = [v5 path];
              v40 = [v29 cStringUsingEncoding:4];

              v30 = [(CCDataResource *)*p_dataResource databaseDirectoryURL];
              v31 = [v30 path];
              v32 = [v31 cStringUsingEncoding:4];

              LODWORD(v31) = renamex_np(v40, v32, 4u);
              v33 = __biome_log_for_category();
              v34 = v33;
              if (!v31)
              {
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = *p_dataResource;
                  *buf = 138412546;
                  v49 = v38;
                  v50 = 2080;
                  v51 = v32;
                  _os_log_impl(&dword_1B6DB2000, v34, OS_LOG_TYPE_DEFAULT, "(%@) Successfully renamed temporary directory and moved to final path: %s", buf, 0x16u);
                }

                v35 = 1;
                goto LABEL_34;
              }

              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
              }

              goto LABEL_30;
            }

            v27 = [MEMORY[0x1E696AC08] defaultManager];
            v28 = [(CCDataResource *)*p_dataResource resourceDirectoryURL];
            v41 = v7;
            LODWORD(v39) = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v41];
            v20 = v41;

            if (v39)
            {
              v7 = v20;
              goto LABEL_14;
            }

            v34 = __biome_log_for_category();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:?];
            }

LABEL_33:
            v35 = 0;
            v7 = v20;
            goto LABEL_34;
          }

          v34 = __biome_log_for_category();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
          }
        }

        else
        {
          v34 = __biome_log_for_category();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:v34];
          }
        }

LABEL_30:
        v35 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
      }
    }

    else
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
      }
    }

    v35 = 0;
LABEL_35:

    goto LABEL_36;
  }

  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
  }

  v35 = 0;
LABEL_36:

  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

- (BOOL)_removeResource:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v5 = [(CCDataResourceWriter *)self _temporaryDirectoryURLWithError:&v23];
  v6 = v23;
  v7 = v6;
  if (!v5 || v6)
  {
    CCSetError(a3, v6);
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CCDataResourceWriter _removeResource:];
    }

    goto LABEL_9;
  }

  v8 = [v5 path];
  v9 = [v8 cStringUsingEncoding:4];

  v10 = [(CCDataResource *)self->_dataResource databaseDirectoryURL];
  v11 = [v10 path];
  v12 = [v11 cStringUsingEncoding:4];

  LODWORD(v11) = renamex_np(v12, v9, 4u);
  v13 = __biome_log_for_category();
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
    }

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    CCSetError(a3, v15);
    v7 = 0;
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = v12;
    v26 = 2080;
    v27 = v9;
    _os_log_impl(&dword_1B6DB2000, v14, OS_LOG_TYPE_DEFAULT, "Successfully renamed directory at path %s into %s", buf, 0x16u);
  }

  v19 = [MEMORY[0x1E696AC08] defaultManager];
  v22 = 0;
  v20 = [v19 removeItemAtURL:v5 error:&v22];
  v7 = v22;

  v21 = __biome_log_for_category();
  v15 = v21;
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v5;
      _os_log_impl(&dword_1B6DB2000, v15, OS_LOG_TYPE_DEFAULT, "Successfully removed folder at %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [CCDataResourceWriter _removeResource:];
  }

  v16 = 1;
LABEL_10:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_tombstoneResource:(id *)a3
{
  dataResource = self->_dataResource;
  v5 = objc_opt_new();
  LOBYTE(a3) = [(CCDataResource *)dataResource markTombstoned:v5 error:a3];

  return a3;
}

- (id)_loadDatabase:(id *)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(CCDataResource *)self->_dataResource databaseFileExists:a3])
  {
    v5 = [(CCDataResource *)self->_dataResource databaseURL];
    v6 = +[CCDatabaseConnection connectionToDatabaseAtURL:dataProtectionClass:openMode:accessAssertion:](CCDatabaseConnection, "connectionToDatabaseAtURL:dataProtectionClass:openMode:accessAssertion:", v5, [objc_opt_class() defaultDataProtectionClass], 2, self->_accessAssertion);

    if ([v6 openWithError:a3])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_executeDatabaseTransactionUsingBlock:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v25 = 0;
  v5 = [(CCDataResourceWriter *)self _loadDatabase:&v25];
  v6 = v25;
  v7 = v6;
  if (!v5)
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CCDataResourceWriter _executeDatabaseTransactionUsingBlock:?];
    }

LABEL_17:
    v14 = 0;
    goto LABEL_22;
  }

  v24 = v6;
  v8 = [v5 beginTransactionWithError:&v24];
  v9 = v24;

  if (v8)
  {
    v23 = 0;
    if (v4[2](v4, v5, &v23) && [objc_opt_class() incrementRowsModified:v23 database:v5])
    {
      v22 = v9;
      v10 = [v5 commitTransactionWithError:&v22];
      v7 = v22;

      v11 = __biome_log_for_category();
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          dataResource = self->_dataResource;
          *buf = 138412290;
          v27 = dataResource;
          _os_log_impl(&dword_1B6DB2000, v12, OS_LOG_TYPE_DEFAULT, "(%@) Successfully committed database transaction", buf, 0xCu);
        }

        v14 = 1;
LABEL_21:

        goto LABEL_22;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CCDataResourceWriter _executeDatabaseTransactionUsingBlock:?];
      }
    }

    else
    {
      v7 = v9;
    }

    v17 = v7;
    v21 = v7;
    v18 = [v5 rollbackTransactionWithError:&v21];
    v7 = v21;

    if ((v18 & 1) == 0)
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CCDataResourceWriter _executeDatabaseTransactionUsingBlock:?];
      }

      v14 = 0;
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v16 = __biome_log_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [CCDataResourceWriter _executeDatabaseTransactionUsingBlock:?];
  }

  v14 = 0;
  v7 = v9;
LABEL_22:

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_cleanupDatabaseIfRequired
{
  v32 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v25 = 0;
  v3 = [(CCDataResourceWriter *)self _loadDatabase:&v25];
  v4 = v25;
  if (v3)
  {
    v24 = v4;
    v5 = [CCDatabaseUpdater selectRowsModifiedCountInDatabase:v3 error:&v24];
    v6 = v24;

    if (v6)
    {
      v7 = __biome_log_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CCDataResourceWriter *)self _cleanupDatabaseIfRequired];
      }

      goto LABEL_26;
    }

    v9 = [v5 unsignedIntegerValue];
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      dataResource = self->_dataResource;
      v12 = @"not ";
      *buf = 138412802;
      if (v9 > 0x3E8)
      {
        v12 = &stru_1F2EBB700;
      }

      v27 = dataResource;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_1B6DB2000, v10, OS_LOG_TYPE_DEFAULT, "(%@) Database cleanup is %@ required. %@ rows have been modified since last cleanup", buf, 0x20u);
    }

    if (v9 < 0x3E9)
    {
      v16 = 0;
    }

    else
    {
      v23 = 0;
      v13 = [v3 cleanup:&v23];
      v14 = v23;
      if (!v13)
      {
        v17 = __biome_log_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [(CCDataResourceWriter *)self _cleanupDatabaseIfRequired];
        }

        v16 = v14;
        goto LABEL_22;
      }

      v22 = v14;
      v15 = [CCDatabaseUpdater upsertRowsModified:0 database:v3 error:&v22];
      v16 = v22;

      if (!v15)
      {
        v17 = __biome_log_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [(CCDataResourceWriter *)self _cleanupDatabaseIfRequired];
        }

LABEL_22:

        v8 = 0;
        goto LABEL_23;
      }
    }

    v8 = 1;
LABEL_23:
    v21 = v16;
    v18 = [v3 closeWithError:&v21];
    v6 = v21;

    if (v18)
    {
LABEL_27:
      v4 = v6;
      goto LABEL_28;
    }

    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CCDataResourceWriter *)self _cleanupDatabaseIfRequired];
    }

LABEL_26:

    v8 = 0;
    goto LABEL_27;
  }

  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CCDataResourceWriter _executeDatabaseTransactionUsingBlock:?];
  }

  v8 = 0;
LABEL_28:

  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_didCompleteMaintenance:(id *)a3 shouldDefer:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  p_dataResource = &self->_dataResource;
  dataResource = self->_dataResource;
  v38 = 0;
  v9 = [(CCDataResource *)dataResource databaseFileExists:&v38];
  v10 = v38;
  v11 = __biome_log_for_category();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      v13 = *p_dataResource;
      *buf = 138412290;
      *&buf[4] = v13;
      _os_log_impl(&dword_1B6DB2000, v11, OS_LOG_TYPE_DEFAULT, "(%@) Starting data resource-specific maintenance", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v42 = 0;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __60__CCDataResourceWriter__didCompleteMaintenance_shouldDefer___block_invoke;
    v35[3] = &unk_1E7C8BA70;
    v14 = v6;
    v36 = v14;
    v37 = buf;
    if (![(CCDataResourceWriter *)self _executeDatabaseTransactionUsingBlock:v35])
    {
      v20 = __biome_log_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CCDataResourceWriter _didCompleteMaintenance:? shouldDefer:?];
      }

      v19 = 0;
      v15 = v36;
      goto LABEL_30;
    }

    if (v14 && (v14[2].isa)(v14))
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *p_dataResource;
        *v39 = 138412290;
        v40 = v16;
        v17 = "(%@) Aborting maintenance due to deferral signal";
LABEL_28:
        _os_log_impl(&dword_1B6DB2000, v15, OS_LOG_TYPE_DEFAULT, v17, v39, 0xCu);
        goto LABEL_29;
      }

      goto LABEL_29;
    }

    if (![(CCDataResourceWriter *)self _cleanupDatabaseIfRequired])
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CCDataResourceWriter _didCompleteMaintenance:? shouldDefer:?];
      }

      goto LABEL_29;
    }

    if (![(CCDataResourceWriter *)self _executeDatabaseTransactionUsingBlock:&__block_literal_global_8])
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *p_dataResource;
        *v39 = 138412290;
        v40 = v25;
        v17 = "(%@) Aborting maintenance after failing to record date";
        goto LABEL_28;
      }

LABEL_29:
      v19 = 0;
LABEL_30:

      _Block_object_dispose(buf, 8);
      goto LABEL_31;
    }

    if (*(*&buf[8] + 24) == 1)
    {
      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *p_dataResource;
        *v39 = 138412290;
        v40 = v22;
        _os_log_impl(&dword_1B6DB2000, v21, OS_LOG_TYPE_DEFAULT, "(%@) Tombstoning set after maintenance removed all remaining state", v39, 0xCu);
      }

      v34 = 0;
      v23 = [(CCDataResourceWriter *)self _tombstoneResource:&v34];
      v15 = v34;
      if (!v23)
      {
        v24 = __biome_log_for_category();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [CCDataResourceWriter _didCompleteMaintenance:? shouldDefer:?];
        }

        goto LABEL_29;
      }
    }

    else
    {
      if (!a3)
      {
LABEL_36:
        v15 = __biome_log_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *p_dataResource;
          *v39 = 138412290;
          v40 = v31;
          _os_log_impl(&dword_1B6DB2000, v15, OS_LOG_TYPE_DEFAULT, "(%@) Finished database maintenance", v39, 0xCu);
        }

        v19 = 1;
        goto LABEL_30;
      }

      v28 = *p_dataResource;
      v33 = 0;
      v29 = [v28 setWithError:&v33];
      v15 = v33;
      if (!v29)
      {
        v32 = __biome_log_for_category();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [CCDataResourceWriter _didCompleteMaintenance:? shouldDefer:?];
        }

        goto LABEL_29;
      }

      v30 = v29;
      *a3 = v29;
    }

    goto LABEL_36;
  }

  if (v12)
  {
    v18 = *p_dataResource;
    *buf = 138412546;
    *&buf[4] = v18;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_1B6DB2000, v11, OS_LOG_TYPE_DEFAULT, "(%@) Database not found: %@", buf, 0x16u);
  }

  v19 = 1;
LABEL_31:

  v26 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t __60__CCDataResourceWriter__didCompleteMaintenance_shouldDefer___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [CCDatabaseUpdater updaterForDatabase:a2];
  if ([v5 deleteExpiredRemoteDeviceState:*(a1 + 32) shouldTombstoneSet:*(*(a1 + 40) + 8) + 24] && objc_msgSend(v5, "compactContiguousRunsOfDeletes:", *(a1 + 32)))
  {
    *a3 = [v5 modifiedRowCount];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __60__CCDataResourceWriter__didCompleteMaintenance_shouldDefer___block_invoke_27(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v8 = 0;
  v4 = [CCDatabaseUpdater upsertLastMaintenanceDate:v3 database:v2 error:&v8];

  v5 = v8;
  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__CCDataResourceWriter__didCompleteMaintenance_shouldDefer___block_invoke_27_cold_1();
    }
  }

  return v4;
}

+ (BOOL)incrementRowsModified:(unint64_t)a3 database:(id)a4
{
  v5 = a4;
  v15 = 0;
  v6 = [CCDatabaseUpdater selectRowsModifiedCountInDatabase:v5 error:&v15];
  v7 = v15;
  v8 = &unk_1F2EC9408;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  if (v7)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CCDataResourceWriter incrementRowsModified:database:];
    }

LABEL_10:

    v12 = 0;
    goto LABEL_11;
  }

  v14 = 0;
  v11 = +[CCDatabaseUpdater upsertRowsModified:database:error:](CCDatabaseUpdater, "upsertRowsModified:database:error:", [v9 unsignedIntegerValue] + a3, v5, &v14);
  v7 = v14;
  if (!v11)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CCDataResourceWriter incrementRowsModified:database:];
    }

    goto LABEL_10;
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (void)_temporaryDirectoryURLWithError:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 itemType];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_temporaryDirectoryURLWithError:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v1, v2, "Could not obtain set from data resource: %@ with error: %@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_createDatabaseWithLocalDeviceSite:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Could not open database connection with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_createDatabaseWithLocalDeviceSite:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Could not begin database transaction with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_createDatabaseWithLocalDeviceSite:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Could not prepare database connection with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_createDatabaseWithLocalDeviceSite:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Could not commit database transaction with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_createDatabaseWithLocalDeviceSite:.cold.6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Could not close database connection with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_createDatabaseWithLocalDeviceSite:(id *)a1 .cold.7(id *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*a1 resourceDirectoryURL];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_createDatabaseWithLocalDeviceSite:.cold.8()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_createDatabaseWithLocalDeviceSite:.cold.9()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Could not resolve temporary database path with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_removeResource:.cold.2()
{
  OUTLINED_FUNCTION_7_0();
  v6 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69C5D08] isDeviceUnlocked];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_removeResource:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Could not resolve temporary directory path with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_executeDatabaseTransactionUsingBlock:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v1, v2, "(%@) Failed to begin transaction: %@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_executeDatabaseTransactionUsingBlock:(uint64_t)a1 .cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v1, v2, "(%@) Failed to commit transaction: %@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_executeDatabaseTransactionUsingBlock:(uint64_t)a1 .cold.3(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v1, v2, "(%@) Failed to rollback transaction: %@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_executeDatabaseTransactionUsingBlock:(uint64_t)a1 .cold.4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v1, v2, "(%@) Failed to open database: %@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_cleanupDatabaseIfRequired
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v1, v2, "(%@) Failed to reset rows modified in database: %@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_didCompleteMaintenance:(uint64_t *)a1 shouldDefer:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v1, v2, "(%@) Failed to complete data resource-specific maintenance", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_didCompleteMaintenance:(uint64_t *)a1 shouldDefer:.cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v1, v2, "(%@) Failed to clean database", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_didCompleteMaintenance:(uint64_t *)a1 shouldDefer:.cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v1, v2, "(%@) Failed to resolve set: %@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_didCompleteMaintenance:(uint64_t *)a1 shouldDefer:.cold.4(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v1, v2, "(%@) Maintenance failed to tombstone set: %@");
  v3 = *MEMORY[0x1E69E9840];
}

void __60__CCDataResourceWriter__didCompleteMaintenance_shouldDefer___block_invoke_27_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to update last maintenance date: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)incrementRowsModified:database:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to select rows modified in database: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)incrementRowsModified:database:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to update rows modified in database: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end