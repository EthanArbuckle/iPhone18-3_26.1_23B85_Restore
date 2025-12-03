@interface CdQwUTvJnDEPQgR8
+ (id)scorerWithContext:(id)context;
- (CdQwUTvJnDEPQgR8)initWithContext:(id)context;
- (id)VkBISyFszEu5z9lr:(id)eu5z9lr error:(id *)error;
- (id)settingsFromContext:(id)context;
- (void)MHcqy8dNQyXvA5JC:(id)c;
- (void)_safeCallbackWithMessage:(id)message uuid:(id)uuid error:(id)error;
- (void)prepareScoreMessage;
- (void)scoreWithScoreRequest:(id)request completionHandler:(id)handler;
- (void)stop;
@end

@implementation CdQwUTvJnDEPQgR8

+ (id)scorerWithContext:(id)context
{
  contextCopy = context;
  v4 = [[CdQwUTvJnDEPQgR8 alloc] initWithContext:contextCopy];

  return v4;
}

- (CdQwUTvJnDEPQgR8)initWithContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = CdQwUTvJnDEPQgR8;
  v5 = [(CdQwUTvJnDEPQgR8 *)&v15 init];
  context = v5->_context;
  v5->_context = contextCopy;
  v7 = contextCopy;

  v8 = dispatch_queue_create("com.apple.libCoreAS.callback", 0);
  callback_queue = v5->_callback_queue;
  v5->_callback_queue = v8;

  v10 = dispatch_queue_create("com.apple.libCoreAS.sid", 0);
  score_id_queue = v5->_score_id_queue;
  v5->_score_id_queue = v10;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  identifier2UUID = v5->_identifier2UUID;
  v5->_identifier2UUID = dictionary;

  return v5;
}

- (id)settingsFromContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = objc_opt_new();
  serverEndpointIdentifier = [contextCopy serverEndpointIdentifier];
  [v4 setEndpointIdentifier:serverEndpointIdentifier];

  [v4 setSettingsType:{objc_msgSend(contextCopy, "eventFrequency") == 2}];
  phoneNumber = [contextCopy phoneNumber];
  [v4 setPhone:phoneNumber];

  emailAddress = [contextCopy emailAddress];
  [v4 setEmail:emailAddress];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  identities = [contextCopy identities];
  v9 = [identities countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      v12 = 0;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(identities);
        }

        v13 = *(*(&v29 + 1) + 8 * v12);
        fullName = [v13 fullName];
        if (fullName || ([v13 firstName], (fullName = objc_claimAutoreleasedReturnValue()) != 0))
        {
        }

        else
        {
          lastName = [v13 lastName];

          if (!lastName)
          {
            goto LABEL_13;
          }
        }

        if (![v13 type])
        {
          name = [v4 name];
          if (!name || (v16 = name, v17 = [v13 source], v16, v17 == 2))
          {
            v18 = objc_opt_new();
            firstName = [v13 firstName];
            [v18 setFirstName:firstName];

            lastName2 = [v13 lastName];
            [v18 setLastName:lastName2];

            fullName2 = [v13 fullName];
            [v18 setFullName:fullName2];

            [v4 setName:v18];
          }
        }

LABEL_13:
        phoneNumber2 = [v13 phoneNumber];
        if (phoneNumber2)
        {
        }

        else
        {
          emailAddress2 = [v13 emailAddress];

          if (!emailAddress2)
          {
            goto LABEL_21;
          }
        }

        if ([v13 type] == 1)
        {
          phoneNumber3 = [v13 phoneNumber];
          [v4 setPPhone:phoneNumber3];

          emailAddress3 = [v13 emailAddress];
          [v4 setPEmail:emailAddress3];
        }

        else
        {
          if ([v13 type])
          {
            goto LABEL_21;
          }

          emailAddress3 = [v13 phoneNumber];
          [v4 setPhone:emailAddress3];
        }

LABEL_21:
        ++v12;
      }

      while (v10 != v12);
      v27 = [identities countByEnumeratingWithState:&v29 objects:v33 count:16];
      v10 = v27;
    }

    while (v27);
  }

  return v4;
}

- (id)VkBISyFszEu5z9lr:(id)eu5z9lr error:(id *)error
{
  eu5z9lrCopy = eu5z9lr;
  v13 = 0;
  bcgsyabc74vz12([eu5z9lrCopy bytes], objc_msgSend(eu5z9lrCopy, "length"), &v13);
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1E696ABC0];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCADecrypt];
    *error = [v8 errorWithDomain:v9 code:v7 userInfo:0];

    v10 = 0;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E695DEF0]);
    v10 = [v11 initWithBytes:v13 length:{objc_msgSend(eu5z9lrCopy, "length")}];
  }

  free(v13);

  return v10;
}

- (void)prepareScoreMessage
{
  self->_prepared = 1;
  v3 = +[LZHbEqKhcixce9PA sharedInstance];
  context = [(CdQwUTvJnDEPQgR8 *)self context];
  v5 = [(CdQwUTvJnDEPQgR8 *)self settingsFromContext:context];

  score_id_queue = self->_score_id_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CdQwUTvJnDEPQgR8_prepareScoreMessage__block_invoke;
  block[3] = &unk_1E79C4080;
  v10 = v3;
  v11 = v5;
  selfCopy = self;
  v7 = v5;
  v8 = v3;
  dispatch_async(score_id_queue, block);
}

void __39__CdQwUTvJnDEPQgR8_prepareScoreMessage__block_invoke(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__CdQwUTvJnDEPQgR8_prepareScoreMessage__block_invoke_2;
  v6[3] = &unk_1E79C4058;
  v6[4] = a1[6];
  v7 = v2;
  v5 = v2;
  [v3 JI0A3nkqsab9cUj8:v4 completion:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void __39__CdQwUTvJnDEPQgR8_prepareScoreMessage__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(a1 + 32) + 64), a2);
  objc_storeStrong((*(a1 + 32) + 72), a4);
  if (v10)
  {
    [*(*(a1 + 32) + 16) setObject:v8 forKey:v10];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_safeCallbackWithMessage:(id)message uuid:(id)uuid error:(id)error
{
  messageCopy = message;
  uuidCopy = uuid;
  errorCopy = error;
  callback_queue = self->_callback_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__CdQwUTvJnDEPQgR8__safeCallbackWithMessage_uuid_error___block_invoke;
  v15[3] = &unk_1E79C40A8;
  v15[4] = self;
  v16 = uuidCopy;
  v17 = messageCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = messageCopy;
  v14 = uuidCopy;
  dispatch_async(callback_queue, v15);
}

void *__56__CdQwUTvJnDEPQgR8__safeCallbackWithMessage_uuid_error___block_invoke(void *result)
{
  v1 = result[4];
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    v2 = *(result[4] + 40);
    if (v2)
    {
      return (*(v2 + 16))(*(result[4] + 40), result[5], result[6], result[7]);
    }
  }

  return result;
}

- (void)scoreWithScoreRequest:(id)request completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    [CdQwUTvJnDEPQgR8 scoreWithScoreRequest:completionHandler:];
  }

  v8 = _Block_copy(handlerCopy);
  handler = self->_handler;
  self->_handler = v8;

  if (self->_prepared)
  {
    v10 = +[LZHbEqKhcixce9PA sharedInstance];
    score_id_queue = self->_score_id_queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__CdQwUTvJnDEPQgR8_scoreWithScoreRequest_completionHandler___block_invoke;
    v16[3] = &unk_1E79C4080;
    v16[4] = self;
    v17 = requestCopy;
    v18 = v10;
    v12 = v10;
    dispatch_async(score_id_queue, v16);
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCA];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = @"prepareScoreMessage wasn't called prior to scoreMessageWithNonce:completionHandler:";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v12 = [v13 errorWithDomain:v14 code:-21 userInfo:v15];

    [(CdQwUTvJnDEPQgR8 *)self _safeCallbackWithMessage:0 uuid:0 error:v12];
  }
}

void __60__CdQwUTvJnDEPQgR8_scoreWithScoreRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72))
  {

    [v2 _safeCallbackWithMessage:0 uuid:0 error:?];
    return;
  }

  v3 = [*(v2 + 32) serverEndpointIdentifier];
  if ([v3 isEqualToString:@"enable"])
  {
    v4 = [*(a1 + 40) nonce];

    if (!v4)
    {
      v5 = MEMORY[0x1E696ABC0];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCA];
      v7 = v5;
      v8 = v6;
      v9 = -701;
LABEL_24:
      v23 = [v7 errorWithDomain:v8 code:v9 userInfo:0];

      [*(a1 + 32) _safeCallbackWithMessage:0 uuid:0 error:v23];

      return;
    }
  }

  else
  {
  }

  v10 = *(a1 + 32);
  if (!*(v10 + 64))
  {
    v21 = MEMORY[0x1E696ABC0];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCA];
    v7 = v21;
    v8 = v6;
    v9 = -710;
    goto LABEL_24;
  }

  v11 = [*(v10 + 16) objectForKey:?];
  v22 = *(a1 + 48);
  v12 = *(*(a1 + 32) + 64);
  v13 = [*(a1 + 40) hostChallenge];
  v14 = v13;
  if (!v13)
  {
    v14 = [*(*(a1 + 32) + 32) hostChallenge];
  }

  v15 = [*(a1 + 40) challengeResponse];
  v16 = v15;
  if (!v15)
  {
    v16 = [*(*(a1 + 32) + 32) challengeResponse];
  }

  v17 = [*(a1 + 40) seid];
  v18 = v17;
  if (!v17)
  {
    v18 = [*(*(a1 + 32) + 32) seid];
  }

  v19 = [*(a1 + 40) nonce];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __60__CdQwUTvJnDEPQgR8_scoreWithScoreRequest_completionHandler___block_invoke_2;
  v24[3] = &unk_1E79C40D0;
  v24[4] = *(a1 + 32);
  v25 = v11;
  v20 = v11;
  [v22 QeMnG23X94qgz7jT:v12 hostChallenge:v14 challengeResponse:v16 seid:v18 nonce:v19 completion:v24];

  if (!v17)
  {
  }

  if (!v15)
  {
  }

  if (!v13)
  {
  }
}

void __60__CdQwUTvJnDEPQgR8_scoreWithScoreRequest_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!a2 || a3)
  {
    v7 = *(a1 + 40);

    [v4 _safeCallbackWithMessage:a2 uuid:v7 error:a3];
  }

  else
  {
    v8 = 0;
    v5 = [v4 VkBISyFszEu5z9lr:a2 error:&v8];
    v6 = v8;
    [*(a1 + 32) _safeCallbackWithMessage:v5 uuid:*(a1 + 40) error:v6];
  }
}

- (void)stop
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCA];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Timeout Error";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v6 = [v3 errorWithDomain:v4 code:40000 userInfo:v5];
  [(CdQwUTvJnDEPQgR8 *)self _safeCallbackWithMessage:0 uuid:0 error:v6];
}

- (void)MHcqy8dNQyXvA5JC:(id)c
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, logger, OS_LOG_TYPE_INFO, "confirmFinished", v4, 2u);
  }
}

@end