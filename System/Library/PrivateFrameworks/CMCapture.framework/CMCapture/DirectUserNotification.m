@interface DirectUserNotification
- (id)cancel;
- (id)initNotificationWithTimeout:(double)a3 flags:(unint64_t)a4 dictionary:(id)a5 error:(id *)a6;
- (id)updateWithTimeout:(double)a3 flags:(unint64_t)a4 dictionary:(id)a5;
- (unint64_t)receiveResponseWithTimeout:(double)a3 error:(id *)a4;
- (void)asyncResponse:(id)a3 block:(id)a4;
- (void)dealloc;
@end

@implementation DirectUserNotification

- (id)initNotificationWithTimeout:(double)a3 flags:(unint64_t)a4 dictionary:(id)a5 error:(id *)a6
{
  v20.receiver = self;
  v20.super_class = DirectUserNotification;
  v10 = [(CMCaptureUserNotification *)&v20 initForSubclass];
  if (v10)
  {
    error = 0;
    v11 = CFUserNotificationCreate(*MEMORY[0x1E695E480], a3, a4, &error, a5);
    v10[1] = v11;
    if (a6)
    {
      v12 = error;
      if (error)
      {
        v13 = MEMORY[0x1E696ABC0];
        v14 = *MEMORY[0x1E696A768];
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %s:%d", "-[DirectUserNotification initNotificationWithTimeout:flags:dictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Common/CMCaptureUserNotification.m", 286, @"description"];
        v15 = [v13 errorWithDomain:v14 code:v12 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}];
      }

      else
      {
        v15 = 0;
      }

      *a6 = v15;
      v11 = v10[1];
    }

    if (!v11)
    {

      return 0;
    }
  }

  return v10;
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

- (unint64_t)receiveResponseWithTimeout:(double)a3 error:(id *)a4
{
  responseFlags = 0;
  v5 = CFUserNotificationReceiveResponse(self->_notification, a3, &responseFlags);
  if (a4)
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

    *a4 = v9;
  }

  return responseFlags;
}

- (void)asyncResponse:(id)a3 block:(id)a4
{
  v6 = self;
  global_queue = dispatch_get_global_queue(21, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__DirectUserNotification_asyncResponse_block___block_invoke;
  v8[3] = &unk_1E79907D8;
  v8[4] = self;
  v8[5] = a4;
  dispatch_async(global_queue, v8);
}

void __46__DirectUserNotification_asyncResponse_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) receiveResponseWithTimeout:0 error:0.0]);
  v2 = *(a1 + 32);
}

- (id)updateWithTimeout:(double)a3 flags:(unint64_t)a4 dictionary:(id)a5
{
  v5 = CFUserNotificationUpdate(self->_notification, a3, a4, a5);
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