@interface PDSharingStatefulProvisioningManager
- (BOOL)_isPassProvisioningComplete:(id)complete;
- (PDSharingStatefulProvisioningManager)initWithQueue:(id)queue replyQueue:(id)replyQueue databaseManager:(id)manager delegate:(id)delegate;
- (id)operations;
- (id)pendingShares;
- (void)_enumerateOperations:(id)operations;
- (void)_operationDidTimeout:(id)timeout;
- (void)_recalculateOperations;
- (void)addOperation:(id)operation;
- (void)channelEndpointWasTerminatedRemotely:(id)remotely;
- (void)didReceiverActivationCodeFailureForShare:(id)share attemptsRemaining:(unint64_t)remaining transportIdentifier:(id)identifier;
- (void)passAddedOrUpdated:(id)updated;
- (void)userDidEnterActivationCodeForShare:(id)share activationCode:(id)code;
- (void)userDidTerminatePendingShareActivationForShare:(id)share;
@end

@implementation PDSharingStatefulProvisioningManager

- (PDSharingStatefulProvisioningManager)initWithQueue:(id)queue replyQueue:(id)replyQueue databaseManager:(id)manager delegate:(id)delegate
{
  queueCopy = queue;
  replyQueueCopy = replyQueue;
  managerCopy = manager;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = PDSharingStatefulProvisioningManager;
  v15 = [(PDSharingStatefulProvisioningManager *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, queue);
    objc_storeStrong(&v16->_replyQueue, replyQueue);
    objc_storeStrong(&v16->_databaseManager, manager);
    objc_storeWeak(&v16->_delegate, delegateCopy);
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
  passSharesWithNoPass = [(PDDatabaseManager *)self->_databaseManager passSharesWithNoPass];
  v3 = [passSharesWithNoPass pk_objectsPassingTest:&stru_10083C380];

  return v3;
}

- (void)didReceiverActivationCodeFailureForShare:(id)share attemptsRemaining:(unint64_t)remaining transportIdentifier:(id)identifier
{
  shareCopy = share;
  identifierCopy = identifier;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001EE40;
  v13[3] = &unk_10083C3F8;
  v14 = shareCopy;
  selfCopy = self;
  v16 = identifierCopy;
  remainingCopy = remaining;
  v11 = identifierCopy;
  v12 = shareCopy;
  dispatch_async(queue, v13);
}

- (void)passAddedOrUpdated:(id)updated
{
  updatedCopy = updated;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F344;
  v7[3] = &unk_10083C420;
  v8 = updatedCopy;
  selfCopy = self;
  v6 = updatedCopy;
  dispatch_async(queue, v7);
}

- (void)_operationDidTimeout:(id)timeout
{
  timeoutCopy = timeout;
  v5 = [(NSMutableArray *)self->_operations indexOfObjectIdenticalTo:timeoutCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      shareIdentifier = [timeoutCopy shareIdentifier];
      transportIdentifier = [timeoutCopy transportIdentifier];
      v10 = PKSharingLoggableMailboxAddress();
      v14 = 138412546;
      v15 = shareIdentifier;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "StatefulProvisioningManager: Operation timed out for share: '%@' transportIdentifier: '%@'", &v14, 0x16u);
    }

    [(NSMutableArray *)self->_operations removeObjectAtIndex:v6];
    completion = [timeoutCopy completion];
    v12 = [NSError pkSharingError:4];
    (completion)[2](completion, 0, v12);

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained provisioningOperationsDidUpdate];
  }
}

- (void)userDidTerminatePendingShareActivationForShare:(id)share
{
  shareCopy = share;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F9C8;
  v7[3] = &unk_10083C420;
  v8 = shareCopy;
  selfCopy = self;
  v6 = shareCopy;
  dispatch_async(queue, v7);
}

- (void)userDidEnterActivationCodeForShare:(id)share activationCode:(id)code
{
  shareCopy = share;
  codeCopy = code;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FDA8;
  block[3] = &unk_10083C4C0;
  v12 = codeCopy;
  v13 = shareCopy;
  selfCopy = self;
  v9 = shareCopy;
  v10 = codeCopy;
  dispatch_async(queue, block);
}

- (void)channelEndpointWasTerminatedRemotely:(id)remotely
{
  remotelyCopy = remotely;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001FFD4;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = remotelyCopy;
  v6 = remotelyCopy;
  dispatch_async(queue, v7);
}

- (void)addOperation:(id)operation
{
  operationCopy = operation;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000203BC;
  v7[3] = &unk_10083C420;
  v8 = operationCopy;
  selfCopy = self;
  v6 = operationCopy;
  dispatch_async(queue, v7);
}

- (void)_enumerateOperations:(id)operations
{
  operationsCopy = operations;
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
      operationsCopy[2](operationsCopy, v8, &v10);
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
  selfCopy = self;
  pendingShares = [(PDSharingStatefulProvisioningManager *)self pendingShares];
  v6 = [pendingShares countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(pendingShares);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        credentialShares = [v10 credentialShares];
        firstObject = [credentialShares firstObject];
        channelTransportIdentifier = [firstObject channelTransportIdentifier];

        if (channelTransportIdentifier)
        {
          identifier = [v10 identifier];
          v15 = [v3 containsObject:identifier];

          if ((v15 & 1) == 0)
          {
            v16 = objc_alloc_init(PDSharingStatefulProvisioningOperation);
            identifier2 = [v10 identifier];
            [(PDSharingStatefulProvisioningOperation *)v16 setShareIdentifier:identifier2];

            [(PDSharingStatefulProvisioningOperation *)v16 setTransportIdentifier:channelTransportIdentifier];
            [(PDSharingStatefulProvisioningOperation *)v16 setCompletion:&stru_10083C5D0];
            -[PDSharingStatefulProvisioningOperation setIsWaitingOnUserAction:](v16, "setIsWaitingOnUserAction:", [v10 status] == 5);
            activationOptions = [v10 activationOptions];
            [(PDSharingStatefulProvisioningOperation *)v16 setRequiresSenderActivationVerification:activationOptions != 0];

            activationOptions2 = [v10 activationOptions];
            activationCode = [activationOptions2 activationCode];

            [(PDSharingStatefulProvisioningOperation *)v16 setIsForegroundOperation:activationCode == 0];
            [v4 addObject:v16];
          }
        }
      }

      v7 = [pendingShares countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v21 = [v25 arrayByAddingObjectsFromArray:v4];
  v22 = [v21 mutableCopy];
  operations = selfCopy->_operations;
  selfCopy->_operations = v22;
}

- (BOOL)_isPassProvisioningComplete:(id)complete
{
  completeCopy = complete;
  if ([completeCopy isCarKeyPass])
  {
    v4 = [completeCopy contactlessActivationState] == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end