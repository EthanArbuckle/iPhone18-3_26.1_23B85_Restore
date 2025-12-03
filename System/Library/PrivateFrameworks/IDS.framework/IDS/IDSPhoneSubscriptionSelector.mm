@interface IDSPhoneSubscriptionSelector
- (BOOL)disableTemporaryPhoneAlias:(id)alias withError:(id *)error;
- (BOOL)enableTemporaryPhoneAlias:(id)alias withError:(id *)error;
- (BOOL)removeTemporaryPhoneAlias:(id)alias withError:(id *)error;
- (IDSPhoneSubscriptionSelector)initWithSyncDaemonControllerBuilder:(id)builder;
- (id)selectSubscription:(id)subscription withError:(id *)error;
- (id)selectedSubscriptionsWithError:(id *)error;
- (id)setSelectedSubscriptions:(id)subscriptions withError:(id *)error;
- (id)unselectSubscription:(id)subscription withError:(id *)error;
- (id)unselectedTemporaryPhoneAliasesWithError:(id *)error;
- (void)_performSyncAction:(id)action;
- (void)disableTemporaryPhoneAlias:(id)alias withCompletion:(id)completion;
- (void)enableTemporaryPhoneAlias:(id)alias withCompletion:(id)completion;
- (void)removeTemporaryPhoneAlias:(id)alias withCompletion:(id)completion;
- (void)requestSelectedSubscriptionsWithCompletion:(id)completion;
- (void)requestUnselectedTemporaryPhoneAliasesWithError:(id)error;
- (void)selectSubscription:(id)subscription withCompletion:(id)completion;
- (void)setSelectedSubscriptions:(id)subscriptions withCompletion:(id)completion;
- (void)unselectSubscription:(id)subscription withCompletion:(id)completion;
@end

@implementation IDSPhoneSubscriptionSelector

- (IDSPhoneSubscriptionSelector)initWithSyncDaemonControllerBuilder:(id)builder
{
  builderCopy = builder;
  if (builderCopy)
  {
    v10.receiver = self;
    v10.super_class = IDSPhoneSubscriptionSelector;
    v5 = [(IDSPhoneSubscriptionSelector *)&v10 init];
    if (v5)
    {
      v6 = MEMORY[0x19A8BBEF0](builderCopy);
      syncDaemonControllerBuilder = v5->_syncDaemonControllerBuilder;
      v5->_syncDaemonControllerBuilder = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)requestSelectedSubscriptionsWithCompletion:(id)completion
{
  completionCopy = completion;
  registration = [MEMORY[0x1E69A6138] registration];
  v5 = registration;
  if (completionCopy)
  {
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Requesting selected subscriptions with completion", buf, 2u);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195ADAFEC;
    v13[3] = &unk_1E74424C8;
    v14 = completionCopy;
    sub_195ADAF28(v13, v14);
    v5 = v14;
  }

  else if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
  {
    sub_195B3C944(v5, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)selectSubscription:(id)subscription withCompletion:(id)completion
{
  v33[1] = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  completionCopy = completion;
  if (completionCopy)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    v8 = registration;
    if (subscriptionCopy)
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = subscriptionCopy;
        _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Selecting subscription with completion {subscription: %@}", buf, 0xCu);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_195ADB200;
      v27[3] = &unk_1E74424F0;
      v28 = subscriptionCopy;
      v29 = completionCopy;
      sub_195ADAF28(v27, v29);

      registration2 = v28;
    }

    else
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
      {
        sub_195B3C9BC(v8, v17, v18, v19, v20, v21, v22, v23);
      }

      v24 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A278];
      v33[0] = @"Subscription info is nil";
      registration2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v25 = [v24 errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:300 userInfo:registration2];
      (*(completionCopy + 2))(completionCopy, 0, v25);
    }
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195B3CA34(registration2, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)unselectSubscription:(id)subscription withCompletion:(id)completion
{
  v33[1] = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  completionCopy = completion;
  if (completionCopy)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    v8 = registration;
    if (subscriptionCopy)
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = subscriptionCopy;
        _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Unselecting subscription with completion {subscription: %@}", buf, 0xCu);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_195ADB414;
      v27[3] = &unk_1E74424F0;
      v28 = subscriptionCopy;
      v29 = completionCopy;
      sub_195ADAF28(v27, v29);

      registration2 = v28;
    }

    else
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
      {
        sub_195B3CAAC(v8, v17, v18, v19, v20, v21, v22, v23);
      }

      v24 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A278];
      v33[0] = @"Subscription info is nil";
      registration2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v25 = [v24 errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:300 userInfo:registration2];
      (*(completionCopy + 2))(completionCopy, 0, v25);
    }
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195B3CB24(registration2, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)setSelectedSubscriptions:(id)subscriptions withCompletion:(id)completion
{
  v33[1] = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  completionCopy = completion;
  if (completionCopy)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    v8 = registration;
    if (subscriptionsCopy)
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = subscriptionsCopy;
        _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Setting selected subscriptions with completion {subscriptions: %@}", buf, 0xCu);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_195ADB628;
      v27[3] = &unk_1E74424F0;
      v28 = subscriptionsCopy;
      v29 = completionCopy;
      sub_195ADAF28(v27, v29);

      registration2 = v28;
    }

    else
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
      {
        sub_195B3CB9C(v8, v17, v18, v19, v20, v21, v22, v23);
      }

      v24 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A278];
      v33[0] = @"Subscription infos is nil";
      registration2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v25 = [v24 errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:300 userInfo:registration2];
      (*(completionCopy + 2))(completionCopy, 0, v25);
    }
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195B3CC14(registration2, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)removeTemporaryPhoneAlias:(id)alias withCompletion:(id)completion
{
  v33[1] = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  completionCopy = completion;
  if (completionCopy)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    v8 = registration;
    if (aliasCopy)
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = aliasCopy;
        _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Removing temporary phone alias with completion {alias: %@}", buf, 0xCu);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_195ADB844;
      v27[3] = &unk_1E7440330;
      v29 = completionCopy;
      v28 = aliasCopy;
      [IDSXPCDaemonController performDaemonControllerTask:v27];

      registration2 = v29;
    }

    else
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
      {
        sub_195B3CC8C(v8, v17, v18, v19, v20, v21, v22, v23);
      }

      v24 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A278];
      v33[0] = @"Alias is nil";
      registration2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v25 = [v24 errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:300 userInfo:registration2];
      (*(completionCopy + 2))(completionCopy, 0, v25);
    }
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195B3CD04(registration2, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)disableTemporaryPhoneAlias:(id)alias withCompletion:(id)completion
{
  v33[1] = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  completionCopy = completion;
  if (completionCopy)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    v8 = registration;
    if (aliasCopy)
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = aliasCopy;
        _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Disabling temporary phone alias with completion {alias: %@}", buf, 0xCu);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_195ADBB78;
      v27[3] = &unk_1E7440330;
      v29 = completionCopy;
      v28 = aliasCopy;
      [IDSXPCDaemonController performDaemonControllerTask:v27];

      registration2 = v29;
    }

    else
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
      {
        sub_195B3CDE4(v8, v17, v18, v19, v20, v21, v22, v23);
      }

      v24 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A278];
      v33[0] = @"Alias is nil";
      registration2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v25 = [v24 errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:300 userInfo:registration2];
      (*(completionCopy + 2))(completionCopy, 0, v25);
    }
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195B3CE5C(registration2, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)enableTemporaryPhoneAlias:(id)alias withCompletion:(id)completion
{
  v33[1] = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  completionCopy = completion;
  if (completionCopy)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    v8 = registration;
    if (aliasCopy)
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = aliasCopy;
        _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Enabling temporary phone alias with completion {alias: %@}", buf, 0xCu);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_195ADBEAC;
      v27[3] = &unk_1E7440330;
      v29 = completionCopy;
      v28 = aliasCopy;
      [IDSXPCDaemonController performDaemonControllerTask:v27];

      registration2 = v29;
    }

    else
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
      {
        sub_195B3CED4(v8, v17, v18, v19, v20, v21, v22, v23);
      }

      v24 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A278];
      v33[0] = @"Alias is nil";
      registration2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v25 = [v24 errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:300 userInfo:registration2];
      (*(completionCopy + 2))(completionCopy, 0, v25);
    }
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195B3CF4C(registration2, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)requestUnselectedTemporaryPhoneAliasesWithError:(id)error
{
  errorCopy = error;
  registration = [MEMORY[0x1E69A6138] registration];
  v5 = registration;
  if (errorCopy)
  {
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Requesting unselected temporary phone aliases with completion", buf, 2u);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195ADC0CC;
    v13[3] = &unk_1E74424C8;
    v14 = errorCopy;
    sub_195ADAF28(v13, v14);
    v5 = v14;
  }

  else if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
  {
    sub_195B3CFC4(v5, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (id)selectedSubscriptionsWithError:(id *)error
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_195A007C4;
  v27 = sub_195A03D88;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_195A007C4;
  v21 = sub_195A03D88;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Requesting selected subscriptions synchronously", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195ADC324;
  v11[3] = &unk_1E7442540;
  v11[4] = &v17;
  v11[5] = &v23;
  v11[6] = &v13;
  [(IDSPhoneSubscriptionSelector *)self _performSyncAction:v11];
  if ((v14[3] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:100 userInfo:0];
    v7 = v24[5];
    v24[5] = v6;
  }

  if (error)
  {
    v8 = v24[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v18[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v9;
}

- (id)selectSubscription:(id)subscription withError:(id *)error
{
  v49[1] = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  if (subscriptionCopy)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_195A007C4;
    v46 = sub_195A03D88;
    v47 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = sub_195A007C4;
    v40 = sub_195A03D88;
    v41 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Selecting subscription synchronously", buf, 2u);
    }

    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = sub_195ADC78C;
    v26 = &unk_1E7442568;
    v27 = subscriptionCopy;
    v28 = &v36;
    v29 = &v42;
    v30 = &v32;
    [(IDSPhoneSubscriptionSelector *)self _performSyncAction:&v23];
    if ((v33[3] & 1) == 0)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:100 userInfo:{0, v23, v24, v25, v26}];
      v9 = v43[5];
      v43[5] = v8;
    }

    if (error)
    {
      v10 = v43[5];
      if (v10)
      {
        *error = v10;
      }
    }

    error = v37[5];

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);

    _Block_object_dispose(&v42, 8);
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195B3D03C(registration2, v12, v13, v14, v15, v16, v17, v18);
    }

    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v48 = *MEMORY[0x1E696A278];
      v49[0] = @"Subscription info is nil";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      *error = [v19 errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:300 userInfo:v20];

      error = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return error;
}

- (id)unselectSubscription:(id)subscription withError:(id *)error
{
  v49[1] = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  if (subscriptionCopy)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_195A007C4;
    v46 = sub_195A03D88;
    v47 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = sub_195A007C4;
    v40 = sub_195A03D88;
    v41 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Unselecting subscription synchronously", buf, 2u);
    }

    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = sub_195ADCBF8;
    v26 = &unk_1E7442568;
    v27 = subscriptionCopy;
    v28 = &v36;
    v29 = &v42;
    v30 = &v32;
    [(IDSPhoneSubscriptionSelector *)self _performSyncAction:&v23];
    if ((v33[3] & 1) == 0)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:100 userInfo:{0, v23, v24, v25, v26}];
      v9 = v43[5];
      v43[5] = v8;
    }

    if (error)
    {
      v10 = v43[5];
      if (v10)
      {
        *error = v10;
      }
    }

    error = v37[5];

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);

    _Block_object_dispose(&v42, 8);
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195B3D0B4(registration2, v12, v13, v14, v15, v16, v17, v18);
    }

    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v48 = *MEMORY[0x1E696A278];
      v49[0] = @"Subscription info is nil";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      *error = [v19 errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:300 userInfo:v20];

      error = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return error;
}

- (id)setSelectedSubscriptions:(id)subscriptions withError:(id *)error
{
  v49[1] = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  if (subscriptionsCopy)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_195A007C4;
    v46 = sub_195A03D88;
    v47 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = sub_195A007C4;
    v40 = sub_195A03D88;
    v41 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Setting selected subscriptions synchronously", buf, 2u);
    }

    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = sub_195ADD064;
    v26 = &unk_1E7442568;
    v27 = subscriptionsCopy;
    v28 = &v36;
    v29 = &v42;
    v30 = &v32;
    [(IDSPhoneSubscriptionSelector *)self _performSyncAction:&v23];
    if ((v33[3] & 1) == 0)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:100 userInfo:{0, v23, v24, v25, v26}];
      v9 = v43[5];
      v43[5] = v8;
    }

    if (error)
    {
      v10 = v43[5];
      if (v10)
      {
        *error = v10;
      }
    }

    error = v37[5];

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);

    _Block_object_dispose(&v42, 8);
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195B3D12C(registration2, v12, v13, v14, v15, v16, v17, v18);
    }

    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v48 = *MEMORY[0x1E696A278];
      v49[0] = @"Subscription info is nil";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      *error = [v19 errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:300 userInfo:v20];

      error = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return error;
}

- (BOOL)removeTemporaryPhoneAlias:(id)alias withError:(id *)error
{
  v48[1] = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  if (aliasCopy)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_195A007C4;
    v43 = sub_195A03D88;
    v44 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = aliasCopy;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Removing temporary phone alias synchronously {alias: %@}", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = sub_195ADD498;
    v26 = &unk_1E7442568;
    v27 = aliasCopy;
    v28 = &v35;
    v29 = &v39;
    v30 = &v31;
    [(IDSPhoneSubscriptionSelector *)self _performSyncAction:&v23];
    if ((v32[3] & 1) == 0)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:100 userInfo:{0, v23, v24, v25, v26}];
      v9 = v40[5];
      v40[5] = v8;
    }

    if (error)
    {
      v10 = v40[5];
      if (v10)
      {
        *error = v10;
      }
    }

    LOBYTE(error) = *(v36 + 24);

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195B3D1A4(registration2, v12, v13, v14, v15, v16, v17, v18);
    }

    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A278];
      v48[0] = @"Alias is nil";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      *error = [v19 errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:300 userInfo:v20];

      LOBYTE(error) = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return error & 1;
}

- (BOOL)enableTemporaryPhoneAlias:(id)alias withError:(id *)error
{
  v48[1] = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  if (aliasCopy)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_195A007C4;
    v43 = sub_195A03D88;
    v44 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = aliasCopy;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Enabling temporary phone alias synchronously {alias: %@}", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = sub_195ADD8C4;
    v26 = &unk_1E7442568;
    v27 = aliasCopy;
    v28 = &v35;
    v29 = &v39;
    v30 = &v31;
    [(IDSPhoneSubscriptionSelector *)self _performSyncAction:&v23];
    if ((v32[3] & 1) == 0)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:100 userInfo:{0, v23, v24, v25, v26}];
      v9 = v40[5];
      v40[5] = v8;
    }

    if (error)
    {
      v10 = v40[5];
      if (v10)
      {
        *error = v10;
      }
    }

    LOBYTE(error) = *(v36 + 24);

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195B3D21C(registration2, v12, v13, v14, v15, v16, v17, v18);
    }

    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A278];
      v48[0] = @"Alias is nil";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      *error = [v19 errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:300 userInfo:v20];

      LOBYTE(error) = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return error & 1;
}

- (BOOL)disableTemporaryPhoneAlias:(id)alias withError:(id *)error
{
  v48[1] = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  if (aliasCopy)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_195A007C4;
    v43 = sub_195A03D88;
    v44 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = aliasCopy;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Disabling temporary phone alias synchronously {alias: %@}", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = sub_195ADDCF0;
    v26 = &unk_1E7442568;
    v27 = aliasCopy;
    v28 = &v35;
    v29 = &v39;
    v30 = &v31;
    [(IDSPhoneSubscriptionSelector *)self _performSyncAction:&v23];
    if ((v32[3] & 1) == 0)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:100 userInfo:{0, v23, v24, v25, v26}];
      v9 = v40[5];
      v40[5] = v8;
    }

    if (error)
    {
      v10 = v40[5];
      if (v10)
      {
        *error = v10;
      }
    }

    LOBYTE(error) = *(v36 + 24);

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195B3D294(registration2, v12, v13, v14, v15, v16, v17, v18);
    }

    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A278];
      v48[0] = @"Alias is nil";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      *error = [v19 errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:300 userInfo:v20];

      LOBYTE(error) = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return error & 1;
}

- (id)unselectedTemporaryPhoneAliasesWithError:(id *)error
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_195A007C4;
  v27 = sub_195A03D88;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_195A007C4;
  v21 = sub_195A03D88;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Requesting unselected temporary aliases synchronously", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195ADE05C;
  v11[3] = &unk_1E7442540;
  v11[4] = &v17;
  v11[5] = &v23;
  v11[6] = &v13;
  [(IDSPhoneSubscriptionSelector *)self _performSyncAction:v11];
  if ((v14[3] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSPhoneSubscriptionSelectorErrorDomain" code:100 userInfo:0];
    v7 = v24[5];
    v24[5] = v6;
  }

  if (error)
  {
    v8 = v24[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v18[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v9;
}

- (void)_performSyncAction:(id)action
{
  actionCopy = action;
  syncDaemonController = self->_syncDaemonController;
  if (!syncDaemonController)
  {
    syncDaemonControllerBuilder = self->_syncDaemonControllerBuilder;
    v7 = +[IDSInternalQueueController sharedInstance];
    queue = [v7 queue];
    v9 = syncDaemonControllerBuilder[2](syncDaemonControllerBuilder, queue);
    v10 = self->_syncDaemonController;
    self->_syncDaemonController = v9;

    syncDaemonController = self->_syncDaemonController;
  }

  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x3032000000;
  v23[2] = sub_195A007C4;
  v23[3] = sub_195A03D88;
  v24 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195ADE360;
  v21[3] = &unk_1E7440378;
  v21[4] = &v22;
  v11 = [syncDaemonController registrationCollaboratorWithErrorHandler:v21];
  if (*(v23[0] + 40))
  {
    v12 = self->_syncDaemonController;
    self->_syncDaemonController = 0;

    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      sub_195B3D30C(v23, registration, v14, v15, v16, v17, v18, v19);
    }

    v11 = 0;
    v20 = *(v23[0] + 40);
  }

  else
  {
    v20 = 0;
  }

  actionCopy[2](actionCopy, v11, v20);

  _Block_object_dispose(&v22, 8);
}

@end