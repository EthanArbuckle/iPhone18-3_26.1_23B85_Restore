@interface HMDRemoteDeviceConfirmationHandler
- (HMDRemoteDeviceConfirmationHandler)initWithTimeoutTimer:(id)a3 workQueue:(id)a4 handler:(id)a5;
- (void)finishWithError:(void *)a1;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDRemoteDeviceConfirmationHandler

- (void)timerDidFire:(id)a3
{
  v4 = [(HMDRemoteDeviceConfirmationHandler *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
  [(HMDRemoteDeviceConfirmationHandler *)self finishWithError:v5];
}

- (void)finishWithError:(void *)a1
{
  v6 = a2;
  if (a1)
  {
    v3 = [a1 workQueue];
    dispatch_assert_queue_V2(v3);

    v4 = [a1 handler];

    if (v4)
    {
      v5 = [a1 handler];
      [a1 setHandler:0];
      (v5)[2](v5, v6);
    }
  }
}

- (HMDRemoteDeviceConfirmationHandler)initWithTimeoutTimer:(id)a3 workQueue:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v10)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = v11;
  if (!v11)
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
    objc_storeStrong(&v13->_timeoutTimer, a3);
    objc_storeStrong(&v14->_workQueue, a4);
    v15 = _Block_copy(v12);
    handler = v14->_handler;
    v14->_handler = v15;
  }

  return v14;
}

@end