@interface IDSDeviceConnection
- (BOOL)updateConnectionWithOptions:(id)options error:(id *)error;
- (NSDictionary)metrics;
- (NSInputStream)inputStream;
- (NSOutputStream)outputStream;
- (_IDSDeviceConnection)_internal;
- (id)description;
- (id)initSocketWithDevice:(id)device options:(id)options completionHandler:(id)handler queue:(id)queue;
- (id)initStreamWithDevice:(id)device options:(id)options completionHandler:(id)handler queue:(id)queue;
- (int)socket;
- (unint64_t)mtu;
- (void)close;
- (void)dealloc;
- (void)setStreamPairWithInputStream:(id)stream outputStream:(id)outputStream;
- (void)triggerLossOfXpcConnection;
@end

@implementation IDSDeviceConnection

- (id)initSocketWithDevice:(id)device options:(id)options completionHandler:(id)handler queue:(id)queue
{
  deviceCopy = device;
  optionsCopy = options;
  handlerCopy = handler;
  queueCopy = queue;
  v14 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsNotCurrent = [v14 assertQueueIsNotCurrent];

  if (assertQueueIsNotCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B41414();
    }
  }

  if (_IDSRunningInDaemon())
  {
    v17 = +[IDSLogging IDSDeviceConnection];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_195B26A7C();
    }

    selfCopy = 0;
  }

  else
  {
    v32.receiver = self;
    v32.super_class = IDSDeviceConnection;
    v19 = [(IDSDeviceConnection *)&v32 init];
    if (v19)
    {
      v20 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
      v21 = MEMORY[0x1E696AD98];
      ids_monotonic_time();
      v22 = [v21 numberWithDouble:?];
      [v20 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69A4ED8]];

      v23 = +[IDSInternalQueueController sharedInstance];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_195B0CBE4;
      v26[3] = &unk_1E7443110;
      v27 = v19;
      v28 = deviceCopy;
      v29 = v20;
      v31 = handlerCopy;
      v30 = queueCopy;
      v24 = v20;
      [v23 performBlock:v26];
    }

    self = v19;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)initStreamWithDevice:(id)device options:(id)options completionHandler:(id)handler queue:(id)queue
{
  deviceCopy = device;
  optionsCopy = options;
  handlerCopy = handler;
  queueCopy = queue;
  v14 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsNotCurrent = [v14 assertQueueIsNotCurrent];

  if (assertQueueIsNotCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B414B4();
    }
  }

  if (_IDSRunningInDaemon())
  {
    v17 = +[IDSLogging IDSDeviceConnection];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_195B26A7C();
    }

    selfCopy = 0;
  }

  else
  {
    v35.receiver = self;
    v35.super_class = IDSDeviceConnection;
    v19 = [(IDSDeviceConnection *)&v35 init];
    if (v19)
    {
      v20 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
      v21 = MEMORY[0x1E696AD98];
      ids_monotonic_time();
      v22 = [v21 numberWithDouble:?];
      [v20 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69A4ED8]];

      if (!queueCopy)
      {
        queueCopy = MEMORY[0x1E69E96A0];
        v23 = MEMORY[0x1E69E96A0];
      }

      v24 = [handlerCopy copy];
      v25 = +[IDSInternalQueueController sharedInstance];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_195B0CEB8;
      v29[3] = &unk_1E74408C8;
      v30 = v19;
      v31 = deviceCopy;
      v32 = v20;
      queueCopy = queueCopy;
      v33 = queueCopy;
      v34 = v24;
      v26 = v24;
      v27 = v20;
      [v25 performBlock:v29];
    }

    self = v19;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)updateConnectionWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -86;
  v7 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195B0D350;
  v10[3] = &unk_1E743FCF8;
  v12 = &v14;
  v10[4] = self;
  v8 = optionsCopy;
  v11 = v8;
  errorCopy = error;
  [v7 performBlock:v10 waitUntilDone:1];

  LOBYTE(error) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return error;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_195A00814;
  v6[4] = sub_195A03DB0;
  v7 = self->_internal;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195B0D4B8;
  v5[3] = &unk_1E743E648;
  v5[4] = v6;
  [v3 performBlock:v5 waitUntilDone:0];

  _Block_object_dispose(v6, 8);
  v4.receiver = self;
  v4.super_class = IDSDeviceConnection;
  [(IDSDeviceConnection *)&v4 dealloc];
}

- (id)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00814;
  v11 = sub_195A03DB0;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195B0D60C;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setStreamPairWithInputStream:(id)stream outputStream:(id)outputStream
{
  streamCopy = stream;
  outputStreamCopy = outputStream;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195B0D738;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = streamCopy;
  v13 = outputStreamCopy;
  v9 = outputStreamCopy;
  v10 = streamCopy;
  [v8 performBlock:v11];
}

- (int)socket
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1431655766;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195B0D834;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LODWORD(self) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (NSInputStream)inputStream
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00814;
  v11 = sub_195A03DB0;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195B0D994;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSOutputStream)outputStream
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00814;
  v11 = sub_195A03DB0;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195B0DB0C;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)close
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195B0DBEC;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (unint64_t)mtu
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195B0DCE0;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (NSDictionary)metrics
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00814;
  v11 = sub_195A03DB0;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195B0DE40;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (_IDSDeviceConnection)_internal
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B41554();
    }
  }

  internal = self->_internal;

  return internal;
}

- (void)triggerLossOfXpcConnection
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195B0DFB0;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4];
}

@end