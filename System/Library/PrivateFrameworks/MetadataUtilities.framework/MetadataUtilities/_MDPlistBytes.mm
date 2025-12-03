@interface _MDPlistBytes
+ (__MDPlistBytes)createArrayPlistBytesUsingBlock:(id)block;
+ (__MDPlistBytes)createDictionaryPlistBytesUsingBlock:(id)block;
+ (__MDPlistBytes)createPlistBytes:(id)bytes;
+ (__MDPlistBytes)emptyArrayPlistBytes;
+ (__MDPlistBytes)emptyDictionaryPlistBytes;
+ (__MDPlistBytes)nullObjectPlistBytes;
- (BOOL)enumerateQueryResults:(unint64_t)results attributeSize:(unint64_t)size stringCache:(id *)cache usingBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (_MDPlistBytes)initWithByteVector:(char *)vector count:(unsigned int)count trusted:(unsigned __int8)trusted deallocator:(id)deallocator;
- (__CFData)copyData;
- (__CFData)copyDataWithBytesNoCopy;
- (id)description;
- (unint64_t)_cfTypeID;
- (void)dealloc;
- (void)dumpUIDs;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)enumerateQueryResults:(unint64_t)results stringCache:(id *)cache usingBlock:(id)block;
@end

@implementation _MDPlistBytes

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  if ((*(self + 34) & 4) != 0)
  {
    [_MDPlistBytes dealloc];
  }

  v3 = *(self + 34) | 4;
  *(self + 34) = v3;
  deallocator = self->_deallocator;
  if (deallocator)
  {
    deallocator[2](deallocator, self);

    v3 = *(self + 34);
  }

  if ((v3 & 2) != 0)
  {
    free(*&self[1]._byteVectorCnt);
    CFRelease(self[1]._deallocator);
  }

  if (self->_uidCapacity >= 1)
  {
    free(self->_uidVector);
  }

  v6.receiver = self;
  v6.super_class = _MDPlistBytes;
  [(_MDPlistBytes *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

+ (__MDPlistBytes)createArrayPlistBytesUsingBlock:(id)block
{
  v5 = *MEMORY[0x1E69E9840];
  result = [_MDMutablePlistBytes createArrayPlistBytesUsingBlock:block];
  if (result)
  {
    *(result + 34) &= ~1u;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (__MDPlistBytes)createDictionaryPlistBytesUsingBlock:(id)block
{
  v5 = *MEMORY[0x1E69E9840];
  result = [_MDMutablePlistBytes createDictionaryPlistBytesUsingBlock:block];
  if (result)
  {
    *(result + 34) &= ~1u;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (__MDPlistBytes)createPlistBytes:(id)bytes
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [[_MDMutablePlistBytes alloc] initWithCapacity:0 useMalloc:0];
  if (!v4)
  {
    +[_MDPlistBytes createPlistBytes:];
  }

  v5 = v4;
  CFRetain(v4);

  if (_MDPlistBytesBeginPlist(v5) && __MDPlistBytesAddObject(v5, bytes))
  {
    _MDPlistBytesEndPlist(v5);
  }

  *(v5 + 34) &= ~1u;
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (__MDPlistBytes)emptyArrayPlistBytes
{
  v4 = *MEMORY[0x1E69E9840];
  if (qword_1ED6F3F28 != -1)
  {
    +[_MDPlistBytes emptyArrayPlistBytes];
  }

  result = qword_1ED6F3F20;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

+ (__MDPlistBytes)emptyDictionaryPlistBytes
{
  v4 = *MEMORY[0x1E69E9840];
  if (qword_1ED6F3F38 != -1)
  {
    +[_MDPlistBytes emptyDictionaryPlistBytes];
  }

  result = qword_1ED6F3F30;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

+ (__MDPlistBytes)nullObjectPlistBytes
{
  v4 = *MEMORY[0x1E69E9840];
  if (qword_1ED6F3F48 != -1)
  {
    +[_MDPlistBytes nullObjectPlistBytes];
  }

  result = qword_1ED6F3F40;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)enumerateQueryResults:(unint64_t)results attributeSize:(unint64_t)size stringCache:(id *)cache usingBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  v19 = 0;
  v17[1] = block;
  v17[2] = size;
  v18 = malloc_type_calloc(size, 8uLL, 0x80040B8603338uLL);
  memset(v12, 0, sizeof(v12));
  v13 = _QueryResultsBeginArray;
  v14 = _QueryResultsValue;
  v15 = _QueryResultsEndArray;
  cacheCopy = cache;
  v9 = _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(*MEMORY[0x1E695E480], self, results, v12, v17);
  if (v9)
  {
    CFRelease(v9);
  }

  free(v18);
  v10 = *MEMORY[0x1E69E9840];
  return BYTE1(v19) & ~v19 & 1;
}

- (void)enumerateQueryResults:(unint64_t)results stringCache:(id *)cache usingBlock:(id)block
{
  v6 = 0;
  v10 = *MEMORY[0x1E69E9840];
  do
  {
    v7 = v6 + 1;
    v8 = [_MDPlistBytes enumerateQueryResults:"enumerateQueryResults:attributeSize:stringCache:usingBlock:" attributeSize:? stringCache:? usingBlock:?];
    v6 = v7;
  }

  while (v8);
  v9 = *MEMORY[0x1E69E9840];
}

- (_MDPlistBytes)initWithByteVector:(char *)vector count:(unsigned int)count trusted:(unsigned __int8)trusted deallocator:(id)deallocator
{
  trustedCopy = trusted;
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _MDPlistBytes;
  result = [(_MDPlistBytes *)&v17 init];
  if (result)
  {
    if (vector)
    {
      if (count - 16 > 0x6FFFFFF0)
      {
        *(result + 16) = 619;
      }

      else
      {
        result->_byteVector = vector;
        result->_byteVectorCnt = count;
        result->_byteVectorCapacity = count;
        if (deallocator)
        {
          v11 = result;
          v12 = _Block_copy(deallocator);
          result = v11;
        }

        else
        {
          v12 = 0;
        }

        result->_deallocator = v12;
        v14 = trustedCopy != 0;
        v15 = result;
        _maybeSwapPlistBytes(result, v14);
        result = v15;
      }
    }

    else
    {

      if (qword_1ED6F3FE0 != -1)
      {
        [_MDPlistBytes initWithByteVector:count:trusted:deallocator:];
      }

      v13 = CFRetain(qword_1ED6F3FD8);
      result = CFMakeCollectable(v13);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)_cfTypeID
{
  v4 = *MEMORY[0x1E69E9840];
  if (qword_1ED6F3F50 != -1)
  {
    _MDPlistBytesGetTypeID_cold_1();
  }

  result = qword_1ED6F3F58;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)description
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = __MDPlistBytesCopyDebugDescription(self);
  v3 = CFMakeCollectable(v2);
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  v12 = *MEMORY[0x1E69E9840];
  _cfTypeID = [equal _cfTypeID];
  if (qword_1ED6F3F50 == -1)
  {
    if (_cfTypeID != qword_1ED6F3F58)
    {
LABEL_6:
      result = 0;
      v8 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  else
  {
    v11 = _cfTypeID;
    _MDPlistBytesGetTypeID_cold_1();
    if (v11 != qword_1ED6F3F58)
    {
      goto LABEL_6;
    }
  }

  byteVectorCnt = self->_byteVectorCnt;
  if (equal && !*(equal + 16))
  {
    if (byteVectorCnt != *(equal + 4))
    {
      goto LABEL_6;
    }

    v9 = *(equal + 1);
  }

  else
  {
    if (byteVectorCnt)
    {
      goto LABEL_6;
    }

    v9 = 0;
  }

  result = memcmp(self->_byteVector, v9, byteVectorCnt) == 0;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (__CFData)copyData
{
  v7 = *MEMORY[0x1E69E9840];
  byteVector = self->_byteVector;
  byteVectorCnt = self->_byteVectorCnt;
  v4 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];

  return CFDataCreate(v5, byteVector, byteVectorCnt);
}

- (__CFData)copyDataWithBytesNoCopy
{
  v8 = *MEMORY[0x1E69E9840];
  byteVector = self->_byteVector;
  byteVectorCnt = self->_byteVectorCnt;
  v4 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  v6 = *MEMORY[0x1E695E498];

  return CFDataCreateWithBytesNoCopy(v5, byteVector, byteVectorCnt, v6);
}

- (void)dumpUIDs
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = _MDLogForCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uidCount = self->_uidCount;
    *buf = 134218240;
    *v11 = self;
    *&v11[8] = 1024;
    *&v11[10] = uidCount;
    _os_log_impl(&dword_1B238B000, v3, OS_LOG_TYPE_DEFAULT, "_MDPlistBytes:%p UID Count: %d", buf, 0x12u);
  }

  if (self->_uidCount >= 1)
  {
    v5 = 0;
    do
    {
      v6 = self->_uidVector[v5];
      v7 = self->_wrapperPtr[v6 & 0xFFFFFF];
      v8 = _MDLogForCategoryDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110400;
        *v11 = v5;
        *&v11[4] = 2048;
        *&v11[6] = v6;
        v12 = 1024;
        v13 = BYTE3(v6);
        v14 = 1024;
        v15 = HIDWORD(v6);
        v16 = 1024;
        v17 = v6 & 0xFFFFFF;
        v18 = 2048;
        v19 = v7;
        _os_log_impl(&dword_1B238B000, v8, OS_LOG_TYPE_DEFAULT, "   desc[%d]: 0x%16.16llx tag: %2.2x var: 0x%4.4x qc: 0x%4.4x 0x%16.16llx", buf, 0x2Eu);
      }

      ++v5;
    }

    while (v5 < self->_uidCount);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  v5 = 0;
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v6 = *MEMORY[0x1E695E480];
  do
  {
    v7 = _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(v6, self, v5, &_kMDPlistBytesDeserializationCallbacks, sel_enumerateObjectsUsingBlock_);
    if (!v7)
    {
      break;
    }

    v8 = v7;
    (*(block + 2))(block, v7, v5, &v10);
    CFRelease(v8);
    ++v5;
  }

  while ((v10 & 1) == 0);
  v9 = *MEMORY[0x1E69E9840];
}

@end