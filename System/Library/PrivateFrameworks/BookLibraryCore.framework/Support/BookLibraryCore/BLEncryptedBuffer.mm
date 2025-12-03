@interface BLEncryptedBuffer
- (BLEncryptedBuffer)initWithFileAtURL:(id)l pageSize:(unint64_t)size key:(const char *)key options:(unsigned __int16)options;
- (BLEncryptedBuffer)initWithSize:(unint64_t)size pageSize:(unint64_t)pageSize key:(const char *)key options:(unsigned __int16)options;
- (unint64_t)_cachePage:(unsigned int)page;
- (unint64_t)_decryptRange:(_NSRange)range;
- (unint64_t)_writeCurrentCacheBlock;
- (void)dealloc;
- (void)decrypt;
@end

@implementation BLEncryptedBuffer

- (BLEncryptedBuffer)initWithSize:(unint64_t)size pageSize:(unint64_t)pageSize key:(const char *)key options:(unsigned __int16)options
{
  v21.receiver = self;
  v21.super_class = BLEncryptedBuffer;
  v10 = [(BLEncryptedBuffer *)&v21 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_20;
  }

  *(v10 + 2) = 1668446573;
  *(v10 + 64) = options;
  *(v10 + 11) = sub_1000A4720;
  if (key)
  {
    *(v10 + 12) = *key;
  }

  else
  {
    for (i = 12; i != 28; ++i)
    {
      v11[i] = arc4random();
    }
  }

  if ((pageSize & 0xF) != 0 || pageSize == 0)
  {
    pageSize = 1024;
  }

  if ((*(v11 + 5) = pageSize, v14 = (size + pageSize - 1) / pageSize, *(v11 + 12) = v14, v15 = malloc_type_calloc(1uLL, (v14 + 7) >> 3, 0x100004077774924uLL), (*(v11 + 7) = v15) != 0) && (v16 = malloc_type_calloc(1uLL, pageSize, 0x100004077774924uLL), (*(v11 + 8) = v16) != 0) && ((*(v11 + 31) = 128, *(v11 + 9) = size, (options & 4) != 0) ? (v17 = pageSize << 7, *(v11 + 13) = -1) : (v17 = pageSize * *(v11 + 12)), (*(v11 + 4) = v17, (options & 8) != 0) || !HIDWORD(v17) && (v18 = malloc_type_calloc(1uLL, v17, 0x100004077774924uLL), (*(v11 + 10) = v18) != 0)))
  {
LABEL_20:
    v19 = v11;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BLEncryptedBuffer)initWithFileAtURL:(id)l pageSize:(unint64_t)size key:(const char *)key options:(unsigned __int16)options
{
  optionsCopy = options;
  lCopy = l;
  path = [lCopy path];
  v12 = open([path UTF8String], 2);

  if (v12 == -1)
  {
    v13 = BLBookInstallLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = __error();
      v15 = strerror(*v14);
      *buf = 136315650;
      v29 = v15;
      v30 = 2160;
      v31 = 1752392040;
      v32 = 2112;
      v33 = lCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[Install-Op-Buffer] open error: %s, url: %{mask.hash}@", buf, 0x20u);
    }
  }

  if (fstat(v12, &v27) == -1)
  {
    v16 = BLBookInstallLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = __error();
      v18 = strerror(*v17);
      *buf = 136315650;
      v29 = v18;
      v30 = 2160;
      v31 = 1752392040;
      v32 = 2112;
      v33 = lCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[Install-Op-Buffer] fstat error: %s, url: %{mask.hash}@", buf, 0x20u);
    }
  }

  st_size = v27.st_size;
  v20 = [(BLEncryptedBuffer *)self initWithSize:v27.st_size pageSize:size key:key options:optionsCopy | 7u];
  if (v20)
  {
    v21 = fdopen(v12, "w+");
    v20->_file = v21;
    v20->_fileSize = st_size;
    if (!v21)
    {
      v22 = BLBookInstallLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = __error();
        v24 = strerror(*v23);
        *buf = 136315650;
        v29 = v24;
        v30 = 2160;
        v31 = 1752392040;
        v32 = 2112;
        v33 = lCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[Install-Op-Buffer] fdopen error: %s, url: %{mask.hash}@", buf, 0x20u);
      }
    }

    v25 = 0;
    if (key)
    {
      do
      {
        v20->_pageEncryptBits[v25 >> 3] |= 0x80u >> (v25 & 7);
        ++v25;
      }

      while (v25 <= v20->_pageCount - 1);
    }

    else
    {
      do
      {
        v20->_pageEncryptBits[v25 >> 3] &= -129 >> (v25 & 7);
        ++v25;
      }

      while (v25 <= v20->_pageCount - 1);
    }
  }

  else
  {
    close(v12);
  }

  return v20;
}

- (void)dealloc
{
  [(BLEncryptedBuffer *)self _writeCurrentCacheBlock];
  file = self->_file;
  if (file)
  {
    fclose(file);
  }

  pageEncryptBits = self->_pageEncryptBits;
  if (pageEncryptBits)
  {
    free(pageEncryptBits);
  }

  pageTempBuffer = self->_pageTempBuffer;
  if (pageTempBuffer)
  {
    free(pageTempBuffer);
  }

  if (self->_baseAddress && ([(BLEncryptedBuffer *)self options]& 8) == 0)
  {
    free(self->_baseAddress);
  }

  v6.receiver = self;
  v6.super_class = BLEncryptedBuffer;
  [(BLEncryptedBuffer *)&v6 dealloc];
}

- (void)decrypt
{
  if (self->_file)
  {
    [(BLEncryptedBuffer *)self _decryptRange:0, self->_logicalSize];
  }
}

- (unint64_t)_cachePage:(unsigned int)page
{
  if (([(BLEncryptedBuffer *)self options]& 4) == 0)
  {
    return 0;
  }

  if (([(BLEncryptedBuffer *)self options]& 0x20) != 0)
  {
    return 0;
  }

  firstPageInBuffer = self->_firstPageInBuffer;
  if (firstPageInBuffer <= page && self->_cachedPageCount + firstPageInBuffer > page)
  {
    return 0;
  }

  _writeCurrentCacheBlock = [(BLEncryptedBuffer *)self _writeCurrentCacheBlock];
  if (!_writeCurrentCacheBlock)
  {
    fseeko(self->_file, self->_pageSize * page, 0);
    v8 = fread(self->_baseAddress, 1uLL, self->_pageSize * self->_cachedPageCount, self->_file);
    if (v8 == self->_pageSize * self->_cachedPageCount || (_writeCurrentCacheBlock = v8, v9 = feof(self->_file), !_writeCurrentCacheBlock) || v9)
    {
      _writeCurrentCacheBlock = 0;
      self->_firstPageInBuffer = page;
    }
  }

  return _writeCurrentCacheBlock;
}

- (unint64_t)_decryptRange:(_NSRange)range
{
  pageSize = self->_pageSize;
  v5 = range.location / pageSize;
  v6 = range.length + range.location - 1;
  v7 = v6 / pageSize;
  if ((range.location / pageSize) <= (v6 / pageSize))
  {
    while (1)
    {
      while (1)
      {
        pageEncryptBits = self->_pageEncryptBits;
        if (pageEncryptBits)
        {
          v10 = v5 >> 3;
          if (((pageEncryptBits[v10] << (v5 & 7)) & 0x80) != 0)
          {
            break;
          }
        }

        v5 = (v5 + 1);
        if (v5 > v7)
        {
          goto LABEL_2;
        }
      }

      v11 = [(BLEncryptedBuffer *)self _cachePage:v5];
      if (v11 || (v19 = 0, *&v20[12] = 0u, v23 = 0, v21 = 0u, v22 = 0u, *v20 = xmmword_1000DF6E0, (self->_ivProc)(v5, self->_ivProcRefcon, v24), *&v20[20] = self->_key, LOBYTE(v21) = 16, *&v22 = v24, *&v20[4] = 3, *&v20[12] = 0, (v11 = sub_1000A4284(&v19)) != 0) || (v12 = self->_pageSize, v13 = &self->_baseAddress[v12 * (v5 - self->_firstPageInBuffer)], v18 = v12, (v11 = sub_1000A445C(&v19, v13, v12, self->_pageTempBuffer, &v18)) != 0))
      {
        v8 = v11;
        goto LABEL_21;
      }

      memmove(v13, self->_pageTempBuffer, self->_pageSize);
      if (([(BLEncryptedBuffer *)self options]& 0x20) != 0)
      {
        break;
      }

      self->_cacheDirty = 1;
      v14 = self->_pageEncryptBits;
      if (v14)
      {
        v14[v10] &= -129 >> (v5 & 7);
      }

      v17 = self->_pageSize - v18;
      v5 = (v5 + 1);
      if (sub_1000A43A0(&v19, &v13[v18], &v17))
      {
        v15 = 1;
      }

      else
      {
        v15 = v5 > v7;
      }

      if (v15)
      {
        goto LABEL_2;
      }
    }

    v8 = -1234;
  }

  else
  {
LABEL_2:
    v8 = 0;
  }

LABEL_21:
  bzero(self->_pageTempBuffer, self->_pageSize);
  return v8;
}

- (unint64_t)_writeCurrentCacheBlock
{
  if (([(BLEncryptedBuffer *)self options]& 4) == 0 || ([(BLEncryptedBuffer *)self options]& 0x20) != 0 || !self->_cacheDirty)
  {
    return 0;
  }

  firstPageInBuffer = self->_firstPageInBuffer;
  pageSize = self->_pageSize;
  v5 = pageSize * firstPageInBuffer;
  v6 = pageSize * (self->_cachedPageCount + firstPageInBuffer);
  if (v6 >= self->_logicalSize)
  {
    logicalSize = self->_logicalSize;
  }

  else
  {
    logicalSize = v6;
  }

  fseeko(self->_file, v5, 0);
  fwrite(self->_baseAddress, 1uLL, logicalSize - v5, self->_file);
  LODWORD(result) = ferror(self->_file);
  if (result)
  {
    return result;
  }

  result = 0;
  self->_cacheDirty = 0;
  return result;
}

@end