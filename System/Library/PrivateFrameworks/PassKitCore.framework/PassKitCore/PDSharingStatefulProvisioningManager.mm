@interface PDSharingStatefulProvisioningManager
- (BOOL)_isPassProvisioningComplete:(id)a3;
- (PDSharingStatefulProvisioningManager)initWithQueue:(id)a3 replyQueue:(id)a4 databaseManager:(id)a5 delegate:(id)a6;
- (id)operations;
- (id)pendingShares;
- (void)_enumerateOperations:(id)a3;
- (void)_operationDidTimeout:(id)a3;
- (void)_recalculateOperations;
- (void)addOperation:(id)a3;
- (void)channelEndpointWasTerminatedRemotely:(id)a3;
- (void)didReceiverActivationCodeFailureForShare:(id)a3 attemptsRemaining:(unint64_t)a4 transportIdentifier:(id)a5;
- (void)passAddedOrUpdated:(id)a3;
- (void)userDidEnterActivationCodeForShare:(id)a3 activationCode:(id)a4;
- (void)userDidTerminatePendingShareActivationForShare:(id)a3;
@end

@implementation PDSharingStatefulProvisioningManager

- (PDSharingStatefulProvisioningManager)initWithQueue:(id)a3 replyQueue:(id)a4 databaseManager:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = PDSharingStatefulProvisioningManager;
  v15 = [(PDSharingStatefulProvisioningManager *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, a3);
    objc_storeStrong(&v16->_replyQueue, a4);
    objc_storeStrong(&v16->_databaseManager, a5);
    objc_storeWeak(&v16->_delegate, v14);
    v17 = objc_alloc_init(NSMutableArray);
    operations = v16->_operations;
    v16->_operations = v17;
  }

  return v16;
}

- (id)operations
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001ECA0;
  v6[3] = &unk_10083C340;
  v7 = objc_alloc_init(NSMutableArray);
  v3 = v7;
  [(PDSharingStatefulProvisioningManager *)self _enumerateOperations:v6];
  v4 = [v3 copy];

  return v4;
}

- (id)pendingShares
{
  v2 = [(PDDatabaseManager *)self->_databaseManager passSharesWithNoPass];
  v3 = [v2 pk_objectsPassingTest:&stru_10083C380];

  return v3;
}

- (void)didReceiverActivationCodeFailureForShare:(id)a3 attemptsRemaining:(unint64_t)a4 transportIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001EE40;
  v13[3] = &unk_10083C3F8;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)passAddedOrUpdated:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F344;
  v7[3] = &unk_10083C420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_operationDidTimeout:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_operations indexOfObjectIdenticalTo:v4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 shareIdentifier];
      v9 = [v4 transportIdentifier];
      v10 = PKSharingLoggableMailboxAddress();
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "StatefulProvisioningManager: Operation timed out for share: '%@' transportIdentifier: '%@'", &v14, 0x16u);
    }

    [(NSMutableArray *)self->_operations removeObjectAtIndex:v6];
    v11 = [v4 completion];
    v12 = [NSError pkSharingError:4];
    (v11)[2](v11, 0, v12);

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained provisioningOperationsDidUpdate];
  }
}

- (void)userDidTerminatePendingShareActivationForShare:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F9C8;
  v7[3] = &unk_10083C420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)userDidEnterActivationCodeForShare:(id)a3 activationCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FDA8;
  block[3] = &unk_10083C4C0;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)channelEndpointWasTerminatedRemotely:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001FFD4;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addOperation:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000203BC;
  v7[3] = &unk_10083C420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_enumerateOperations:(id)a3
{
  v4 = a3;
  [(PDSharingStatefulProvisioningManager *)self _recalculateOperations];
  v5 = [(NSMutableArray *)self->_operations count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i < v6; ++i)
    {
      v8 = [(NSMutableArray *)self->_operations objectAtIndexedSubscript:i];
      v10 = 0;
      v9 = objc_autoreleasePoolPush();
      v4[2](v4, v8, &v10);
      objc_autoreleasePoolPop(v9);
      if (v10 == 1)
      {
        [(NSMutableArray *)self->_operations removeObjectAtIndex:i--];
        --v6;
      }
    }
  }
}

- (void)_recalculateOperations
{
  v25 = [(NSMutableArray *)self->_operations pk_objectsPassingTest:&stru_10083C550];
  v3 = [v25 pk_arrayByApplyingBlock:&stru_10083C590];
  v4 = objc_alloc_init(NSMutableArray);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v24 = self;
  v5 = [(PDSharingStatefulProvisioningManager *)self pendingShares];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 credentialShares];
        v12 = [v11 firstObject];
        v13 = [v12 channelTransportIdentifier];

        if (v13)
        {
          v14 = [v10 identifier];
          v15 = [v3 containsObject:v14];

          if ((v15 & 1) == 0)
          {
            v16 = objc_alloc_init(PDSharingStatefulProvisioningOperation);
            v17 = [v10 identifier];
            [(PDSharingStatefulProvisioningOperation *)v16 setShareIdentifier:v17];

            [(PDSharingStatefulProvisioningOperation *)v16 setTransportIdentifier:v13];
            [(PDSharingStatefulProvisioningOperation *)v16 setCompletion:&stru_10083C5D0];
            -[PDSharingStatefulProvisioningOperation setIsWaitingOnUserAction:](v16, "setIsWaitingOnUserAction:", [v10 status] == 5);
            v18 = [v10 activationOptions];
            [(PDSharingStatefulProvisioningOperation *)v16 setRequiresSenderActivationVerification:v18 != 0];

            v19 = [v10 activationOptions];
            v20 = [v19 activationCode];

            [(PDSharingStatefulProvisioningOperation *)v16 setIsForegroundOperation:v20 == 0];
            [v4 addObject:v16];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v21 = [v25 arrayByAddingObjectsFromArray:v4];
  v22 = [v21 mutableCopy];
  operations = v24->_operations;
  v24->_operations = v22;
}

- (BOOL)_isPassProvisioningComplete:(id)a3
{
  v3 = a3;
  if ([v3 isCarKeyPass])
  {
    v4 = [v3 contactlessActivationState] == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end