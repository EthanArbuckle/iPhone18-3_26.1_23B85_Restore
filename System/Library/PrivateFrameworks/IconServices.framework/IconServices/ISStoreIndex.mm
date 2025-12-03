@interface ISStoreIndex
- (BOOL)validate;
- (ISStoreIndex)initWithStoreFileURL:(id)l;
- (NSData)data;
- (id)description;
- (void)data;
- (void)enumerateValuesForUUID:(unsigned __int8)d[16] bock:(id)bock;
- (void)enumerateValuesWithBock:(id)bock;
- (void)invalidate;
@end

@implementation ISStoreIndex

- (NSData)data
{
  os_unfair_lock_lock([(ISStoreIndex *)self dataLock]);
  if (![(NSData *)self->_data _ISStoreIndex_isValid])
  {
    v3 = MEMORY[0x1E695DEF0];
    indexFileURL = [(ISStoreIndex *)self indexFileURL];
    v5 = [v3 _ISStoreIndex_mappedDataWithURL:indexFileURL];
    data = self->_data;
    self->_data = v5;

    v7 = self->_data;
    if (v7)
    {
      if (![(NSData *)v7 _ISStoreIndex_isValid])
      {
        v8 = self->_data;
        self->_data = 0;

        v9 = _ISDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [(ISStoreIndex *)self data];
        }
      }
    }
  }

  v10 = self->_data;
  os_unfair_lock_unlock([(ISStoreIndex *)self dataLock]);

  return v10;
}

- (ISStoreIndex)initWithStoreFileURL:(id)l
{
  lCopy = l;
  if (self)
  {
    objc_storeStrong(&self->_indexFileURL, l);
    self->_dataLock._os_unfair_lock_opaque = 0;
  }

  return self;
}

- (void)invalidate
{
  os_unfair_lock_lock([(ISStoreIndex *)self dataLock]);
  data = self->_data;
  self->_data = 0;

  dataLock = [(ISStoreIndex *)self dataLock];

  os_unfair_lock_unlock(dataLock);
}

- (void)enumerateValuesWithBock:(id)bock
{
  bockCopy = bock;
  data = [(ISStoreIndex *)self data];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__ISStoreIndex_enumerateValuesWithBock___block_invoke;
  v7[3] = &unk_1E77C6810;
  v8 = bockCopy;
  v6 = bockCopy;
  [data _ISStoreIndex_enumerateValuesWithBock:v7];
}

uint64_t __40__ISStoreIndex_enumerateValuesWithBock___block_invoke(uint64_t a1, uint64_t a2)
{
  result = NodeStructGetDataSize(a2);
  if (result == 116)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

- (void)enumerateValuesForUUID:(unsigned __int8)d[16] bock:(id)bock
{
  bockCopy = bock;
  v7 = 0;
  do
  {
    v8 = objc_autoreleasePoolPush();
    data = [(ISStoreIndex *)self data];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44__ISStoreIndex_enumerateValuesForUUID_bock___block_invoke;
    v14[3] = &unk_1E77C6810;
    v10 = bockCopy;
    v15 = v10;
    v11 = [data _ISStoreIndex_enumerateValuesForUUID:d bock:v14];
    if ((v11 & 1) == 0)
    {
      os_unfair_lock_lock([(ISStoreIndex *)self dataLock]);
      data = self->_data;
      self->_data = 0;

      os_unfair_lock_unlock([(ISStoreIndex *)self dataLock]);
    }

    objc_autoreleasePoolPop(v8);
    v13 = v7 | v11;
    v7 = 1;
  }

  while ((v13 & 1) == 0);
}

uint64_t __44__ISStoreIndex_enumerateValuesForUUID_bock___block_invoke(uint64_t a1, uint64_t a2)
{
  result = NodeStructGetDataSize(a2);
  if (result == 116)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __27__ISStoreIndex_description__block_invoke;
  v10 = &unk_1E77C6858;
  v4 = string;
  v11 = v4;
  v12 = v13;
  [(ISStoreIndex *)self enumerateValuesWithBock:&v7];
  v5 = [MEMORY[0x1E696AEC0] stringWithString:{v4, v7, v8, v9, v10}];

  _Block_object_dispose(v13, 8);

  return v5;
}

void __27__ISStoreIndex_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  memset(out, 0, 37);
  uuid_unparse(a2, out);
  memset(v9, 0, 37);
  uuid_unparse((a2 + 60), v9);
  memset(v8, 0, 37);
  uuid_unparse((a2 + 76), v8);
  memset(v7, 0, 37);
  uuid_unparse((a2 + 100), v7);
  memset(v6, 0, 37);
  uuid_unparse((a2 + 44), v6);
  [*(a1 + 32) appendFormat:@"Item [%u]\n\tUUID: %s\n\tSize: %upt @%ux\n\tValid from: %upt to %upt\n\tBitmap filename: %s.isdata\n\tValidation Token:- DB UUID: %s seq: %llu RSC UUID: %s\n\tDescriptor UUID: %s\n-------------------------------------------------\n", (*(*(*(a1 + 40) + 8) + 24))++, out, *(a2 + 32), *(a2 + 40), *(a2 + 16), *(a2 + 24), v9, v8, *(a2 + 92), v7, v6];
  objc_autoreleasePoolPop(v4);
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)validate
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  data = [(ISStoreIndex *)self data];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__ISStoreIndex_validate__block_invoke_7;
  v6[3] = &unk_1E77C68A0;
  v8 = &__block_literal_global_6;
  v3 = data;
  v7 = v3;
  v9 = &v10;
  [v3 _ISStoreIndex_enumerateValuesWithBock:v6];
  v4 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

uint64_t __24__ISStoreIndex_validate__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [v4 _ISStoreIndex_nodeForRef:a3];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = *(v5 + 24);
  if (v7 > a3)
  {
    while (1)
    {
      v8 = v7;
      v9 = *(v6 + 28);
      v10 = [v4 _ISStoreIndex_nodeForRef:v7 | (v9 << 32)];
      if (!v10)
      {
        goto LABEL_6;
      }

      v6 = v10;
      v7 = *(v10 + 24);
      if (v7 <= v8)
      {
        if (*(v10 + 24))
        {
          goto LABEL_8;
        }

        goto LABEL_6;
      }
    }
  }

  v9 = HIDWORD(a3);
  LODWORD(v8) = a3;
  if (!*(v5 + 24))
  {
LABEL_6:
    v11 = 1;
    goto LABEL_11;
  }

LABEL_8:
  v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6 + 8];
  v13 = _ISDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    v16 = 138412802;
    v17 = v12;
    v18 = 1024;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    _os_log_fault_impl(&dword_1A77B8000, v13, OS_LOG_TYPE_FAULT, "Cyclic node detected: %@ (offset: %u, size: %u) ", &v16, 0x18u);
  }

  v11 = 0;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __24__ISStoreIndex_validate__block_invoke_7(void *a1, uint64_t *a2, _BYTE *a3)
{
  v5 = a1[4];
  v6 = *a2;
  result = (*(a1[5] + 16))();
  if ((result & 1) == 0)
  {
    *a3 = 1;
    *(*(a1[6] + 8) + 24) = 0;
  }

  return result;
}

- (void)data
{
  v7 = *MEMORY[0x1E69E9840];
  indexFileURL = [self indexFileURL];
  v5 = 138412290;
  v6 = indexFileURL;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "Store index at URL: %@ is not valid.", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end