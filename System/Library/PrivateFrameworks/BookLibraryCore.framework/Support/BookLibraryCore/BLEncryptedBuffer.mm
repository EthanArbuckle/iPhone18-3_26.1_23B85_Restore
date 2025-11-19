@interface BLEncryptedBuffer
- (BLEncryptedBuffer)initWithFileAtURL:(id)a3 pageSize:(unint64_t)a4 key:(const char *)a5 options:(unsigned __int16)a6;
- (BLEncryptedBuffer)initWithSize:(unint64_t)a3 pageSize:(unint64_t)a4 key:(const char *)a5 options:(unsigned __int16)a6;
- (unint64_t)_cachePage:(unsigned int)a3;
- (unint64_t)_decryptRange:(_NSRange)a3;
- (unint64_t)_writeCurrentCacheBlock;
- (void)dealloc;
- (void)decrypt;
@end

@implementation BLEncryptedBuffer

- (BLEncryptedBuffer)initWithSize:(unint64_t)a3 pageSize:(unint64_t)a4 key:(const char *)a5 options:(unsigned __int16)a6
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
  *(v10 + 64) = a6;
  *(v10 + 11) = sub_1000A4720;
  if (a5)
  {
    *(v10 + 12) = *a5;
  }

  else
  {
    for (i = 12; i != 28; ++i)
    {
      v11[i] = arc4random();
    }
  }

  if ((a4 & 0xF) != 0 || a4 == 0)
  {
    a4 = 1024;
  }

  if ((*(v11 + 5) = a4, v14 = (a3 + a4 - 1) / a4, *(v11 + 12) = v14, v15 = malloc_type_calloc(1uLL, (v14 + 7) >> 3, 0x100004077774924uLL), (*(v11 + 7) = v15) != 0) && (v16 = malloc_type_calloc(1uLL, a4, 0x100004077774924uLL), (*(v11 + 8) = v16) != 0) && ((*(v11 + 31) = 128, *(v11 + 9) = a3, (a6 & 4) != 0) ? (v17 = a4 << 7, *(v11 + 13) = -1) : (v17 = a4 * *(v11 + 12)), (*(v11 + 4) = v17, (a6 & 8) != 0) || !HIDWORD(v17) && (v18 = malloc_type_calloc(1uLL, v17, 0x100004077774924uLL), (*(v11 + 10) = v18) != 0)))
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

- (BLEncryptedBuffer)initWithFileAtURL:(id)a3 pageSize:(unint64_t)a4 key:(const char *)a5 options:(unsigned __int16)a6
{
  v6 = a6;
  v10 = a3;
  v11 = [v10 path];
  v12 = open([v11 UTF8String], 2);

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
      v33 = v10;
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
      v33 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[Install-Op-Buffer] fstat error: %s, url: %{mask.hash}@", buf, 0x20u);
    }
  }

  st_size = v27.st_size;
  v20 = [(BLEncryptedBuffer *)self initWithSize:v27.st_size pageSize:a4 key:a5 options:v6 | 7u];
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
        v33 = v10;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[Install-Op-Buffer] fdopen error: %s, url: %{mask.hash}@", buf, 0x20u);
      }
    }

    v25 = 0;
    if (a5)
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

- (unint64_t)_cachePage:(unsigned int)a3
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
  if (firstPageInBuffer <= a3 && self->_cachedPageCount + firstPageInBuffer > a3)
  {
    return 0;
  }

  v6 = [(BLEncryptedBuffer *)self _writeCurrentCacheBlock];
  if (!v6)
  {
    fseeko(self->_file, self->_pageSize * a3, 0);
    v8 = fread(self->_baseAddress, 1uLL, self->_pageSize * self->_cachedPageCount, self->_file);
    if (v8 == self->_pageSize * self->_cachedPageCount || (v6 = v8, v9 = feof(self->_file), !v6) || v9)
    {
      v6 = 0;
      self->_firstPageInBuffer = a3;
    }
  }

  return v6;
}

- (unint64_t)_decryptRange:(_NSRange)a3
{
  pageSize = self->_pageSize;
  v5 = a3.location / pageSize;
  v6 = a3.length + a3.location - 1;
  v7 = v6 / pageSize;
  if ((a3.location / pageSize) <= (v6 / pageSize))
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