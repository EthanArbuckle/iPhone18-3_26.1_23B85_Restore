@interface CUKeyValueStoreReader
- (BOOL)enumerateKeyType:(Class)type valueType:(Class)valueType error:(id *)error handler:(id)handler;
- (BOOL)enumerateKeysAndValuesAndReturnError:(id *)error handler:(id)handler;
- (BOOL)enumerateValuesForKey:(id)key error:(id *)error handler:(id)handler;
- (BOOL)enumerateValuesForKey:(id)key valueType:(Class)type error:(id *)error handler:(id)handler;
- (BOOL)openAtPath:(id)path error:(id *)error;
- (BOOL)valueExistsForKey:(id)key;
- (CUKeyValueStoreReader)init;
- (CUKeyValueStoreReader)initWithKeyType:(Class)type valueType:(Class)valueType;
- (id)_readObjectAtOffset:(unsigned int)offset length:(unsigned int)length type:(Class)type error:(id *)error;
- (id)valueForKey:(id)key error:(id *)error;
- (id)valueForKey:(id)key valueType:(Class)type error:(id *)error;
- (void)close;
- (void)dealloc;
@end

@implementation CUKeyValueStoreReader

- (id)valueForKey:(id)key valueType:(Class)type error:(id *)error
{
  keyCopy = key;
  v49 = 0;
  v48 = 0;
  bytes = [keyCopy encodedBytesAndReturnLength:&v49 error:&v48];
  v10 = v48;
  v16 = v10;
  if (bytes)
  {
    v17 = 0;
    v18 = v49;
    goto LABEL_3;
  }

  if (v10)
  {
    if (error)
    {
LABEL_11:
      v23 = v16;
      v17 = 0;
      v22 = 0;
      *error = v16;
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v47 = 0;
  v17 = [keyCopy encodedDataAndReturnError:&v47];
  v33 = v47;
  v16 = v33;
  if (!v17)
  {
    if (error)
    {
      if (v33)
      {
        goto LABEL_11;
      }

      v43 = NSErrorWithOSStatusF(4294960534, "Encode key failed", v34, v35, v36, v37, v38, v39, v46);
      *error = v43;
    }

LABEL_29:
    v17 = 0;
    goto LABEL_30;
  }

  bytes = [v17 bytes];
  v18 = [v17 length];
  v49 = v18;
LABEL_3:
  if (HIDWORD(v18))
  {
    if (error)
    {
      v46 = v18;
      v19 = "Key too big %zu vs %u";
      v20 = 4294960591;
LABEL_6:
      NSErrorWithOSStatusF(v20, v19, v18, v11, v12, v13, v14, v15, v46);
      v21 = LABEL_7:;
LABEL_8:
      v22 = 0;
      *error = v21;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (self->_fd < 0)
  {
    if (error)
    {
      v21 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960551, "Not opened", v11, v12, v13, v14, v15, v46);
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  self->_cdb.loop = 0;
  if (cdb_findnext(&self->_cdb, bytes, v18) <= 0)
  {
    if (error)
    {
      v22 = 0;
      *error = 0;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  dlen = self->_cdb.dlen;
  if (dlen)
  {
    v25 = malloc_type_malloc(self->_cdb.dlen, 0x100004077774924uLL);
    if (v25)
    {
      v26 = v25;
      if (cdb_read(&self->_cdb, v25, dlen, self->_cdb.dpos))
      {
        free(v26);
        if (error)
        {
          NSErrorWithOSStatusF(4294960550, "Read failed (%d)", v27, v28, v29, v30, v31, v32, 0xFFFFFFFFLL);
          goto LABEL_7;
        }

        goto LABEL_30;
      }

      v22 = [(objc_class *)type createWithBytesNoCopy:v26 length:dlen error:error];
      if (v22)
      {
        goto LABEL_37;
      }

      v42 = v26;
LABEL_42:
      free(v42);
      goto LABEL_43;
    }

    if (error)
    {
      v46 = dlen;
      v19 = "malloc %zu bytes failed";
LABEL_40:
      v20 = 4294960568;
      goto LABEL_6;
    }

    goto LABEL_30;
  }

  v40 = malloc_type_malloc(1uLL, 0xD0F24CB7uLL);
  if (!v40)
  {
    if (error)
    {
      v19 = "malloc 1 byte failed";
      goto LABEL_40;
    }

LABEL_30:
    v22 = 0;
    goto LABEL_31;
  }

  v41 = v40;
  v22 = [(objc_class *)type createWithBytesNoCopy:v40 length:0 error:error];
  if (!v22)
  {
    v42 = v41;
    goto LABEL_42;
  }

LABEL_37:
  v45 = v22;
LABEL_43:

LABEL_31:

  return v22;
}

- (id)valueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v13 = self->_valueType;
  if (v13)
  {
    v14 = [(CUKeyValueStoreReader *)self valueForKey:keyCopy valueType:v13 error:error];
  }

  else if (error)
  {
    NSErrorWithOSStatusF(4294960551, "Unknown value type", v7, v8, v9, v10, v11, v12, v16);
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)valueExistsForKey:(id)key
{
  keyCopy = key;
  v14 = 0;
  v13 = 0;
  bytes = [keyCopy encodedBytesAndReturnLength:&v14 error:&v13];
  v6 = v13;
  v7 = v6;
  if (!bytes)
  {
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v12 = 0;
      v8 = [keyCopy encodedDataAndReturnError:&v12];
      v7 = v12;
      if (v8)
      {
        bytes = [v8 bytes];
        v9 = [v8 length];
        v14 = v9;
        goto LABEL_3;
      }
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  v9 = v14;
LABEL_3:
  if (HIDWORD(v9) || self->_fd < 0)
  {
    goto LABEL_8;
  }

  self->_cdb.loop = 0;
  v10 = cdb_findnext(&self->_cdb, bytes, v9) > 0;
LABEL_9:

  return v10;
}

- (BOOL)enumerateValuesForKey:(id)key valueType:(Class)type error:(id *)error handler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v40 = 0;
  v39 = 0;
  bytes = [keyCopy encodedBytesAndReturnLength:&v40 error:&v39];
  v13 = v39;
  v19 = v13;
  if (bytes)
  {
    v20 = 0;
    v21 = v40;
    goto LABEL_3;
  }

  if (v13)
  {
    if (error)
    {
LABEL_9:
      v24 = v19;
      v20 = 0;
      v23 = 0;
      *error = v19;
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v38 = 0;
  v20 = [keyCopy encodedDataAndReturnError:&v38];
  v27 = v38;
  v19 = v27;
  if (!v20)
  {
    if (error)
    {
      if (v27)
      {
        goto LABEL_9;
      }

      v34 = NSErrorWithOSStatusF(4294960534, "Encode key failed", v28, v29, v30, v31, v32, v33, v36);
      *error = v34;
    }

LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  bytes = [v20 bytes];
  v21 = [v20 length];
  v40 = v21;
LABEL_3:
  if (!HIDWORD(v21))
  {
    if ((self->_fd & 0x80000000) == 0)
    {
      self->_cdb.loop = 0;
      if (cdb_findnext(&self->_cdb, bytes, v21) >= 1)
      {
        v25 = [(CUKeyValueStoreReader *)self _readObjectAtOffset:self->_cdb.dpos length:self->_cdb.dlen type:type error:error];
        if (!v25)
        {
          goto LABEL_26;
        }

        v26 = v25;
        while (1)
        {
          v37 = 0;
          handlerCopy[2](handlerCopy, v26, &v37);
          if ((v37 & 1) != 0 || cdb_findnext(&self->_cdb, bytes, v40) < 1)
          {
            break;
          }

          v26 = [(CUKeyValueStoreReader *)self _readObjectAtOffset:self->_cdb.dpos length:self->_cdb.dlen type:type error:error];
          if (!v26)
          {
            goto LABEL_26;
          }
        }
      }

      v23 = 1;
      goto LABEL_27;
    }

    if (error)
    {
      v22 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960551, "Not opened", v14, v15, v16, v17, v18, v36);
      goto LABEL_6;
    }

LABEL_26:
    v23 = 0;
    goto LABEL_27;
  }

  if (!error)
  {
    goto LABEL_26;
  }

  v22 = NSErrorWithOSStatusF(4294960591, "Key too big %zu vs %u", v21, v14, v15, v16, v17, v18, v21);
LABEL_6:
  v23 = 0;
  *error = v22;
LABEL_27:

  return v23;
}

- (BOOL)enumerateValuesForKey:(id)key error:(id *)error handler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v16 = self->_valueType;
  if (v16)
  {
    v17 = [(CUKeyValueStoreReader *)self enumerateValuesForKey:keyCopy valueType:v16 error:error handler:handlerCopy];
  }

  else if (error)
  {
    NSErrorWithOSStatusF(4294960551, "Unknown value type", v10, v11, v12, v13, v14, v15, v19);
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)enumerateKeyType:(Class)type valueType:(Class)valueType error:(id *)error handler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (self->_fd < 0)
  {
    if (error)
    {
      v34 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960551, "Not opened", v9, v10, v11, v12, v13, v36);
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (!cdb_read(&self->_cdb, __dst, 4uLL, 0))
  {
    v22 = __dst[0];
    if (__dst[0] < 0x801u)
    {
LABEL_24:
      v28 = 1;
      goto LABEL_25;
    }

    v23 = 2048;
    while (!cdb_read(&self->_cdb, __dst, 8uLL, v23))
    {
      v25 = __dst[0];
      v24 = __dst[1];
      v26 = v23 + 8;
      v27 = [(CUKeyValueStoreReader *)self _readObjectAtOffset:v23 + 8 length:__dst[0] type:type error:error];
      v28 = v27 != 0;
      if (!v27)
      {
        goto LABEL_25;
      }

      v29 = v27;
      v30 = v25 + v26;
      v31 = [(CUKeyValueStoreReader *)self _readObjectAtOffset:v25 + v26 length:v24 type:valueType error:error];
      if (!v31)
      {

        goto LABEL_22;
      }

      v32 = v31;
      v38 = 0;
      handlerCopy[2](handlerCopy, v29, v31, &v38);
      if (v38 == 1)
      {

        goto LABEL_24;
      }

      v23 = v24 + v30;

      if (v23 >= v22)
      {
        goto LABEL_24;
      }
    }

    if (!error)
    {
      goto LABEL_22;
    }

    if (*__error())
    {
      v21 = *__error();
    }

    else
    {
      v21 = 4294960596;
    }

    v33 = "Read key/value lengths failed";
    goto LABEL_16;
  }

  if (!error)
  {
LABEL_22:
    v28 = 0;
    goto LABEL_25;
  }

  if (*__error())
  {
    v21 = *__error();
  }

  else
  {
    v21 = 4294960596;
  }

  v33 = "Read header failed";
LABEL_16:
  v34 = NSErrorWithOSStatusF(v21, v33, v15, v16, v17, v18, v19, v20, v36);
LABEL_17:
  v28 = 0;
  *error = v34;
LABEL_25:

  return v28;
}

- (BOOL)enumerateKeysAndValuesAndReturnError:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v13 = self->_keyType;
  if (v13)
  {
    v20 = self->_valueType;
    if (v20)
    {
      v21 = [(CUKeyValueStoreReader *)self enumerateKeyType:v13 valueType:v20 error:error handler:handlerCopy];
    }

    else if (error)
    {
      NSErrorWithOSStatusF(4294960551, "Unknown value type", v14, v15, v16, v17, v18, v19, v23);
      *error = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  else if (error)
  {
    NSErrorWithOSStatusF(4294960551, "Unknown key type", v7, v8, v9, v10, v11, v12, v23);
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_readObjectAtOffset:(unsigned int)offset length:(unsigned int)length type:(Class)type error:(id *)error
{
  v8 = *&length;
  if (length <= 1)
  {
    lengthCopy = 1;
  }

  else
  {
    lengthCopy = length;
  }

  v12 = malloc_type_malloc(lengthCopy, 0x100004077774924uLL);
  if (v12)
  {
    v19 = v12;
    if (!cdb_read(&self->_cdb, v12, v8, offset))
    {
      v28 = [(objc_class *)type createWithBytesNoCopy:v19 length:v8 error:error];
      v27 = v28;
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        free(v19);
      }

      goto LABEL_19;
    }

    free(v19);
    if (error)
    {
      if (*__error())
      {
        v26 = *__error();
      }

      else
      {
        v26 = 4294960596;
      }

      NSErrorWithOSStatusF(v26, "Read bytes failed", v20, v21, v22, v23, v24, v25, v31);
      goto LABEL_16;
    }

LABEL_11:
    v27 = 0;
    goto LABEL_19;
  }

  if (!error)
  {
    goto LABEL_11;
  }

  NSErrorWithOSStatusF(4294960568, "malloc %zu bytes failed", v13, v14, v15, v16, v17, v18, v8);
LABEL_16:
  *error = v27 = 0;
LABEL_19:

  return v27;
}

- (void)close
{
  map = self->_cdb.map;
  if (map)
  {
    munmap(map, self->_cdb.size);
    self->_cdb.map = 0;
  }

  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    if (close(fd))
    {
      if (*__error())
      {
        __error();
      }
    }

    self->_fd = -1;
  }
}

- (BOOL)openAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  uTF8String = [path UTF8String];
  if (!uTF8String)
  {
    if (error)
    {
      v22 = "No file path";
      v23 = 4294960592;
LABEL_20:
      v24 = NSErrorWithOSStatusF(v23, v22, v9, v10, v11, v12, v13, v14, v26);
      v25 = v24;
      result = 0;
      *error = v24;
      return result;
    }

    return 0;
  }

  v15 = uTF8String;
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    if (close(fd) && *__error())
    {
      __error();
    }

    self->_fd = -1;
  }

  v17 = open(v15, 0);
  self->_fd = v17;
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  if (!*__error())
  {
    v23 = 4294960596;
    if (error)
    {
      goto LABEL_19;
    }

    return 0;
  }

  v23 = *__error();
  if (v23)
  {
    if (error)
    {
LABEL_19:
      v26 = v15;
      v22 = "Open file '%s' failed";
      goto LABEL_20;
    }

    return 0;
  }

LABEL_8:
  map = self->_cdb.map;
  if (map)
  {
    munmap(map, self->_cdb.size);
    self->_cdb.map = 0;
  }

  v19 = self->_fd;
  memset(&v27, 0, sizeof(v27));
  self->_cdb.loop = 0;
  self->_cdb.fd = v19;
  if (!fstat(v19, &v27) && v27.st_size <= 0xFFFFFFFFLL)
  {
    v20 = mmap(0, v27.st_size, 1, 1, v19, 0);
    self->_cdb.size = v27.st_size;
    self->_cdb.map = v20;
  }

  return 1;
}

- (void)dealloc
{
  map = self->_cdb.map;
  if (map)
  {
    munmap(map, self->_cdb.size);
    self->_cdb.map = 0;
  }

  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    if (close(fd) && *__error())
    {
      __error();
    }

    self->_fd = -1;
  }

  v5.receiver = self;
  v5.super_class = CUKeyValueStoreReader;
  [(CUKeyValueStoreReader *)&v5 dealloc];
}

- (CUKeyValueStoreReader)initWithKeyType:(Class)type valueType:(Class)valueType
{
  v6 = [(CUKeyValueStoreReader *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_keyType = type;
    v6->_valueType = valueType;
    v8 = v6;
  }

  return v7;
}

- (CUKeyValueStoreReader)init
{
  v6.receiver = self;
  v6.super_class = CUKeyValueStoreReader;
  v2 = [(CUKeyValueStoreReader *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_fd = -1;
    v4 = v2;
  }

  return v3;
}

@end