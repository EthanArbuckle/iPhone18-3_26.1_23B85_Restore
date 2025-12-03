@interface CUTReporting
+ (id)RTCSessionPromiseWithBatchingInterval:(double)interval;
+ (id)_rtcReportingSession;
+ (id)reportingSession;
+ (void)startRTCReportingSessionWithCompletion:(id)completion;
- (CUTReporting)init;
- (id)_RTCSessionPromiseWithBatchingInterval:(double)interval;
- (void)_beginPromiseTimeoutWithInterval:(int64_t)interval;
- (void)_failSeal:(id)seal withError:(id)error;
- (void)_fullfillSeal:(id)seal withSession:(id)session;
- (void)_startConfigurationOfSession:(id)session withPromiseSeal:(id)seal;
@end

@implementation CUTReporting

+ (id)reportingSession
{
  if (qword_1EB7AAD50 != -1)
  {
    sub_1B232344C();
  }

  v3 = qword_1EB7AAD48;

  return v3;
}

+ (id)_rtcReportingSession
{
  v24[4] = *MEMORY[0x1E69E9840];
  if (qword_1EB7AADB8 != -1)
  {
    sub_1B233194C();
  }

  v2 = qword_1EB7AADC0;
  if (qword_1EB7AADC0)
  {
    v2 = *qword_1EB7AADC0;
  }

  v3 = v2;
  v23[0] = v3;
  v24[0] = &unk_1F299BB10;
  if (qword_1EB7AADA8 != -1)
  {
    sub_1B2331960();
  }

  v4 = qword_1EB7AADB0;
  if (qword_1EB7AADB0)
  {
    v4 = *qword_1EB7AADB0;
  }

  v5 = v4;
  v23[1] = v5;
  v24[1] = &unk_1F299BB28;
  if (qword_1EB7AAD98 != -1)
  {
    sub_1B2331974();
  }

  v6 = qword_1EB7AADA0;
  if (qword_1EB7AADA0)
  {
    v6 = *qword_1EB7AADA0;
  }

  v7 = v6;
  v23[2] = v7;
  v24[2] = &unk_1F299BB28;
  if (qword_1EB7AADC8 != -1)
  {
    sub_1B2331988();
  }

  v8 = qword_1EB7AADD0;
  if (qword_1EB7AADD0)
  {
    v8 = *qword_1EB7AADD0;
  }

  v23[3] = v8;
  v24[3] = MEMORY[0x1E695E118];
  v9 = MEMORY[0x1E695DF20];
  v10 = v8;
  v11 = [v9 dictionaryWithObjects:v24 forKeys:v23 count:4];

  if (qword_1EB7AAD88 != -1)
  {
    sub_1B233199C();
  }

  v12 = qword_1EB7AAD90;
  if (qword_1EB7AAD90)
  {
    v12 = *qword_1EB7AAD90;
  }

  v13 = v12;
  v21[0] = v13;
  v22[0] = @"ids";
  if (qword_1EB7AAD78 != -1)
  {
    sub_1B23319C4();
  }

  v14 = qword_1EB7AAD80;
  if (qword_1EB7AAD80)
  {
    v14 = *qword_1EB7AAD80;
  }

  v21[1] = v14;
  v22[1] = @"client";
  v15 = MEMORY[0x1E695DF20];
  v16 = v14;
  v17 = [v15 dictionaryWithObjects:v22 forKeys:v21 count:2];

  if (qword_1EB7AAD68 != -1)
  {
    sub_1B23319EC();
  }

  v18 = [objc_alloc(CUTWeakLinkClass(@"RTCReporting" @"RTCReporting"))];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (CUTReporting)init
{
  v6.receiver = self;
  v6.super_class = CUTReporting;
  v2 = [(CUTReporting *)&v6 init];
  v3 = v2;
  if (v2)
  {
    promise = v2->_promise;
    v2->_promise = 0;

    v3->_promiseLock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

+ (void)startRTCReportingSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  if (CUTIsInternalInstall())
  {
    v4 = sub_1B2323460();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B2329474;
    block[3] = &unk_1E7B20D98;
    v6 = completionCopy;
    dispatch_async(v4, block);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

+ (id)RTCSessionPromiseWithBatchingInterval:(double)interval
{
  v4 = +[CUTReporting reportingSession];
  v5 = [v4 _RTCSessionPromiseWithBatchingInterval:interval];

  return v5;
}

- (id)_RTCSessionPromiseWithBatchingInterval:(double)interval
{
  v18[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_promiseLock);
  promise = self->_promise;
  if (promise)
  {
    promise = promise;
    os_unfair_lock_unlock(&self->_promiseLock);
  }

  else
  {
    v7 = [CUTPromiseSeal alloc];
    v8 = sub_1B2323460();
    v9 = [(CUTPromiseSeal *)v7 initWithQueue:v8];

    promise = [(CUTPromiseSeal *)v9 promise];
    objc_storeStrong(&self->_promise, promise);
    os_unfair_lock_unlock(&self->_promiseLock);
    if (v9)
    {
      [(CUTReporting *)self _beginPromiseTimeoutWithInterval:interval];
      if (CUTIsInternalInstall())
      {
        v10 = +[CUTReporting _rtcReportingSession];
        if (v10)
        {
          [(CUTReporting *)self _startConfigurationOfSession:v10 withPromiseSeal:v9];
        }

        else
        {
          v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CUTReportingErrorDomain" code:2 userInfo:0];
          [(CUTReporting *)self _failSeal:v9 withError:v14];
        }
      }

      else
      {
        v11 = MEMORY[0x1E696ABC0];
        v17 = *MEMORY[0x1E696A278];
        v18[0] = @"CUTReporting does not support non-internal builds.";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        v13 = [v11 errorWithDomain:@"CUTReportingErrorDomain" code:1 userInfo:v12];
        [(CUTReporting *)self _failSeal:v9 withError:v13];
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return promise;
}

- (void)_beginPromiseTimeoutWithInterval:(int64_t)interval
{
  v4 = dispatch_time(0, 1000000000 * interval);
  v5 = sub_1B2323460();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B2329888;
  block[3] = &unk_1E7B20EB0;
  block[4] = self;
  dispatch_after(v4, v5, block);
}

- (void)_startConfigurationOfSession:(id)session withPromiseSeal:(id)seal
{
  sessionCopy = session;
  sealCopy = seal;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B23299A0;
  v10[3] = &unk_1E7B20ED8;
  v10[4] = self;
  v11 = sealCopy;
  v12 = sessionCopy;
  v8 = sessionCopy;
  v9 = sealCopy;
  [v8 startConfigurationWithCompletionHandler:v10];
}

- (void)_fullfillSeal:(id)seal withSession:(id)session
{
  sealCopy = seal;
  sessionCopy = session;
  v7 = sub_1B2323460();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B2329B0C;
  v10[3] = &unk_1E7B20D70;
  v11 = sealCopy;
  v12 = sessionCopy;
  v8 = sessionCopy;
  v9 = sealCopy;
  dispatch_async(v7, v10);
}

- (void)_failSeal:(id)seal withError:(id)error
{
  sealCopy = seal;
  errorCopy = error;
  v7 = sub_1B2323460();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B2329BE4;
  v10[3] = &unk_1E7B20D70;
  v11 = sealCopy;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = sealCopy;
  dispatch_async(v7, v10);
}

@end