@interface GTUNIXDomainSocketTransport_capture
- (GTUNIXDomainSocketTransport_capture)initWithMode:(int)mode;
- (id)connect;
- (void)_connectClient:(id)client future:(id)future;
- (void)_connectServer:(id)server future:(id)future;
- (void)_invalidate;
- (void)setUrl:(id)url;
@end

@implementation GTUNIXDomainSocketTransport_capture

- (void)_invalidate
{
  v3 = *&self->_mode;
  if (v3)
  {
    dispatch_source_cancel(v3);
  }

  v4.receiver = self;
  v4.super_class = GTUNIXDomainSocketTransport_capture;
  [(GTBaseSocketTransport_capture *)&v4 _invalidate];
}

- (id)connect
{
  v3 = +[GTFuture_capture future];
  queue = self->super.super.super._queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __38__GTUNIXDomainSocketTransport_connect__block_invoke;
  v6[3] = &unk_2F2550;
  v6[4] = self;
  v6[5] = v3;
  dispatch_async(queue, v6);
  return v3;
}

- (void)_connectClient:(id)client future:(id)future
{
  if (client)
  {
    v7 = socket(1, 1, 0);
    if (v7 != -1)
    {
      v8 = v7;
      v23 = 0u;
      memset(v24, 0, sizeof(v24));
      v21 = 0u;
      v22 = 0u;
      v19 = 0;
      v20 = 0u;
      CFStringGetFileSystemRepresentation(client, v18, 1024);
      if (strlen(v18) - 103 > 0xFFFFFFFFFFFFFF97)
      {
        v19.sa_family = 1;
        strlcpy(v19.sa_data, v18, 0x68uLL);
        v16 = strlen(v19.sa_data);
        if (connect(v8, &v19, v16 + 2) != -1)
        {
          [(GTBaseSocketTransport_capture *)self runWithSocket:v8];
          v17 = 1;
LABEL_14:
          [future setResult:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", v17)}];
          return;
        }

        v11 = *__error();
        v9 = NSError;
        v10 = NSPOSIXErrorDomain;
      }

      else
      {
        v9 = GTError_capture;
        v10 = @"DYErrorDomain";
        v11 = 1;
      }

      [future setError:{-[__objc2_class errorWithDomain:code:userInfo:](v9, "errorWithDomain:code:userInfo:", v10, v11, 0)}];
      v17 = 0;
      goto LABEL_14;
    }

    v14 = *__error();
    v12 = NSError;
    v13 = NSPOSIXErrorDomain;
  }

  else
  {
    v12 = GTError_capture;
    v13 = @"DYErrorDomain";
    v14 = 38;
  }

  [future setError:{-[__objc2_class errorWithDomain:code:userInfo:](v12, "errorWithDomain:code:userInfo:", v13, v14, 0)}];
  v15 = [NSNumber numberWithBool:0];

  [future setResult:v15];
}

- (void)_connectServer:(id)server future:(id)future
{
  serverCopy = server;
  if (!server)
  {
    v8 = NSTemporaryDirectory();
    if (!v8)
    {
      v8 = @"/tmp";
    }

    serverCopy = [(__CFString *)v8 stringByAppendingPathComponent:@"dysonXXXXXX"];
  }

  CFStringGetFileSystemRepresentation(serverCopy, buffer, 1024);
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v26 = 0u;
  v27 = 0u;
  v9 = strlen(buffer) + 1;
  v24 = 0;
  v25 = 0u;
  if (server || v9 < 0x69)
  {
    if (v9 >= 0x69)
    {
LABEL_19:
      v17 = GTError_capture;
      v18 = @"DYErrorDomain";
      v19 = 39;
LABEL_21:
      [future setError:{-[__objc2_class errorWithDomain:code:userInfo:](v17, "errorWithDomain:code:userInfo:", v18, v19, 0)}];
      [future setResult:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 0)}];
      return;
    }

    if (server)
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
  serverCopy = CFStringCreateWithFileSystemRepresentation(kCFAllocatorDefault, buffer);
  close(v11);
LABEL_13:
  if (!self->super.super.super._url)
  {
    self->super.super.super._url = [[NSURL alloc] initFileURLWithPath:serverCopy];
  }

  v24.sa_family = 1;
  strlcpy(v24.sa_data, buffer, 0x68uLL);
  v12 = strlen(v24.sa_data);
  v13 = socket(1, 1, 0);
  if (v13 == -1)
  {
    v19 = *__error();
    v17 = NSError;
    v18 = NSPOSIXErrorDomain;
    goto LABEL_21;
  }

  v14 = v13;
  unlink(v24.sa_data);
  if (bind(v14, &v24, v12 + 2) != -1 && listen(v14, 1) != -1)
  {
    fcntl(v14, 4, 4);
    v15 = dispatch_source_create(&_dispatch_source_type_read, v14, 0, self->super.super.super._queue);
    *&self->_mode = v15;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __53__GTUNIXDomainSocketTransport__connectServer_future___block_invoke;
    handler[3] = &unk_2F1588;
    v23 = v14;
    handler[4] = self;
    handler[5] = future;
    dispatch_source_set_cancel_handler(v15, handler);
    v16 = *&self->_mode;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __53__GTUNIXDomainSocketTransport__connectServer_future___block_invoke_2;
    v20[3] = &unk_2F1588;
    v21 = v14;
    v20[4] = self;
    v20[5] = future;
    dispatch_source_set_event_handler(v16, v20);
    dispatch_resume(*&self->_mode);
    return;
  }

LABEL_23:
  [future setError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", NSPOSIXErrorDomain, *__error(), 0)}];
  [future setResult:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 0)}];
  if (v14 != -1)
  {
    close(v14);
  }
}

- (void)setUrl:(id)url
{
  if ([(GTBaseSocketTransport_capture *)self connected])
  {
    if (s_logUsingOsLog == 1)
    {
      v6 = gt_tagged_log(16);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v7 = "fail: tried to set socket path on connected unix domain socket transport";
        v8 = v6;
        v9 = 2;
        goto LABEL_11;
      }
    }

    else
    {
      v11 = __stderrp;
      [[NSString stringWithFormat:?]];
      fprintf(v11, "%s\n");
    }

LABEL_14:
    abort();
  }

  if (url && ![url filePathURL])
  {
    if (s_logUsingOsLog == 1)
    {
      v10 = gt_tagged_log(16);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v15 = [objc_msgSend(url "absoluteString")];
        v7 = "fail: unix domain socket url must be a file url: %s";
        v8 = v10;
        v9 = 12;
LABEL_11:
        _os_log_fault_impl(&dword_0, v8, OS_LOG_TYPE_FAULT, v7, buf, v9);
        abort();
      }
    }

    else
    {
      v12 = __stderrp;
      -[NSString UTF8String](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"fail: unix domain socket url must be a file url: %s", [objc_msgSend(url "absoluteString")]), "UTF8String");
      fprintf(v12, "%s\n");
    }

    goto LABEL_14;
  }

  queue = self->super.super.super._queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __38__GTUNIXDomainSocketTransport_setUrl___block_invoke;
  block[3] = &unk_2F2550;
  block[4] = url;
  block[5] = self;
  dispatch_sync(queue, block);
}

- (GTUNIXDomainSocketTransport_capture)initWithMode:(int)mode
{
  v5.receiver = self;
  v5.super_class = GTUNIXDomainSocketTransport_capture;
  result = [(GTBaseSocketTransport_capture *)&v5 init];
  if (result)
  {
    *(&result->super._scheduledReadOnWritableSocket + 3) = mode;
  }

  return result;
}

@end