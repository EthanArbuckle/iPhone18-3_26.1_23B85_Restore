@interface CMIOUserNotification
- (id)_createOrUpdate:(const char *)a3 withTimeout:(double)a4 flags:(unint64_t)a5 dictionary:(id)a6;
- (id)cancel;
- (id)initNotificationWithTimeout:(double)a3 flags:(unint64_t)a4 dictionary:(id)a5 error:(id *)a6;
- (uint64_t)cancel;
- (unint64_t)receiveResponseWithTimeout:(double)a3 error:(id *)a4;
- (void)_closeConnection;
- (void)_handleXPCEvent:(id)a3;
- (void)asyncResponse:(id)a3 block:(id)a4;
- (void)cancel;
- (void)dealloc;
@end

@implementation CMIOUserNotification

- (id)initNotificationWithTimeout:(double)a3 flags:(unint64_t)a4 dictionary:(id)a5 error:(id *)a6
{
  v26.receiver = self;
  v26.super_class = CMIOUserNotification;
  v10 = [(CMCaptureUserNotification *)&v26 initForSubclass];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v10 + 1) = dispatch_queue_create_with_target_V2("CMIOUserNotification", v11, 0);
    v12 = dispatch_group_create();
    *(v10 + 2) = v12;
    dispatch_group_enter(v12);
    mach_service = xpc_connection_create_mach_service("com.apple.cmio.registerassistantservice", 0, 2uLL);
    *(v10 + 4) = mach_service;
    if (mach_service)
    {
      *(v10 + 41) = 1;
      objc_initWeak(&location, v10);
      xpc_connection_set_target_queue(*(v10 + 4), *(v10 + 1));
      v14 = *(v10 + 4);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __75__CMIOUserNotification_initNotificationWithTimeout_flags_dictionary_error___block_invoke;
      handler[3] = &unk_1E798F978;
      objc_copyWeak(&v24, &location);
      xpc_connection_set_event_handler(v14, handler);
      xpc_connection_resume(*(v10 + 4));
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_BOOL(empty, "user-notification", 1);
      xpc_connection_send_message(*(v10 + 4), empty);
      xpc_release(empty);
      v16 = [v10 _createOrUpdate:"notifications-msgtype-create" withTimeout:a4 flags:a5 dictionary:a3];
      if (a6)
      {
        *a6 = v16;
      }

      if (v16)
      {

        v10 = 0;
      }

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    else
    {

      if (a6)
      {
        v17 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E696A768];
        v21 = @"description";
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %s:%d", "-[CMIOUserNotification initNotificationWithTimeout:flags:dictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Common/CMCaptureUserNotification.m", 404];
        v19 = [v17 errorWithDomain:v18 code:-12783 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v22, &v21, 1)}];
        v10 = 0;
        *a6 = v19;
      }

      else
      {
        return 0;
      }
    }
  }

  return v10;
}

uint64_t __75__CMIOUserNotification_initNotificationWithTimeout_flags_dictionary_error___block_invoke(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _handleXPCEvent:a2];
}

- (void)dealloc
{
  [(CMIOUserNotification *)self _closeConnection];

  dispatch_release(self->_responseGroup);
  v3.receiver = self;
  v3.super_class = CMIOUserNotification;
  [(CMIOUserNotification *)&v3 dealloc];
}

- (void)_closeConnection
{
  userNotificationServiceConnection = self->_userNotificationServiceConnection;
  if (userNotificationServiceConnection)
  {
    if (self->_connectionIsValid)
    {
      xpc_connection_cancel(userNotificationServiceConnection);
    }

    self->_connectionIsValid = 0;
    xpc_release(self->_userNotificationServiceConnection);
    self->_userNotificationServiceConnection = 0;
    responseGroup = self->_responseGroup;

    dispatch_group_leave(responseGroup);
  }
}

- (void)_handleXPCEvent:(id)a3
{
  v5 = MEMORY[0x1B26F2E20](a3, a2);
  if (v5 == MEMORY[0x1E69E9E98])
  {
    if (MEMORY[0x1E69E9E18] == MEMORY[0x1E69E9E20] || a3 != MEMORY[0x1E69E9E20])
    {
      goto LABEL_14;
    }

    v7 = 0;
    v8 = &OBJC_IVAR___CMIOUserNotification__connectionIsValid;
  }

  else
  {
    if (v5 != MEMORY[0x1E69E9E80])
    {
      return;
    }

    string = xpc_dictionary_get_string(a3, "notifications-param-message-type");
    if (!string || strcmp(string, "notifications-msgtype-read-response"))
    {
      return;
    }

    self->_response = xpc_dictionary_get_int64(a3, "notifications-param-response");
    v7 = 1;
    v8 = &OBJC_IVAR___CMIOUserNotification__responseIsValid;
  }

  *(&self->super.super.isa + *v8) = v7;
LABEL_14:

  [(CMIOUserNotification *)self _closeConnection];
}

- (unint64_t)receiveResponseWithTimeout:(double)a3 error:(id *)a4
{
  if (a3 == 0.0)
  {
    v6 = -1;
  }

  else
  {
    v6 = dispatch_time(0, (a3 * 1000000000.0));
  }

  v7 = dispatch_group_wait(self->_responseGroup, v6);
  if (v7)
  {
    if (a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (self->_responseIsValid)
    {
      if (!a4)
      {
        return self->_response;
      }

      v10 = 0;
      goto LABEL_7;
    }

    if (self->_connectionIsValid)
    {
      v7 = -12783;
    }

    else
    {
      v7 = -12785;
    }

    if (a4)
    {
LABEL_6:
      v8 = MEMORY[0x1E696ABC0];
      v9 = *MEMORY[0x1E696A768];
      v12 = @"description";
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %s:%d", "-[CMIOUserNotification receiveResponseWithTimeout:error:]", "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Common/CMCaptureUserNotification.m", 477];
      v10 = [v8 errorWithDomain:v9 code:v7 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v13, &v12, 1)}];
LABEL_7:
      *a4 = v10;
    }
  }

  return self->_response;
}

- (id)_createOrUpdate:(const char *)a3 withTimeout:(double)a4 flags:(unint64_t)a5 dictionary:(id)a6
{
  if (self->_connectionIsValid)
  {
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_string(empty, "notifications-param-message-type", a3);
    xpc_dictionary_set_double(empty, "notifications-param-timeout", a4);
    xpc_dictionary_set_int64(empty, "notifications-param-flags", a5);
    v11 = _CFXPCCreateXPCObjectFromCFObject();
    if (v11)
    {
      v12 = v11;
      xpc_dictionary_set_value(empty, "notifications-param-dictionary", v11);
      xpc_release(v12);
      v13 = xpc_connection_send_message_with_reply_sync(self->_userNotificationServiceConnection, empty);
      if (v13)
      {
        v14 = v13;
        v15 = MEMORY[0x1B26F2E20]();
        if (v15 == MEMORY[0x1E69E9E98])
        {
          int64 = 4294954508;
        }

        else if (v15 == MEMORY[0x1E69E9E80])
        {
          int64 = xpc_dictionary_get_int64(v14, "errorReturn");
        }

        else
        {
          int64 = 4294954516;
        }

        xpc_release(v14);
      }

      else
      {
        int64 = 4294954513;
      }
    }

    else
    {
      int64 = 4294954516;
    }

    if (empty)
    {
      xpc_release(empty);
    }

    if (!int64)
    {
      return 0;
    }
  }

  else
  {
    int64 = 4294954511;
  }

  [CMIOUserNotification _createOrUpdate:&v18 withTimeout:&v19 flags:&v20 dictionary:?];
  return v20;
}

- (void)asyncResponse:(id)a3 block:(id)a4
{
  v7 = self;
  responseGroup = self->_responseGroup;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__CMIOUserNotification_asyncResponse_block___block_invoke;
  v9[3] = &unk_1E7990390;
  v9[4] = self;
  v9[5] = a4;
  dispatch_group_notify(responseGroup, a3, v9);
}

uint64_t __44__CMIOUserNotification_asyncResponse_block___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40) == 1)
  {
    v3 = a1;
    a1 = (*(*(a1 + 40) + 16))();
    v2 = *(v3 + 32);
  }

  return MEMORY[0x1EEE66BB8](a1, v2);
}

- (id)cancel
{
  if (!self->_connectionIsValid)
  {
    v5 = 4294954511;
    goto LABEL_8;
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "notifications-param-message-type", "notifications-msgtype-cancel");
  v4 = xpc_connection_send_message_with_reply_sync(self->_userNotificationServiceConnection, empty);
  if (v4)
  {
    [(CMIOUserNotification *)v4 cancel];
    v5 = v9;
    if (!empty)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v5 = 4294954508;
  if (empty)
  {
LABEL_4:
    xpc_release(empty);
  }

LABEL_5:
  if (!v5)
  {
    return 0;
  }

LABEL_8:
  [(CMIOUserNotification *)v5 cancel:&v8];
  return v9;
}

- (uint64_t)_createOrUpdate:(uint64_t)a1 withTimeout:(void *)a2 flags:(void *)a3 dictionary:(uint64_t *)a4 .cold.1(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  *a2 = @"description";
  *a3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %s:%d", "-[CMIOUserNotification _createOrUpdate:withTimeout:flags:dictionary:]", "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Common/CMCaptureUserNotification.m", 529];
  result = OUTLINED_FUNCTION_0_62([MEMORY[0x1E695DF20] dictionaryWithObjects:a3 forKeys:a2 count:1]);
  *a4 = result;
  return result;
}

- (void)cancel
{
  v4 = MEMORY[0x1B26F2E20]();
  if (MEMORY[0x1E69E9E98] != MEMORY[0x1E69E9E80] && v4 == MEMORY[0x1E69E9E80])
  {
    int64 = xpc_dictionary_get_int64(a1, "errorReturn");
  }

  else
  {
    int64 = -12788;
  }

  *a2 = int64;

  xpc_release(a1);
}

- (uint64_t)cancel
{
  *a2 = @"description";
  *a3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %s:%d", "-[CMIOUserNotification cancel]", "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Common/CMCaptureUserNotification.m", 578];
  result = OUTLINED_FUNCTION_0_62([MEMORY[0x1E695DF20] dictionaryWithObjects:a3 forKeys:a2 count:1]);
  *a4 = result;
  return result;
}

@end