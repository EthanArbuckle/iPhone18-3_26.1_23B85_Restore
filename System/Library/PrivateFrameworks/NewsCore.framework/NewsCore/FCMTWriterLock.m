@interface FCMTWriterLock
- (BOOL)readBool:(id)a3;
- (FCMTWriterLock)init;
- (FCMTWriterLock)initWithUnderlyingLock:(id)a3;
- (id)readObject:(id)a3;
- (void)lock;
- (void)performReadSync:(id)a3;
- (void)performWriteSync:(id)a3;
- (void)unlock;
@end

@implementation FCMTWriterLock

- (FCMTWriterLock)init
{
  v3 = objc_alloc_init(MEMORY[0x1E69B6920]);
  v4 = [(FCMTWriterLock *)self initWithUnderlyingLock:v3];

  return v4;
}

- (void)lock
{
  if (self)
  {
    self = self->_underlyingLock;
  }

  [(FCMTWriterLock *)self lock];
}

- (void)unlock
{
  if (self)
  {
    self = self->_underlyingLock;
  }

  [(FCMTWriterLock *)self unlock];
}

- (FCMTWriterLock)initWithUnderlyingLock:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCMTWriterLock;
  v6 = [(FCMTWriterLock *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingLock, a3);
  }

  return v7;
}

- (void)performReadSync:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4[2]();
  }

  else
  {
    [(FCMTWriterLock *)self lock];
    v4[2]();
    [(FCMTWriterLock *)self unlock];
  }
}

- (void)performWriteSync:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCMTWriterLock *)self lock];
  v5[2](v5);

  [(FCMTWriterLock *)self unlock];
}

- (BOOL)readBool:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__FCMTWriterLock_readBool___block_invoke;
  v7[3] = &unk_1E7C46F78;
  v9 = &v10;
  v5 = v4;
  v8 = v5;
  [(FCMTWriterLock *)self performReadSync:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __27__FCMTWriterLock_readBool___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)readObject:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__87;
  v15 = __Block_byref_object_dispose__87;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__FCMTWriterLock_readObject___block_invoke;
  v8[3] = &unk_1E7C46F78;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(FCMTWriterLock *)self performReadSync:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __29__FCMTWriterLock_readObject___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

@end