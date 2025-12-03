@interface DirectUserNotification
- (id)cancel;
- (id)initNotificationWithTimeout:(double)timeout flags:(unint64_t)flags dictionary:(id)dictionary error:(id *)error;
- (id)updateWithTimeout:(double)timeout flags:(unint64_t)flags dictionary:(id)dictionary;
- (unint64_t)receiveResponseWithTimeout:(double)timeout error:(id *)error;
- (void)asyncResponse:(id)response block:(id)block;
- (void)dealloc;
@end

@implementation DirectUserNotification

- (id)initNotificationWithTimeout:(double)timeout flags:(unint64_t)flags dictionary:(id)dictionary error:(id *)error
{
  v20.receiver = self;
  v20.super_class = DirectUserNotification;
  initForSubclass = [(CMCaptureUserNotification *)&v20 initForSubclass];
  if (initForSubclass)
  {
    error = 0;
    v11 = CFUserNotificationCreate(*MEMORY[0x1E695E480], timeout, flags, &error, dictionary);
    initForSubclass[1] = v11;
    if (error)
    {
      errorCopy = error;
      if (error)
      {
        v13 = MEMORY[0x1E696ABC0];
        v14 = *MEMORY[0x1E696A768];
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %s:%d", "-[DirectUserNotification initNotificationWithTimeout:flags:dictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Common/CMCaptureUserNotification.m", 286, @"description"];
        v15 = [v13 errorWithDomain:v14 code:errorCopy userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}];
      }

      else
      {
        v15 = 0;
      }

      *error = v15;
      v11 = initForSubclass[1];
    }

    if (!v11)
    {

      return 0;
    }
  }

  return initForSubclass;
}

- (void)dealloc
{
  notification = self->_notification;
  if (notification)
  {
    CFRelease(notification);
  }

  v4.receiver = self;
  v4.super_class = DirectUserNotification;
  [(DirectUserNotification *)&v4 dealloc];
}

- (unint64_t)receiveResponseWithTimeout:(double)timeout error:(id *)error
{
  responseFlags = 0;
  v5 = CFUserNotificationReceiveResponse(self->_notification, timeout, &responseFlags);
  if (error)
  {
    if (v5)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E696A768];
      v8 = v5;
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %s:%d", "-[DirectUserNotification receiveResponseWithTimeout:error:]", "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Common/CMCaptureUserNotification.m", 310, @"description"];
      v9 = [v6 errorWithDomain:v7 code:v8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1)}];
    }

    else
    {
      v9 = 0;
    }

    *error = v9;
  }

  return responseFlags;
}

- (void)asyncResponse:(id)response block:(id)block
{
  selfCopy = self;
  global_queue = dispatch_get_global_queue(21, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__DirectUserNotification_asyncResponse_block___block_invoke;
  v8[3] = &unk_1E79907D8;
  v8[4] = self;
  v8[5] = block;
  dispatch_async(global_queue, v8);
}

void __46__DirectUserNotification_asyncResponse_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) receiveResponseWithTimeout:0 error:0.0]);
  v2 = *(a1 + 32);
}

- (id)updateWithTimeout:(double)timeout flags:(unint64_t)flags dictionary:(id)dictionary
{
  v5 = CFUserNotificationUpdate(self->_notification, timeout, flags, dictionary);
  if (!v5)
  {
    return 0;
  }

  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  v8 = v5;
  v10 = @"description";
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %s:%d", "-[DirectUserNotification updateWithTimeout:flags:dictionary:]", "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Common/CMCaptureUserNotification.m", 331];
  return [v6 errorWithDomain:v7 code:v8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v11, &v10, 1)}];
}

- (id)cancel
{
  v2 = CFUserNotificationCancel(self->_notification);
  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A768];
  v5 = v2;
  v7 = @"description";
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %s:%d", "-[DirectUserNotification cancel]", "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Common/CMCaptureUserNotification.m", 340];
  return [v3 errorWithDomain:v4 code:v5 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v8, &v7, 1)}];
}

@end