@interface IDSFeatureToggler
- (IDSFeatureToggler)initWithService:(id)service queue:(id)queue;
- (void)retrieveFeatureToggleStateForOptions:(id)options completion:(id)completion;
- (void)updateFeatureToggleStateWithOptions:(id)options completion:(id)completion;
@end

@implementation IDSFeatureToggler

- (IDSFeatureToggler)initWithService:(id)service queue:(id)queue
{
  serviceCopy = service;
  queueCopy = queue;
  v9 = queueCopy;
  if (serviceCopy && queueCopy)
  {
    v15.receiver = self;
    v15.super_class = IDSFeatureToggler;
    v10 = [(IDSFeatureToggler *)&v15 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_service, service);
      objc_storeStrong(p_isa + 2, queue);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    featureToggler = [MEMORY[0x1E69A5270] FeatureToggler];
    if (os_log_type_enabled(featureToggler, OS_LOG_TYPE_FAULT))
    {
      sub_195B416F8();
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)retrieveFeatureToggleStateForOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195B0F438;
    v17[3] = &unk_1E7443188;
    v17[4] = self;
    v18 = completionCopy;
    v9 = MEMORY[0x19A8BBEF0](v17);
    if (optionsCopy && ([optionsCopy featureID], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_195B0F510;
      v14[3] = &unk_1E7440290;
      v14[4] = self;
      v16 = v9;
      v15 = optionsCopy;
      [IDSXPCDaemonController performDaemonControllerTask:v14];
    }

    else
    {
      featureToggler = [MEMORY[0x1E69A5270] FeatureToggler];
      if (os_log_type_enabled(featureToggler, OS_LOG_TYPE_ERROR))
      {
        sub_195B41738();
      }

      v12 = [IDSFeatureToggleRetrievalResult resultWithError:1];
      (v9)[2](v9, v12);
    }
  }

  else
  {
    featureToggler2 = [MEMORY[0x1E69A5270] FeatureToggler];
    if (os_log_type_enabled(featureToggler2, OS_LOG_TYPE_ERROR))
    {
      sub_195B41774();
    }
  }
}

- (void)updateFeatureToggleStateWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195B0F908;
    v17[3] = &unk_1E74431B0;
    v17[4] = self;
    v18 = completionCopy;
    v9 = MEMORY[0x19A8BBEF0](v17);
    if (optionsCopy && ([optionsCopy featureID], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      if ([optionsCopy state] == 1 || objc_msgSend(optionsCopy, "state") == 2)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = sub_195B0F9E0;
        v14[3] = &unk_1E7440290;
        v14[4] = self;
        v16 = v9;
        v15 = optionsCopy;
        [IDSXPCDaemonController performDaemonControllerTask:v14];

LABEL_10:
        goto LABEL_14;
      }

      featureToggler = [MEMORY[0x1E69A5270] FeatureToggler];
      if (os_log_type_enabled(featureToggler, OS_LOG_TYPE_ERROR))
      {
        sub_195B41824(optionsCopy, featureToggler);
      }
    }

    else
    {
      featureToggler = [MEMORY[0x1E69A5270] FeatureToggler];
      if (os_log_type_enabled(featureToggler, OS_LOG_TYPE_ERROR))
      {
        sub_195B418B0();
      }
    }

    v12 = [IDSFeatureToggleUpdateResult resultWithError:1];
    (v9)[2](v9, v12);

    goto LABEL_10;
  }

  featureToggler2 = [MEMORY[0x1E69A5270] FeatureToggler];
  if (os_log_type_enabled(featureToggler2, OS_LOG_TYPE_ERROR))
  {
    sub_195B418EC();
  }

LABEL_14:
}

@end