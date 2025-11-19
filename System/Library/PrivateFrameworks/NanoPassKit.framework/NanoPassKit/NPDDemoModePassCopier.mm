@interface NPDDemoModePassCopier
- (BOOL)_shouldReplaceExistingPaymentPass:(id)a3 withCompanionPass:(id)a4;
- (NPDDemoModePassCopier)initWithCompanionPaymentPassDatabase:(id)a3;
- (void)_addCompanionPaymentPass:(id)a3;
- (void)noteCompanionPassAddedOrUpdated:(id)a3;
- (void)performFullSyncWithPassLibrary:(id)a3;
@end

@implementation NPDDemoModePassCopier

- (NPDDemoModePassCopier)initWithCompanionPaymentPassDatabase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NPDDemoModePassCopier;
  v6 = [(NPDDemoModePassCopier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, a3);
  }

  return v7;
}

- (void)performFullSyncWithPassLibrary:(id)a3
{
  v4 = a3;
  if (NPKIsRunningInDemoMode())
  {
    v23 = v4;
    v5 = [v4 npkPassesOfType:1];
    v6 = [(NPDDemoModePassCopier *)self database];
    v7 = [v6 uniqueIDs];

    v8 = +[NSMutableArray array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
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
            objc_enumerationMutation(obj);
          }

          v13 = [*(*(&v29 + 1) + 8 * v12) paymentPass];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 uniqueID];
            if ([v7 containsObject:v15])
            {
              v16 = [(NPDDemoModePassCopier *)self database];
              v17 = [v16 paymentPassWithUniqueID:v15];

              if ([(NPDDemoModePassCopier *)self _shouldReplaceExistingPaymentPass:v17 withCompanionPass:v14])
              {
                [v8 addObject:v14];
              }
            }

            else
            {
              [v8 addObject:v14];
            }
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v10);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        v22 = 0;
        do
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [(NPDDemoModePassCopier *)self _addCompanionPaymentPass:*(*(&v25 + 1) + 8 * v22)];
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v20);
    }

    v4 = v23;
  }
}

- (void)noteCompanionPassAddedOrUpdated:(id)a3
{
  v9 = a3;
  if (NPKIsRunningInDemoMode())
  {
    v4 = [(NPDDemoModePassCopier *)self database];
    v5 = [v9 uniqueID];
    v6 = [v4 paymentPassWithUniqueID:v5];

    v7 = [v9 paymentPass];
    LODWORD(v5) = [(NPDDemoModePassCopier *)self _shouldReplaceExistingPaymentPass:v6 withCompanionPass:v7];

    if (v5)
    {
      v8 = [v9 paymentPass];
      [(NPDDemoModePassCopier *)self _addCompanionPaymentPass:v8];
    }
  }
}

- (void)_addCompanionPaymentPass:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueID];
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: DEMO MODE: saving pass with unique ID %@ from companion pass library", buf, 0xCu);
    }
  }

  v9 = [(NPDDemoModePassCopier *)self database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100042F00;
  v11[3] = &unk_100071C90;
  v12 = v5;
  v10 = v5;
  [v9 savePaymentPass:v4 requireExisting:0 requireNewer:0 completion:v11];
}

- (BOOL)_shouldReplaceExistingPaymentPass:(id)a3 withCompanionPass:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 sequenceCounter];
      v9 = [v7 sequenceCounter];
      v10 = v9;
      v11 = 1;
      if (v8 && v9)
      {
        v11 = [v8 compare:v9] == -1;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end