@interface IDSFeatureToggler
- (IDSFeatureToggler)initWithService:(id)a3 queue:(id)a4;
- (void)retrieveFeatureToggleStateForOptions:(id)a3 completion:(id)a4;
- (void)updateFeatureToggleStateWithOptions:(id)a3 completion:(id)a4;
@end

@implementation IDSFeatureToggler

- (IDSFeatureToggler)initWithService:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8)
  {
    v15.receiver = self;
    v15.super_class = IDSFeatureToggler;
    v10 = [(IDSFeatureToggler *)&v15 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_service, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v12 = self;
  }

  else
  {
    v13 = [MEMORY[0x1E69A5270] FeatureToggler];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_195B416F8();
    }

    v12 = 0;
  }

  return v12;
}

- (void)retrieveFeatureToggleStateForOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195B0F438;
    v17[3] = &unk_1E7443188;
    v17[4] = self;
    v18 = v7;
    v9 = MEMORY[0x19A8BBEF0](v17);
    if (v6 && ([v6 featureID], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_195B0F510;
      v14[3] = &unk_1E7440290;
      v14[4] = self;
      v16 = v9;
      v15 = v6;
      [IDSXPCDaemonController performDaemonControllerTask:v14];
    }

    else
    {
      v11 = [MEMORY[0x1E69A5270] FeatureToggler];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_195B41738();
      }

      v12 = [IDSFeatureToggleRetrievalResult resultWithError:1];
      (v9)[2](v9, v12);
    }
  }

  else
  {
    v13 = [MEMORY[0x1E69A5270] FeatureToggler];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B41774();
    }
  }
}

- (void)updateFeatureToggleStateWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195B0F908;
    v17[3] = &unk_1E74431B0;
    v17[4] = self;
    v18 = v7;
    v9 = MEMORY[0x19A8BBEF0](v17);
    if (v6 && ([v6 featureID], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      if ([v6 state] == 1 || objc_msgSend(v6, "state") == 2)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = sub_195B0F9E0;
        v14[3] = &unk_1E7440290;
        v14[4] = self;
        v16 = v9;
        v15 = v6;
        [IDSXPCDaemonController performDaemonControllerTask:v14];

LABEL_10:
        goto LABEL_14;
      }

      v11 = [MEMORY[0x1E69A5270] FeatureToggler];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_195B41824(v6, v11);
      }
    }

    else
    {
      v11 = [MEMORY[0x1E69A5270] FeatureToggler];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_195B418B0();
      }
    }

    v12 = [IDSFeatureToggleUpdateResult resultWithError:1];
    (v9)[2](v9, v12);

    goto LABEL_10;
  }

  v13 = [MEMORY[0x1E69A5270] FeatureToggler];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_195B418EC();
  }

LABEL_14:
}

@end