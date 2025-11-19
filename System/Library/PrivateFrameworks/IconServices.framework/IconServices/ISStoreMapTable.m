@interface ISStoreMapTable
- (ISStoreMapTable)initWithURL:(id)a3 capacity:(unint64_t)a4;
- (NSData)data;
- (id)dataForUUID:(id)a3;
- (void)_extendData;
- (void)_extendWithMultiplyer:(float)a3;
- (void)addData:(id)a3 forUUID:(id)a4;
- (void)enumerateWithBlock:(id)a3;
- (void)enumerateWithUUID:(unsigned __int8)a3[16] block:(id)a4;
- (void)removeAll;
- (void)removeDataForUUID:(id)a3;
- (void)removeDataForUUID:(id)a3 passingTest:(id)a4;
- (void)setBytes:(const void *)a3 size:(unint64_t)a4 forUUID:(unsigned __int8)a5[16];
@end

@implementation ISStoreMapTable

- (ISStoreMapTable)initWithURL:(id)a3 capacity:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ISStoreMapTable;
  v8 = [(ISStoreMapTable *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_url, a3);
    v9->_dataLock._os_unfair_lock_opaque = 0;
    v9->_initialCapacity = a4;
  }

  return v9;
}

- (void)addData:(id)a3 forUUID:(id)a4
{
  v8[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v8[0] = 0;
    v8[1] = 0;
    [a4 getUUIDBytes:v8];
    -[ISStoreMapTable setBytes:size:forUUID:](self, "setBytes:size:forUUID:", [v6 bytes], objc_msgSend(v6, "length"), v8);
  }

  else
  {
    [(ISStoreMapTable *)self removeDataForUUID:a4];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)dataForUUID:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(ISStoreMapTable *)self data];
  v16[0] = 0;
  v16[1] = 0;
  [v4 getUUIDBytes:v16];

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __31__ISStoreMapTable_dataForUUID___block_invoke;
  v14 = &unk_1E77C67C8;
  v15 = v5;
  v7 = v5;
  [v6 _ISStoreIndex_enumerateValuesForUUID:v16 bock:&v11];
  v8 = [v7 copy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __31__ISStoreMapTable_dataForUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a2 + 36 length:NodeStructGetDataSize(a2) freeWhenDone:0];
  [*(a1 + 32) addObject:v3];
}

- (void)removeDataForUUID:(id)a3
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ISStoreMapTable *)self data];
  v7[0] = 0;
  v7[1] = 0;
  [v4 getUUIDBytes:v7];

  [v5 _ISStoreIndex_enumerateValuesForUUID:v7 bock:&__block_literal_global_4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeDataForUUID:(id)a3 passingTest:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(ISStoreMapTable *)self data];
  v13[0] = 0;
  v13[1] = 0;
  [v7 getUUIDBytes:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__ISStoreMapTable_removeDataForUUID_passingTest___block_invoke;
  v11[3] = &unk_1E77C6810;
  v12 = v6;
  v9 = v6;
  [v8 _ISStoreIndex_enumerateValuesForUUID:v13 bock:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __49__ISStoreMapTable_removeDataForUUID_passingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a2 + 36 length:NodeStructGetDataSize(a2) freeWhenDone:0];
  if ((*(*(a1 + 32) + 16))())
  {
    *(a2 + 32) = 0;
  }
}

- (void)enumerateWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(ISStoreMapTable *)self data];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__ISStoreMapTable_enumerateWithBlock___block_invoke;
  v7[3] = &unk_1E77C6810;
  v8 = v4;
  v6 = v4;
  [v5 _ISStoreIndex_enumerateValuesWithBock:v7];
}

void __38__ISStoreMapTable_enumerateWithBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a2 + 8];
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a2 + 36 length:NodeStructGetDataSize(a2) freeWhenDone:0];
  (*(*(a1 + 32) + 16))();
}

- (void)removeAll
{
  v9 = self->_data;
  v3 = [(NSData *)v9 _ISStoreIndex_hashTableHeader];
  v4 = v3;
  if (!v3 || (v5 = *(v3 + 12)) == 0)
  {
    v5 = 10000;
  }

  v6 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithCapacity:v5 additionalSize:v5 << 8];
  v7 = [(ISStoreMapTable *)self url];
  [(NSData *)v6 _ISMutableStoreIndex_makeBackedByFileAtURL:v7];

  os_unfair_lock_lock(&self->_dataLock);
  data = self->_data;
  self->_data = v6;

  os_unfair_lock_unlock(&self->_dataLock);
  if (v4)
  {
    *(v4 + 4) = 0;
  }
}

- (void)enumerateWithUUID:(unsigned __int8)a3[16] block:(id)a4
{
  v6 = a4;
  v7 = [(ISStoreMapTable *)self data];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__ISStoreMapTable_enumerateWithUUID_block___block_invoke;
  v9[3] = &unk_1E77C6810;
  v10 = v6;
  v8 = v6;
  [v7 _ISStoreIndex_enumerateValuesForUUID:a3 bock:v9];
}

uint64_t __43__ISStoreMapTable_enumerateWithUUID_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  DataSize = NodeStructGetDataSize(a2);
  v7 = *(v5 + 16);

  return v7(v5, a2 + 36, DataSize, a3);
}

- (void)setBytes:(const void *)a3 size:(unint64_t)a4 forUUID:(unsigned __int8)a5[16]
{
  v9 = [(ISStoreMapTable *)self data];
  v10 = [v9 _ISStoreIndex_hashTableHeader];
  if (v10 && *(v10 + 12) <= *(v10 + 8))
  {
    [(ISStoreMapTable *)self _extend];
  }

  if (([v9 _ISMutableStoreIndex_addValue:a3 size:a4 forUUID:a5] & 1) == 0)
  {
    v11 = _ISDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ISStoreMapTable setBytes:v11 size:? forUUID:?];
    }
  }
}

- (NSData)data
{
  os_unfair_lock_lock(&self->_dataLock);
  if ([(NSData *)self->_data _ISStoreIndex_isValid])
  {
    v3 = self->_data;
  }

  else
  {
    v4 = [(ISStoreMapTable *)self url];
    v3 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithURL:v4];
    if (![(NSData *)v3 _ISStoreIndex_isValid])
    {
      v5 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithCapacity:self->_initialCapacity additionalSize:self->_initialCapacity << 8];

      [(NSData *)v5 _ISMutableStoreIndex_makeBackedByFileAtURL:v4];
      v3 = v5;
    }

    objc_storeStrong(&self->_data, v3);
  }

  os_unfair_lock_unlock(&self->_dataLock);

  return v3;
}

- (void)_extendWithMultiplyer:(float)a3
{
  v5 = self->_data;
  v6 = [(NSData *)v5 _ISStoreIndex_hashTableHeader];
  v7 = v6;
  if (!v6 || (v8 = *(v6 + 12)) == 0)
  {
    v8 = 10000;
  }

  v9 = (v8 * a3);
  v10 = [(NSData *)v5 length];
  v11 = [(NSData *)v5 _ISStoreIndex_nodesOffset];
  v12 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithCapacity:v9 additionalSize:((v10 - v11) * a3)];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __41__ISStoreMapTable__extendWithMultiplyer___block_invoke;
  v17[3] = &unk_1E77C67C8;
  v13 = v12;
  v18 = v13;
  [(NSData *)v5 _ISStoreIndex_enumerateValuesWithBock:v17];
  v14 = [(ISStoreMapTable *)self url];
  [(NSData *)v13 _ISMutableStoreIndex_makeBackedByFileAtURL:v14];

  os_unfair_lock_lock(&self->_dataLock);
  data = self->_data;
  self->_data = v13;
  v16 = v13;

  os_unfair_lock_unlock(&self->_dataLock);
  if (v7)
  {
    *(v7 + 4) = 0;
  }
}

uint64_t __41__ISStoreMapTable__extendWithMultiplyer___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  DataSize = NodeStructGetDataSize(a2);

  return [v3 _ISMutableStoreIndex_addValue:a2 + 36 size:DataSize forUUID:a2 + 8];
}

- (void)_extendData
{
  p_data = &self->_data;
  v4 = self->_data;
  v5 = [(NSData *)v4 _ISStoreIndex_hashTableHeader];
  v6 = v5;
  if (!v5 || (v7 = *(v5 + 12)) == 0)
  {
    v7 = 10000;
  }

  v8 = [(NSData *)v4 length];
  v9 = [(NSData *)v4 _ISStoreIndex_nodesOffset];
  v10 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithCapacity:v7 additionalSize:((v8 - v9) * 1.5)];
  if (vm_copy(*MEMORY[0x1E69E9A60], -[NSData bytes](v4, "bytes"), -[NSData length](v4, "length"), [v10 bytes]))
  {
    v11 = _ISDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ISStoreMapTable *)v11 _extendData];
    }
  }

  else
  {
    v12 = [(ISStoreMapTable *)self url];
    [v10 _ISMutableStoreIndex_makeBackedByFileAtURL:v12];

    os_unfair_lock_lock(&self->_dataLock);
    objc_storeStrong(p_data, v10);
    os_unfair_lock_unlock(&self->_dataLock);
    if (v6)
    {
      *(v6 + 4) = 0;
    }
  }
}

@end