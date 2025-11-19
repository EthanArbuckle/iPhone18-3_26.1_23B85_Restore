@interface CUFile
+ (OS_dispatch_queue)fileIODispatchQueue;
+ (id)realPath:(id)a3 error:(id *)a4;
+ (id)resolveRelativePath:(id)a3 rootPath:(id)a4 error:(id *)a5;
+ (void)realPath:(id)a3 dispatchQueue:(id)a4 completionHandler:(id)a5;
+ (void)resolveRelativePath:(id)a3 rootPath:(id)a4 dispatchQueue:(id)a5 completionHandler:(id)a6;
- (id)initForReadingFromURL:(id)a3 dispatchQueue:(id)a4;
- (id)initForWritingToURL:(id)a3 dispatchQueue:(id)a4;
- (id)initForWritingToURL:(id)a3 totalLength:(unint64_t)a4 dispatchQueue:(id)a5;
- (int)_openForReadingAndReturnError:(id *)a3;
- (int)_openForWritingAndReturnError:(id *)a3;
- (void)_completeReadRequest:(id)a3 data:(id)a4 error:(id)a5;
- (void)_completeWriteRequest:(id)a3 error:(id)a4;
- (void)_getLengthWithCompletionHandler:(id)a3;
- (void)_processRead:(id)a3;
- (void)_processReads;
- (void)_processWrite:(id)a3;
- (void)_processWrites;
- (void)_readRequest:(id)a3;
- (void)_writeRequest:(id)a3;
- (void)closeWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)getLengthWithCompletionHandler:(id)a3;
- (void)openWithCompletionHandler:(id)a3;
- (void)readLength:(unint64_t)a3 completionHandler:(id)a4;
- (void)readLength:(unint64_t)a3 offset:(unint64_t)a4 completionHandler:(id)a5;
- (void)writeData:(id)a3 completionHandler:(id)a4;
- (void)writeData:(id)a3 offset:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation CUFile

- (void)_completeWriteRequest:(id)a3 error:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v8 completionHandler];

  if (v6)
  {
    v7 = [v8 completionHandler];
    (v7)[2](v7, v5);
  }
}

- (int)_openForWritingAndReturnError:(id *)a3
{
  fd = self->_fd;
  if (fd < 0)
  {
    v6 = [(NSURL *)self->_url path];
    v7 = [v6 UTF8String];

    if (!v7)
    {
      if (!a3)
      {
        return -1;
      }

      v26 = *MEMORY[0x1E696A768];
      v25 = "No path";
      v24 = 4294960592;
      goto LABEL_18;
    }

    v28 = 384;
    v13 = open(v7, 513);
    if (v13 < 0)
    {
      if (*__error() != 2)
      {
        goto LABEL_15;
      }

      v14 = [(NSURL *)self->_url URLByDeletingLastPathComponent];
      if (!v14)
      {
        if (!a3)
        {
          return -1;
        }

        v26 = *MEMORY[0x1E696A768];
        v25 = "Get parent URL failed";
        v24 = 4294960596;
        goto LABEL_18;
      }

      v15 = v14;
      v16 = [MEMORY[0x1E696AC08] defaultManager];
      v30 = 0;
      v17 = [v16 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v30];
      v18 = v30;

      if ((v17 & 1) == 0)
      {
        if (a3)
        {
          *a3 = NSErrorNestedF_safe(*MEMORY[0x1E696A768], 4294960592, v18, "Create parent failed", v19, v20, v21, v22, 384);
        }

        return -1;
      }

      v28 = 384;
      fd = open(v7, 513);

      if (fd < 0)
      {
LABEL_15:
        if (a3)
        {
          v23 = *MEMORY[0x1E696A798];
          v24 = *__error();
          v25 = "open failed";
          goto LABEL_17;
        }

        return -1;
      }
    }

    else
    {
      fd = v13;
    }

    self->_fd = fd;
    if (fcntl(fd, 48, 1))
    {
      if (!a3)
      {
        return -1;
      }

      v23 = *MEMORY[0x1E696A798];
      v24 = *__error();
      v25 = "F_NOCACHE failed";
      goto LABEL_17;
    }

    v28 = 1;
    if (fcntl(fd, 76))
    {
      if (!a3)
      {
        return -1;
      }

      v23 = *MEMORY[0x1E696A798];
      v24 = *__error();
      v25 = "F_SINGLE_WRITER failed";
      goto LABEL_17;
    }

    if (self->_totalLength)
    {
      v29[2] = self->_totalLength;
      v29[3] = 0;
      v29[0] = 0x300000002;
      v29[1] = 0;
      v28 = v29;
      if (fcntl(fd, 42))
      {
        if (a3)
        {
          v23 = *MEMORY[0x1E696A798];
          v24 = *__error();
          v25 = "F_PREALLOCATE failed";
LABEL_17:
          v26 = v23;
LABEL_18:
          *a3 = NSErrorF_safe(v26, v24, v25, v8, v9, v10, v11, v12, v28);
          return -1;
        }

        return -1;
      }
    }
  }

  return fd;
}

- (void)_processWrite:(id)a3
{
  v4 = a3;
  fd = self->_fd;
  if (fd < 0)
  {
    v31 = 0;
    fd = [(CUFile *)self _openForWritingAndReturnError:&v31];
    v6 = v31;
    v7 = v6;
    if (fd < 0)
    {
LABEL_15:
      v17 = self;
      v18 = v4;
      v19 = v7;
      goto LABEL_16;
    }
  }

  if ([v4 offset] != -1 && lseek(fd, objc_msgSend(v4, "offset"), 0) == -1)
  {
    v20 = *MEMORY[0x1E696A798];
    v21 = __error();
    v7 = NSErrorF_safe(v20, *v21, "lseek failed", v22, v23, v24, v25, v26, v30);
    goto LABEL_15;
  }

  v7 = [v4 data];
  v8 = [v7 bytes];
  v9 = [v7 length];
  if (v9 < 1)
  {
LABEL_13:
    v17 = self;
    v18 = v4;
    v19 = 0;
LABEL_16:
    [(CUFile *)v17 _completeWriteRequest:v18 error:v19];
    goto LABEL_20;
  }

  v10 = &v8[v9];
  while (1)
  {
    v11 = write(fd, v8, v10 - v8);
    if (v11 < 0)
    {
      break;
    }

    if (!v11)
    {
      v27 = *MEMORY[0x1E696A798];
      v28 = 34;
      goto LABEL_19;
    }

    v8 += v11;
LABEL_12:
    if (v8 >= v10)
    {
      goto LABEL_13;
    }
  }

  if (*__error() == 4)
  {
    goto LABEL_12;
  }

  v27 = *MEMORY[0x1E696A798];
  v28 = *__error();
LABEL_19:
  v29 = NSErrorF_safe(v27, v28, "write failed", v12, v13, v14, v15, v16, v30);
  [(CUFile *)self _completeWriteRequest:v4 error:v29];

LABEL_20:
}

- (void)_processWrites
{
  v3 = [(NSMutableArray *)self->_writeQueue popFirstObject];
  if (v3)
  {
    v4 = v3;
    do
    {
      [(CUFile *)self _processWrite:v4];

      v4 = [(NSMutableArray *)self->_writeQueue popFirstObject];
    }

    while (v4);
  }
}

- (void)_writeRequest:(id)a3
{
  writeQueue = self->_writeQueue;
  if (writeQueue)
  {
    v5 = a3;
    [(NSMutableArray *)writeQueue addObject:v5];

    [(CUFile *)self _processWrites];
  }

  else
  {
    v6 = *MEMORY[0x1E696A768];
    v7 = a3;
    v14 = NSErrorF_safe(v6, 4294960551, "not prepared for writing", v8, v9, v10, v11, v12, v13);
    [(CUFile *)self _completeWriteRequest:v7 error:v14];
  }
}

- (void)writeData:(id)a3 offset:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(CUFileWriteRequest);
  [(CUFileWriteRequest *)v10 setCompletionHandler:v8];

  [(CUFileWriteRequest *)v10 setData:v9];
  [(CUFileWriteRequest *)v10 setOffset:a4];
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__CUFile_writeData_offset_completionHandler___block_invoke;
  v13[3] = &unk_1E73A49F0;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  dispatch_async(dispatchQueue, v13);
}

- (void)writeData:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CUFileWriteRequest);
  [(CUFileWriteRequest *)v8 setCompletionHandler:v6];

  [(CUFileWriteRequest *)v8 setData:v7];
  [(CUFileWriteRequest *)v8 setOffset:-1];
  dispatchQueue = self->_dispatchQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__CUFile_writeData_completionHandler___block_invoke;
  v11[3] = &unk_1E73A49F0;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(dispatchQueue, v11);
}

- (void)_completeReadRequest:(id)a3 data:(id)a4 error:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v11 completionHandler];

  if (v9)
  {
    v10 = [v11 completionHandler];
    (v10)[2](v10, v7, v8);
  }
}

- (int)_openForReadingAndReturnError:(id *)a3
{
  fd = self->_fd;
  if (fd < 0)
  {
    v6 = [(NSURL *)self->_url path];
    v7 = [v6 UTF8String];

    if (v7)
    {
      v13 = open(v7, 0);
      if (v13 < 0)
      {
        if (!a3)
        {
          return -1;
        }

        v18 = *MEMORY[0x1E696A798];
        v17 = *__error();
        v16 = "open failed";
      }

      else
      {
        fd = v13;
        self->_fd = v13;
        v19 = 1;
        if (!fcntl(v13, 48))
        {
          v19 = 1;
          if (!fcntl(fd, 45))
          {
            return fd;
          }

          if (a3)
          {
            v18 = *MEMORY[0x1E696A798];
            v17 = *__error();
            v16 = "F_RDAHEAD failed";
            goto LABEL_15;
          }

          return -1;
        }

        if (!a3)
        {
          return -1;
        }

        v18 = *MEMORY[0x1E696A798];
        v17 = *__error();
        v16 = "F_NOCACHE failed";
      }

LABEL_15:
      v15 = v18;
      goto LABEL_16;
    }

    if (a3)
    {
      v15 = *MEMORY[0x1E696A768];
      v16 = "No path";
      v17 = 4294960592;
LABEL_16:
      *a3 = NSErrorF_safe(v15, v17, v16, v8, v9, v10, v11, v12, v19);
      return -1;
    }

    return -1;
  }

  return fd;
}

- (void)_processRead:(id)a3
{
  v4 = a3;
  fd = self->_fd;
  if (fd < 0)
  {
    v33 = 0;
    fd = [(CUFile *)self _openForReadingAndReturnError:&v33];
    v6 = v33;
    v7 = v6;
    if (fd < 0)
    {
      goto LABEL_24;
    }
  }

  if ([v4 offset] != -1 && lseek(fd, objc_msgSend(v4, "offset"), 0) == -1)
  {
    v24 = *MEMORY[0x1E696A798];
    v25 = *__error();
    v31 = "lseek failed";
    goto LABEL_22;
  }

  v8 = [v4 length];
  v9 = v8;
  if (v8 <= 1)
  {
    v8 = 1;
  }

  v10 = malloc_type_malloc(v8, 0x6F17144CuLL);
  if (!v10)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960568, "malloc failed: %zu bytes", v11, v12, v13, v14, v15, v9);
    goto LABEL_23;
  }

  v16 = v10;
  if (v9 < 1)
  {
LABEL_16:
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v16 length:v9];
    v20 = self;
    v21 = v4;
    v22 = v7;
    v23 = 0;
    goto LABEL_25;
  }

  v17 = &v10[v9];
  v18 = v10;
  while (1)
  {
    v19 = read(fd, v18, v17 - v18);
    if (v19 < 0)
    {
      break;
    }

    if (!v19)
    {
      free(v16);
      v24 = *MEMORY[0x1E696A798];
      v25 = 34;
      goto LABEL_21;
    }

    v18 += v19;
LABEL_15:
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  if (*__error() == 4)
  {
    goto LABEL_15;
  }

  free(v16);
  v24 = *MEMORY[0x1E696A798];
  v25 = *__error();
LABEL_21:
  v31 = "read failed";
LABEL_22:
  NSErrorF_safe(v24, v25, v31, v26, v27, v28, v29, v30, v32);
  v7 = LABEL_23:;
LABEL_24:
  v20 = self;
  v21 = v4;
  v22 = 0;
  v23 = v7;
LABEL_25:
  [(CUFile *)v20 _completeReadRequest:v21 data:v22 error:v23];
}

- (void)_processReads
{
  v3 = [(NSMutableArray *)self->_readQueue popFirstObject];
  if (v3)
  {
    v4 = v3;
    do
    {
      [(CUFile *)self _processRead:v4];

      v4 = [(NSMutableArray *)self->_readQueue popFirstObject];
    }

    while (v4);
  }
}

- (void)_readRequest:(id)a3
{
  readQueue = self->_readQueue;
  if (readQueue)
  {
    v5 = a3;
    [(NSMutableArray *)readQueue addObject:v5];

    [(CUFile *)self _processReads];
  }

  else
  {
    v6 = *MEMORY[0x1E696A768];
    v7 = a3;
    v14 = NSErrorF_safe(v6, 4294960551, "not prepared for reading", v8, v9, v10, v11, v12, v13);
    [(CUFile *)self _completeReadRequest:v7 data:0 error:v14];
  }
}

- (void)readLength:(unint64_t)a3 offset:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = objc_alloc_init(CUFileReadRequest);
  [(CUFileReadRequest *)v9 setCompletionHandler:v8];

  [(CUFileReadRequest *)v9 setLength:a3];
  [(CUFileReadRequest *)v9 setOffset:a4];
  dispatchQueue = self->_dispatchQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__CUFile_readLength_offset_completionHandler___block_invoke;
  v12[3] = &unk_1E73A49F0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(dispatchQueue, v12);
}

- (void)readLength:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(CUFileReadRequest);
  [(CUFileReadRequest *)v7 setCompletionHandler:v6];

  [(CUFileReadRequest *)v7 setLength:a3];
  [(CUFileReadRequest *)v7 setOffset:-1];
  dispatchQueue = self->_dispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__CUFile_readLength_completionHandler___block_invoke;
  v10[3] = &unk_1E73A49F0;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(dispatchQueue, v10);
}

- (void)_getLengthWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NSURL *)self->_url path];
  v6 = [v5 UTF8String];

  if (v6)
  {
    memset(&v20.st_blksize, 0, 32);
    memset(&v20, 0, 96);
    *&v20.st_size = 0xFFFFFFFFFFFFFFFFLL;
    if (!stat(v6, &v20))
    {
      v4[2](v4, v20.st_size, 0);
      goto LABEL_7;
    }

    v12 = *MEMORY[0x1E696A798];
    v13 = __error();
    v19 = NSErrorF_safe(v12, *v13, "stat failed", v14, v15, v16, v17, v18, *&v20.st_dev);
    (v4)[2](v4, 0, v19);
  }

  else
  {
    v19 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960592, "No path", v7, v8, v9, v10, v11, *&v20.st_dev);
    (v4)[2](v4, 0, v19);
  }

LABEL_7:
}

- (void)getLengthWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CUFile_getLengthWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)closeWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CUFile_closeWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __37__CUFile_closeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = -1;
  v4 = *(*(a1 + 32) + 24);
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;

  v7 = *(*(a1 + 32) + 32);
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = 0;

  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v45;
    v14 = *MEMORY[0x1E696A768];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        v17 = [v16 completionHandler];

        if (v17)
        {
          v18 = [v16 completionHandler];
          v24 = NSErrorF_safe(v14, 4294960573, "CUFile closed", v19, v20, v21, v22, v23, v40);
          (v18)[2](v18, 0, v24);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v12);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = v7;
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
    v29 = *MEMORY[0x1E696A768];
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v40 + 1) + 8 * j);
        v32 = [v31 completionHandler];

        if (v32)
        {
          v33 = [v31 completionHandler];
          v39 = NSErrorF_safe(v29, 4294960573, "CUFile closed", v34, v35, v36, v37, v38, v40);
          (v33)[2](v33, v39);
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v27);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)openWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CUFile_openWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __36__CUFile_openWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (v9[3])
  {
    v16 = 0;
    [v9 _openForReadingAndReturnError:&v16];
    v10 = v16;
LABEL_5:
    v11 = v10;
    (*(*(a1 + 40) + 16))();

    return;
  }

  if (v9[4])
  {
    v15 = 0;
    [v9 _openForWritingAndReturnError:&v15];
    v10 = v15;
    goto LABEL_5;
  }

  v12 = *(a1 + 40);
  v14 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960587, "re-open after close not allowed", a4, a5, a6, a7, a8, v13);
  (*(v12 + 16))(v12, v14);
}

- (void)dealloc
{
  fd = self->_fd;
  self->_fd = -1;
  v4 = self->_readQueue;
  readQueue = self->_readQueue;
  self->_readQueue = 0;

  v6 = self->_writeQueue;
  writeQueue = self->_writeQueue;
  self->_writeQueue = 0;

  if ((fd & 0x80000000) == 0 || [(NSMutableArray *)v4 count]|| [(NSMutableArray *)v6 count])
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __17__CUFile_dealloc__block_invoke;
    block[3] = &unk_1E73A49C8;
    v13 = fd;
    v11 = v4;
    v12 = v6;
    dispatch_async(dispatchQueue, block);
  }

  v9.receiver = self;
  v9.super_class = CUFile;
  [(CUFile *)&v9 dealloc];
}

void __17__CUFile_dealloc__block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v38 objects:v43 count:16];
  v5 = MEMORY[0x1E696A768];
  if (v4)
  {
    v6 = v4;
    v7 = *v39;
    v8 = *MEMORY[0x1E696A768];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [v10 completionHandler];

        if (v11)
        {
          v12 = [v10 completionHandler];
          v18 = NSErrorF_safe(v8, 4294960570, "CUFile deleted", v13, v14, v15, v16, v17, v34);
          (v12)[2](v12, 0, v18);
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v6);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = *(a1 + 40);
  v20 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    v23 = *v5;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v34 + 1) + 8 * j);
        v26 = [v25 completionHandler];

        if (v26)
        {
          v27 = [v25 completionHandler];
          v33 = NSErrorF_safe(v23, 4294960570, "CUFile deleted", v28, v29, v30, v31, v32, v34);
          (v27)[2](v27, v33);
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v21);
  }
}

- (id)initForWritingToURL:(id)a3 totalLength:(unint64_t)a4 dispatchQueue:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CUFile;
  v11 = [(CUFile *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dispatchQueue, a5);
    v12->_fd = -1;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    writeQueue = v12->_writeQueue;
    v12->_writeQueue = v13;

    v12->_totalLength = a4;
    objc_storeStrong(&v12->_url, a3);
    v15 = v12;
  }

  return v12;
}

- (id)initForWritingToURL:(id)a3 dispatchQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CUFile;
  v9 = [(CUFile *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, a4);
    v10->_fd = -1;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    writeQueue = v10->_writeQueue;
    v10->_writeQueue = v11;

    objc_storeStrong(&v10->_url, a3);
    v13 = v10;
  }

  return v10;
}

- (id)initForReadingFromURL:(id)a3 dispatchQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CUFile;
  v9 = [(CUFile *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, a4);
    v10->_fd = -1;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    readQueue = v10->_readQueue;
    v10->_readQueue = v11;

    objc_storeStrong(&v10->_url, a3);
    v13 = v10;
  }

  return v10;
}

+ (void)resolveRelativePath:(id)a3 rootPath:(id)a4 dispatchQueue:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CUFile_resolveRelativePath_rootPath_dispatchQueue_completionHandler___block_invoke;
  block[3] = &unk_1E73A4BD8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  dispatch_async(a5, block);
}

void __71__CUFile_resolveRelativePath_rootPath_dispatchQueue_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v6 = 0;
  v4 = [CUFile resolveRelativePath:v2 rootPath:v3 error:&v6];
  v5 = v6;
  (*(a1[6] + 16))();
}

+ (id)resolveRelativePath:(id)a3 rootPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a1 realPath:a4 error:a5];
  if (v9)
  {
    v10 = v9;
    if (([v9 hasSuffix:@"/"] & 1) == 0)
    {
      v11 = [v10 stringByAppendingString:@"/"];

      v10 = v11;
    }

    v12 = [v10 stringByAppendingString:v8];
    v13 = [a1 realPath:v12 error:a5];
    v14 = v13;
    if (v13)
    {
      if ([v13 hasPrefix:v10])
      {
        v20 = [v14 length];
        if (v20 > [v10 length])
        {
          v21 = v14;
LABEL_8:

          goto LABEL_9;
        }

        if (a5)
        {
          v23 = *MEMORY[0x1E696A768];
          v24 = "Path matches root";
          goto LABEL_17;
        }
      }

      else if (a5)
      {
        v23 = *MEMORY[0x1E696A768];
        v24 = "Path outside root";
LABEL_17:
        NSErrorF_safe(v23, 4294960592, v24, v15, v16, v17, v18, v19, v25);
        *a5 = v21 = 0;
        goto LABEL_8;
      }
    }

    v21 = 0;
    goto LABEL_8;
  }

  v21 = 0;
LABEL_9:

  return v21;
}

+ (void)realPath:(id)a3 dispatchQueue:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__CUFile_realPath_dispatchQueue_completionHandler___block_invoke;
  v11[3] = &unk_1E73A49A0;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(a4, v11);
}

void __51__CUFile_realPath_dispatchQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  v3 = [CUFile realPath:v2 error:&v5];
  v4 = v5;
  (*(*(a1 + 40) + 16))();
}

+ (id)realPath:(id)a3 error:(id *)a4
{
  v5 = [a3 UTF8String];
  if (!v5)
  {
    if (a4)
    {
      v23 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No UTF8 path", v6, v7, v8, v9, v10, v32);
LABEL_18:
      v15 = 0;
      *a4 = v23;
      goto LABEL_8;
    }

LABEL_19:
    v15 = 0;
    goto LABEL_8;
  }

  v11 = v5;
  v12 = realpath_DARWIN_EXTSN(v5, 0);
  if (!v12)
  {
    if (a4)
    {
      v24 = *MEMORY[0x1E696A798];
      v30 = *__error();
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = 22;
      }

      v23 = NSErrorF(v24, v31, "realpath failed: path=%s", v25, v26, v27, v28, v29, v11);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v13 = v12;
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v13 length:strlen(v13) encoding:4 freeWhenDone:1];
  v15 = v14;
  if (v14)
  {
    v21 = v14;
  }

  else
  {
    free(v13);
    if (a4)
    {
      *a4 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "Create path string failed", v16, v17, v18, v19, v20, v32);
    }
  }

LABEL_8:

  return v15;
}

+ (OS_dispatch_queue)fileIODispatchQueue
{
  if (fileIODispatchQueue_onceToken != -1)
  {
    dispatch_once(&fileIODispatchQueue_onceToken, &__block_literal_global_12017);
  }

  v3 = fileIODispatchQueue_queue;

  return v3;
}

void __29__CUFile_fileIODispatchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("CUFileIOQueue", v2);
  v1 = fileIODispatchQueue_queue;
  fileIODispatchQueue_queue = v0;
}

@end