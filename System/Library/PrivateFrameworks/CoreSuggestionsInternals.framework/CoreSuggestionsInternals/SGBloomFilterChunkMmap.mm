@interface SGBloomFilterChunkMmap
- (BOOL)exists:(id)exists;
- (SGBloomFilterChunkMmap)initWithPath:(id)path;
- (void)add:(id)add;
- (void)close;
- (void)dealloc;
@end

@implementation SGBloomFilterChunkMmap

- (BOOL)exists:(id)exists
{
  mask = self->_mask;
  v4 = &self->_buf[6150 * (exists.var0 & 7)];
  if (((v4[(exists.var1.var0 % 0x1806) >> 3] >> ((exists.var1.var0 % 0x1806) & mask)) & 1) == 0)
  {
    return 0;
  }

  v5 = 2 * exists.var1.var0;
  v6 = -1;
  while (v6 != 8)
  {
    v7 = v4[(v5 % 0x1806) >> 3];
    v8 = (v5 % 0x1806) & mask;
    v5 += exists.var1.var0;
    ++v6;
    if (((v7 >> v8) & 1) == 0)
    {
      return v6 > 8;
    }
  }

  v6 = 9;
  return v6 > 8;
}

- (void)add:(id)add
{
  if (doInsert(self->_buf, add.var1.var0, self->_mask))
  {
    ++*self->_countPtr;
  }
}

- (void)close
{
  if ((self->_fd & 0x80000000) == 0)
  {
    msync(self->_countPtr, 0xC034uLL, 1);
    munmap(self->_countPtr, 0xC034uLL);
    self->_countPtr = 0;
    close(self->_fd);
    self->_fd = -1;
  }
}

- (void)dealloc
{
  [(SGBloomFilterChunkMmap *)self close];
  v3.receiver = self;
  v3.super_class = SGBloomFilterChunkMmap;
  [(SGBloomFilterChunkMmap *)&v3 dealloc];
}

- (SGBloomFilterChunkMmap)initWithPath:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = SGBloomFilterChunkMmap;
  v7 = [(SGBloomFilterChunkMmap *)&v20 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v7->_path, path);
  if (([pathCopy hasSuffix:@".bf2-head"] & 1) != 0 || objc_msgSend(pathCopy, "hasSuffix:", @".bf2-tail"))
  {
    v9 = 7;
LABEL_5:
    v8->_mask = v9;
    goto LABEL_6;
  }

  if (([pathCopy hasSuffix:@".bf-head"] & 1) != 0 || objc_msgSend(pathCopy, "hasSuffix:", @".bf-tail"))
  {
    v9 = 3;
    goto LABEL_5;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:v8 file:@"SGBloomFilter.m" lineNumber:314 description:{@"Invalid file extension for Bloom filter chunk: %@", pathCopy}];

LABEL_6:
  v10 = open_dprotected_np([(NSString *)v8->_path UTF8String], 514, 3, 0, 384);
  v8->_fd = v10;
  if (v10 == -1)
  {
    v13 = sgLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = *__error();
      *buf = 67109120;
      v22 = v18;
      _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "Could not open Bloom filter file. errno = %i", buf, 8u);
    }

    v12 = 0;
  }

  else
  {
    ftruncate(v10, 49204);
    v11 = mmap(0, 0xC034uLL, 3, 1, v8->_fd, 0);
    v8->_countPtr = v11;
    if (v11 != -1)
    {
      v8->_buf = v11 + 4;
LABEL_9:
      v12 = v8;
      goto LABEL_19;
    }

    v14 = sgLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = *__error();
      *buf = 67109120;
      v22 = v19;
      _os_log_error_impl(&dword_231E60000, v14, OS_LOG_TYPE_ERROR, "Could not mmap Bloom filter file. errno = %i", buf, 8u);
    }

    close(v8->_fd);
    v12 = 0;
    v8->_fd = -1;
  }

LABEL_19:

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

@end