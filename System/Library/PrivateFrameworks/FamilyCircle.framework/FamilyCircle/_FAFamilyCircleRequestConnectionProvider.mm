@interface _FAFamilyCircleRequestConnectionProvider
+ (id)createResumedConnectionWithFactory:(id)factory provider:(id)provider;
+ (id)sharedInstance;
- (_FAFamilyCircleRequestConnectionProvider)init;
- (_FAFamilyCircleRequestConnectionProvider)initWithConnectionFactory:(id)factory;
- (id)serviceConnection;
- (void)connectionWasInterrupted:(id)interrupted;
- (void)connectionWasInvalidated:(id)invalidated;
- (void)dealloc;
@end

@implementation _FAFamilyCircleRequestConnectionProvider

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_FAFamilyCircleRequestConnectionProvider sharedInstance];
  }

  v3 = sharedInstance_sProvider;

  return v3;
}

- (_FAFamilyCircleRequestConnectionProvider)init
{
  v3 = objc_alloc_init(_FAFamilyCircleRequestConnectionFactory);
  v4 = [(_FAFamilyCircleRequestConnectionProvider *)self initWithConnectionFactory:v3];

  return v4;
}

- (id)serviceConnection
{
  lock = [(_FAFamilyCircleRequestConnectionProvider *)self lock];
  [lock lock];

  connection = [(_FAFamilyCircleRequestConnectionProvider *)self connection];

  if (!connection)
  {
    v5 = objc_opt_class();
    factory = [(_FAFamilyCircleRequestConnectionProvider *)self factory];
    v7 = [v5 createResumedConnectionWithFactory:factory provider:self];
    [(_FAFamilyCircleRequestConnectionProvider *)self setConnection:v7];
  }

  connection2 = [(_FAFamilyCircleRequestConnectionProvider *)self connection];
  lock2 = [(_FAFamilyCircleRequestConnectionProvider *)self lock];
  [lock2 unlock];

  return connection2;
}

+ (id)createResumedConnectionWithFactory:(id)factory provider:(id)provider
{
  factoryCopy = factory;
  providerCopy = provider;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  objc_initWeak(&location, providerCopy);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88___FAFamilyCircleRequestConnectionProvider_createResumedConnectionWithFactory_provider___block_invoke;
  v13[3] = &unk_1E7CA46B0;
  objc_copyWeak(&v14, &location);
  v13[4] = &v16;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88___FAFamilyCircleRequestConnectionProvider_createResumedConnectionWithFactory_provider___block_invoke_2;
  v11[3] = &unk_1E7CA46B0;
  objc_copyWeak(&v12, &location);
  v11[4] = &v16;
  v7 = [factoryCopy createServiceConnectionWithInterruptionHandler:v13 invalidationHandler:v11];
  v8 = v17[5];
  v17[5] = v7;

  [v17[5] resume];
  v9 = v17[5];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v16, 8);

  return v9;
}

- (_FAFamilyCircleRequestConnectionProvider)initWithConnectionFactory:(id)factory
{
  factoryCopy = factory;
  v11.receiver = self;
  v11.super_class = _FAFamilyCircleRequestConnectionProvider;
  v6 = [(_FAFamilyCircleRequestConnectionProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_factory, factory);
    v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v7->_lock;
    v7->_lock = v8;
  }

  return v7;
}

- (void)dealloc
{
  connection = [(_FAFamilyCircleRequestConnectionProvider *)self connection];
  lock = [(_FAFamilyCircleRequestConnectionProvider *)self lock];
  [lock lock];

  [(_FAFamilyCircleRequestConnectionProvider *)self setConnection:0];
  lock2 = [(_FAFamilyCircleRequestConnectionProvider *)self lock];
  [lock2 unlock];

  [connection invalidate];
  v6.receiver = self;
  v6.super_class = _FAFamilyCircleRequestConnectionProvider;
  [(_FAFamilyCircleRequestConnectionProvider *)&v6 dealloc];
}

- (void)connectionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B70B0000, v5, OS_LOG_TYPE_DEFAULT, "FAFamilyCircleRequest: FamilyCircleService XPC Connection interrupted.", v10, 2u);
  }

  lock = [(_FAFamilyCircleRequestConnectionProvider *)self lock];
  [lock lock];

  connection = [(_FAFamilyCircleRequestConnectionProvider *)self connection];

  if (connection == interruptedCopy)
  {
    connection2 = [(_FAFamilyCircleRequestConnectionProvider *)self connection];
    [(_FAFamilyCircleRequestConnectionProvider *)self setConnection:0];
  }

  else
  {
    connection2 = 0;
  }

  lock2 = [(_FAFamilyCircleRequestConnectionProvider *)self lock];
  [lock2 unlock];

  [connection2 invalidate];
}

- (void)connectionWasInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1B70B0000, v5, OS_LOG_TYPE_DEFAULT, "FAFamilyCircleRequest: FamilyCircleService XPC Connection invalidated.", v9, 2u);
  }

  lock = [(_FAFamilyCircleRequestConnectionProvider *)self lock];
  [lock lock];

  connection = [(_FAFamilyCircleRequestConnectionProvider *)self connection];

  if (connection == invalidatedCopy)
  {
    [(_FAFamilyCircleRequestConnectionProvider *)self setConnection:0];
  }

  lock2 = [(_FAFamilyCircleRequestConnectionProvider *)self lock];
  [lock2 unlock];
}

@end