@interface HMDRemoteDeviceConfirmationHandler
- (HMDRemoteDeviceConfirmationHandler)initWithTimeoutTimer:(id)timer workQueue:(id)queue handler:(id)handler;
- (void)finishWithError:(void *)error;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDRemoteDeviceConfirmationHandler

- (void)timerDidFire:(id)fire
{
  workQueue = [(HMDRemoteDeviceConfirmationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
  [(HMDRemoteDeviceConfirmationHandler *)self finishWithError:v5];
}

- (void)finishWithError:(void *)error
{
  v6 = a2;
  if (error)
  {
    workQueue = [error workQueue];
    dispatch_assert_queue_V2(workQueue);

    handler = [error handler];

    if (handler)
    {
      handler2 = [error handler];
      [error setHandler:0];
      (handler2)[2](handler2, v6);
    }
  }
}

- (HMDRemoteDeviceConfirmationHandler)initWithTimeoutTimer:(id)timer workQueue:(id)queue handler:(id)handler
{
  timerCopy = timer;
  queueCopy = queue;
  handlerCopy = handler;
  if (!timerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!queueCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = handlerCopy;
  if (!handlerCopy)
  {
LABEL_9:
    v18 = _HMFPreconditionFailure();
    [(HMDRemoteDeviceInformation *)v18 .cxx_destruct];
    return result;
  }

  v20.receiver = self;
  v20.super_class = HMDRemoteDeviceConfirmationHandler;
  v13 = [(HMDRemoteDeviceConfirmationHandler *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_timeoutTimer, timer);
    objc_storeStrong(&v14->_workQueue, queue);
    v15 = _Block_copy(v12);
    handler = v14->_handler;
    v14->_handler = v15;
  }

  return v14;
}

@end