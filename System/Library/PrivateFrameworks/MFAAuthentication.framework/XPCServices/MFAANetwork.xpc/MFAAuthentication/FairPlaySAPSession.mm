@interface FairPlaySAPSession
+ (FairPlaySAPSession)sessionWithDelegate:(id)delegate;
- (FairPlaySAPSession)init;
- (FairPlaySAPSession)initWithDelegate:(id)delegate;
- (FairPlaySAPSessionDelegate)delegate;
- (double)TTL;
- (id)description;
- (unint64_t)state;
- (void)_checkExpiration;
- (void)_close;
- (void)close;
- (void)dealloc;
- (void)openWithCompletionHandler:(id)handler;
- (void)setHwInfo:(FairPlayHWInfo_ *)info;
- (void)setState_int:(unint64_t)state_int;
- (void)setTTL:(double)l;
- (void)signatureForData:(id)data completionHandler:(id)handler;
- (void)verifySignature:(id)signature forData:(id)data completionHandler:(id)handler;
@end

@implementation FairPlaySAPSession

- (FairPlaySAPSession)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = FairPlaySAPSession;
  v5 = [(FairPlaySAPSession *)&v27 init];
  v6 = v5;
  if (v5 == self)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_state_int = 0;
    v7 = +[NSUUID UUID];
    UUID = v6->_UUID;
    v6->_UUID = v7;

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [NSString stringWithFormat:@"%@-%lu.completionQueue", v10, [(FairPlaySAPSession *)v6 hash]];
    v12 = dispatch_queue_create([v11 UTF8String], &_dispatch_queue_attr_concurrent);
    completionQueue = v6->_completionQueue;
    v6->_completionQueue = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [NSString stringWithFormat:@"%@-%lu.internalQueue", v15, [(FairPlaySAPSession *)v6 hash]];
    v17 = dispatch_queue_create([v16 UTF8String], 0);
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v17;

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [NSString stringWithFormat:@"%@-%lu.delegateQueue", v20, [(FairPlaySAPSession *)v6 hash]];
    v22 = dispatch_queue_create([v21 UTF8String], &_dispatch_queue_attr_concurrent);
    delegateQueue = v6->_delegateQueue;
    v6->_delegateQueue = v22;

    v6->_sessionContext = 0;
    *&v6->_hwInfo.ID[4] = 0;
    *&v6->_hwInfo.ID[12] = 0;
    *&v6->_hwInfo.IDLength = 0;
    v24 = +[NSDate distantFuture];
    expiration = v6->_expiration;
    v6->_expiration = v24;
  }

  return v6;
}

- (FairPlaySAPSession)init
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector("initWithDelegate:");
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  +[NSException raise:format:](NSException, "raise:format:", NSInternalInconsistencyException, @"Must use +[%@ %@] instead of +[%@ %@]!", v5, v6, v8, v9);

  return 0;
}

- (void)dealloc
{
  [(FairPlaySAPSession *)self close];
  v3.receiver = self;
  v3.super_class = FairPlaySAPSession;
  [(FairPlaySAPSession *)&v3 dealloc];
}

- (void)openWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = [(FairPlaySAPSession *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke;
  v7[3] = &unk_100080A40;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(internalQueue, v7);
}

void __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _checkExpiration];
  if ([*(a1 + 32) state_int])
  {
    v2 = [*(a1 + 32) completionQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_2_38;
    v8[3] = &unk_1000807B0;
    v9 = *(a1 + 40);
    dispatch_async(v2, v8);

    v3 = v9;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[#FairPlaySAPSession] Opening session...", buf, 2u);
    }

    cp2g1b9ro(*(a1 + 32) + 56, *(a1 + 32) + 72);
    if (v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_cold_1();
      }

      v5 = [*(a1 + 32) completionQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_20;
      block[3] = &unk_1000807B0;
      v13 = *(a1 + 40);
      dispatch_async(v5, block);

      v3 = v13;
    }

    else
    {
      [*(a1 + 32) setState_int:1];
      [*(a1 + 32) setState_int:2];
      v6 = [*(a1 + 32) delegateQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_2;
      v10[3] = &unk_100080A40;
      v7 = *(a1 + 40);
      v10[4] = *(a1 + 32);
      v11 = v7;
      dispatch_async(v6, v10);

      v3 = v11;
    }
  }
}

void __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_20(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [NSError FPSAPS_errorWithCode:-4 andDescription:@"Could not initialize session."];
    (*(v1 + 16))(v1, v2);
  }
}

void __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_3;
  v4[3] = &unk_1000809F0;
  v4[4] = v3;
  v5 = *(a1 + 40);
  [v2 session:v3 requestCertificateWithCompletionHandler:v4];
}

void __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) internalQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_4;
  v12[3] = &unk_1000809C8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_4(id *a1)
{
  if (a1[4])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_4_cold_1();
    }

    [a1[5] _close];
    v2 = [a1[5] completionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_26;
    block[3] = &unk_100080760;
    v23 = a1[7];
    v22 = a1[4];
    dispatch_async(v2, block);

    v3 = v23;
LABEL_17:

    return;
  }

  v4 = a1[6];
  if (!v4 || ![v4 length])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#FairPlaySAPSession] Invalid certificate received!", buf, 2u);
    }

    [a1[5] _close];
    v9 = [a1[5] completionQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_27;
    v19[3] = &unk_1000807B0;
    v20 = a1[7];
    dispatch_async(v9, v19);

    v3 = v20;
    goto LABEL_17;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[#FairPlaySAPSession] Received certificate!", buf, 2u);
  }

  [a1[5] setState_int:3];
  v18 = -1;
  *buf = 0;
  v16 = 0;
  Mib5yocT(200, a1[5] + 72, [a1[5] sessionContext], objc_msgSend(a1[6], "bytes"), objc_msgSend(a1[6], "length"), buf, &v16, &v18);
  if (!v5 && v18 == 1 && *buf && v16)
  {
    v6 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:" length:?];
    [a1[5] setState_int:4];
    v7 = [a1[5] delegateQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_2_30;
    v11[3] = &unk_100080A18;
    v11[4] = a1[5];
    v12 = v6;
    v13 = a1[7];
    v8 = v6;
    dispatch_async(v7, v11);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_4_cold_2();
    }

    if (*buf)
    {
      free(*buf);
      *buf = 0;
    }

    [a1[5] _close];
    v10 = [a1[5] completionQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_28;
    v14[3] = &unk_1000807B0;
    v15 = a1[7];
    dispatch_async(v10, v14);

    v8 = v15;
  }
}

uint64_t __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_26(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_27(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [NSError FPSAPS_errorWithCode:-3];
    (*(v1 + 16))(v1, v2);
  }
}

void __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_28(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [NSError FPSAPS_errorWithCode:-4];
    (*(v1 + 16))(v1, v2);
  }
}

void __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_2_30(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_3_31;
  v5[3] = &unk_1000809F0;
  v5[4] = v3;
  v6 = *(a1 + 48);
  [v2 session:v3 requestHandshakeWithServer:v4 completionHandler:v5];
}

void __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_3_31(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) internalQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_4_32;
  v12[3] = &unk_1000809C8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_4_32(id *a1)
{
  if (a1[4])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_4_32_cold_1();
    }

    [a1[5] _close];
    v2 = [a1[5] completionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_33;
    block[3] = &unk_100080760;
    v21 = a1[7];
    v20 = a1[4];
    dispatch_async(v2, block);

    v3 = v21;
  }

  else if (a1[6])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[#FairPlaySAPSession] Received handshake response!", buf, 2u);
    }

    [a1[5] setState_int:5];
    v16 = -1;
    *buf = 0;
    v14 = 0;
    Mib5yocT(200, a1[5] + 72, [a1[5] sessionContext], objc_msgSend(a1[6], "bytes"), objc_msgSend(a1[6], "length"), buf, &v14, &v16);
    v5 = v4;
    if (*buf)
    {
      free(*buf);
      *buf = 0;
    }

    if (v5 || v16)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_4_32_cold_2();
      }

      [a1[5] _close];
      v6 = [a1[5] completionQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_36;
      v10[3] = &unk_1000807B0;
      v7 = &v11;
      v11 = a1[7];
      v8 = v10;
    }

    else
    {
      [a1[5] setState_int:6];
      v6 = [a1[5] completionQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_35;
      v12[3] = &unk_1000807B0;
      v7 = &v13;
      v13 = a1[7];
      v8 = v12;
    }

    dispatch_async(v6, v8);

    v3 = *v7;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#FairPlaySAPSession] Invalid handshake response received!", buf, 2u);
    }

    [a1[5] _close];
    v9 = [a1[5] completionQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_34;
    v17[3] = &unk_1000807B0;
    v18 = a1[7];
    dispatch_async(v9, v17);

    v3 = v18;
  }
}

uint64_t __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_33(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_34(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [NSError FPSAPS_errorWithCode:-3];
    (*(v1 + 16))(v1, v2);
  }
}

uint64_t __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_35(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_36(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [NSError FPSAPS_errorWithCode:-4];
    (*(v1 + 16))(v1, v2);
  }
}

void __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_2_38(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [NSError FPSAPS_errorWithCode:-7 andDescription:@"Session is already open or initializing."];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)close
{
  internalQueue = [(FairPlaySAPSession *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __27__FairPlaySAPSession_close__block_invoke;
  block[3] = &unk_100080A68;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)signatureForData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if (handlerCopy)
  {
    internalQueue = [(FairPlaySAPSession *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __57__FairPlaySAPSession_signatureForData_completionHandler___block_invoke;
    block[3] = &unk_100080A18;
    block[4] = self;
    v10 = dataCopy;
    v11 = handlerCopy;
    dispatch_async(internalQueue, block);
  }
}

void __57__FairPlaySAPSession_signatureForData_completionHandler___block_invoke(id *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[#FairPlaySAPSession] Generating signature...", buf, 2u);
  }

  [a1[4] _checkExpiration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a1[4] state_int] == 6)
    {
      *buf = 0;
      v19 = 0;
      Fc3vhtJDvr([a1[4] sessionContext], objc_msgSend(a1[5], "bytes"), objc_msgSend(a1[5], "length"), buf, &v19);
      if (v2)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __57__FairPlaySAPSession_signatureForData_completionHandler___block_invoke_cold_1();
        }

        if (*buf)
        {
          free(*buf);
          *buf = 0;
        }

        v3 = [a1[4] completionQueue];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = __57__FairPlaySAPSession_signatureForData_completionHandler___block_invoke_43;
        v14[3] = &unk_1000807B0;
        v4 = &v15;
        v15 = a1[6];
        v5 = v14;
      }

      else
      {
        v3 = [a1[4] completionQueue];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = __57__FairPlaySAPSession_signatureForData_completionHandler___block_invoke_2;
        v16[3] = &unk_100080A90;
        v4 = v17;
        v17[0] = a1[6];
        v17[1] = *buf;
        v18 = v19;
        v5 = v16;
      }

      dispatch_async(v3, v5);

      v10 = *v4;
    }

    else
    {
      v11 = [a1[4] completionQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = __57__FairPlaySAPSession_signatureForData_completionHandler___block_invoke_2_44;
      v12[3] = &unk_1000807B0;
      v13 = a1[6];
      dispatch_async(v11, v12);

      v10 = v13;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = a1[5];
      *buf = 138412546;
      *&buf[4] = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[#FairPlaySAPSession] Invalid parameter! (data.class: %@, data: %@)", buf, 0x16u);
    }

    v9 = [a1[4] completionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __57__FairPlaySAPSession_signatureForData_completionHandler___block_invoke_42;
    block[3] = &unk_1000807B0;
    v21 = a1[6];
    dispatch_async(v9, block);

    v10 = v21;
  }
}

void __57__FairPlaySAPSession_signatureForData_completionHandler___block_invoke_42(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError FPSAPS_errorWithCode:-3];
  (*(v1 + 16))(v1, 0, v2);
}

void __57__FairPlaySAPSession_signatureForData_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSData dataWithBytesNoCopy:*(a1 + 40) length:*(a1 + 48)];
  (*(v1 + 16))(v1, v2, 0);
}

void __57__FairPlaySAPSession_signatureForData_completionHandler___block_invoke_43(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError FPSAPS_errorWithCode:-3];
  (*(v1 + 16))(v1, 0, v2);
}

void __57__FairPlaySAPSession_signatureForData_completionHandler___block_invoke_2_44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError FPSAPS_errorWithCode:-7 andDescription:@"Session must be open to generate signature."];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)verifySignature:(id)signature forData:(id)data completionHandler:(id)handler
{
  signatureCopy = signature;
  dataCopy = data;
  handlerCopy = handler;
  if (handlerCopy)
  {
    internalQueue = [(FairPlaySAPSession *)self internalQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __64__FairPlaySAPSession_verifySignature_forData_completionHandler___block_invoke;
    v12[3] = &unk_100080AB8;
    v13 = signatureCopy;
    v14 = dataCopy;
    selfCopy = self;
    v16 = handlerCopy;
    dispatch_async(internalQueue, v12);
  }
}

void __64__FairPlaySAPSession_verifySignature_forData_completionHandler___block_invoke(id *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[#FairPlaySAPSession] Verifying signature...", buf, 2u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if ([a1[6] state_int] == 6)
    {
      v2 = [a1[5] mutableCopy];
      [a1[6] sessionContext];
      [a1[4] bytes];
      [a1[4] length];
      [v2 mutableBytes];
      [v2 length];
      gLg1CWr7p();
      v4 = v3;
      [a1[6] _checkExpiration];
      if (v4)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v25) = v4;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#FairPlaySAPSession] Signature verification failed! (status: %d)", buf, 8u);
        }

        v5 = [a1[6] completionQueue];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = __64__FairPlaySAPSession_verifySignature_forData_completionHandler___block_invoke_49;
        v18[3] = &unk_1000807B0;
        v6 = &v19;
        v19 = a1[7];
        v7 = v18;
      }

      else
      {
        v5 = [a1[6] completionQueue];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = __64__FairPlaySAPSession_verifySignature_forData_completionHandler___block_invoke_2;
        v20[3] = &unk_1000807B0;
        v6 = &v21;
        v21 = a1[7];
        v7 = v20;
      }

      dispatch_async(v5, v7);
    }

    else
    {
      v15 = [a1[6] completionQueue];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = __64__FairPlaySAPSession_verifySignature_forData_completionHandler___block_invoke_2_50;
      v16[3] = &unk_1000807B0;
      v17 = a1[7];
      dispatch_async(v15, v16);

      v2 = v17;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = a1[4];
      v13 = a1[5];
      *buf = 138413058;
      v25 = v9;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[#FairPlaySAPSession] Invalid parameter! (signature.class: %@, data.class: %@, signature: %@, data: %@)", buf, 0x2Au);
    }

    v14 = [a1[6] completionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __64__FairPlaySAPSession_verifySignature_forData_completionHandler___block_invoke_48;
    block[3] = &unk_1000807B0;
    v23 = a1[7];
    dispatch_async(v14, block);

    v2 = v23;
  }
}

void __64__FairPlaySAPSession_verifySignature_forData_completionHandler___block_invoke_48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError FPSAPS_errorWithCode:-3];
  (*(v1 + 16))(v1, 0, v2);
}

void __64__FairPlaySAPSession_verifySignature_forData_completionHandler___block_invoke_49(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError FPSAPS_errorWithCode:-3];
  (*(v1 + 16))(v1, 0, v2);
}

void __64__FairPlaySAPSession_verifySignature_forData_completionHandler___block_invoke_2_50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError FPSAPS_errorWithCode:-7 andDescription:@"Session must be open to verify signature."];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_close
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#FairPlaySAPSession] Closing session...", v6, 2u);
  }

  v3 = +[NSDate date];
  [(FairPlaySAPSession *)self setExpiration:v3];

  sessionContext = self->_sessionContext;
  if (sessionContext)
  {
    IPaI1oem5iL(sessionContext);
    if (v5)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [FairPlaySAPSession _close];
      }
    }
  }

  [(FairPlaySAPSession *)self setState_int:0];
}

- (void)_checkExpiration
{
  expiration = [self expiration];
  v2 = 138412290;
  v3 = expiration;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[#FairPlaySAPSession] Checking expiration for session (expiration: %@)...", &v2, 0xCu);
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  state = [(FairPlaySAPSession *)self state];
  if (state > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_100080B28[state];
  }

  [(FairPlaySAPSession *)self TTL];
  v8 = [NSString stringWithFormat:@"%@ <state: %@, TTL: %fs>", v4, v6, v7];

  return v8;
}

- (unint64_t)state
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(FairPlaySAPSession *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __27__FairPlaySAPSession_state__block_invoke;
  v6[3] = &unk_100080AE0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_barrier_sync(internalQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

char *__27__FairPlaySAPSession_state__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _checkExpiration];
  result = [*(a1 + 32) state_int];
  if ((result - 1) <= 5)
  {
    *(*(*(a1 + 40) + 8) + 24) = qword_10006A470[(result - 1)];
  }

  return result;
}

- (double)TTL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(FairPlaySAPSession *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __25__FairPlaySAPSession_TTL__block_invoke;
  v6[3] = &unk_100080AE0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_barrier_sync(internalQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __25__FairPlaySAPSession_TTL__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state_int] == 6)
  {
    v3 = [*(a1 + 32) expiration];
    [v3 timeIntervalSinceNow];
    *(*(*(a1 + 40) + 8) + 24) = v2;
  }
}

- (void)setTTL:(double)l
{
  internalQueue = [(FairPlaySAPSession *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __29__FairPlaySAPSession_setTTL___block_invoke;
  v6[3] = &unk_100080B08;
  v6[4] = self;
  *&v6[5] = l;
  dispatch_barrier_sync(internalQueue, v6);
}

void __29__FairPlaySAPSession_setTTL___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 40)];
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  [v5 setExpiration:v3];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    __29__FairPlaySAPSession_setTTL___block_invoke_cold_1(v2, v4);
  }
}

- (void)setState_int:(unint64_t)state_int
{
  self->_state_int = state_int;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    state_int = self->_state_int;
    if (state_int > 6)
    {
      v5 = 0;
    }

    else
    {
      v5 = off_100080B40[state_int];
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[#FairPlaySAPSession] self.state_int: %@", &v6, 0xCu);
  }
}

+ (FairPlaySAPSession)sessionWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [[self alloc] initWithDelegate:delegateCopy];

  return v5;
}

- (FairPlaySAPSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setHwInfo:(FairPlayHWInfo_ *)info
{
  v3 = *&info->IDLength;
  *&self->_hwInfo.ID[12] = *&info->ID[12];
  *&self->_hwInfo.IDLength = v3;
}

void __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_4_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void __48__FairPlaySAPSession_openWithCompletionHandler___block_invoke_4_32_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void __29__FairPlaySAPSession_setTTL___block_invoke_cold_1(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 expiration];
  v4 = 134218242;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[#FairPlaySAPSession] Setting TTL... (TTL: %f, self.expiration: %@)", &v4, 0x16u);
}

@end