@interface IXDataPromise
+ (BOOL)promiseExists:(BOOL *)a3 withUUID:(id)a4 error:(id *)a5;
+ (id)outstandingPromisesForCreator:(unint64_t)a3;
- (BOOL)cancelForReason:(id)a3 client:(unint64_t)a4 error:(id *)a5;
- (BOOL)isComplete;
- (BOOL)isEqual:(id)a3;
- (BOOL)localIsComplete;
- (BOOL)preflightWithError:(id *)a3;
- (BOOL)resetWithError:(id *)a3;
- (IXDataPromise)initWithCoder:(id)a3;
- (IXDataPromise)initWithName:(id)a3 client:(unint64_t)a4 diskSpaceNeeded:(unint64_t)a5;
- (IXDataPromise)initWithSeed:(id)a3;
- (NSError)error;
- (NSError)localError;
- (NSString)name;
- (NSURL)preflightPath;
- (NSUUID)uniqueIdentifier;
- (double)percentComplete;
- (id)description;
- (unint64_t)creatorIdentifier;
- (unint64_t)errorSourceIdentifier;
- (unint64_t)hash;
- (unint64_t)totalBytesNeededOnDisk;
- (void)_clientDelegate_didCancelWithError:(id)a3 client:(unint64_t)a4;
- (void)_clientDelegate_didComplete;
- (void)cancelForReason:(id)a3 client:(unint64_t)a4 completion:(id)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)preflightWithCompletion:(id)a3;
- (void)resetWithCompletion:(id)a3;
- (void)setComplete:(BOOL)a3;
- (void)setPercentComplete:(double)a3;
@end

@implementation IXDataPromise

- (IXDataPromise)initWithSeed:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = IXDataPromise;
  v6 = [(IXDataPromise *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_ivarLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_seed, a3);
    v8 = +[IXServerConnection sharedConnection];
    [v8 registerDataPromiseForUpdates:v7 notifyDaemon:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[IXServerConnection sharedConnection];
  v4 = [(IXDataPromiseSeed *)self->_seed uniqueIdentifier];
  [v3 unregisterForUpdatesForDataPromiseWithUUID:v4];

  v5.receiver = self;
  v5.super_class = IXDataPromise;
  [(IXDataPromise *)&v5 dealloc];
}

- (NSString)name
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 name];

  return v3;
}

- (unint64_t)creatorIdentifier
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 creatorIdentifier];

  return v3;
}

- (NSUUID)uniqueIdentifier
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (unint64_t)totalBytesNeededOnDisk
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 totalBytesNeededOnDisk];

  return v3;
}

- (NSError)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__11;
  v16 = [(IXDataPromise *)self localError];
  v3 = v12[5];
  if (!v3)
  {
    v4 = +[IXServerConnection sharedConnection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __22__IXDataPromise_error__block_invoke;
    v10[3] = &unk_1E85C58D0;
    v10[4] = self;
    v10[5] = &v11;
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v10];
    v6 = [(IXDataPromise *)self uniqueIdentifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __22__IXDataPromise_error__block_invoke_6;
    v9[3] = &unk_1E85C5BC8;
    v9[4] = self;
    v9[5] = &v11;
    [v5 _remote_IXSDataPromise:v6 getErrorInfo:v9];

    v3 = v12[5];
  }

  v7 = v3;
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __22__IXDataPromise_error__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXDataPromise error]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed contacting daemon on %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __22__IXDataPromise_error__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a2 && v6)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    objc_storeStrong((*(a1 + 32) + 16), a3);
    *(*(a1 + 32) + 24) = a2;
    os_unfair_lock_unlock((*(a1 + 32) + 8));
LABEL_8:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    goto LABEL_9;
  }

  if (v6)
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 136315650;
      v12 = "[IXDataPromise error]_block_invoke";
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get error property on %@ : %@", &v11, 0x20u);
    }

    goto LABEL_8;
  }

LABEL_9:

  v10 = *MEMORY[0x1E69E9840];
}

- (NSError)localError
{
  os_unfair_lock_lock(&self->_ivarLock);
  v3 = self->_error;
  os_unfair_lock_unlock(&self->_ivarLock);

  return v3;
}

- (unint64_t)errorSourceIdentifier
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  v11[3] = self->_errorSourceIdentifier;
  os_unfair_lock_unlock(&self->_ivarLock);
  v3 = v11[3];
  if (!v3)
  {
    v4 = +[IXServerConnection sharedConnection];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__IXDataPromise_errorSourceIdentifier__block_invoke;
    v9[3] = &unk_1E85C5998;
    v9[4] = self;
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v9];
    v6 = [(IXDataPromise *)self uniqueIdentifier];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__IXDataPromise_errorSourceIdentifier__block_invoke_8;
    v8[3] = &unk_1E85C5BC8;
    v8[4] = self;
    v8[5] = &v10;
    [v5 _remote_IXSDataPromise:v6 getErrorInfo:v8];

    v3 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  return v3;
}

void __38__IXDataPromise_errorSourceIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXDataPromise errorSourceIdentifier]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed contacting daemon on %@ : %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __38__IXDataPromise_errorSourceIdentifier__block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a2 && v6)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    objc_storeStrong((*(a1 + 32) + 16), a3);
    *(*(a1 + 32) + 24) = a2;
    os_unfair_lock_unlock((*(a1 + 32) + 8));
LABEL_8:
    *(*(*(a1 + 40) + 8) + 24) = a2;
    goto LABEL_9;
  }

  if (v6)
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 136315650;
      v12 = "[IXDataPromise errorSourceIdentifier]_block_invoke";
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get error source on %@ : %@", &v11, 0x20u);
    }

    goto LABEL_8;
  }

LABEL_9:

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isComplete
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  *(v12 + 24) = self->_complete;
  v3 = self->_error;
  os_unfair_lock_unlock(&self->_ivarLock);
  if (v12[3])
  {
    v4 = 1;
  }

  else if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = +[IXServerConnection sharedConnection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __27__IXDataPromise_isComplete__block_invoke;
    v10[3] = &unk_1E85C5998;
    v10[4] = self;
    v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
    v7 = [(IXDataPromise *)self uniqueIdentifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __27__IXDataPromise_isComplete__block_invoke_9;
    v9[3] = &unk_1E85C59C0;
    v9[4] = self;
    v9[5] = &v11;
    [v6 _remote_IXSDataPromise:v7 getIsComplete:v9];

    v4 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

void __27__IXDataPromise_isComplete__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXDataPromise isComplete]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed contacting daemon on %@ : %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __27__IXDataPromise_isComplete__block_invoke_9(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXDataPromise isComplete]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to get isComplete on %@ : %@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    os_unfair_lock_lock((*(a1 + 32) + 8));
    *(*(a1 + 32) + 12) = a2;
    os_unfair_lock_unlock((*(a1 + 32) + 8));
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setComplete:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = [(IXDataPromise *)self localError];
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[IXDataPromise setComplete:]";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Called after error %@ occurred; ignoring.", buf, 0x16u);
    }
  }

  else if (v3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __29__IXDataPromise_setComplete___block_invoke;
    v9[3] = &unk_1E85C6500;
    v9[4] = self;
    v7 = [IXServerConnection retrySynchronousIPC:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

id __29__IXDataPromise_setComplete___block_invoke(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__11;
  v13 = __Block_byref_object_dispose__11;
  v14 = 0;
  v2 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__IXDataPromise_setComplete___block_invoke_2;
  v8[3] = &unk_1E85C58D0;
  v8[4] = *(a1 + 32);
  v8[5] = &v9;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__IXDataPromise_setComplete___block_invoke_11;
  v7[3] = &unk_1E85C58D0;
  v7[4] = *(a1 + 32);
  v7[5] = &v9;
  [v3 _remote_IXSDataPromise:v4 setIsComplete:1 completion:v7];

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __29__IXDataPromise_setComplete___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXDataPromise setComplete:]_block_invoke_2";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed contacting daemon on %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __29__IXDataPromise_setComplete___block_invoke_11(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[IXDataPromise setComplete:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set isComplete on %@ : %@", &v8, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    *(*(a1 + 32) + 12) = 1;
    os_unfair_lock_unlock((*(a1 + 32) + 8));
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)localIsComplete
{
  os_unfair_lock_lock(&self->_ivarLock);
  complete = self->_complete;
  os_unfair_lock_unlock(&self->_ivarLock);
  return complete;
}

- (double)percentComplete
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = +[IXServerConnection sharedConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32__IXDataPromise_percentComplete__block_invoke;
  v9[3] = &unk_1E85C5998;
  v9[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v9];
  v5 = [(IXDataPromise *)self uniqueIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__IXDataPromise_percentComplete__block_invoke_13;
  v8[3] = &unk_1E85C6718;
  v8[4] = self;
  v8[5] = &v10;
  [v4 _remote_IXSDataPromise:v5 getPercentComplete:v8];

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __32__IXDataPromise_percentComplete__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXDataPromise percentComplete]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed contacting daemon on %@ : %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __32__IXDataPromise_percentComplete__block_invoke_13(uint64_t a1, void *a2, double a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXDataPromise percentComplete]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to get percentComplete on %@ : %@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setPercentComplete:(double)a3
{
  v5 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__IXDataPromise_setPercentComplete___block_invoke;
  v8[3] = &unk_1E85C6740;
  *&v8[5] = a3;
  v8[4] = self;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7 = [(IXDataPromise *)self uniqueIdentifier];
  [v6 _remote_IXSDataPromise:v7 setPercentComplete:a3];
}

void __36__IXDataPromise_setPercentComplete___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8 = 136315906;
    v9 = "[IXDataPromise setPercentComplete:]_block_invoke";
    v10 = 2048;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set percentComplete to %f on %@ : %@", &v8, 0x2Au);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (NSURL)preflightPath
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = +[IXGlobalConfiguration sharedInstance];
  v4 = [v3 userVolumeURL];

  v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 path];
    v9 = 136315650;
    v10 = "[IXDataPromise preflightPath]";
    v11 = 2112;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: WARNING: Preflight called on %@ which assumes data will end up on the volume containing %@; this may not be accurate.", &v9, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

- (IXDataPromise)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IXDataPromise;
  v5 = [(IXDataPromise *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_ivarLock._os_unfair_lock_opaque = 0;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seed"];
    seed = v6->_seed;
    v6->_seed = v7;

    v9 = +[IXServerConnection sharedConnection];
    [v9 registerDataPromiseForUpdates:v6 notifyDaemon:1];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXDataPromise *)self seed];
  [v4 encodeObject:v5 forKey:@"seed"];
}

- (IXDataPromise)initWithName:(id)a3 client:(unint64_t)a4 diskSpaceNeeded:(unint64_t)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = IXDataPromise;
  v9 = [(IXDataPromise *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_ivarLock._os_unfair_lock_opaque = 0;
    [(IXDataPromise *)v9 seedClass];
    v11 = objc_opt_new();
    [(IXDataPromise *)v10 setSeed:v11];

    v12 = [(IXDataPromise *)v10 seed];
    [v12 setName:v8];

    v13 = [(IXDataPromise *)v10 seed];
    [v13 setCreatorIdentifier:a4];

    v14 = [(IXDataPromise *)v10 seed];
    [v14 setTotalBytesNeededOnDisk:a5];
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(IXDataPromise *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IXDataPromise *)self uniqueIdentifier];
    v7 = [v5 uniqueIdentifier];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(IXDataPromise *)self name];
  v7 = [(IXDataPromise *)self seed];
  v8 = [v7 uniqueIdentifier];
  v9 = IXStringForClientID([(IXDataPromise *)self creatorIdentifier]);
  v10 = [v3 stringWithFormat:@"<%@<%p> name:%@ uuid:%@ creator:%@>", v5, self, v6, v8, v9];

  return v10;
}

- (void)cancelForReason:(id)a3 client:(unint64_t)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [IXDataPromise cancelForReason:client:completion:];
    }

    v17 = @"[IXDataPromise cancelForReason:client:completion:] was called with nil reason; this isn't valid.";
    v18 = 356;
    goto LABEL_10;
  }

  if (!a4)
  {
    v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [IXDataPromise cancelForReason:client:completion:];
    }

    v17 = @"[IXDataPromise cancelForReason:client:completion:] was called with client of IXClientNone which is not valid.";
    v18 = 362;
LABEL_10:
    v20 = _CreateError("[IXDataPromise cancelForReason:client:completion:]", v18, @"IXErrorDomain", 4uLL, 0, 0, v17, v16, v21);
    v10[2](v10, v20);

    goto LABEL_11;
  }

  os_unfair_lock_lock(&self->_ivarLock);
  objc_storeStrong(&self->_error, a3);
  self->_errorSourceIdentifier = a4;
  self->_complete = 0;
  os_unfair_lock_unlock(&self->_ivarLock);
  v11 = +[IXServerConnection sharedConnection];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __51__IXDataPromise_cancelForReason_client_completion___block_invoke;
  v24 = &unk_1E85C6638;
  v25 = self;
  v12 = v10;
  v26 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:&v21];
  v14 = [(IXDataPromise *)self uniqueIdentifier:v21];
  [v13 _remote_IXSDataPromise:v14 cancelForReason:v9 client:a4 completion:v12];

LABEL_11:
}

void __51__IXDataPromise_cancelForReason_client_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXDataPromise cancelForReason:client:completion:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to cancel %@ : %@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)cancelForReason:(id)a3 client:(unint64_t)a4 error:(id *)a5
{
  v9 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__11;
  v27 = __Block_byref_object_dispose__11;
  v28 = 0;
  if (!v9)
  {
    v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [IXDataPromise cancelForReason:client:error:];
    }

    v15 = _CreateError("[IXDataPromise cancelForReason:client:error:]", 390, @"IXErrorDomain", 4uLL, 0, 0, @"[IXDataPromise cancelForReason:client:completion:] was called with nil reason this isn't valid.", v14, v21[0]);;
    goto LABEL_10;
  }

  if (!a4)
  {
    v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [IXDataPromise cancelForReason:client:error:];
    }

    v15 = _CreateError("[IXDataPromise cancelForReason:client:error:]", 395, @"IXErrorDomain", 4uLL, 0, 0, @"[IXDataPromise cancelForReason:client:completion:] was called with client of IXClientNone which is not valid.", v17, v21[0]);
LABEL_10:
    v18 = v24[5];
    v24[5] = v15;

    goto LABEL_11;
  }

  os_unfair_lock_lock(&self->_ivarLock);
  objc_storeStrong(&self->_error, a3);
  self->_errorSourceIdentifier = a4;
  self->_complete = 0;
  os_unfair_lock_unlock(&self->_ivarLock);
  v10 = +[IXServerConnection sharedConnection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__IXDataPromise_cancelForReason_client_error___block_invoke;
  v22[3] = &unk_1E85C58D0;
  v22[4] = self;
  v22[5] = &v23;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v22];
  v12 = [(IXDataPromise *)self uniqueIdentifier];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __46__IXDataPromise_cancelForReason_client_error___block_invoke_29;
  v21[3] = &unk_1E85C53F8;
  v21[4] = &v23;
  v21[5] = &v29;
  [v11 _remote_IXSDataPromise:v12 cancelForReason:v9 client:a4 completion:v21];

LABEL_11:
  v19 = *(v30 + 24);
  if (a5 && (v30[3] & 1) == 0)
  {
    *a5 = v24[5];
    v19 = *(v30 + 24);
  }

  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  return v19 & 1;
}

void __46__IXDataPromise_cancelForReason_client_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXDataPromise cancelForReason:client:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to cancel %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __46__IXDataPromise_cancelForReason_client_error___block_invoke_29(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)resetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__IXDataPromise_resetWithCompletion___block_invoke;
  v12[3] = &unk_1E85C5470;
  v6 = v4;
  v13 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v8 = [(IXDataPromise *)self uniqueIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__IXDataPromise_resetWithCompletion___block_invoke_30;
  v10[3] = &unk_1E85C6638;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v7 _remote_IXSDataPromise:v8 resetWithCompletion:v10];
}

void __37__IXDataPromise_resetWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IXDataPromise resetWithCompletion:]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Remote object proxy returned error %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

void __37__IXDataPromise_resetWithCompletion___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__IXDataPromise_resetWithCompletion___block_invoke_2;
    v5[3] = &unk_1E85C56A0;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = v3;
    [v4 cancelForReason:v6 client:15 completion:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __37__IXDataPromise_resetWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXDataPromise resetWithCompletion:]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to cancel for reason: %@", &v7, 0x16u);
    }
  }

  else
  {
    v5 = *(a1 + 32);
  }

  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)resetWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__IXDataPromise_resetWithError___block_invoke;
  v11[3] = &unk_1E85C5560;
  v11[4] = &v12;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v7 = [(IXDataPromise *)self uniqueIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__IXDataPromise_resetWithError___block_invoke_31;
  v10[3] = &unk_1E85C5A10;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = &v18;
  [v6 _remote_IXSDataPromise:v7 resetWithCompletion:v10];

  v8 = *(v19 + 24);
  if (a3 && (v19[3] & 1) == 0)
  {
    *a3 = v13[5];
    v8 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8 & 1;
}

void __32__IXDataPromise_resetWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXDataPromise resetWithError:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Remote object proxy returned error %@", &v7, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __32__IXDataPromise_resetWithError___block_invoke_31(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    [*(a1 + 32) cancelForReason:v4 client:15 completion:&__block_literal_global_7];
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__IXDataPromise_preflightWithCompletion___block_invoke;
  v12[3] = &unk_1E85C5470;
  v6 = v4;
  v13 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v8 = [(IXDataPromise *)self uniqueIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__IXDataPromise_preflightWithCompletion___block_invoke_32;
  v10[3] = &unk_1E85C6768;
  v11 = v6;
  v9 = v6;
  [v7 _remote_IXSDataPromise:v8 preflightWithCompletion:v10];
}

void __41__IXDataPromise_preflightWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IXDataPromise preflightWithCompletion:]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Remote object proxy returned error %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightWithError:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__11;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__IXDataPromise_preflightWithError___block_invoke;
  v12[3] = &unk_1E85C5560;
  v12[4] = &v13;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v7 = [(IXDataPromise *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__IXDataPromise_preflightWithError___block_invoke_33;
  v11[3] = &unk_1E85C6790;
  v11[4] = &v13;
  [v6 _remote_IXSDataPromise:v7 preflightWithCompletion:v11];

  v8 = v14[5];
  if (a3 && v8)
  {
    *a3 = v8;
    v8 = v14[5];
  }

  v9 = v8 == 0;
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __36__IXDataPromise_preflightWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXDataPromise preflightWithError:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Remote object proxy returned error %@", &v7, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __36__IXDataPromise_preflightWithError___block_invoke_33(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXDataPromise preflightWithError:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Preflight failed with error: %@", &v7, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_clientDelegate_didComplete
{
  os_unfair_lock_lock(&self->_ivarLock);
  if (!self->_error)
  {
    self->_complete = 1;
  }

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)_clientDelegate_didCancelWithError:(id)a3 client:(unint64_t)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  self->_complete = 0;
  error = self->_error;
  self->_error = v6;

  self->_errorSourceIdentifier = a4;

  os_unfair_lock_unlock(&self->_ivarLock);
}

+ (id)outstandingPromisesForCreator:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__11;
  v13 = __Block_byref_object_dispose__11;
  v14 = 0;
  v4 = +[IXServerConnection sharedConnection];
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_136];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__IXDataPromise_IXTesting__outstandingPromisesForCreator___block_invoke_137;
  v8[3] = &unk_1E85C67B8;
  v8[4] = &v9;
  [v5 _remote_fetchRegisteredDataPromiseInfoForCreator:a3 completion:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __58__IXDataPromise_IXTesting__outstandingPromisesForCreator___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "+[IXDataPromise(IXTesting) outstandingPromisesForCreator:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon to get registered data promise info: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __58__IXDataPromise_IXTesting__outstandingPromisesForCreator___block_invoke_137(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "+[IXDataPromise(IXTesting) outstandingPromisesForCreator:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to get reigstered data promise info: %@", &v11, 0x16u);
    }
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  v10 = *MEMORY[0x1E69E9840];
}

+ (BOOL)promiseExists:(BOOL *)a3 withUUID:(id)a4 error:(id *)a5
{
  v7 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__11;
  v19 = __Block_byref_object_dispose__11;
  v20 = 0;
  v8 = +[IXServerConnection sharedConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__IXDataPromise_IXTesting__promiseExists_withUUID_error___block_invoke;
  v14[3] = &unk_1E85C5560;
  v14[4] = &v15;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__IXDataPromise_IXTesting__promiseExists_withUUID_error___block_invoke_139;
  v13[3] = &unk_1E85C67E0;
  v13[4] = &v15;
  v13[5] = &v21;
  v13[6] = &v25;
  [v9 _remote_checkIfDataPromiseExistsForUUID:v7 completion:v13];

  v10 = v26;
  if (!a5 || (v26[3] & 1) != 0)
  {
    if (!*(v26 + 24))
    {
      goto LABEL_4;
    }

LABEL_6:
    *a3 = *(v22 + 24);
    v11 = *(v10 + 24);
    goto LABEL_7;
  }

  *a5 = v16[5];
  v10 = v26;
  if (v26[3])
  {
    goto LABEL_6;
  }

LABEL_4:
  v11 = 0;
LABEL_7:
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v11 & 1;
}

void __57__IXDataPromise_IXTesting__promiseExists_withUUID_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXDataPromise(IXTesting) promiseExists:withUUID:error:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon to get promise info: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __57__IXDataPromise_IXTesting__promiseExists_withUUID_error___block_invoke_139(void *a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(a1[4] + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a2;
    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (void)cancelForReason:client:completion:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: [IXDataPromise cancelForReason:client:completion:] was called with client of IXClientNone which is not valid. : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cancelForReason:client:completion:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: [IXDataPromise cancelForReason:client:completion:] was called with nil reason; this isn't valid. : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cancelForReason:client:error:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: [IXDataPromise cancelForReason:client:completion:] was called with client of IXClientNone which is not valid. : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cancelForReason:client:error:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: [IXDataPromise cancelForReason:client:completion:] was called with nil reason; this isn't valid. : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end