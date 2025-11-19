@interface ISMutableStoreIndex
- (BOOL)addValue:(id *)a3;
- (BOOL)removeValueForUUID:(unsigned __int8)a3[16] passingTest:(id)a4;
- (BOOL)removeValuePassingTest:(id)a3;
- (ISMutableStoreIndex)initWithStoreFileURL:(id)a3 capacity:(unint64_t)a4;
- (id)data;
- (void)_extend;
- (void)_extendData;
- (void)removeAll;
@end

@implementation ISMutableStoreIndex

- (id)data
{
  os_unfair_lock_lock([(ISStoreIndex *)self dataLock]);
  v3 = [(ISStoreIndex *)self _internalData];
  v4 = [v3 _ISStoreIndex_isValid];

  if (v4)
  {
    v5 = [(ISStoreIndex *)self _internalData];
  }

  else
  {
    v6 = [(ISStoreIndex *)self indexFileURL];
    v5 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithURL:v6];
    if (([v5 _ISStoreIndex_isValid] & 1) == 0)
    {
      v7 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithCapacity:self->_initialCapacity additionalSize:116 * self->_initialCapacity];

      [v7 _ISMutableStoreIndex_makeBackedByFileAtURL:v6];
      v5 = v7;
    }

    [(ISStoreIndex *)self _internalSetData:v5];
  }

  os_unfair_lock_unlock([(ISStoreIndex *)self dataLock]);

  return v5;
}

- (ISMutableStoreIndex)initWithStoreFileURL:(id)a3 capacity:(unint64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = ISMutableStoreIndex;
  v7 = [(ISStoreIndex *)&v13 initWithStoreFileURL:v6];
  v8 = v7;
  if (v7)
  {
    v7->_initialCapacity = a4;
    v9 = [v6 path];
    v10 = dispatch_queue_create([v9 UTF8String], 0);
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v10;
  }

  return v8;
}

- (BOOL)addValue:(id *)a3
{
  v5 = [(ISMutableStoreIndex *)self data];
  v6 = [v5 _ISStoreIndex_hashTableHeader];
  if (v6 && *(v6 + 12) <= *(v6 + 8))
  {
    [(ISMutableStoreIndex *)self _extend];
    v7 = [(ISMutableStoreIndex *)self data];

    v5 = v7;
  }

  v8 = [v5 _ISStoreIndex_nodesOffset] + 152;
  if (v8 > [v5 length])
  {
    [(ISMutableStoreIndex *)self _extendData];
    v9 = [(ISMutableStoreIndex *)self data];

    v5 = v9;
  }

  if ([v5 _ISMutableStoreIndex_addValue:a3])
  {
    v10 = 1;
    v11 = v5;
  }

  else
  {
    [(ISMutableStoreIndex *)self removeAll];
    v11 = [(ISMutableStoreIndex *)self data];

    if ([v11 _ISMutableStoreIndex_addValue:a3])
    {
      v10 = 1;
    }

    else
    {
      v12 = _ISDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [ISStoreMapTable setBytes:v12 size:? forUUID:?];
      }

      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)removeValuePassingTest:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(ISMutableStoreIndex *)self data];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__ISMutableStoreIndex_removeValuePassingTest___block_invoke;
  v9[3] = &unk_1E77C68C8;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 _ISStoreIndex_enumerateValuesWithBock:v9];
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __46__ISMutableStoreIndex_removeValuePassingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  result = NodeStructGetDataSize(a2);
  if (result == 116)
  {
    result = (*(*(a1 + 32) + 16))();
    if (result)
    {
      *(a2 + 32) = 0;
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

- (BOOL)removeValueForUUID:(unsigned __int8)a3[16] passingTest:(id)a4
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = [(ISMutableStoreIndex *)self data];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__ISMutableStoreIndex_removeValueForUUID_passingTest___block_invoke;
  v10[3] = &unk_1E77C68C8;
  v8 = v6;
  v11 = v8;
  v12 = &v13;
  [v7 _ISStoreIndex_enumerateValuesForUUID:a3 bock:v10];
  LOBYTE(a3) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return a3;
}

uint64_t __54__ISMutableStoreIndex_removeValueForUUID_passingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  result = NodeStructGetDataSize(a2);
  if (result == 116)
  {
    result = (*(*(a1 + 32) + 16))();
    if (result)
    {
      *(a2 + 32) = 0;
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

- (void)removeAll
{
  v8 = [(ISStoreIndex *)self _internalData];
  v3 = [v8 _ISStoreIndex_hashTableHeader];
  v4 = v3;
  if (!v3 || (v5 = *(v3 + 12)) == 0)
  {
    v5 = 10000;
  }

  v6 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithCapacity:v5 additionalSize:116 * v5];
  v7 = [(ISStoreIndex *)self indexFileURL];
  [v6 _ISMutableStoreIndex_makeBackedByFileAtURL:v7];

  os_unfair_lock_lock([(ISStoreIndex *)self dataLock]);
  [(ISStoreIndex *)self _internalSetData:v6];
  os_unfair_lock_unlock([(ISStoreIndex *)self dataLock]);
  if (v4)
  {
    *(v4 + 4) = 0;
  }
}

- (void)_extend
{
  v3 = [(ISStoreIndex *)self _internalData];
  v4 = [v3 _ISStoreIndex_hashTableHeader];
  v5 = v4;
  if (!v4 || (v6 = *(v4 + 12)) == 0)
  {
    v6 = 10000;
  }

  v7 = (v6 * 1.5);
  v8 = [v3 length];
  v9 = [v3 _ISStoreIndex_nodesOffset];
  v10 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithCapacity:v7 additionalSize:((v8 - v9) * 1.5)];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __30__ISMutableStoreIndex__extend__block_invoke;
  v13[3] = &unk_1E77C67C8;
  v14 = v10;
  v11 = v10;
  [v3 _ISStoreIndex_enumerateValuesWithBock:v13];
  v12 = [(ISStoreIndex *)self indexFileURL];
  [v11 _ISMutableStoreIndex_makeBackedByFileAtURL:v12];

  os_unfair_lock_lock([(ISStoreIndex *)self dataLock]);
  [(ISStoreIndex *)self _internalSetData:v11];
  os_unfair_lock_unlock([(ISStoreIndex *)self dataLock]);
  if (v5)
  {
    *(v5 + 4) = 0;
  }
}

uint64_t __30__ISMutableStoreIndex__extend__block_invoke(uint64_t a1, uint64_t a2)
{
  result = NodeStructGetDataSize(a2);
  if (result == 116)
  {
    v5 = *(a1 + 32);

    return [v5 _ISMutableStoreIndex_addValue:a2 + 36];
  }

  return result;
}

- (void)_extendData
{
  v3 = [(ISStoreIndex *)self _internalData];
  v4 = [v3 _ISStoreIndex_hashTableHeader];
  v5 = v4;
  if (!v4 || (v6 = *(v4 + 12)) == 0)
  {
    v6 = 10000;
  }

  v7 = [v3 length];
  v8 = [v3 _ISStoreIndex_nodesOffset];
  v9 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithCapacity:v6 additionalSize:((v7 - v8) * 1.5)];
  if (vm_copy(*MEMORY[0x1E69E9A60], [v3 bytes], objc_msgSend(v3, "length"), objc_msgSend(v9, "bytes")))
  {
    v10 = _ISDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ISStoreMapTable *)v10 _extendData];
    }
  }

  else
  {
    v11 = [(ISStoreIndex *)self indexFileURL];
    [v9 _ISMutableStoreIndex_makeBackedByFileAtURL:v11];

    os_unfair_lock_lock([(ISStoreIndex *)self dataLock]);
    [(ISStoreIndex *)self _internalSetData:v9];
    os_unfair_lock_unlock([(ISStoreIndex *)self dataLock]);
    if (v5)
    {
      *(v5 + 4) = 0;
    }
  }
}

@end