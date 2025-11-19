@interface IDSCapsuleParser
- (BOOL)_parseHeader;
- (IDSCapsuleParser)initWithQueue:(id)a3;
- (void)_readCapsuleWithExistingData:(id)a3 completionHandler:(id)a4;
- (void)_readHeader:(id)a3 completionHandler:(id)a4;
- (void)_readWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)readCapsuleWithCompletionHandler:(id)a3;
@end

@implementation IDSCapsuleParser

- (IDSCapsuleParser)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSCapsuleParser;
  v6 = [(IDSCapsuleParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (BOOL)_parseHeader
{
  self->_currentCapsuleHeaderLength = 0;
  headerBuffer = self->_headerBuffer;
  headerBufferSize = self->_headerBufferSize;
  v6 = -86;
  v3 = sub_1A7C97AE0(&headerBuffer, &headerBufferSize, &self->_currentCapsuleType, &v6);
  if (v3)
  {
    self->_currentCapsuleHeaderLength += v6;
    v3 = sub_1A7C97AE0(&headerBuffer, &headerBufferSize, &self->_currentCapsuleLength, &v6);
    if (v3)
    {
      self->_currentCapsuleHeaderLength += v6;
      self->_headerBufferSize = 0;
      v4 = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_1A7E201B8(&self->_currentCapsuleType, &self->_currentCapsuleLength, v4);
      }

      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IDSCapsuleParser;
  [(IDSCapsuleParser *)&v2 dealloc];
}

- (void)_readHeader:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (v6 && (applier[0] = MEMORY[0x1E69E9820], applier[1] = 3221225472, applier[2] = sub_1A7C97ED0, applier[3] = &unk_1E77E2910, applier[4] = self, applier[5] = &v23, dispatch_data_apply(v6, applier), (v24[3] & 1) != 0))
  {
    pendingData = self->_pendingData;
    if (!pendingData)
    {
      __assert_rtn("[IDSCapsuleParser _readHeader:completionHandler:]", "IDSCapsuleParser.m", 122, "_pendingData");
    }

    currentCapsuleHeaderLength = self->_currentCapsuleHeaderLength;
    size = dispatch_data_get_size(self->_pendingData);
    v11 = size - currentCapsuleHeaderLength;
    if (size < currentCapsuleHeaderLength)
    {
      __assert_rtn("[IDSCapsuleParser _readHeader:completionHandler:]", "IDSCapsuleParser.m", 125, "pendingSize >= headerSize");
    }

    currentCapsuleLength = self->_currentCapsuleLength;
    if (v11 >= currentCapsuleLength)
    {
      subrange = dispatch_data_create_subrange(pendingData, currentCapsuleHeaderLength, currentCapsuleLength);
      v16 = self->_currentCapsuleLength;
      v17 = self->_pendingData;
      if (v11 == v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = dispatch_data_create_subrange(v17, v16 + currentCapsuleHeaderLength, v11 - v16);
        v17 = self->_pendingData;
      }

      self->_pendingData = v18;

      if (self->_pendingData)
      {
        pendingError = 0;
      }

      else
      {
        pendingError = self->_pendingError;
      }

      v7[2](v7, self->_currentCapsuleType, subrange, 1, pendingError);
    }

    else
    {
      subrange = dispatch_data_create_subrange(pendingData, currentCapsuleHeaderLength, v11);
      self->_state = 1;
      self->_waitingBodySize = self->_currentCapsuleLength - v11;
      v14 = self->_pendingData;
      self->_pendingData = 0;

      v7[2](v7, self->_currentCapsuleType, subrange, 0, self->_pendingError);
    }
  }

  else if (self->_pendingError)
  {
    (v7[2])(v7, 0, 0, self->_headerBufferSize == 0);
  }

  else
  {
    v15 = [(IDSCapsuleParser *)self connection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A7C97F54;
    v20[3] = &unk_1E77E2938;
    v20[4] = self;
    v21 = v7;
    nw_connection_receive(v15, 1u, 0x100000u, v20);
  }

  _Block_object_dispose(&v23, 8);
}

- (void)_readWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  state = self->_state;
  if (state == 1)
  {
    if (!self->_waitingBodySize)
    {
      sub_1A7E20310();
    }

    if (self->_pendingData)
    {
      sub_1A7E20248();
    }

    if (self->_pendingError)
    {
      (*(v4 + 2))(v4, 0, 0, 0);
    }

    else
    {
      v7 = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1A7E20274(self, v7);
      }

      v8 = [(IDSCapsuleParser *)self connection];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1A7C98294;
      v9[3] = &unk_1E77E2938;
      v9[4] = self;
      v10 = v5;
      nw_connection_receive(v8, 1u, 0x100000u, v9);
    }
  }

  else if (!state)
  {
    if (self->_waitingBodySize)
    {
      sub_1A7E2033C();
    }

    [(IDSCapsuleParser *)self _readHeader:self->_pendingData completionHandler:v4];
  }
}

- (void)_readCapsuleWithExistingData:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A7C985A8;
  v10[3] = &unk_1E77E2960;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v6;
  v9 = v7;
  [(IDSCapsuleParser *)self _readWithCompletionHandler:v10];
}

- (void)readCapsuleWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (self->_state)
  {
    sub_1A7E203AC();
  }

  if (self->_processingReadCall)
  {
    sub_1A7E203D8();
  }

  v5 = v4;
  self->_processingReadCall = 1;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A7C98794;
  v10[3] = &unk_1E77DCE00;
  v10[4] = self;
  v11 = v4;
  v7 = queue;
  v8 = v5;
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v10);
  dispatch_async(v7, v9);
}

@end