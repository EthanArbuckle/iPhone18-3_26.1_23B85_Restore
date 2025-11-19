@interface CMCaptureUserNotificationManager
- (BOOL)responseWasAlternate;
- (BOOL)responseWasCancelled;
- (BOOL)responseWasDefault;
- (BOOL)responseWasOther;
- (CMCaptureUserNotificationManager)init;
- (NSDictionary)notificationDictionary;
- (NSNumber)response;
- (id)cancelNotification;
- (id)showNotification;
- (id)waitForResponseUntilTimeout:(double)a3;
- (unint64_t)_beginNotification:(id)a3;
- (unint64_t)flags;
- (void)_endNotification;
- (void)asyncResponse:(id)a3 block:(id)a4;
- (void)dealloc;
- (void)setNotificationFlags:(unint64_t)a3 andDictionary:(id)a4;
- (void)setResponse:(id)a3;
@end

@implementation CMCaptureUserNotificationManager

- (CMCaptureUserNotificationManager)init
{
  v4.receiver = self;
  v4.super_class = CMCaptureUserNotificationManager;
  v2 = [(CMCaptureUserNotificationManager *)&v4 init];
  if (v2)
  {
    v2->_notificationDictionary = objc_alloc_init(MEMORY[0x1E695DF20]);
    v2->_queue = dispatch_queue_create("CMCaptureUserNotificationManager", 0);
    v2->_responseGroup = dispatch_group_create();
  }

  return v2;
}

- (void)dealloc
{
  notification = self->_notification;
  if (notification)
  {
    [(CMCaptureUserNotification *)notification cancel];
    [(CMCaptureUserNotificationManager *)self _endNotification];
  }

  v4.receiver = self;
  v4.super_class = CMCaptureUserNotificationManager;
  [(CMCaptureUserNotificationManager *)&v4 dealloc];
}

- (unint64_t)flags
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__CMCaptureUserNotificationManager_flags__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSDictionary)notificationDictionary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__23;
  v10 = __Block_byref_object_dispose__23;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__CMCaptureUserNotificationManager_notificationDictionary__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __58__CMCaptureUserNotificationManager_notificationDictionary__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setNotificationFlags:(unint64_t)a3 andDictionary:(id)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CMCaptureUserNotificationManager_setNotificationFlags_andDictionary___block_invoke;
  block[3] = &unk_1E798FE50;
  block[5] = a4;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(queue, block);
}

void *__71__CMCaptureUserNotificationManager_setNotificationFlags_andDictionary___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = *(a1 + 48);
  v2 = *(a1 + 40);

  *(*(a1 + 32) + 16) = *(a1 + 40);
  v3 = *(a1 + 32);
  result = v3[6];
  if (result)
  {
    v5 = v3[1];
    v6 = v3[2];

    return [result updateWithTimeout:v5 flags:v6 dictionary:0.0];
  }

  return result;
}

- (NSNumber)response
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__23;
  v10 = __Block_byref_object_dispose__23;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__CMCaptureUserNotificationManager_response__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setResponse:(id)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__CMCaptureUserNotificationManager_setResponse___block_invoke;
  v4[3] = &unk_1E798F898;
  v4[4] = a3;
  v4[5] = self;
  dispatch_sync(queue, v4);
}

void __48__CMCaptureUserNotificationManager_setResponse___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);

  *(*(a1 + 40) + 24) = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v3 + 24))
  {
    v4 = *(v3 + 48);
    if (v4)
    {
      [v4 cancel];
      v5 = *(a1 + 40);

      [v5 _endNotification];
    }
  }
}

- (BOOL)responseWasDefault
{
  v2 = [(CMCaptureUserNotificationManager *)self response];
  if (v2)
  {
    LOBYTE(v2) = ([(NSNumber *)v2 unsignedLongValue]& 3) == 0;
  }

  return v2;
}

- (BOOL)responseWasAlternate
{
  v2 = [(CMCaptureUserNotificationManager *)self response];
  if (v2)
  {
    LOBYTE(v2) = ([(NSNumber *)v2 unsignedLongValue]& 3) == 1;
  }

  return v2;
}

- (BOOL)responseWasOther
{
  v2 = [(CMCaptureUserNotificationManager *)self response];
  if (v2)
  {
    LOBYTE(v2) = ([(NSNumber *)v2 unsignedLongValue]& 3) == 2;
  }

  return v2;
}

- (BOOL)responseWasCancelled
{
  v2 = [(CMCaptureUserNotificationManager *)self response];
  if (v2)
  {
    LOBYTE(v2) = (~[(NSNumber *)v2 unsignedLongValue]& 3) == 0;
  }

  return v2;
}

- (id)showNotification
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__23;
  v13 = __Block_byref_object_dispose__23;
  v14 = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__CMCaptureUserNotificationManager_showNotification__block_invoke;
  v6[3] = &unk_1E79981D8;
  v6[4] = self;
  v6[5] = &v9;
  objc_copyWeak(&v7, &location);
  dispatch_sync(queue, v6);
  v4 = v10[5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v9, 8);
  return v4;
}

id *__52__CMCaptureUserNotificationManager_showNotification__block_invoke(id *result)
{
  v1 = result[4];
  if (!v1[6])
  {
    v2 = result;

    *(v2[4] + 3) = 0;
    v3 = [CMCaptureUserNotification notificationWithTimeout:*(v2[4] + 1) flags:*(v2[4] + 2) dictionary:*(v2[5] + 1) + 40 error:0.0];
    v4 = v2[5];
    if (v3)
    {
      if (!*(v4[1] + 40))
      {
        v5 = v3;
        v6 = [v2[4] _beginNotification:v3];
        v7 = *(v2[4] + 4);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __52__CMCaptureUserNotificationManager_showNotification__block_invoke_2;
        v8[3] = &unk_1E79981B0;
        objc_copyWeak(v9, v2 + 6);
        v9[1] = v6;
        [(CMCaptureUserNotification *)v5 asyncResponse:v7 block:v8];
        objc_destroyWeak(v9);
        v4 = v2[5];
      }
    }

    return *(v4[1] + 40);
  }

  return result;
}

id __52__CMCaptureUserNotificationManager_showNotification__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v5 = result;
    if (*(a1 + 40) == *(result + 7))
    {

      v5[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];

      return [v5 _endNotification];
    }
  }

  return result;
}

- (id)cancelNotification
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__23;
  v10 = __Block_byref_object_dispose__23;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__CMCaptureUserNotificationManager_cancelNotification__block_invoke;
  v5[3] = &unk_1E79904A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __54__CMCaptureUserNotificationManager_cancelNotification__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 40) = [result cancel];
    [*(a1 + 32) _endNotification];
    v3 = *(*(*(a1 + 40) + 8) + 40);

    return v3;
  }

  return result;
}

- (id)waitForResponseUntilTimeout:(double)a3
{
  if (a3 == 0.0)
  {
    v4 = -1;
  }

  else
  {
    v4 = dispatch_time(0, (a3 * 1000000000.0));
  }

  dispatch_group_wait(self->_responseGroup, v4);

  return [(CMCaptureUserNotificationManager *)self response];
}

- (void)asyncResponse:(id)a3 block:(id)a4
{
  queue = self->_queue;
  responseGroup = self->_responseGroup;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CMCaptureUserNotificationManager_asyncResponse_block___block_invoke;
  block[3] = &unk_1E7998200;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_group_notify(responseGroup, queue, block);
}

void __56__CMCaptureUserNotificationManager_asyncResponse_block___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__CMCaptureUserNotificationManager_asyncResponse_block___block_invoke_2;
  v5[3] = &unk_1E79907D8;
  v3 = a1[5];
  v4 = a1[6];
  v5[4] = v2;
  v5[5] = v4;
  dispatch_async(v3, v5);
}

void __56__CMCaptureUserNotificationManager_asyncResponse_block___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
}

- (unint64_t)_beginNotification:(id)a3
{
  if (a3 && !self->_notification)
  {
    self->_notification = a3;
    dispatch_group_enter(self->_responseGroup);
  }

  return self->_notificationCount;
}

- (void)_endNotification
{
  notification = self->_notification;
  if (notification)
  {

    v4 = self->_notificationCount + 1;
    self->_notification = 0;
    self->_notificationCount = v4;
    responseGroup = self->_responseGroup;

    dispatch_group_leave(responseGroup);
  }
}

@end