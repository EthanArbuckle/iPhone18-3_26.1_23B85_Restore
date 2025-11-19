@interface GTUNIXDomainSocketTransport_replayer
- (GTUNIXDomainSocketTransport_replayer)initWithMode:(int)a3;
- (id)connect;
- (void)_connectClient:(id)a3 future:(id)a4;
- (void)_connectServer:(id)a3 future:(id)a4;
- (void)_invalidate;
- (void)setUrl:(id)a3;
@end

@implementation GTUNIXDomainSocketTransport_replayer

- (void)_invalidate
{
  v3 = *&self->_mode;
  if (v3)
  {
    dispatch_source_cancel(v3);
  }

  v4.receiver = self;
  v4.super_class = GTUNIXDomainSocketTransport_replayer;
  [(GTBaseSocketTransport_replayer *)&v4 _invalidate];
}

- (id)connect
{
  v3 = +[GTFuture_replayer future];
  queue = self->super.super.super._queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__GTUNIXDomainSocketTransport_connect__block_invoke;
  v6[3] = &unk_279657D20;
  v6[4] = self;
  v6[5] = v3;
  dispatch_async(queue, v6);
  return v3;
}

- (void)_connectClient:(id)a3 future:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = socket(1, 1, 0);
    if (v7 != -1)
    {
      v8 = v7;
      v29 = 0u;
      memset(v30, 0, sizeof(v30));
      v27 = 0u;
      v28 = 0u;
      v25 = 0;
      v26 = 0u;
      CFStringGetFileSystemRepresentation(a3, v24, 1024);
      if (strlen(v24) - 103 > 0xFFFFFFFFFFFFFF97)
      {
        v25.sa_family = 1;
        strlcpy(v25.sa_data, v24, 0x68uLL);
        v19 = strlen(v25.sa_data);
        if (connect(v8, &v25, v19 + 2) != -1)
        {
          [(GTBaseSocketTransport_replayer *)self runWithSocket:v8];
          v20 = 1;
LABEL_14:
          [a4 setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v20)}];
          v23 = *MEMORY[0x277D85DE8];
          return;
        }

        v21 = MEMORY[0x277CCA9B8];
        v22 = *MEMORY[0x277CCA5B8];
        v11 = *__error();
        v9 = v21;
        v10 = v22;
      }

      else
      {
        v9 = GTError_replayer;
        v10 = @"DYErrorDomain";
        v11 = 1;
      }

      [a4 setError:{-[__objc2_class errorWithDomain:code:userInfo:](v9, "errorWithDomain:code:userInfo:", v10, v11, 0)}];
      v20 = 0;
      goto LABEL_14;
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA5B8];
    v14 = *__error();
    v12 = v15;
    v13 = v16;
  }

  else
  {
    v12 = GTError_replayer;
    v13 = @"DYErrorDomain";
    v14 = 38;
  }

  [a4 setError:{-[__objc2_class errorWithDomain:code:userInfo:](v12, "errorWithDomain:code:userInfo:", v13, v14, 0)}];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v18 = *MEMORY[0x277D85DE8];

  [a4 setResult:v17];
}

- (void)_connectServer:(id)a3 future:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
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
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v29 = 0u;
  v30 = 0u;
  v9 = strlen(buffer) + 1;
  v27 = 0;
  v28 = 0u;
  if (a3 || v9 < 0x69)
  {
    if (v9 >= 0x69)
    {
LABEL_19:
      v17 = GTError_replayer;
      v18 = @"DYErrorDomain";
      v19 = 39;
LABEL_21:
      [a4 setError:{-[__objc2_class errorWithDomain:code:userInfo:](v17, "errorWithDomain:code:userInfo:", v18, v19, 0)}];
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

  v27.sa_family = 1;
  strlcpy(v27.sa_data, buffer, 0x68uLL);
  v12 = strlen(v27.sa_data);
  v13 = socket(1, 1, 0);
  if (v13 == -1)
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA5B8];
    v19 = *__error();
    v17 = v20;
    v18 = v21;
    goto LABEL_21;
  }

  v14 = v13;
  unlink(v27.sa_data);
  if (bind(v14, &v27, v12 + 2) != -1 && listen(v14, 1) != -1)
  {
    fcntl(v14, 4, 4);
    v15 = dispatch_source_create(MEMORY[0x277D85D28], v14, 0, self->super.super.super._queue);
    *&self->_mode = v15;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __53__GTUNIXDomainSocketTransport__connectServer_future___block_invoke;
    handler[3] = &unk_279657DC0;
    v26 = v14;
    handler[4] = self;
    handler[5] = a4;
    dispatch_source_set_cancel_handler(v15, handler);
    v16 = *&self->_mode;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __53__GTUNIXDomainSocketTransport__connectServer_future___block_invoke_2;
    v23[3] = &unk_279657DC0;
    v24 = v14;
    v23[4] = self;
    v23[5] = a4;
    dispatch_source_set_event_handler(v16, v23);
    dispatch_resume(*&self->_mode);
    goto LABEL_25;
  }

LABEL_23:
  [a4 setError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", *MEMORY[0x277CCA5B8], *__error(), 0)}];
  [a4 setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
  if (v14 != -1)
  {
    close(v14);
  }

LABEL_25:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)setUrl:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(GTBaseSocketTransport_replayer *)self connected])
  {
    if (s_logUsingOsLog == 1)
    {
      v7 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v8 = "fail: tried to set socket path on connected unix domain socket transport";
        v9 = v7;
        v10 = 2;
        goto LABEL_11;
      }
    }

    else
    {
      v12 = *MEMORY[0x277D85DF8];
      [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"fail: tried to set socket path on connected unix domain socket transport", "UTF8String"];
      fprintf(v12, "%s\n");
    }

LABEL_14:
    abort();
  }

  if (a3 && ![a3 filePathURL])
  {
    if (s_logUsingOsLog == 1)
    {
      v11 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v16 = [objc_msgSend(a3 "absoluteString")];
        v8 = "fail: unix domain socket url must be a file url: %s";
        v9 = v11;
        v10 = 12;
LABEL_11:
        _os_log_fault_impl(&dword_24D764000, v9, OS_LOG_TYPE_FAULT, v8, buf, v10);
        abort();
      }
    }

    else
    {
      v13 = *MEMORY[0x277D85DF8];
      [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"fail: unix domain socket url must be a file url: %s", objc_msgSend(objc_msgSend(a3, "absoluteString"), "UTF8String")), "UTF8String"];
      fprintf(v13, "%s\n");
    }

    goto LABEL_14;
  }

  queue = self->super.super.super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__GTUNIXDomainSocketTransport_setUrl___block_invoke;
  block[3] = &unk_279657D20;
  block[4] = a3;
  block[5] = self;
  dispatch_sync(queue, block);
  v6 = *MEMORY[0x277D85DE8];
}

- (GTUNIXDomainSocketTransport_replayer)initWithMode:(int)a3
{
  v5.receiver = self;
  v5.super_class = GTUNIXDomainSocketTransport_replayer;
  result = [(GTBaseSocketTransport_replayer *)&v5 init];
  if (result)
  {
    *(&result->super._scheduledReadOnWritableSocket + 3) = a3;
  }

  return result;
}

@end