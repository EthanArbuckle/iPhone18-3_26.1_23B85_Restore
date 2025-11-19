@interface DYFSStreamer
+ (id)streamItem:(id)a3 withTransport:(id)a4 destinationName:(id)a5;
+ (void)denyTransfer:(id)a3 transport:(id)a4;
- (BOOL)_createDirectoryWithAttributes:(id)a3 error:(id *)a4;
- (BOOL)_createOrUpdateFileWithData:(id)a3 attributes:(id)a4 error:(id *)a5;
- (BOOL)_createSymlinkWithAttributes:(id)a3 error:(id *)a4;
- (BOOL)_sendCreateDirectoryMessage:(id)a3 error:(id *)a4;
- (BOOL)_sendCreateSymlinkMessage:(id)a3 destination:(id)a4 error:(id *)a5;
- (BOOL)_sendFileAtURL:(id)a3 relativePath:(id)a4 error:(id *)a5;
- (DYFSStreamer)initWithURL:(id)a3 transport:(id)a4 asSender:(BOOL)a5;
- (id)_resolveRelativePath:(id)a3 error:(id *)a4;
- (id)description;
- (id)initiateTransfer;
- (id)receiveTransfer:(id)a3;
- (void)_invalidate;
- (void)_sendAbortMessageInReplyTo:(id)a3 becauseOfError:(id)a4;
- (void)dealloc;
- (void)denyTransfer:(id)a3;
- (void)setDestinationName:(id)a3;
- (void)setFilenameFilter:(id)a3;
- (void)setOwner:(id)a3;
@end

@implementation DYFSStreamer

+ (id)streamItem:(id)a3 withTransport:(id)a4 destinationName:(id)a5
{
  v6 = [[DYFSStreamer alloc] initWithURL:a3 transport:a4 asSender:1];
  v7 = v6;
  if (a5)
  {
    [(DYFSStreamer *)v6 setDestinationName:a5];
  }

  v8 = [(DYFSStreamer *)v7 initiateTransfer];

  return v8;
}

+ (void)denyTransfer:(id)a3 transport:(id)a4
{
  v6 = [MEMORY[0x277D0AFE0] messageWithKind:2305 objectPayload:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];

  [a4 send:v6 inReplyTo:a3 error:0];
}

- (DYFSStreamer)initWithURL:(id)a3 transport:(id)a4 asSender:(BOOL)a5
{
  v13.receiver = self;
  v13.super_class = DYFSStreamer;
  v8 = [(DYFSStreamer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v10 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.%p", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", object_getClassName(v8)), v8), "UTF8String"];
    v9->_queue = dispatch_queue_create(v10, 0);
    v11 = [a3 filePathURL];
    v9->_url = v11;
    if (v11)
    {
      v9->_path = [(NSURL *)v11 path];
      v9->_isSender = a5;
      v9->_transport = a4;
      v9->_fileManager = objc_opt_new();
      if (!v9->_isSender)
      {
        v9->_fileHandles = objc_opt_new();
      }

      v9->_destinationName = [(NSURL *)v9->_url lastPathComponent];
      v9->_urls = objc_opt_new();
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v4.receiver = self;
  v4.super_class = DYFSStreamer;
  [(DYFSStreamer *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = DYFSStreamer;
  v4 = [(DYFSStreamer *)&v7 description];
  if (self->_isSender)
  {
    v5 = @"sender";
  }

  else
  {
    v5 = @"receiver";
  }

  return [v3 stringWithFormat:@"%@: mode=%@ path=%@", v4, v5, -[DYFSStreamer path](self, "path")];
}

- (void)_sendAbortMessageInReplyTo:(id)a3 becauseOfError:(id)a4
{
  v6 = [a4 description];
  if (!v6 || (v7 = [MEMORY[0x277D0AFE0] messageWithKind:2309 stringPayload:v6]) == 0)
  {
    v7 = [MEMORY[0x277D0AFE0] messageWithKind:2309];
  }

  [(DYTransport *)self->_transport send:v7 inReplyTo:a3 error:0];
  ++self->_messages;
  self->_bytes += [v7 transportSize];
}

- (BOOL)_sendFileAtURL:(id)a3 relativePath:(id)a4 error:(id *)a5
{
  v8 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:a3 error:a5];
  if (v8)
  {
    v9 = v8;
    [v8 seekToFileOffset:0];
    v24 = 0;
    LODWORD(v8) = [a3 getResourceValue:&v24 forKey:*MEMORY[0x277CBE838] error:a5];
    if (v8)
    {
      v21 = a3;
      v10 = [v24 unsignedIntegerValue];
      v11 = 0;
      v22 = *MEMORY[0x277D0B160];
      v12 = *MEMORY[0x277D0B158];
      v13 = *MEMORY[0x277D0B168];
      while (1)
      {
        v14 = v10 - v11 >= 0x80000 ? 0x80000 : v10 - v11;
        v15 = [v9 readDataOfLength:v14];
        v16 = MEMORY[0x277CBEAC0];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v11];
        v18 = [v16 dictionaryWithObjectsAndKeys:{a4, v22, v17, v12, v24, v13, @"file", @"kind", 0}];
        v19 = [MEMORY[0x277D0AFE0] messageWithKind:2306 attributes:v18 payload:v15];
        LODWORD(v16) = [(DYTransport *)self->_transport send:v19 inReplyTo:self->_initTransferAckMessage error:a5];
        ++self->_messages;
        self->_bytes += [v19 transportSize];
        if (!v16)
        {
          break;
        }

        v11 += v14;
        if (v11 >= v10)
        {
          ++self->_files;
          [(NSMutableArray *)self->_urls addObject:v21];
          LOBYTE(v8) = 1;
          return v8;
        }
      }

      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (BOOL)_sendCreateDirectoryMessage:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{a3, *MEMORY[0x277D0B160], @"directory", @"kind", 0}];
  v7 = [MEMORY[0x277D0AFE0] messageWithKind:2306 attributes:v6 payload:0];
  LOBYTE(a4) = [(DYTransport *)self->_transport send:v7 inReplyTo:self->_initTransferAckMessage error:a4];
  ++self->_messages;
  self->_bytes += [v7 transportSize];
  return a4;
}

- (BOOL)_sendCreateSymlinkMessage:(id)a3 destination:(id)a4 error:(id *)a5
{
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{a3, *MEMORY[0x277D0B160], a4, @"destination", @"symlink", @"kind", 0}];
  v8 = [MEMORY[0x277D0AFE0] messageWithKind:2306 attributes:v7 payload:0];
  LOBYTE(a5) = [(DYTransport *)self->_transport send:v8 inReplyTo:self->_initTransferAckMessage error:a5];
  ++self->_messages;
  self->_bytes += [v8 transportSize];
  return a5;
}

- (id)initiateTransfer
{
  self->_didInitiate = 1;
  v3 = [MEMORY[0x277D0AFC8] future];
  if (![(NSFileManager *)self->_fileManager fileExistsAtPath:self->_path isDirectory:&self->_itemIsDirectory])
  {
    [v3 setError:{objc_msgSend(MEMORY[0x277D0AFC0], "errorWithDomain:code:userInfo:", *MEMORY[0x277D0AFB8], 1, 0)}];
    v10 = v3;
    v9 = 0;
    goto LABEL_5;
  }

  v4 = [MEMORY[0x277D0AFE0] messageWithKind:2304 stringPayload:self->_destinationName];
  v14 = 0;
  transport = self->_transport;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __32__DYFSStreamer_initiateTransfer__block_invoke;
  v13[3] = &unk_279309BE8;
  v13[4] = self;
  v13[5] = v3;
  v7 = [(DYTransport *)transport send:v4 error:&v14 replyQueue:queue timeout:0 handler:v13];
  ++self->_messages;
  self->_bytes += [v4 transportSize];
  if ((v7 & 1) == 0)
  {
    v8 = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __32__DYFSStreamer_initiateTransfer__block_invoke_4;
    v12[3] = &unk_279309890;
    v12[4] = self;
    dispatch_sync(v8, v12);
    [v3 setError:v14];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v10 = v3;
LABEL_5:
    [v10 setResult:v9];
  }

  return v3;
}

uint64_t __32__DYFSStreamer_initiateTransfer__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (*(v3 + 83))
  {
    goto LABEL_14;
  }

  if (!a2)
  {
    [*(a1 + 40) setError:?];
    [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
    v8 = *(a1 + 32);
    v9 = *MEMORY[0x277D0B240];
    _DYOLog();
    [*(a1 + 32) _invalidate];
    goto LABEL_14;
  }

  ++*(v3 + 144);
  *(*(a1 + 32) + 136) += [a2 transportSize];
  if ([a2 kind] != 2305)
  {
    v10 = *(a1 + 40);
    v11 = MEMORY[0x277D0AFC0];
    v12 = *MEMORY[0x277D0AFB8];
    v13 = 43;
    goto LABEL_12;
  }

  if (([objc_msgSend(a2 "objectPayload")] & 1) == 0)
  {
    v10 = *(a1 + 40);
    v11 = MEMORY[0x277D0AFC0];
    v12 = *MEMORY[0x277D0AFB8];
    v13 = 42;
LABEL_12:
    [v10 setError:{objc_msgSend(v11, "errorWithDomain:code:userInfo:", v12, v13, 0)}];
    [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
    [*(a1 + 32) _invalidate];
    goto LABEL_14;
  }

  *(*(a1 + 32) + 32) = a2;
  v56 = 0;
  v6 = *(a1 + 32);
  if (*(v6 + 81) != 1)
  {
    v16 = [*(v6 + 88) lastPathComponent];
    v17 = *(a1 + 32);
    if (*(v17 + 112))
    {
      if (![*(v17 + 112) evaluateWithObject:v16])
      {
        goto LABEL_19;
      }

      v17 = *(a1 + 32);
    }

    if ([v17 _sendFileAtURL:*(v17 + 88) relativePath:v16 error:&v56])
    {
LABEL_19:
      v18 = [MEMORY[0x277D0AFE0] messageWithKind:2307];
      v44[0] = MEMORY[0x277D85DD0];
      v19 = *(a1 + 32);
      v20 = *(a1 + 32);
      v21 = *(v20 + 24);
      v22 = *(v20 + 8);
      v44[1] = 3221225472;
      v44[2] = __32__DYFSStreamer_initiateTransfer__block_invoke_3;
      v44[3] = &unk_279309BE8;
      v45 = v19;
      [v21 send:v18 inReplyTo:a2 error:0 replyQueue:v22 timeout:0 handler:v44];
      ++*(*(a1 + 32) + 144);
      *(*(a1 + 32) + 136) += [v18 transportSize];
      goto LABEL_14;
    }

    goto LABEL_40;
  }

  if (*(v6 + 84) == 1)
  {
    if ([v6 _sendCreateSymlinkMessage:objc_msgSend(*(v6 + 88) destination:"lastPathComponent") error:{objc_msgSend(*(*(a1 + 32) + 88), "path"), &v56}])
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

  if (([*(a1 + 32) _sendCreateDirectoryMessage:*(v6 + 104) error:&v56] & 1) == 0)
  {
LABEL_40:
    [*(a1 + 32) _sendAbortMessageInReplyTo:*(*(a1 + 32) + 32) becauseOfError:v56];
    [*(a1 + 32) _invalidate];
    [*(a1 + 40) setError:v56];
    [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
    goto LABEL_14;
  }

  v23 = *MEMORY[0x277CBE8E8];
  v41 = *MEMORY[0x277CBE8B0];
  v42 = *MEMORY[0x277CBE868];
  v43 = *MEMORY[0x277CBE8A8];
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE8A8], *MEMORY[0x277CBE868], *MEMORY[0x277CBE8B0], *MEMORY[0x277CBE838], 0}];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v25 = *(a1 + 32);
  v26 = *(a1 + 32);
  v27 = *(v26 + 16);
  v28 = *(v26 + 88);
  v54[2] = __32__DYFSStreamer_initiateTransfer__block_invoke_2;
  v54[3] = &unk_279309BC0;
  v55 = v25;
  v29 = [v27 enumeratorAtURL:v28 includingPropertiesForKeys:v24 options:0 errorHandler:v54];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v30 = [v29 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (!v30)
  {
    goto LABEL_38;
  }

  v31 = v30;
  v32 = *v51;
  while (2)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*v51 != v32)
      {
        objc_enumerationMutation(v29);
      }

      v34 = *(*(&v50 + 1) + 8 * i);
      v49 = 0;
      [v34 getResourceValue:&v49 forKey:v23 error:&v56];
      v35 = *(*(a1 + 32) + 112);
      if (!v35 || ([v35 evaluateWithObject:v49] & 1) != 0)
      {
        v47 = 0;
        v48 = 0;
        v46 = 0;
        [v34 getResourceValue:&v48 forKey:v43 error:&v56];
        [v34 getResourceValue:&v47 forKey:v42 error:&v56];
        [v34 getResourceValue:&v46 forKey:v41 error:&v56];
        v36 = [v34 pathComponents];
        v37 = [v29 level];
        v38 = [*(*(a1 + 32) + 104) stringByAppendingPathComponent:{objc_msgSend(objc_msgSend(v36, "subarrayWithRange:", objc_msgSend(v36, "count") - v37, v37), "componentsJoinedByString:", @"/"}];
        if ([v48 BOOLValue])
        {
          if (([*(a1 + 32) _sendFileAtURL:v34 relativePath:v38 error:&v56] & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (![v46 BOOLValue])
          {
            if ([v47 BOOLValue])
            {
              if ([*(a1 + 32) _sendCreateDirectoryMessage:v38 error:&v56])
              {
                continue;
              }

LABEL_41:
              v39 = v56;
            }

            else
            {
              v39 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:46 userInfo:0];
              v56 = v39;
            }

            [*(a1 + 32) _sendAbortMessageInReplyTo:*(*(a1 + 32) + 32) becauseOfError:v39];
            [*(a1 + 32) _invalidate];
            [*(a1 + 40) setError:v56];
            [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
            [v29 setValue:0 forKey:@"errorHandler"];
            goto LABEL_14;
          }

          if (([*(a1 + 32) _sendCreateSymlinkMessage:v38 destination:objc_msgSend(v34 error:{"lastPathComponent"), &v56}] & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }
    }

    v31 = [v29 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v31)
    {
      continue;
    }

    break;
  }

LABEL_38:
  [v29 setValue:0 forKey:@"errorHandler"];
  if ((*(*(a1 + 32) + 83) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __32__DYFSStreamer_initiateTransfer__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _sendAbortMessageInReplyTo:*(*(a1 + 32) + 32) becauseOfError:a3];
  [*(a1 + 32) _invalidate];
  [*(a1 + 40) setError:a3];
  [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
  return 0;
}

uint64_t __32__DYFSStreamer_initiateTransfer__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if ((v4[83] & 1) == 0)
  {
    [v4 _invalidate];
    if (a2)
    {
      ++*(*(a1 + 32) + 144);
      *(*(a1 + 32) + 136) += [a2 transportSize];
      if ([a2 kind] == 2309)
      {
        v7 = *(a1 + 40);
        v8 = MEMORY[0x277D0AFC0];
        v9 = *MEMORY[0x277D0AFB8];
        v10 = MEMORY[0x277CBEAC0];
        v11 = [a2 stringPayload];
        v12 = [v8 errorWithDomain:v9 code:45 userInfo:{objc_msgSend(v10, "dictionaryWithObjectsAndKeys:", v11, *MEMORY[0x277CCA450], 0)}];
        v13 = v7;
      }

      else
      {
        v16 = [a2 kind];
        v17 = *(a1 + 40);
        if (v16 == 2308)
        {
          v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
          v19 = v17;
LABEL_10:
          [v19 setResult:v18];
          return 0;
        }

        v12 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:43 userInfo:0];
        v13 = v17;
      }

      [v13 setError:v12];
      v20 = *(a1 + 40);
      v18 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v19 = v20;
      goto LABEL_10;
    }

    [*(a1 + 40) setError:a3];
    [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
    v14 = *(a1 + 32);
    v15 = *MEMORY[0x277D0B240];
    _DYOLog();
  }

  return 0;
}

- (void)setFilenameFilter:(id)a3
{
  if (!self->_isSender)
  {
    [DYFSStreamer setFilenameFilter:];
  }

  if (self->_didInitiate)
  {
    [DYFSStreamer setFilenameFilter:];
  }

  filenameFilter = self->_filenameFilter;
  if (filenameFilter != a3)
  {

    self->_filenameFilter = a3;
  }
}

- (id)_resolveRelativePath:(id)a3 error:(id *)a4
{
  if (!a3)
  {
    if (a4)
    {
      v7 = 1;
      goto LABEL_7;
    }

    return 0;
  }

  v6 = [[(NSURL *)self->_url URLByAppendingPathComponent:?] standardizedURL];
  if (![(NSString *)[(NSURL *)v6 path] hasPrefix:[(NSURL *)self->_url path]])
  {
    if (a4)
    {
      v7 = 44;
LABEL_7:
      v6 = 0;
      *a4 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:v7 userInfo:0];
      return v6;
    }

    return 0;
  }

  return v6;
}

- (BOOL)_createOrUpdateFileWithData:(id)a3 attributes:(id)a4 error:(id *)a5
{
  v9 = -[DYFSStreamer _resolveRelativePath:error:](self, "_resolveRelativePath:error:", [a4 objectForKey:*MEMORY[0x277D0B160]], a5);
  if (!v9)
  {
    return v9;
  }

  v10 = v9;
  v11 = [objc_msgSend(a4 objectForKey:{*MEMORY[0x277D0B168]), "unsignedIntegerValue"}];
  v12 = [(NSMutableDictionary *)self->_fileHandles objectForKey:v10];
  if (!v12)
  {
    [(NSFileManager *)self->_fileManager removeItemAtURL:v10 error:a5];
    v21 = open([objc_msgSend(v10 "path")], 2561, 384);
    if (v21 == -1)
    {
      if (!a5)
      {
        goto LABEL_29;
      }

      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      LOBYTE(v9) = 0;
      *a5 = v23;
      return v9;
    }

    v14 = v21;
    if (ftruncate(v21, v11) == -1)
    {
      if (a5)
      {
        *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      }
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v14 closeOnDealloc:1];
      if (v22)
      {
        v13 = v22;
        if (fchown(v14, self->_ownerUID, 0xFFFFFFFF) == -1)
        {

          v24 = *MEMORY[0x277D0B240];
          v25 = MEMORY[0x277CCACA8];
          v26 = __error();
          [v25 stringWithUTF8String:strerror(*v26)];
          _DYOLog();
          goto LABEL_29;
        }

        [(NSMutableDictionary *)self->_fileHandles setObject:v13 forKey:v10];

        ++self->_files;
        [(NSMutableArray *)self->_urls addObject:v10];
        goto LABEL_4;
      }
    }

    close(v14);
    goto LABEL_29;
  }

  v13 = v12;
  LODWORD(v14) = [v12 fileDescriptor];
LABEL_4:
  v15 = [objc_msgSend(a4 objectForKey:{*MEMORY[0x277D0B158]), "unsignedLongValue"}];
  if (v15 != lseek(v14, 0, 1))
  {
    v27 = dy_abort();
    LOBYTE(v9) = [(DYFSStreamer *)v27 _createDirectoryWithAttributes:v28 error:v29, v30];
    return v9;
  }

  v16 = [a3 bytes];
  v17 = [a3 length];
  if (v17 < 1)
  {
    v19 = 0;
LABEL_18:
    if (v19 + v15 == v11)
    {
      [v13 closeFile];
      [(NSMutableDictionary *)self->_fileHandles removeObjectForKey:v10];
    }

    objc_opt_self();
    LOBYTE(v9) = 1;
    return v9;
  }

  v18 = v17;
  v19 = 0;
  while (1)
  {
    v20 = write(v14, (v19 + v16), v18 - v19);
    if (v20 == -1)
    {
      break;
    }

    v19 += v20;
LABEL_10:
    if (v19 >= v18)
    {
      goto LABEL_18;
    }
  }

  if (*__error() == 4)
  {
    goto LABEL_10;
  }

  if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
  }

  [v13 closeFile];
  [(NSMutableDictionary *)self->_fileHandles removeObjectForKey:v10];
LABEL_29:
  LOBYTE(v9) = 0;
  return v9;
}

- (BOOL)_createDirectoryWithAttributes:(id)a3 error:(id *)a4
{
  v6 = -[DYFSStreamer _resolveRelativePath:error:](self, "_resolveRelativePath:error:", [a3 objectForKey:*MEMORY[0x277D0B160]], a4);
  if (v6)
  {
    v7 = v6;
    [(NSFileManager *)self->_fileManager removeItemAtURL:v6 error:0];
    v8 = [v7 path];
    fileManager = self->_fileManager;
    directoryAttributes = self->_directoryAttributes;

    LOBYTE(v6) = [(NSFileManager *)fileManager createDirectoryAtPath:v8 withIntermediateDirectories:0 attributes:directoryAttributes error:a4];
  }

  return v6;
}

- (BOOL)_createSymlinkWithAttributes:(id)a3 error:(id *)a4
{
  v7 = -[DYFSStreamer _resolveRelativePath:error:](self, "_resolveRelativePath:error:", [a3 objectForKey:*MEMORY[0x277D0B160]], a4);
  if (v7)
  {
    v8 = v7;
    v9 = [a3 objectForKey:@"destination"];
    v10 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:{objc_msgSend(MEMORY[0x277CCA900], "URLQueryAllowedCharacterSet")}];
    v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
    [(NSFileManager *)self->_fileManager removeItemAtURL:v8 error:a4];
    LOBYTE(v7) = [(NSFileManager *)self->_fileManager createSymbolicLinkAtURL:v8 withDestinationURL:v11 error:a4];
    ++self->_files;
  }

  return v7;
}

- (void)setOwner:(id)a3
{
  if (self->_isSender)
  {
    [DYFSStreamer setOwner:];
  }

  if (self->_didInitiate)
  {
    [DYFSStreamer setOwner:];
  }

  owner = self->_owner;
  if (owner != a3)
  {

    self->_owner = [a3 copy];
  }
}

- (void)setDestinationName:(id)a3
{
  if (!self->_isSender)
  {
    [DYFSStreamer setDestinationName:];
  }

  if (self->_didInitiate)
  {
    [DYFSStreamer setDestinationName:];
  }

  if (!a3)
  {
    [DYFSStreamer setDestinationName:];
  }

  destinationName = self->_destinationName;
  if (destinationName != a3)
  {

    self->_destinationName = [a3 copy];
  }
}

- (id)receiveTransfer:(id)a3
{
  v5 = [MEMORY[0x277D0AFC8] future];
  if (self->_owner)
  {
    *__error() = 0;
    v6 = getpwnam([(NSString *)self->_owner UTF8String]);
    if (!v6)
    {
      v20 = __error();
      v21 = *v20;
      v22 = *MEMORY[0x277D0B240];
      if (v21)
      {
        owner = [MEMORY[0x277CCACA8] stringWithUTF8String:strerror(*v20)];
      }

      else
      {
        owner = self->_owner;
      }

      _DYOLog();
      [(DYFSStreamer *)self denyTransfer:a3, owner];
      [v5 setError:{objc_msgSend(MEMORY[0x277D0AFC0], "errorWithDomain:code:userInfo:", *MEMORY[0x277CCA5B8], v21, 0)}];
      v24 = MEMORY[0x277CCABB0];
      goto LABEL_15;
    }

    pw_uid = v6->pw_uid;
  }

  else
  {
    pw_uid = -1;
  }

  self->_ownerUID = pw_uid;
  v8 = objc_alloc(MEMORY[0x277CBEAC0]);
  v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_ownerUID];
  v10 = *MEMORY[0x277CCA158];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:448];
  v12 = [v8 initWithObjectsAndKeys:{v9, v10, v11, *MEMORY[0x277CCA180], 0}];
  self->_directoryAttributes = v12;
  v30 = 0;
  if (![(NSFileManager *)self->_fileManager createDirectoryAtPath:self->_path withIntermediateDirectories:0 attributes:v12 error:&v30])
  {
    path = self->_path;
    if ((DYFSDirectoryExists() & 1) == 0)
    {
      v23 = *MEMORY[0x277D0B240];
      v27 = v30;
      _DYOLog();
      [(DYFSStreamer *)self denyTransfer:a3, v27];
      goto LABEL_12;
    }
  }

  self->_didInitiate = 1;
  v14 = [MEMORY[0x277D0AFE0] messageWithKind:2305 objectPayload:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 1)}];
  transport = self->_transport;
  queue = self->_queue;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __32__DYFSStreamer_receiveTransfer___block_invoke;
  v29[3] = &unk_279309BE8;
  v29[4] = self;
  v29[5] = v5;
  v17 = [(DYTransport *)transport send:v14 inReplyTo:a3 error:&v30 replyQueue:queue timeout:10000000000 handler:v29];
  ++self->_messages;
  self->_bytes += [v14 transportSize];
  if ((v17 & 1) == 0)
  {
    v18 = *MEMORY[0x277D0B240];
    _DYOLog();
    v19 = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__DYFSStreamer_receiveTransfer___block_invoke_2;
    block[3] = &unk_279309890;
    block[4] = self;
    dispatch_sync(v19, block);
LABEL_12:
    [v5 setError:v30];
    v24 = MEMORY[0x277CCABB0];
LABEL_15:
    [v5 setResult:{objc_msgSend(v24, "numberWithBool:", 0)}];
  }

  return v5;
}

uint64_t __32__DYFSStreamer_receiveTransfer___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!a2)
  {
    v8 = *MEMORY[0x277D0B240];
    _DYOLog();
    [*(a1 + 32) _invalidate];
    v9 = *(a1 + 40);
    v10 = a3;
    goto LABEL_8;
  }

  ++*(v4 + 144);
  *(*(a1 + 32) + 136) += [a2 transportSize];
  if ([a2 kind] != 2306)
  {
    if ([a2 kind] == 2307)
    {
      v11 = *(a1 + 32);
      if (*(v11 + 83) == 1)
      {
        [v11 _sendAbortMessageInReplyTo:a2 becauseOfError:*(v11 + 48)];
      }

      else
      {
        v15 = [MEMORY[0x277D0AFE0] messageWithKind:2308];
        [*(*(a1 + 32) + 24) send:v15 inReplyTo:a2 error:0];
        ++*(*(a1 + 32) + 144);
        *(*(a1 + 32) + 136) += [v15 transportSize];

        *(*(a1 + 32) + 48) = 0;
      }

      [*(a1 + 40) setError:*(*(a1 + 32) + 48)];
      [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", (*(*(a1 + 32) + 83) & 1) == 0)}];
      [*(a1 + 32) _invalidate];
      return 0;
    }

    v12 = [a2 kind];
    v13 = *(a1 + 32);
    if (v12 != 2309)
    {
      [*(a1 + 32) _invalidate];
      *(*(a1 + 32) + 48) = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:43 userInfo:0];
      goto LABEL_25;
    }

    v14 = *MEMORY[0x277D0B240];
    v21 = [a2 stringPayload];
    _DYOLog();
    [*(a1 + 32) _invalidate];
    v10 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:45 userInfo:0];
    v9 = *(a1 + 40);
LABEL_8:
    [v9 setError:v10];
    [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
    return 0;
  }

  if ((*(*(a1 + 32) + 83) & 1) == 0)
  {
    v6 = [a2 attributeForKey:@"kind"];
    if ([v6 isEqualToString:@"file"])
    {
      if ([*(a1 + 32) _createOrUpdateFileWithData:objc_msgSend(a2 attributes:"payload") error:{objc_msgSend(a2, "attributes"), *(a1 + 32) + 48}])
      {
        goto LABEL_23;
      }
    }

    else if ([v6 isEqualToString:@"directory"])
    {
      if ([*(a1 + 32) _createDirectoryWithAttributes:objc_msgSend(a2 error:{"attributes"), *(a1 + 32) + 48}])
      {
LABEL_23:
        *(*(a1 + 32) + 48) = 0;
        return 1;
      }
    }

    else if ([v6 isEqualToString:@"symlink"] && (objc_msgSend(*(a1 + 32), "_createSymlinkWithAttributes:error:", objc_msgSend(a2, "attributes"), *(a1 + 32) + 48) & 1) != 0)
    {
      goto LABEL_23;
    }

    v17 = *(a1 + 32);
    v18 = *MEMORY[0x277D0B240];
    v22 = [a2 attributes];
    v23 = *(*(a1 + 32) + 48);
    _DYOLog();
    v19 = *(*(a1 + 32) + 48);
    [*(a1 + 32) _invalidate];
LABEL_25:
    [*(a1 + 40) setError:*(*(a1 + 32) + 48)];
    [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
  }

  return 1;
}

- (void)denyTransfer:(id)a3
{
  self->_didInitiate = 1;
  v5 = [MEMORY[0x277D0AFE0] messageWithKind:2305 objectPayload:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
  [(DYTransport *)self->_transport send:v5 inReplyTo:a3 error:0];
  ++self->_messages;
  self->_bytes += [v5 transportSize];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__DYFSStreamer_denyTransfer___block_invoke;
  block[3] = &unk_279309890;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_invalidate
{
  if (!self->_invalid)
  {
    [-[NSMutableDictionary allValues](self->_fileHandles "allValues")];
    [(NSMutableDictionary *)self->_fileHandles removeAllObjects];
    self->_invalid = 1;
  }
}

@end