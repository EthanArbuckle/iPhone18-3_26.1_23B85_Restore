@interface BMMemoryMapping
- (BMMemoryMapping)initWithSize:(unint64_t)a3 protection:(int)a4 advice:(int)a5 offset:(int64_t)a6;
- (BOOL)atomicUpdateOffset:(unint64_t)a3 withValue:(id)a4 shouldReplace:(id)a5;
- (BOOL)isValidReadFromOffset:(unint64_t)a3 withLength:(unint64_t)a4;
- (BOOL)isValidReadFromOffsetV2:(unint64_t)a3 withLength:(unint64_t)a4 currentFrameCount:(unsigned int)a5;
- (BOOL)mapWithFileHandle:(id)a3 fileSize:(unint64_t)a4;
- (id)dataAtOffset:(unint64_t)a3 withLength:(unint64_t)a4 makeCopy:(BOOL)a5;
- (uint64_t)isValidWriteToDestinationOffset:(uint64_t)a3 withLength:(uint64_t)a4 bytes:;
- (uint64_t)mappedAddress;
- (uint64_t)offsetSpace;
- (uint64_t)pageAlignedSize;
- (uint64_t)setMappedAddress:(uint64_t)result;
- (uint64_t)setOffset:(uint64_t)result;
- (uint64_t)setOffsetSpace:(uint64_t)result;
- (uint64_t)setPageAlignedSize:(uint64_t)result;
- (uint64_t)setSize:(uint64_t)result;
- (uint64_t)setStart:(uint64_t)result;
- (unsigned)atomicReadAtOffset:(unint64_t)a3 value:(id *)a4;
- (unsigned)atomicWriteEightBytes:(unint64_t)a3 toOffset:(unint64_t)a4 expected:(unint64_t *)a5;
- (unsigned)atomicWriteFourBytes:(unsigned int)a3 toOffset:(unint64_t)a4 expected:(unsigned int *)a5;
- (unsigned)atomicWriteSixteenBytes:(BMMemoryMapping *)self toOffset:(SEL)a2 expected:;
- (void)dealloc;
- (void)sync;
- (void)unmap;
- (void)updateToMaxOfCurrentWriteOffsetAnd:(unint64_t)a3;
- (void)writeBytes:(const void *)a3 toOffset:(unint64_t)a4 length:(unint64_t)a5;
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
  v7 = *a1;
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
  _os_log_error_impl(&dword_1C928A000, a1, OS_LOG_TYPE_ERROR, "Failed to msync because %{public, darwin.errno}d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

- (BMMemoryMapping)initWithSize:(unint64_t)a3 protection:(int)a4 advice:(int)a5 offset:(int64_t)a6
{
  v11.receiver = self;
  v11.super_class = BMMemoryMapping;
  result = [(BMMemoryMapping *)&v11 init];
  if (result)
  {
    result->_protection = a4;
    result->_advice = a5;
    result->_size = a3;
    result->_offset = a6;
    atomic_store(0, &result->_currentWriteOffset);
  }

  return result;
}

- (BOOL)mapWithFileHandle:(id)a3 fileSize:(unint64_t)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(BMMemoryMapping *)self offset];
  if ((v7 & 0x8000000000000000) != 0)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [BMMemoryMapping mapWithFileHandle:v6 fileSize:?];
    }

    goto LABEL_20;
  }

  v8 = v7;
  if (v7 > a4)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      size = self->_size;
      v11 = MEMORY[0x1E698E9C8];
      v12 = [v6 attributes];
      v13 = [v12 path];
      v14 = [v11 privacyPathname:v13];
      v40 = 134218754;
      v41 = size;
      v42 = 2048;
      *v43 = a4;
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

  v15 = NSRoundDownToMultipleOfPageSize(v7);
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
      v31 = [v6 attributes];
      v32 = [v31 path];
      v14 = [v30 privacyPathname:v32];
      v40 = 134218498;
      v41 = v28;
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
  v18 = mmap(0, v16, self->_protection, 1, [v6 fd], v15);
  if (v18 == -1)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v35 = MEMORY[0x1E698E9C8];
      v36 = [v6 attributes];
      v37 = [v36 path];
      v38 = [v35 privacyPathname:v37];
      v39 = *__error();
      v40 = 138544130;
      v41 = v38;
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
    v23 = [v6 attributes];
    v24 = [v23 path];
    v25 = [v22 privacyPathname:v24];
    v27 = self->_size;
    v26 = self->_offset;
    v40 = 138544131;
    v41 = v25;
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

- (id)dataAtOffset:(unint64_t)a3 withLength:(unint64_t)a4 makeCopy:(BOOL)a5
{
  v5 = a5;
  v20 = *MEMORY[0x1E69E9840];
  if ([BMMemoryMapping isValidReadFromOffset:"isValidReadFromOffset:withLength:" withLength:?])
  {
    v9 = [(BMMemoryMapping *)self start]+ a3;
    if (v5)
    {
      [MEMORY[0x1E695DEF0] dataWithBytes:v9 length:a4];
    }

    else
    {
      [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v9 length:a4 freeWhenDone:0];
    }
    v10 = ;
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 134218496;
      v15 = a3;
      v16 = 2048;
      v17 = a4;
      v18 = 2048;
      v19 = [(BMMemoryMapping *)self size];
      _os_log_error_impl(&dword_1C928A000, v11, OS_LOG_TYPE_ERROR, "Cannot read data from offset: %lld with length: %lld. Size (%lld) too small", &v14, 0x20u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (unsigned)atomicReadAtOffset:(unint64_t)a3 value:(id *)a4
{
  if ([(BMMemoryMapping *)self canAtomicallyAccessOffset:a3 byteCount:8])
  {
    if ([(BMMemoryMapping *)self isValidReadFromOffset:a3 withLength:8])
    {
      v7 = atomic_load(([(BMMemoryMapping *)self start]+ a3));
      a4->var0 = v7;
      return 1;
    }

    else
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [BMMemoryMapping atomicReadAtOffset:a3 value:?];
      }

      return 0;
    }
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMMemoryMapping atomicReadAtOffset:a3 value:v9];
    }

    return 3;
  }
}

- (BOOL)atomicUpdateOffset:(unint64_t)a3 withValue:(id)a4 shouldReplace:(id)a5
{
  v8 = a5;
  if (![(BMMemoryMapping *)self canAtomicallyAccessOffset:a3 byteCount:8])
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMMemoryMapping atomicReadAtOffset:a3 value:v11];
    }

    goto LABEL_14;
  }

  if (!self || ![(BMMemoryMapping *)self isWritable]|| ![(BMMemoryMapping *)self isValidReadFromOffset:a3 withLength:8])
  {
    [BMMemoryMapping atomicUpdateOffset:a3 withValue:? shouldReplace:?];
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v14 = 0;
  if ([(BMMemoryMapping *)self atomicReadAtOffset:a3 value:&v14]!= 1 || !v8[2](v8, v14, a4.var0))
  {
    goto LABEL_14;
  }

  v13 = v14;
  do
  {
    v9 = [(BMMemoryMapping *)self atomicWriteEightBytes:a4.var0 toOffset:a3 expected:&v13];
    v10 = v9 == 1;
    if (v9 == 1)
    {
      break;
    }

    v14 = v13;
  }

  while (((v8[2])(v8) & 1) != 0);
LABEL_15:

  return v10;
}

- (void)updateToMaxOfCurrentWriteOffsetAnd:(unint64_t)a3
{
  v3 = a3;
  p_size = &self->_size;
  if (self->_size < a3)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMMemoryMapping *)p_size updateToMaxOfCurrentWriteOffsetAnd:v3, v6];
    }

    v3 = *p_size;
  }

  v7 = [(BMMemoryMapping *)self currentWriteOffset];
  if (v7 < v3)
  {
    v8 = v7;
    do
    {
      atomic_compare_exchange_strong(&self->_currentWriteOffset, &v8, v3);
      if (v8 == v7)
      {
        break;
      }

      v7 = v8;
    }

    while (v8 < v3);
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

- (uint64_t)isValidWriteToDestinationOffset:(uint64_t)a3 withLength:(uint64_t)a4 bytes:
{
  if (!a1)
  {
    return 0;
  }

  v8 = [a1 isWritable];
  if (!a4 || !v8)
  {
    return 0;
  }

  return [a1 isValidReadFromOffset:a2 withLength:a3];
}

- (BOOL)isValidReadFromOffset:(unint64_t)a3 withLength:(unint64_t)a4
{
  if (self)
  {
    v4 = self;
    LOBYTE(self) = self->_mappedAddress && [(BMMemoryMapping *)self size]> a3 && [(BMMemoryMapping *)v4 size]- a3 >= a4;
  }

  return self;
}

- (BOOL)isValidReadFromOffsetV2:(unint64_t)a3 withLength:(unint64_t)a4 currentFrameCount:(unsigned int)a5
{
  if (self)
  {
    if (self->_mappedAddress)
    {
      v7 = [(BMMemoryMapping *)self size]- 16 * a5;
      LOBYTE(self) = v7 >= 1 && v7 > a3 && a3 + a4 + 24 <= v7;
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (unsigned)atomicWriteEightBytes:(unint64_t)a3 toOffset:(unint64_t)a4 expected:(unint64_t *)a5
{
  OUTLINED_FUNCTION_2_3();
  if ([v9 canAtomicallyAccessOffset:v10 byteCount:8])
  {
    if (v8)
    {
      v11 = [v8 isWritable];
      if (v11)
      {
        v11 = [v8 isValidReadFromOffset:v7 withLength:8];
        if (v11)
        {
          v12 = [v8 start];
          v13 = *v5;
          v14 = *v5;
          atomic_compare_exchange_strong((v12 + v7), &v14, v6);
          if (v14 == v13)
          {
            LOBYTE(v11) = 1;
          }

          else
          {
            *v5 = v14;
            LOBYTE(v11) = 2;
          }
        }
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 3;
  }

  return v11;
}

- (unsigned)atomicWriteSixteenBytes:(BMMemoryMapping *)self toOffset:(SEL)a2 expected:
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

- (unsigned)atomicWriteFourBytes:(unsigned int)a3 toOffset:(unint64_t)a4 expected:(unsigned int *)a5
{
  if ([(BMMemoryMapping *)self canAtomicallyAccessOffset:a4 byteCount:4])
  {
    if (self)
    {
      v9 = [(BMMemoryMapping *)self isWritable];
      if (v9)
      {
        v9 = [(BMMemoryMapping *)self isValidReadFromOffset:a4 withLength:4];
        if (v9)
        {
          v10 = [(BMMemoryMapping *)self start];
          v11 = *a5;
          v12 = *a5;
          atomic_compare_exchange_strong(&v10[a4], &v12, a3);
          if (v12 == v11)
          {
            LOBYTE(v9) = 1;
          }

          else
          {
            *a5 = v12;
            LOBYTE(v9) = 2;
          }
        }
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 3;
  }

  return v9;
}

- (void)writeBytes:(const void *)a3 toOffset:(unint64_t)a4 length:(unint64_t)a5
{
  if (self)
  {
    OUTLINED_FUNCTION_2_3();
    v10 = [v9 isWritable];
    if (v6)
    {
      if (v10 && [v8 isValidReadFromOffset:v7 withLength:v5])
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