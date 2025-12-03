@interface ISStoreMapTable
- (ISStoreMapTable)initWithURL:(id)l capacity:(unint64_t)capacity;
- (NSData)data;
- (id)dataForUUID:(id)d;
- (void)_extendData;
- (void)_extendWithMultiplyer:(float)multiplyer;
- (void)addData:(id)data forUUID:(id)d;
- (void)enumerateWithBlock:(id)block;
- (void)enumerateWithUUID:(unsigned __int8)d[16] block:(id)block;
- (void)removeAll;
- (void)removeDataForUUID:(id)d;
- (void)removeDataForUUID:(id)d passingTest:(id)test;
- (void)setBytes:(const void *)bytes size:(unint64_t)size forUUID:(unsigned __int8)d[16];
@end

@implementation ISStoreMapTable

- (ISStoreMapTable)initWithURL:(id)l capacity:(unint64_t)capacity
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = ISStoreMapTable;
  v8 = [(ISStoreMapTable *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_url, l);
    v9->_dataLock._os_unfair_lock_opaque = 0;
    v9->_initialCapacity = capacity;
  }

  return v9;
}

- (void)addData:(id)data forUUID:(id)d
{
  v8[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v8[0] = 0;
    v8[1] = 0;
    [d getUUIDBytes:v8];
    -[ISStoreMapTable setBytes:size:forUUID:](self, "setBytes:size:forUUID:", [dataCopy bytes], objc_msgSend(dataCopy, "length"), v8);
  }

  else
  {
    [(ISStoreMapTable *)self removeDataForUUID:d];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)dataForUUID:(id)d
{
  v16[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = objc_opt_new();
  data = [(ISStoreMapTable *)self data];
  v16[0] = 0;
  v16[1] = 0;
  [dCopy getUUIDBytes:v16];

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __31__ISStoreMapTable_dataForUUID___block_invoke;
  v14 = &unk_1E77C67C8;
  v15 = v5;
  v7 = v5;
  [data _ISStoreIndex_enumerateValuesForUUID:v16 bock:&v11];
  v8 = [v7 copy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __31__ISStoreMapTable_dataForUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a2 + 36 length:NodeStructGetDataSize(a2) freeWhenDone:0];
  [*(a1 + 32) addObject:v3];
}

- (void)removeDataForUUID:(id)d
{
  v7[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  data = [(ISStoreMapTable *)self data];
  v7[0] = 0;
  v7[1] = 0;
  [dCopy getUUIDBytes:v7];

  [data _ISStoreIndex_enumerateValuesForUUID:v7 bock:&__block_literal_global_4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeDataForUUID:(id)d passingTest:(id)test
{
  v13[2] = *MEMORY[0x1E69E9840];
  testCopy = test;
  dCopy = d;
  data = [(ISStoreMapTable *)self data];
  v13[0] = 0;
  v13[1] = 0;
  [dCopy getUUIDBytes:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__ISStoreMapTable_removeDataForUUID_passingTest___block_invoke;
  v11[3] = &unk_1E77C6810;
  v12 = testCopy;
  v9 = testCopy;
  [data _ISStoreIndex_enumerateValuesForUUID:v13 bock:v11];

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

- (void)enumerateWithBlock:(id)block
{
  blockCopy = block;
  data = [(ISStoreMapTable *)self data];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__ISStoreMapTable_enumerateWithBlock___block_invoke;
  v7[3] = &unk_1E77C6810;
  v8 = blockCopy;
  v6 = blockCopy;
  [data _ISStoreIndex_enumerateValuesWithBock:v7];
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
  _ISStoreIndex_hashTableHeader = [(NSData *)v9 _ISStoreIndex_hashTableHeader];
  v4 = _ISStoreIndex_hashTableHeader;
  if (!_ISStoreIndex_hashTableHeader || (v5 = *(_ISStoreIndex_hashTableHeader + 12)) == 0)
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

- (void)enumerateWithUUID:(unsigned __int8)d[16] block:(id)block
{
  blockCopy = block;
  data = [(ISStoreMapTable *)self data];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__ISStoreMapTable_enumerateWithUUID_block___block_invoke;
  v9[3] = &unk_1E77C6810;
  v10 = blockCopy;
  v8 = blockCopy;
  [data _ISStoreIndex_enumerateValuesForUUID:d bock:v9];
}

uint64_t __43__ISStoreMapTable_enumerateWithUUID_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  DataSize = NodeStructGetDataSize(a2);
  v7 = *(v5 + 16);

  return v7(v5, a2 + 36, DataSize, a3);
}

- (void)setBytes:(const void *)bytes size:(unint64_t)size forUUID:(unsigned __int8)d[16]
{
  data = [(ISStoreMapTable *)self data];
  _ISStoreIndex_hashTableHeader = [data _ISStoreIndex_hashTableHeader];
  if (_ISStoreIndex_hashTableHeader && *(_ISStoreIndex_hashTableHeader + 12) <= *(_ISStoreIndex_hashTableHeader + 8))
  {
    [(ISStoreMapTable *)self _extend];
  }

  if (([data _ISMutableStoreIndex_addValue:bytes size:size forUUID:d] & 1) == 0)
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

- (void)_extendWithMultiplyer:(float)multiplyer
{
  v5 = self->_data;
  _ISStoreIndex_hashTableHeader = [(NSData *)v5 _ISStoreIndex_hashTableHeader];
  v7 = _ISStoreIndex_hashTableHeader;
  if (!_ISStoreIndex_hashTableHeader || (v8 = *(_ISStoreIndex_hashTableHeader + 12)) == 0)
  {
    v8 = 10000;
  }

  v9 = (v8 * multiplyer);
  v10 = [(NSData *)v5 length];
  _ISStoreIndex_nodesOffset = [(NSData *)v5 _ISStoreIndex_nodesOffset];
  v12 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithCapacity:v9 additionalSize:((v10 - _ISStoreIndex_nodesOffset) * multiplyer)];
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
  _ISStoreIndex_hashTableHeader = [(NSData *)v4 _ISStoreIndex_hashTableHeader];
  v6 = _ISStoreIndex_hashTableHeader;
  if (!_ISStoreIndex_hashTableHeader || (v7 = *(_ISStoreIndex_hashTableHeader + 12)) == 0)
  {
    v7 = 10000;
  }

  v8 = [(NSData *)v4 length];
  _ISStoreIndex_nodesOffset = [(NSData *)v4 _ISStoreIndex_nodesOffset];
  v10 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithCapacity:v7 additionalSize:((v8 - _ISStoreIndex_nodesOffset) * 1.5)];
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