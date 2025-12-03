@interface BMMemoryMapping
- (BMMemoryMapping)initWithSize:(unint64_t)size protection:(int)protection advice:(int)advice offset:(int64_t)offset;
- (BOOL)atomicUpdateOffset:(unint64_t)offset withValue:(id)value shouldReplace:(id)replace;
- (BOOL)isValidReadFromOffset:(unint64_t)offset withLength:(unint64_t)length;
- (BOOL)isValidReadFromOffsetV2:(unint64_t)v2 withLength:(unint64_t)length currentFrameCount:(unsigned int)count;
- (BOOL)mapWithFileHandle:(id)handle fileSize:(unint64_t)size;
- (id)dataAtOffset:(unint64_t)offset withLength:(unint64_t)length makeCopy:(BOOL)copy;
- (uint64_t)isValidWriteToDestinationOffset:(uint64_t)offset withLength:(uint64_t)length bytes:;
- (uint64_t)mappedAddress;
- (uint64_t)offsetSpace;
- (uint64_t)pageAlignedSize;
- (uint64_t)setMappedAddress:(uint64_t)result;
- (uint64_t)setOffset:(uint64_t)result;
- (uint64_t)setOffsetSpace:(uint64_t)result;
- (uint64_t)setPageAlignedSize:(uint64_t)result;
- (uint64_t)setSize:(uint64_t)result;
- (uint64_t)setStart:(uint64_t)result;
- (unsigned)atomicReadAtOffset:(unint64_t)offset value:(id *)value;
- (unsigned)atomicWriteEightBytes:(unint64_t)bytes toOffset:(unint64_t)offset expected:(unint64_t *)expected;
- (unsigned)atomicWriteFourBytes:(unsigned int)bytes toOffset:(unint64_t)offset expected:(unsigned int *)expected;
- (unsigned)atomicWriteSixteenBytes:(BMMemoryMapping *)self toOffset:(SEL)offset expected:;
- (void)dealloc;
- (void)sync;
- (void)unmap;
- (void)updateToMaxOfCurrentWriteOffsetAnd:(unint64_t)and;
- (void)writeBytes:(const void *)bytes toOffset:(unint64_t)offset length:(unint64_t)length;
@end

@implementation BMMemoryMapping

- (void)dealloc
{
  [(BMMemoryMapping *)self unmap];
  v3.receiver = self;
  v3.super_class = BMMemoryMapping;
  [(BMMemoryMapping *)&v3 dealloc];
}

- (void)unmap
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *self;
  v8 = *__error();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sync
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v4[0] = 67240192;
  v4[1] = v2;
  _os_log_error_impl(&dword_1C928A000, self, OS_LOG_TYPE_ERROR, "Failed to msync because %{public, darwin.errno}d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

- (BMMemoryMapping)initWithSize:(unint64_t)size protection:(int)protection advice:(int)advice offset:(int64_t)offset
{
  v11.receiver = self;
  v11.super_class = BMMemoryMapping;
  result = [(BMMemoryMapping *)&v11 init];
  if (result)
  {
    result->_protection = protection;
    result->_advice = advice;
    result->_size = size;
    result->_offset = offset;
    atomic_store(0, &result->_currentWriteOffset);
  }

  return result;
}

- (BOOL)mapWithFileHandle:(id)handle fileSize:(unint64_t)size
{
  v44 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  offset = [(BMMemoryMapping *)self offset];
  if ((offset & 0x8000000000000000) != 0)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [BMMemoryMapping mapWithFileHandle:handleCopy fileSize:?];
    }

    goto LABEL_20;
  }

  v8 = offset;
  if (offset > size)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      size = self->_size;
      v11 = MEMORY[0x1E698E9C8];
      attributes = [handleCopy attributes];
      path = [attributes path];
      v14 = [v11 privacyPathname:path];
      v40 = 134218754;
      sizeCopy = size;
      v42 = 2048;
      *v43 = size;
      *&v43[8] = 2048;
      *&v43[10] = v8;
      *&v43[18] = 2114;
      *&v43[20] = v14;
      _os_log_fault_impl(&dword_1C928A000, v9, OS_LOG_TYPE_FAULT, "Offset too large, frame size:%zu fileSize:%zu offset:%lld file:%{public}@", &v40, 0x2Au);

LABEL_17:
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v15 = NSRoundDownToMultipleOfPageSize(offset);
  self->_offsetSpace = v8 - v15;
  v16 = NSRoundUpToMultipleOfPageSize(self->_size + v8 - v15);
  if (!v16)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v28 = self->_size;
      offset = self->_offset;
      v30 = MEMORY[0x1E698E9C8];
      attributes2 = [handleCopy attributes];
      path2 = [attributes2 path];
      v14 = [v30 privacyPathname:path2];
      v40 = 134218498;
      sizeCopy = v28;
      v42 = 2048;
      *v43 = offset;
      *&v43[8] = 2114;
      *&v43[10] = v14;
      _os_log_fault_impl(&dword_1C928A000, v9, OS_LOG_TYPE_FAULT, "Attempt to map zero bytes, size:%zu offset:%lld file:%{public}@", &v40, 0x20u);

      goto LABEL_17;
    }

LABEL_20:
    v21 = 0;
    goto LABEL_21;
  }

  v17 = v16;
  v18 = mmap(0, v16, self->_protection, 1, [handleCopy fd], v15);
  if (v18 == -1)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v35 = MEMORY[0x1E698E9C8];
      attributes3 = [handleCopy attributes];
      path3 = [attributes3 path];
      v38 = [v35 privacyPathname:path3];
      v39 = *__error();
      v40 = 138544130;
      sizeCopy = v38;
      v42 = 1026;
      *v43 = v39;
      *&v43[4] = 2048;
      *&v43[6] = v17;
      *&v43[14] = 2048;
      *&v43[16] = v15;
      _os_log_fault_impl(&dword_1C928A000, v9, OS_LOG_TYPE_FAULT, "Unable to mmap storage file %{public}@ because %{public, darwin.errno}d, size:%zu, offset:%ld", &v40, 0x26u);
    }

    goto LABEL_20;
  }

  v19 = v18;
  self->_mappedAddress = v18;
  self->_pageAlignedSize = v17;
  self->_start = &v18[self->_offsetSpace];
  atomic_store(0, &self->_currentWriteOffset);
  if (madvise(v18, v17, self->_advice) < 0)
  {
    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [BMMemoryMapping mapWithFileHandle:fileSize:];
    }
  }

  v9 = __biome_log_for_category();
  v21 = 1;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v22 = MEMORY[0x1E698E9C8];
    attributes4 = [handleCopy attributes];
    path4 = [attributes4 path];
    v25 = [v22 privacyPathname:path4];
    v27 = self->_size;
    v26 = self->_offset;
    v40 = 138544131;
    sizeCopy = v25;
    v42 = 2049;
    *v43 = v19;
    *&v43[8] = 2048;
    *&v43[10] = v26;
    *&v43[18] = 2048;
    *&v43[20] = v27;
    v21 = 1;
    _os_log_impl(&dword_1C928A000, v9, OS_LOG_TYPE_INFO, "Successfully mapped file: %{public}@ address: 0x%{private}llx offset:%llu size:%llu", &v40, 0x2Au);
  }

LABEL_21:

  v33 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)dataAtOffset:(unint64_t)offset withLength:(unint64_t)length makeCopy:(BOOL)copy
{
  copyCopy = copy;
  v20 = *MEMORY[0x1E69E9840];
  if ([BMMemoryMapping isValidReadFromOffset:"isValidReadFromOffset:withLength:" withLength:?])
  {
    v9 = [(BMMemoryMapping *)self start]+ offset;
    if (copyCopy)
    {
      [MEMORY[0x1E695DEF0] dataWithBytes:v9 length:length];
    }

    else
    {
      [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v9 length:length freeWhenDone:0];
    }
    v10 = ;
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 134218496;
      offsetCopy = offset;
      v16 = 2048;
      lengthCopy = length;
      v18 = 2048;
      v19 = [(BMMemoryMapping *)self size];
      _os_log_error_impl(&dword_1C928A000, v11, OS_LOG_TYPE_ERROR, "Cannot read data from offset: %lld with length: %lld. Size (%lld) too small", &v14, 0x20u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (unsigned)atomicReadAtOffset:(unint64_t)offset value:(id *)value
{
  if ([(BMMemoryMapping *)self canAtomicallyAccessOffset:offset byteCount:8])
  {
    if ([(BMMemoryMapping *)self isValidReadFromOffset:offset withLength:8])
    {
      v7 = atomic_load(([(BMMemoryMapping *)self start]+ offset));
      value->var0 = v7;
      return 1;
    }

    else
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [BMMemoryMapping atomicReadAtOffset:offset value:?];
      }

      return 0;
    }
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMMemoryMapping atomicReadAtOffset:offset value:v9];
    }

    return 3;
  }
}

- (BOOL)atomicUpdateOffset:(unint64_t)offset withValue:(id)value shouldReplace:(id)replace
{
  replaceCopy = replace;
  if (![(BMMemoryMapping *)self canAtomicallyAccessOffset:offset byteCount:8])
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMMemoryMapping atomicReadAtOffset:offset value:v11];
    }

    goto LABEL_14;
  }

  if (!self || ![(BMMemoryMapping *)self isWritable]|| ![(BMMemoryMapping *)self isValidReadFromOffset:offset withLength:8])
  {
    [BMMemoryMapping atomicUpdateOffset:offset withValue:? shouldReplace:?];
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v14 = 0;
  if ([(BMMemoryMapping *)self atomicReadAtOffset:offset value:&v14]!= 1 || !replaceCopy[2](replaceCopy, v14, value.var0))
  {
    goto LABEL_14;
  }

  v13 = v14;
  do
  {
    v9 = [(BMMemoryMapping *)self atomicWriteEightBytes:value.var0 toOffset:offset expected:&v13];
    v10 = v9 == 1;
    if (v9 == 1)
    {
      break;
    }

    v14 = v13;
  }

  while (((replaceCopy[2])(replaceCopy) & 1) != 0);
LABEL_15:

  return v10;
}

- (void)updateToMaxOfCurrentWriteOffsetAnd:(unint64_t)and
{
  andCopy = and;
  p_size = &self->_size;
  if (self->_size < and)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMMemoryMapping *)p_size updateToMaxOfCurrentWriteOffsetAnd:andCopy, v6];
    }

    andCopy = *p_size;
  }

  currentWriteOffset = [(BMMemoryMapping *)self currentWriteOffset];
  if (currentWriteOffset < andCopy)
  {
    v8 = currentWriteOffset;
    do
    {
      atomic_compare_exchange_strong(&self->_currentWriteOffset, &v8, andCopy);
      if (v8 == currentWriteOffset)
      {
        break;
      }

      currentWriteOffset = v8;
    }

    while (v8 < andCopy);
  }
}

- (uint64_t)setPageAlignedSize:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

- (uint64_t)setMappedAddress:(uint64_t)result
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

- (uint64_t)setStart:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)pageAlignedSize
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)mappedAddress
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)offsetSpace
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)isValidWriteToDestinationOffset:(uint64_t)offset withLength:(uint64_t)length bytes:
{
  if (!self)
  {
    return 0;
  }

  isWritable = [self isWritable];
  if (!length || !isWritable)
  {
    return 0;
  }

  return [self isValidReadFromOffset:a2 withLength:offset];
}

- (BOOL)isValidReadFromOffset:(unint64_t)offset withLength:(unint64_t)length
{
  if (self)
  {
    selfCopy = self;
    LOBYTE(self) = self->_mappedAddress && [(BMMemoryMapping *)self size]> offset && [(BMMemoryMapping *)selfCopy size]- offset >= length;
  }

  return self;
}

- (BOOL)isValidReadFromOffsetV2:(unint64_t)v2 withLength:(unint64_t)length currentFrameCount:(unsigned int)count
{
  if (self)
  {
    if (self->_mappedAddress)
    {
      v7 = [(BMMemoryMapping *)self size]- 16 * count;
      LOBYTE(self) = v7 >= 1 && v7 > v2 && v2 + length + 24 <= v7;
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (unsigned)atomicWriteEightBytes:(unint64_t)bytes toOffset:(unint64_t)offset expected:(unint64_t *)expected
{
  OUTLINED_FUNCTION_2_3();
  if ([v9 canAtomicallyAccessOffset:v10 byteCount:8])
  {
    if (v8)
    {
      isWritable = [v8 isWritable];
      if (isWritable)
      {
        isWritable = [v8 isValidReadFromOffset:v7 withLength:8];
        if (isWritable)
        {
          start = [v8 start];
          v13 = *v5;
          v14 = *v5;
          atomic_compare_exchange_strong((start + v7), &v14, v6);
          if (v14 == v13)
          {
            LOBYTE(isWritable) = 1;
          }

          else
          {
            *v5 = v14;
            LOBYTE(isWritable) = 2;
          }
        }
      }
    }

    else
    {
      LOBYTE(isWritable) = 0;
    }
  }

  else
  {
    LOBYTE(isWritable) = 3;
  }

  return isWritable;
}

- (unsigned)atomicWriteSixteenBytes:(BMMemoryMapping *)self toOffset:(SEL)offset expected:
{
  v5 = v4;
  v6 = v3;
  _X20 = v2;
  if ([(BMMemoryMapping *)self canAtomicallyAccessOffset:v3 byteCount:16])
  {
    if (self)
    {
      LODWORD(_X0) = [(BMMemoryMapping *)self isWritable];
      if (_X0)
      {
        LODWORD(_X0) = [(BMMemoryMapping *)self isValidReadFromOffset:v6 withLength:16];
        if (_X0)
        {
          [(BMMemoryMapping *)self start];
          _X1 = v5[1];
          __asm { CASPAL          X0, X1, X20, X21, [X8] }

          if (_X0 == *v5)
          {
            v5[1];
            _ZF = 1;
          }

          else
          {
            _ZF = 0;
          }

          if (_ZF)
          {
            LOBYTE(_X0) = 1;
          }

          else
          {
            *v5 = _X0;
            v5[1] = _X1;
            LOBYTE(_X0) = 2;
          }
        }
      }
    }

    else
    {
      LOBYTE(_X0) = 0;
    }
  }

  else
  {
    LOBYTE(_X0) = 3;
  }

  return _X0;
}

- (unsigned)atomicWriteFourBytes:(unsigned int)bytes toOffset:(unint64_t)offset expected:(unsigned int *)expected
{
  if ([(BMMemoryMapping *)self canAtomicallyAccessOffset:offset byteCount:4])
  {
    if (self)
    {
      isWritable = [(BMMemoryMapping *)self isWritable];
      if (isWritable)
      {
        isWritable = [(BMMemoryMapping *)self isValidReadFromOffset:offset withLength:4];
        if (isWritable)
        {
          start = [(BMMemoryMapping *)self start];
          v11 = *expected;
          v12 = *expected;
          atomic_compare_exchange_strong(&start[offset], &v12, bytes);
          if (v12 == v11)
          {
            LOBYTE(isWritable) = 1;
          }

          else
          {
            *expected = v12;
            LOBYTE(isWritable) = 2;
          }
        }
      }
    }

    else
    {
      LOBYTE(isWritable) = 0;
    }
  }

  else
  {
    LOBYTE(isWritable) = 3;
  }

  return isWritable;
}

- (void)writeBytes:(const void *)bytes toOffset:(unint64_t)offset length:(unint64_t)length
{
  if (self)
  {
    OUTLINED_FUNCTION_2_3();
    isWritable = [v9 isWritable];
    if (v6)
    {
      if (isWritable && [v8 isValidReadFromOffset:v7 withLength:v5])
      {
        v11 = ([v8 start] + v7);

        memcpy(v11, v6, v5);
      }
    }
  }
}

- (uint64_t)setSize:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

- (uint64_t)setOffset:(uint64_t)result
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setOffsetSpace:(uint64_t)result
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

- (void)mapWithFileHandle:fileSize:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)mapWithFileHandle:(uint64_t)a1 fileSize:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = MEMORY[0x1E698E9C8];
  v5 = [a2 attributes];
  v6 = [v5 path];
  v13 = [v4 privacyPathname:v6];
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v7, v8, v9, v10, v11, 0x20u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)atomicReadAtOffset:(uint64_t)a1 value:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1C928A000, a2, OS_LOG_TYPE_ERROR, "Cannot atomically access bytes if offset isn't 8 byte aligned. Given offset: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)atomicReadAtOffset:(uint64_t)a1 value:.cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1;
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(&dword_1C928A000, v1, OS_LOG_TYPE_ERROR, "Unable to read data at offset: %ld with length: %ld", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)atomicUpdateOffset:(uint64_t)a1 withValue:shouldReplace:.cold.2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 134218240;
    v5 = a1;
    OUTLINED_FUNCTION_1_3();
    _os_log_error_impl(&dword_1C928A000, v2, OS_LOG_TYPE_ERROR, "Unable to read/write data at offset: %ld with length: %ld", &v4, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)updateToMaxOfCurrentWriteOffsetAnd:(os_log_t)log .cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 134218240;
  v6 = a2;
  v7 = 2048;
  v8 = v3;
  _os_log_error_impl(&dword_1C928A000, log, OS_LOG_TYPE_ERROR, "Attempted to move cursor beyond end of file, offset:%zu size:%zu. Setting to End of File instead", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end