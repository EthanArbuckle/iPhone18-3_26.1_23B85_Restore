@interface CUFile
+ (OS_dispatch_queue)fileIODispatchQueue;
+ (id)realPath:(id)path error:(id *)error;
+ (id)resolveRelativePath:(id)path rootPath:(id)rootPath error:(id *)error;
+ (void)realPath:(id)path dispatchQueue:(id)queue completionHandler:(id)handler;
+ (void)resolveRelativePath:(id)path rootPath:(id)rootPath dispatchQueue:(id)queue completionHandler:(id)handler;
- (id)initForReadingFromURL:(id)l dispatchQueue:(id)queue;
- (id)initForWritingToURL:(id)l dispatchQueue:(id)queue;
- (id)initForWritingToURL:(id)l totalLength:(unint64_t)length dispatchQueue:(id)queue;
- (int)_openForReadingAndReturnError:(id *)error;
- (int)_openForWritingAndReturnError:(id *)error;
- (void)_completeReadRequest:(id)request data:(id)data error:(id)error;
- (void)_completeWriteRequest:(id)request error:(id)error;
- (void)_getLengthWithCompletionHandler:(id)handler;
- (void)_processRead:(id)read;
- (void)_processReads;
- (void)_processWrite:(id)write;
- (void)_processWrites;
- (void)_readRequest:(id)request;
- (void)_writeRequest:(id)request;
- (void)closeWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)getLengthWithCompletionHandler:(id)handler;
- (void)openWithCompletionHandler:(id)handler;
- (void)readLength:(unint64_t)length completionHandler:(id)handler;
- (void)readLength:(unint64_t)length offset:(unint64_t)offset completionHandler:(id)handler;
- (void)writeData:(id)data completionHandler:(id)handler;
- (void)writeData:(id)data offset:(unint64_t)offset completionHandler:(id)handler;
@end

@implementation CUFile

- (void)_completeWriteRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  completionHandler = [requestCopy completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [requestCopy completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);
  }
}

- (int)_openForWritingAndReturnError:(id *)error
{
  fd = self->_fd;
  if (fd < 0)
  {
    path = [(NSURL *)self->_url path];
    uTF8String = [path UTF8String];

    if (!uTF8String)
    {
      if (!error)
      {
        return -1;
      }

      v26 = *MEMORY[0x1E696A768];
      v25 = "No path";
      v24 = 4294960592;
      goto LABEL_18;
    }

    v28 = 384;
    v13 = open(uTF8String, 513);
    if (v13 < 0)
    {
      if (*__error() != 2)
      {
        goto LABEL_15;
      }

      uRLByDeletingLastPathComponent = [(NSURL *)self->_url URLByDeletingLastPathComponent];
      if (!uRLByDeletingLastPathComponent)
      {
        if (!error)
        {
          return -1;
        }

        v26 = *MEMORY[0x1E696A768];
        v25 = "Get parent URL failed";
        v24 = 4294960596;
        goto LABEL_18;
      }

      v15 = uRLByDeletingLastPathComponent;
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v30 = 0;
      v17 = [defaultManager createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v30];
      v18 = v30;

      if ((v17 & 1) == 0)
      {
        if (error)
        {
          *error = NSErrorNestedF_safe(*MEMORY[0x1E696A768], 4294960592, v18, "Create parent failed", v19, v20, v21, v22, 384);
        }

        return -1;
      }

      v28 = 384;
      fd = open(uTF8String, 513);

      if (fd < 0)
      {
LABEL_15:
        if (error)
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
      if (!error)
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
      if (!error)
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
        if (error)
        {
          v23 = *MEMORY[0x1E696A798];
          v24 = *__error();
          v25 = "F_PREALLOCATE failed";
LABEL_17:
          v26 = v23;
LABEL_18:
          *error = NSErrorF_safe(v26, v24, v25, v8, v9, v10, v11, v12, v28);
          return -1;
        }

        return -1;
      }
    }
  }

  return fd;
}

- (void)_processWrite:(id)write
{
  writeCopy = write;
  fd = self->_fd;
  if (fd < 0)
  {
    v31 = 0;
    fd = [(CUFile *)self _openForWritingAndReturnError:&v31];
    v6 = v31;
    data = v6;
    if (fd < 0)
    {
LABEL_15:
      selfCopy2 = self;
      v18 = writeCopy;
      v19 = data;
      goto LABEL_16;
    }
  }

  if ([writeCopy offset] != -1 && lseek(fd, objc_msgSend(writeCopy, "offset"), 0) == -1)
  {
    v20 = *MEMORY[0x1E696A798];
    v21 = __error();
    data = NSErrorF_safe(v20, *v21, "lseek failed", v22, v23, v24, v25, v26, v30);
    goto LABEL_15;
  }

  data = [writeCopy data];
  bytes = [data bytes];
  v9 = [data length];
  if (v9 < 1)
  {
LABEL_13:
    selfCopy2 = self;
    v18 = writeCopy;
    v19 = 0;
LABEL_16:
    [(CUFile *)selfCopy2 _completeWriteRequest:v18 error:v19];
    goto LABEL_20;
  }

  v10 = &bytes[v9];
  while (1)
  {
    v11 = write(fd, bytes, v10 - bytes);
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

    bytes += v11;
LABEL_12:
    if (bytes >= v10)
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
  [(CUFile *)self _completeWriteRequest:writeCopy error:v29];

LABEL_20:
}

- (void)_processWrites
{
  popFirstObject = [(NSMutableArray *)self->_writeQueue popFirstObject];
  if (popFirstObject)
  {
    popFirstObject2 = popFirstObject;
    do
    {
      [(CUFile *)self _processWrite:popFirstObject2];

      popFirstObject2 = [(NSMutableArray *)self->_writeQueue popFirstObject];
    }

    while (popFirstObject2);
  }
}

- (void)_writeRequest:(id)request
{
  writeQueue = self->_writeQueue;
  if (writeQueue)
  {
    requestCopy = request;
    [(NSMutableArray *)writeQueue addObject:requestCopy];

    [(CUFile *)self _processWrites];
  }

  else
  {
    v6 = *MEMORY[0x1E696A768];
    requestCopy2 = request;
    v14 = NSErrorF_safe(v6, 4294960551, "not prepared for writing", v8, v9, v10, v11, v12, v13);
    [(CUFile *)self _completeWriteRequest:requestCopy2 error:v14];
  }
}

- (void)writeData:(id)data offset:(unint64_t)offset completionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  v10 = objc_alloc_init(CUFileWriteRequest);
  [(CUFileWriteRequest *)v10 setCompletionHandler:handlerCopy];

  [(CUFileWriteRequest *)v10 setData:dataCopy];
  [(CUFileWriteRequest *)v10 setOffset:offset];
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

- (void)writeData:(id)data completionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  v8 = objc_alloc_init(CUFileWriteRequest);
  [(CUFileWriteRequest *)v8 setCompletionHandler:handlerCopy];

  [(CUFileWriteRequest *)v8 setData:dataCopy];
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

- (void)_completeReadRequest:(id)request data:(id)data error:(id)error
{
  requestCopy = request;
  dataCopy = data;
  errorCopy = error;
  completionHandler = [requestCopy completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [requestCopy completionHandler];
    (completionHandler2)[2](completionHandler2, dataCopy, errorCopy);
  }
}

- (int)_openForReadingAndReturnError:(id *)error
{
  fd = self->_fd;
  if (fd < 0)
  {
    path = [(NSURL *)self->_url path];
    uTF8String = [path UTF8String];

    if (uTF8String)
    {
      v13 = open(uTF8String, 0);
      if (v13 < 0)
      {
        if (!error)
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

          if (error)
          {
            v18 = *MEMORY[0x1E696A798];
            v17 = *__error();
            v16 = "F_RDAHEAD failed";
            goto LABEL_15;
          }

          return -1;
        }

        if (!error)
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

    if (error)
    {
      v15 = *MEMORY[0x1E696A768];
      v16 = "No path";
      v17 = 4294960592;
LABEL_16:
      *error = NSErrorF_safe(v15, v17, v16, v8, v9, v10, v11, v12, v19);
      return -1;
    }

    return -1;
  }

  return fd;
}

- (void)_processRead:(id)read
{
  readCopy = read;
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

  if ([readCopy offset] != -1 && lseek(fd, objc_msgSend(readCopy, "offset"), 0) == -1)
  {
    v24 = *MEMORY[0x1E696A798];
    v25 = *__error();
    v31 = "lseek failed";
    goto LABEL_22;
  }

  v8 = [readCopy length];
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
    selfCopy2 = self;
    v21 = readCopy;
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
  selfCopy2 = self;
  v21 = readCopy;
  v22 = 0;
  v23 = v7;
LABEL_25:
  [(CUFile *)selfCopy2 _completeReadRequest:v21 data:v22 error:v23];
}

- (void)_processReads
{
  popFirstObject = [(NSMutableArray *)self->_readQueue popFirstObject];
  if (popFirstObject)
  {
    popFirstObject2 = popFirstObject;
    do
    {
      [(CUFile *)self _processRead:popFirstObject2];

      popFirstObject2 = [(NSMutableArray *)self->_readQueue popFirstObject];
    }

    while (popFirstObject2);
  }
}

- (void)_readRequest:(id)request
{
  readQueue = self->_readQueue;
  if (readQueue)
  {
    requestCopy = request;
    [(NSMutableArray *)readQueue addObject:requestCopy];

    [(CUFile *)self _processReads];
  }

  else
  {
    v6 = *MEMORY[0x1E696A768];
    requestCopy2 = request;
    v14 = NSErrorF_safe(v6, 4294960551, "not prepared for reading", v8, v9, v10, v11, v12, v13);
    [(CUFile *)self _completeReadRequest:requestCopy2 data:0 error:v14];
  }
}

- (void)readLength:(unint64_t)length offset:(unint64_t)offset completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = objc_alloc_init(CUFileReadRequest);
  [(CUFileReadRequest *)v9 setCompletionHandler:handlerCopy];

  [(CUFileReadRequest *)v9 setLength:length];
  [(CUFileReadRequest *)v9 setOffset:offset];
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

- (void)readLength:(unint64_t)length completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_alloc_init(CUFileReadRequest);
  [(CUFileReadRequest *)v7 setCompletionHandler:handlerCopy];

  [(CUFileReadRequest *)v7 setLength:length];
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

- (void)_getLengthWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  path = [(NSURL *)self->_url path];
  uTF8String = [path UTF8String];

  if (uTF8String)
  {
    memset(&v20.st_blksize, 0, 32);
    memset(&v20, 0, 96);
    *&v20.st_size = 0xFFFFFFFFFFFFFFFFLL;
    if (!stat(uTF8String, &v20))
    {
      handlerCopy[2](handlerCopy, v20.st_size, 0);
      goto LABEL_7;
    }

    v12 = *MEMORY[0x1E696A798];
    v13 = __error();
    v19 = NSErrorF_safe(v12, *v13, "stat failed", v14, v15, v16, v17, v18, *&v20.st_dev);
    (handlerCopy)[2](handlerCopy, 0, v19);
  }

  else
  {
    v19 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960592, "No path", v7, v8, v9, v10, v11, *&v20.st_dev);
    (handlerCopy)[2](handlerCopy, 0, v19);
  }

LABEL_7:
}

- (void)getLengthWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CUFile_getLengthWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)closeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CUFile_closeWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
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

- (void)openWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CUFile_openWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
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

- (id)initForWritingToURL:(id)l totalLength:(unint64_t)length dispatchQueue:(id)queue
{
  lCopy = l;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = CUFile;
  v11 = [(CUFile *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dispatchQueue, queue);
    v12->_fd = -1;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    writeQueue = v12->_writeQueue;
    v12->_writeQueue = v13;

    v12->_totalLength = length;
    objc_storeStrong(&v12->_url, l);
    v15 = v12;
  }

  return v12;
}

- (id)initForWritingToURL:(id)l dispatchQueue:(id)queue
{
  lCopy = l;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = CUFile;
  v9 = [(CUFile *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, queue);
    v10->_fd = -1;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    writeQueue = v10->_writeQueue;
    v10->_writeQueue = v11;

    objc_storeStrong(&v10->_url, l);
    v13 = v10;
  }

  return v10;
}

- (id)initForReadingFromURL:(id)l dispatchQueue:(id)queue
{
  lCopy = l;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = CUFile;
  v9 = [(CUFile *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, queue);
    v10->_fd = -1;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    readQueue = v10->_readQueue;
    v10->_readQueue = v11;

    objc_storeStrong(&v10->_url, l);
    v13 = v10;
  }

  return v10;
}

+ (void)resolveRelativePath:(id)path rootPath:(id)rootPath dispatchQueue:(id)queue completionHandler:(id)handler
{
  pathCopy = path;
  rootPathCopy = rootPath;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CUFile_resolveRelativePath_rootPath_dispatchQueue_completionHandler___block_invoke;
  block[3] = &unk_1E73A4BD8;
  v16 = pathCopy;
  v17 = rootPathCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = rootPathCopy;
  v14 = pathCopy;
  dispatch_async(queue, block);
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

+ (id)resolveRelativePath:(id)path rootPath:(id)rootPath error:(id *)error
{
  pathCopy = path;
  v9 = [self realPath:rootPath error:error];
  if (v9)
  {
    v10 = v9;
    if (([v9 hasSuffix:@"/"] & 1) == 0)
    {
      v11 = [v10 stringByAppendingString:@"/"];

      v10 = v11;
    }

    v12 = [v10 stringByAppendingString:pathCopy];
    v13 = [self realPath:v12 error:error];
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

        if (error)
        {
          v23 = *MEMORY[0x1E696A768];
          v24 = "Path matches root";
          goto LABEL_17;
        }
      }

      else if (error)
      {
        v23 = *MEMORY[0x1E696A768];
        v24 = "Path outside root";
LABEL_17:
        NSErrorF_safe(v23, 4294960592, v24, v15, v16, v17, v18, v19, v25);
        *error = v21 = 0;
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

+ (void)realPath:(id)path dispatchQueue:(id)queue completionHandler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__CUFile_realPath_dispatchQueue_completionHandler___block_invoke;
  v11[3] = &unk_1E73A49A0;
  v12 = pathCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = pathCopy;
  dispatch_async(queue, v11);
}

void __51__CUFile_realPath_dispatchQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  v3 = [CUFile realPath:v2 error:&v5];
  v4 = v5;
  (*(*(a1 + 40) + 16))();
}

+ (id)realPath:(id)path error:(id *)error
{
  uTF8String = [path UTF8String];
  if (!uTF8String)
  {
    if (error)
    {
      v23 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No UTF8 path", v6, v7, v8, v9, v10, v32);
LABEL_18:
      v15 = 0;
      *error = v23;
      goto LABEL_8;
    }

LABEL_19:
    v15 = 0;
    goto LABEL_8;
  }

  v11 = uTF8String;
  v12 = realpath_DARWIN_EXTSN(uTF8String, 0);
  if (!v12)
  {
    if (error)
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
    if (error)
    {
      *error = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "Create path string failed", v16, v17, v18, v19, v20, v32);
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