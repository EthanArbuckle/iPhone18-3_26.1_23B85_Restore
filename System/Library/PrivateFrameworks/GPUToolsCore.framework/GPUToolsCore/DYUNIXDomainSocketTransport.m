@interface DYUNIXDomainSocketTransport
- (DYUNIXDomainSocketTransport)initWithMode:(int)a3;
- (id)connect;
- (void)_connectClient:(id)a3 future:(id)a4;
- (void)_connectServer:(id)a3 future:(id)a4;
- (void)_invalidate;
- (void)setUrl:(id)a3;
@end

@implementation DYUNIXDomainSocketTransport

- (DYUNIXDomainSocketTransport)initWithMode:(int)a3
{
  v5.receiver = self;
  v5.super_class = DYUNIXDomainSocketTransport;
  result = [(DYBaseSocketTransport *)&v5 init];
  if (result)
  {
    *(&result->super._scheduledReadOnWritableSocket + 3) = a3;
  }

  return result;
}

- (void)setUrl:(id)a3
{
  if ([(DYBaseSocketTransport *)self connected])
  {
    dy_abort("tried to set socket path on connected unix domain socket transport");
  }

  if (a3 && ![a3 filePathURL])
  {
    dy_abort("unix domain socket url must be a file url: %s", [objc_msgSend(a3 "absoluteString")]);
  }

  queue = self->super.super.super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DYUNIXDomainSocketTransport_setUrl___block_invoke;
  block[3] = &unk_27930C170;
  block[4] = a3;
  block[5] = self;
  dispatch_sync(queue, block);
}

void *__38__DYUNIXDomainSocketTransport_setUrl___block_invoke(void *result)
{
  v1 = *(result[5] + 8);
  if (result[4] != v1)
  {
    v2 = result;

    result = v2[4];
    *(v2[5] + 8) = result;
  }

  return result;
}

- (void)_connectServer:(id)a3 future:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!a3)
  {
    v8 = NSTemporaryDirectory();
    if (!v8)
    {
      v8 = @"/tmp";
    }

    v7 = [(__CFString *)v8 stringByAppendingPathComponent:@"dysonXXXXXX"];
  }

  CFStringGetFileSystemRepresentation(v7, buffer, 1024);
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  v27 = 0u;
  v28 = 0u;
  v9 = strlen(buffer) + 1;
  v25 = 0;
  v26 = 0u;
  if (a3 || v9 < 0x69)
  {
    if (v9 >= 0x69)
    {
LABEL_19:
      v17 = @"DYErrorDomain";
      v18 = 39;
LABEL_21:
      [a4 setError:{+[DYError errorWithDomain:code:userInfo:](DYError, "errorWithDomain:code:userInfo:", v17, v18, 0)}];
      [a4 setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
      goto LABEL_25;
    }

    if (a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    CFStringGetFileSystemRepresentation([@"/tmp" stringByAppendingPathComponent:@"dysonXXXXXX"], buffer, 1024);
    if (strlen(buffer) - 104 < 0xFFFFFFFFFFFFFF97)
    {
      goto LABEL_19;
    }
  }

  v10 = mkstemp(buffer);
  if (v10 == -1)
  {
    v14 = -1;
    goto LABEL_23;
  }

  v11 = v10;
  v7 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], buffer);
  close(v11);
LABEL_13:
  if (!self->super.super.super._url)
  {
    self->super.super.super._url = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v7];
  }

  v25.sa_family = 1;
  strlcpy(v25.sa_data, buffer, 0x68uLL);
  v12 = strlen(v25.sa_data);
  v13 = socket(1, 1, 0);
  if (v13 == -1)
  {
    v19 = *MEMORY[0x277CCA5B8];
    v18 = *__error();
    v17 = v19;
    goto LABEL_21;
  }

  v14 = v13;
  unlink(v25.sa_data);
  if (bind(v14, &v25, v12 + 2) != -1 && listen(v14, 1) != -1)
  {
    fcntl(v14, 4, 4);
    v15 = dispatch_source_create(MEMORY[0x277D85D28], v14, 0, self->super.super.super._queue);
    *&self->_mode = v15;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __53__DYUNIXDomainSocketTransport__connectServer_future___block_invoke;
    handler[3] = &unk_27930C198;
    v24 = v14;
    handler[4] = self;
    handler[5] = a4;
    dispatch_source_set_cancel_handler(v15, handler);
    v16 = *&self->_mode;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __53__DYUNIXDomainSocketTransport__connectServer_future___block_invoke_2;
    v21[3] = &unk_27930C198;
    v22 = v14;
    v21[4] = self;
    v21[5] = a4;
    dispatch_source_set_event_handler(v16, v21);
    dispatch_resume(*&self->_mode);
    goto LABEL_25;
  }

LABEL_23:
  [a4 setError:{+[DYError errorWithDomain:code:userInfo:](DYError, "errorWithDomain:code:userInfo:", *MEMORY[0x277CCA5B8], *__error(), 0)}];
  [a4 setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
  if (v14 != -1)
  {
    close(v14);
  }

LABEL_25:
  v20 = *MEMORY[0x277D85DE8];
}

_BYTE *__53__DYUNIXDomainSocketTransport__connectServer_future___block_invoke(uint64_t a1)
{
  close(*(a1 + 48));
  dispatch_release(*(*(a1 + 32) + 272));
  *(*(a1 + 32) + 272) = 0;
  result = *(a1 + 32);
  if (result[52] == 1)
  {
    [*(a1 + 40) setError:{objc_msgSend(result, "error")}];
    v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v4 = *(a1 + 40);

    return [v4 setResult:v3];
  }

  return result;
}

intptr_t __53__DYUNIXDomainSocketTransport__connectServer_future___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  result = dispatch_source_testcancel(*(*(a1 + 32) + 272));
  if (!result)
  {
    v10 = 106;
    v3 = accept(*(a1 + 48), &v11, &v10);
    if (v3 == -1)
    {
      v7 = [DYError errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      v8 = *(a1 + 40);
      v6 = (a1 + 40);
      [v8 setError:v7];
      v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
    }

    else
    {
      v4 = v3;
      dispatch_source_cancel(*(*(a1 + 32) + 272));
      [*(a1 + 32) runWithSocket:v4];
      v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v6 = (a1 + 40);
    }

    result = [*v6 setResult:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_connectClient:(id)a3 future:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = socket(1, 1, 0);
    if (v7 != -1)
    {
      v8 = v7;
      v25 = 0u;
      memset(v26, 0, sizeof(v26));
      v23 = 0u;
      v24 = 0u;
      v21 = 0;
      v22 = 0u;
      CFStringGetFileSystemRepresentation(a3, v20, 1024);
      if (strlen(v20) - 103 > 0xFFFFFFFFFFFFFF97)
      {
        v21.sa_family = 1;
        strlcpy(v21.sa_data, v20, 0x68uLL);
        v16 = strlen(v21.sa_data);
        if (connect(v8, &v21, v16 + 2) != -1)
        {
          [(DYBaseSocketTransport *)self runWithSocket:v8];
          v17 = 1;
LABEL_14:
          [a4 setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v17)}];
          v19 = *MEMORY[0x277D85DE8];
          return;
        }

        v18 = *MEMORY[0x277CCA5B8];
        v10 = *__error();
        v9 = v18;
      }

      else
      {
        v9 = @"DYErrorDomain";
        v10 = 1;
      }

      [a4 setError:{+[DYError errorWithDomain:code:userInfo:](DYError, "errorWithDomain:code:userInfo:", v9, v10, 0)}];
      v17 = 0;
      goto LABEL_14;
    }

    v13 = *MEMORY[0x277CCA5B8];
    v12 = *__error();
    v11 = v13;
  }

  else
  {
    v11 = @"DYErrorDomain";
    v12 = 38;
  }

  [a4 setError:{+[DYError errorWithDomain:code:userInfo:](DYError, "errorWithDomain:code:userInfo:", v11, v12, 0)}];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v15 = *MEMORY[0x277D85DE8];

  [a4 setResult:v14];
}

- (id)connect
{
  v3 = +[DYFuture future];
  queue = self->super.super.super._queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__DYUNIXDomainSocketTransport_connect__block_invoke;
  v6[3] = &unk_27930C170;
  v6[4] = self;
  v6[5] = v3;
  dispatch_async(queue, v6);
  return v3;
}

uint64_t __38__DYUNIXDomainSocketTransport_connect__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[52] == 1)
  {
    v3 = 32;
LABEL_3:
    [*(a1 + 40) setError:{+[DYError errorWithDomain:code:userInfo:](DYError, "errorWithDomain:code:userInfo:", @"DYErrorDomain", v3, 0)}];
    v4 = MEMORY[0x277CCABB0];
    v5 = 0;
LABEL_6:
    v6 = [v4 numberWithBool:v5];
    v7 = *(a1 + 40);

    return [v7 setResult:v6];
  }

  if ([v2 connected])
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = 1;
    goto LABEL_6;
  }

  v9 = [*(*(a1 + 32) + 8) filePathURL];
  if (*(*(a1 + 32) + 8))
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v3 = 257;
    goto LABEL_3;
  }

  v11 = [v9 path];
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  if (v12[67] == 2)
  {

    return [v12 _connectServer:v11 future:v13];
  }

  else
  {

    return [v12 _connectClient:v11 future:v13];
  }
}

- (void)_invalidate
{
  v3 = *&self->_mode;
  if (v3)
  {
    dispatch_source_cancel(v3);
  }

  v4.receiver = self;
  v4.super_class = DYUNIXDomainSocketTransport;
  [(DYBaseSocketTransport *)&v4 _invalidate];
}

@end