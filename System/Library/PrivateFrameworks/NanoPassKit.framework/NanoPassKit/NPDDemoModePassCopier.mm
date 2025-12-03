@interface NPDDemoModePassCopier
- (BOOL)_shouldReplaceExistingPaymentPass:(id)pass withCompanionPass:(id)companionPass;
- (NPDDemoModePassCopier)initWithCompanionPaymentPassDatabase:(id)database;
- (void)_addCompanionPaymentPass:(id)pass;
- (void)noteCompanionPassAddedOrUpdated:(id)updated;
- (void)performFullSyncWithPassLibrary:(id)library;
@end

@implementation NPDDemoModePassCopier

- (NPDDemoModePassCopier)initWithCompanionPaymentPassDatabase:(id)database
{
  databaseCopy = database;
  v9.receiver = self;
  v9.super_class = NPDDemoModePassCopier;
  v6 = [(NPDDemoModePassCopier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
  }

  return v7;
}

- (void)performFullSyncWithPassLibrary:(id)library
{
  libraryCopy = library;
  if (NPKIsRunningInDemoMode())
  {
    v23 = libraryCopy;
    v5 = [libraryCopy npkPassesOfType:1];
    database = [(NPDDemoModePassCopier *)self database];
    uniqueIDs = [database uniqueIDs];

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

          paymentPass = [*(*(&v29 + 1) + 8 * v12) paymentPass];
          v14 = paymentPass;
          if (paymentPass)
          {
            uniqueID = [paymentPass uniqueID];
            if ([uniqueIDs containsObject:uniqueID])
            {
              database2 = [(NPDDemoModePassCopier *)self database];
              v17 = [database2 paymentPassWithUniqueID:uniqueID];

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

    libraryCopy = v23;
  }
}

- (void)noteCompanionPassAddedOrUpdated:(id)updated
{
  updatedCopy = updated;
  if (NPKIsRunningInDemoMode())
  {
    database = [(NPDDemoModePassCopier *)self database];
    uniqueID = [updatedCopy uniqueID];
    v6 = [database paymentPassWithUniqueID:uniqueID];

    paymentPass = [updatedCopy paymentPass];
    LODWORD(uniqueID) = [(NPDDemoModePassCopier *)self _shouldReplaceExistingPaymentPass:v6 withCompanionPass:paymentPass];

    if (uniqueID)
    {
      paymentPass2 = [updatedCopy paymentPass];
      [(NPDDemoModePassCopier *)self _addCompanionPaymentPass:paymentPass2];
    }
  }
}

- (void)_addCompanionPaymentPass:(id)pass
{
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = uniqueID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: DEMO MODE: saving pass with unique ID %@ from companion pass library", buf, 0xCu);
    }
  }

  database = [(NPDDemoModePassCopier *)self database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100042F00;
  v11[3] = &unk_100071C90;
  v12 = uniqueID;
  v10 = uniqueID;
  [database savePaymentPass:passCopy requireExisting:0 requireNewer:0 completion:v11];
}

- (BOOL)_shouldReplaceExistingPaymentPass:(id)pass withCompanionPass:(id)companionPass
{
  passCopy = pass;
  companionPassCopy = companionPass;
  v7 = companionPassCopy;
  if (passCopy)
  {
    if (companionPassCopy)
    {
      sequenceCounter = [passCopy sequenceCounter];
      sequenceCounter2 = [v7 sequenceCounter];
      v10 = sequenceCounter2;
      v11 = 1;
      if (sequenceCounter && sequenceCounter2)
      {
        v11 = [sequenceCounter compare:sequenceCounter2] == -1;
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