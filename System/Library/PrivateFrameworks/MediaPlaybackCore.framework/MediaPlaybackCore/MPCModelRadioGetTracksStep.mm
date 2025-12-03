@interface MPCModelRadioGetTracksStep
- (MPCModelRadioGetTracksStep)initWithGetTracksRequest:(id)request siriAssetInfo:(id)info;
- (MPCModelRadioGetTracksStep)initWithPreviousStep:(id)step;
- (id)nextStepWithError:(id)error;
- (void)_fireAndForgetServerDialog:(id)dialog;
- (void)_performDefaultHandlingForButtonAction:(id)action;
- (void)_presentServerDialog:(id)dialog completionHandler:(id)handler;
@end

@implementation MPCModelRadioGetTracksStep

- (void)_presentServerDialog:(id)dialog completionHandler:(id)handler
{
  dialogCopy = dialog;
  handlerCopy = handler;
  v7 = [objc_alloc(MEMORY[0x1E69E4690]) initWithStoreDialog:dialogCopy];
  [v7 setAllowInCar:1];
  createCFUserNotification = [v7 createCFUserNotification];
  if (createCFUserNotification)
  {
    v9 = createCFUserNotification;
    v10 = [objc_alloc(MEMORY[0x1E69B14C0]) initWithCFUserNotification:createCFUserNotification];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__MPCModelRadioGetTracksStep__presentServerDialog_completionHandler___block_invoke;
    v13[3] = &unk_1E82352A8;
    v14 = dialogCopy;
    v15 = handlerCopy;
    [v10 presentWithCompletion:v13];
    CFRelease(v9);
  }

  else
  {
    v11 = ICUserNotificationGetResponseButton();
    action = [v11 action];
    (*(handlerCopy + 2))(handlerCopy, action);
  }
}

void __69__MPCModelRadioGetTracksStep__presentServerDialog_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) buttons];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__MPCModelRadioGetTracksStep__presentServerDialog_completionHandler___block_invoke_2;
  v9[3] = &unk_1E8235280;
  v10 = v3;
  v5 = v3;
  v6 = [v4 msv_firstWhere:v9];

  v7 = *(a1 + 40);
  v8 = [v6 action];
  (*(v7 + 16))(v7, v8);
}

uint64_t __69__MPCModelRadioGetTracksStep__presentServerDialog_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) buttonIdentifier];
  if (v4 <= 2)
  {
    a1 = qword_1C6045438[v4];
    LOBYTE(a1) = [v3 type] == a1;
  }

  return a1 & 1;
}

- (void)_performDefaultHandlingForButtonAction:(id)action
{
  v4 = MEMORY[0x1E69E45E0];
  actionCopy = action;
  v7 = objc_alloc_init(v4);
  requestContext = [(ICRadioGetTracksRequest *)self->_request requestContext];
  [v7 handleButtonAction:actionCopy usingRequestContext:requestContext withCompletionHandler:&__block_literal_global_16320];
}

- (void)_fireAndForgetServerDialog:(id)dialog
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__MPCModelRadioGetTracksStep__fireAndForgetServerDialog___block_invoke;
  v3[3] = &unk_1E8235238;
  v3[4] = self;
  [(MPCModelRadioGetTracksStep *)self _presentServerDialog:dialog completionHandler:v3];
}

uint64_t __57__MPCModelRadioGetTracksStep__fireAndForgetServerDialog___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) _performDefaultHandlingForButtonAction:a2];
  }

  return result;
}

- (id)nextStepWithError:(id)error
{
  errorCopy = error;
  v5 = [[MPCModelRadioGetTracksStep alloc] initWithPreviousStep:self];
  v6 = [errorCopy copy];

  error = v5->_error;
  v5->_error = v6;

  v5->_finished = 1;

  return v5;
}

- (MPCModelRadioGetTracksStep)initWithPreviousStep:(id)step
{
  stepCopy = step;
  v8.receiver = self;
  v8.super_class = MPCModelRadioGetTracksStep;
  v5 = [(MPCModelRadioGetTracksStep *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_delegatedIdentityProperties, stepCopy[4]);
    objc_storeStrong(&v6->_identityProperties, stepCopy[3]);
    objc_storeStrong(&v6->_request, stepCopy[5]);
    objc_storeStrong(&v6->_siriAssetInfoGetTracksResponse, stepCopy[7]);
  }

  return v6;
}

- (MPCModelRadioGetTracksStep)initWithGetTracksRequest:(id)request siriAssetInfo:(id)info
{
  v32 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  infoCopy = info;
  v29.receiver = self;
  v29.super_class = MPCModelRadioGetTracksStep;
  v8 = [(MPCModelRadioGetTracksStep *)&v29 init];
  if (v8)
  {
    v9 = [requestCopy copy];
    request = v8->_request;
    v8->_request = v9;

    if ([infoCopy length])
    {
      v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:infoCopy options:0];
      if (![v11 length])
      {
        v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_ERROR, "[MPCModelRadioGetTracksStep] Failed to convert Siri Asset Info into UTF-8 data.", buf, 2u);
        }

        goto LABEL_22;
      }

      v28 = 0;
      v12 = [MEMORY[0x1E696AE40] propertyListWithData:v11 options:0 format:0 error:&v28];
      v13 = v28;
      if (_NSIsNSDictionary())
      {
        v14 = objc_alloc(MEMORY[0x1E69E4550]);
        v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:10800.0];
        v16 = [v14 initWithResponseDictionary:v12 expirationDate:v15];

        stationMetadata = [v16 stationMetadata];
        if (stationMetadata)
        {
          v18 = stationMetadata;
          tracks = [v16 tracks];
          v20 = [tracks count];

          if (v20)
          {
            objc_storeStrong(&v8->_siriAssetInfoGetTracksResponse, v16);
            v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v22 = "[MPCModelRadioGetTracksStep] Using Siri Asset Info as side-packed getTracks response.";
              v23 = v21;
              v24 = 2;
LABEL_19:
              _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
            }

LABEL_20:

            goto LABEL_21;
          }
        }

        v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        *buf = 138543362;
        v31 = infoCopy;
        v22 = "[MPCModelRadioGetTracksStep] Siri Asset Info provided with invalid content: %{public}@";
        v23 = v21;
      }

      else
      {
        v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        v25 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          if (v25)
          {
            *buf = 138543362;
            v31 = v13;
            _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_ERROR, "[MPCModelRadioGetTracksStep] Siri Asset Info failed to deserialize with error: %{public}@.", buf, 0xCu);
          }

          goto LABEL_21;
        }

        if (!v25)
        {
LABEL_21:

LABEL_22:
          goto LABEL_23;
        }

        v26 = objc_opt_class();
        v21 = NSStringFromClass(v26);
        *buf = 138543362;
        v31 = v21;
        v22 = "[MPCModelRadioGetTracksStep] Siri Asset Info expected to be a dictionary, but is %{public}@ instead.";
        v23 = v16;
      }

      v24 = 12;
      goto LABEL_19;
    }
  }

LABEL_23:

  return v8;
}

@end