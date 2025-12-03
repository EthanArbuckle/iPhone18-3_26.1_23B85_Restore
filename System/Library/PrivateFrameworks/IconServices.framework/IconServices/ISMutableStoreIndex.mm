@interface ISMutableStoreIndex
- (BOOL)addValue:(id *)value;
- (BOOL)removeValueForUUID:(unsigned __int8)d[16] passingTest:(id)test;
- (BOOL)removeValuePassingTest:(id)test;
- (ISMutableStoreIndex)initWithStoreFileURL:(id)l capacity:(unint64_t)capacity;
- (id)data;
- (void)_extend;
- (void)_extendData;
- (void)removeAll;
@end

@implementation ISMutableStoreIndex

- (id)data
{
  os_unfair_lock_lock([(ISStoreIndex *)self dataLock]);
  _internalData = [(ISStoreIndex *)self _internalData];
  _ISStoreIndex_isValid = [_internalData _ISStoreIndex_isValid];

  if (_ISStoreIndex_isValid)
  {
    _internalData2 = [(ISStoreIndex *)self _internalData];
  }

  else
  {
    indexFileURL = [(ISStoreIndex *)self indexFileURL];
    _internalData2 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithURL:indexFileURL];
    if (([_internalData2 _ISStoreIndex_isValid] & 1) == 0)
    {
      v7 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithCapacity:self->_initialCapacity additionalSize:116 * self->_initialCapacity];

      [v7 _ISMutableStoreIndex_makeBackedByFileAtURL:indexFileURL];
      _internalData2 = v7;
    }

    [(ISStoreIndex *)self _internalSetData:_internalData2];
  }

  os_unfair_lock_unlock([(ISStoreIndex *)self dataLock]);

  return _internalData2;
}

- (ISMutableStoreIndex)initWithStoreFileURL:(id)l capacity:(unint64_t)capacity
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = ISMutableStoreIndex;
  v7 = [(ISStoreIndex *)&v13 initWithStoreFileURL:lCopy];
  v8 = v7;
  if (v7)
  {
    v7->_initialCapacity = capacity;
    path = [lCopy path];
    v10 = dispatch_queue_create([path UTF8String], 0);
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v10;
  }

  return v8;
}

- (BOOL)addValue:(id *)value
{
  data = [(ISMutableStoreIndex *)self data];
  _ISStoreIndex_hashTableHeader = [data _ISStoreIndex_hashTableHeader];
  if (_ISStoreIndex_hashTableHeader && *(_ISStoreIndex_hashTableHeader + 12) <= *(_ISStoreIndex_hashTableHeader + 8))
  {
    [(ISMutableStoreIndex *)self _extend];
    data2 = [(ISMutableStoreIndex *)self data];

    data = data2;
  }

  v8 = [data _ISStoreIndex_nodesOffset] + 152;
  if (v8 > [data length])
  {
    [(ISMutableStoreIndex *)self _extendData];
    data3 = [(ISMutableStoreIndex *)self data];

    data = data3;
  }

  if ([data _ISMutableStoreIndex_addValue:value])
  {
    v10 = 1;
    data4 = data;
  }

  else
  {
    [(ISMutableStoreIndex *)self removeAll];
    data4 = [(ISMutableStoreIndex *)self data];

    if ([data4 _ISMutableStoreIndex_addValue:value])
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

- (BOOL)removeValuePassingTest:(id)test
{
  testCopy = test;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  data = [(ISMutableStoreIndex *)self data];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__ISMutableStoreIndex_removeValuePassingTest___block_invoke;
  v9[3] = &unk_1E77C68C8;
  v6 = testCopy;
  v10 = v6;
  v11 = &v12;
  [data _ISStoreIndex_enumerateValuesWithBock:v9];
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

- (BOOL)removeValueForUUID:(unsigned __int8)d[16] passingTest:(id)test
{
  testCopy = test;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  data = [(ISMutableStoreIndex *)self data];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__ISMutableStoreIndex_removeValueForUUID_passingTest___block_invoke;
  v10[3] = &unk_1E77C68C8;
  v8 = testCopy;
  v11 = v8;
  v12 = &v13;
  [data _ISStoreIndex_enumerateValuesForUUID:d bock:v10];
  LOBYTE(d) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return d;
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
  _internalData = [(ISStoreIndex *)self _internalData];
  _ISStoreIndex_hashTableHeader = [_internalData _ISStoreIndex_hashTableHeader];
  v4 = _ISStoreIndex_hashTableHeader;
  if (!_ISStoreIndex_hashTableHeader || (v5 = *(_ISStoreIndex_hashTableHeader + 12)) == 0)
  {
    v5 = 10000;
  }

  v6 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithCapacity:v5 additionalSize:116 * v5];
  indexFileURL = [(ISStoreIndex *)self indexFileURL];
  [v6 _ISMutableStoreIndex_makeBackedByFileAtURL:indexFileURL];

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
  _internalData = [(ISStoreIndex *)self _internalData];
  _ISStoreIndex_hashTableHeader = [_internalData _ISStoreIndex_hashTableHeader];
  v5 = _ISStoreIndex_hashTableHeader;
  if (!_ISStoreIndex_hashTableHeader || (v6 = *(_ISStoreIndex_hashTableHeader + 12)) == 0)
  {
    v6 = 10000;
  }

  v7 = (v6 * 1.5);
  v8 = [_internalData length];
  _ISStoreIndex_nodesOffset = [_internalData _ISStoreIndex_nodesOffset];
  v10 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithCapacity:v7 additionalSize:((v8 - _ISStoreIndex_nodesOffset) * 1.5)];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __30__ISMutableStoreIndex__extend__block_invoke;
  v13[3] = &unk_1E77C67C8;
  v14 = v10;
  v11 = v10;
  [_internalData _ISStoreIndex_enumerateValuesWithBock:v13];
  indexFileURL = [(ISStoreIndex *)self indexFileURL];
  [v11 _ISMutableStoreIndex_makeBackedByFileAtURL:indexFileURL];

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
  _internalData = [(ISStoreIndex *)self _internalData];
  _ISStoreIndex_hashTableHeader = [_internalData _ISStoreIndex_hashTableHeader];
  v5 = _ISStoreIndex_hashTableHeader;
  if (!_ISStoreIndex_hashTableHeader || (v6 = *(_ISStoreIndex_hashTableHeader + 12)) == 0)
  {
    v6 = 10000;
  }

  v7 = [_internalData length];
  _ISStoreIndex_nodesOffset = [_internalData _ISStoreIndex_nodesOffset];
  v9 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithCapacity:v6 additionalSize:((v7 - _ISStoreIndex_nodesOffset) * 1.5)];
  if (vm_copy(*MEMORY[0x1E69E9A60], [_internalData bytes], objc_msgSend(_internalData, "length"), objc_msgSend(v9, "bytes")))
  {
    v10 = _ISDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ISStoreMapTable *)v10 _extendData];
    }
  }

  else
  {
    indexFileURL = [(ISStoreIndex *)self indexFileURL];
    [v9 _ISMutableStoreIndex_makeBackedByFileAtURL:indexFileURL];

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