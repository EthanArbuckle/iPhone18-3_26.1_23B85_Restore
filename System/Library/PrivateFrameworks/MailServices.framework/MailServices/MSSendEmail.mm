@interface MSSendEmail
- (void)_sendEmail:(id)email playSound:(BOOL)sound completionBlock:(id)block;
- (void)_simulateServicesMethod:(id)method arguments:(id)arguments callback:(id)callback;
@end

@implementation MSSendEmail

- (void)_sendEmail:(id)email playSound:(BOOL)sound completionBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  emailCopy = email;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:emailCopy requiringSecureCoding:1 error:0];
  v11 = v10;
  if (v10)
  {
    v17[0] = @"email";
    v17[1] = @"playSound";
    v18[0] = v10;
    v18[1] = MEMORY[0x1E695E118];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__MSSendEmail__sendEmail_playSound_completionBlock___block_invoke;
    v15[3] = &unk_1E855E998;
    v16 = blockCopy;
    [(MSService *)self _callServicesMethod:@"SendEmail" arguments:v12 callback:v15];
  }

  else
  {
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = [0 length];
      _os_log_impl(&dword_1D876A000, v13, OS_LOG_TYPE_DEFAULT, "#Warning Unable to unarchive model data with length %lu", buf, 0xCu);
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, v12);
  }

  objc_autoreleasePoolPop(v9);
  v14 = *MEMORY[0x1E69E9840];
}

void __52__MSSendEmail__sendEmail_playSound_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [v7 objectForKey:@"messageid"];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __94__MSSendEmail__sendMessageData_autosaveIdentifier_isHMEMessage_sendLaterDate_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = [v8 objectForKey:@"success"];
    [v6 BOOLValue];

    v7 = [v8 objectForKey:@"inAirplaneMode"];
    [v7 BOOLValue];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_simulateServicesMethod:(id)method arguments:(id)arguments callback:(id)callback
{
  v15[2] = *MEMORY[0x1E69E9840];
  methodCopy = method;
  argumentsCopy = arguments;
  callbackCopy = callback;
  if ([methodCopy isEqualToString:@"MailSendMessage"])
  {
    v14[0] = @"success";
    v14[1] = @"inAirplaneMode";
    v15[0] = &unk_1F541F2D8;
    v15[1] = &unk_1F541F2F0;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    callbackCopy[2](callbackCopy, v11, 0);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MSSendEmail;
    [(MSService *)&v13 _simulateServicesMethod:methodCopy arguments:argumentsCopy callback:callbackCopy];
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end