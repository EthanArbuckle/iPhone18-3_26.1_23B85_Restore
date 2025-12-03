@interface BLTBulletinSendQueuePassthrough
- (BLTBulletinSendQueueDelegate)delegate;
- (void)sendRequest:(id)request withTimeout:(id)timeout didSend:(id)send;
- (void)sendRequest:(id)request withTimeout:(id)timeout isTrafficRestricted:(BOOL)restricted didSend:(id)send;
@end

@implementation BLTBulletinSendQueuePassthrough

- (void)sendRequest:(id)request withTimeout:(id)timeout isTrafficRestricted:(BOOL)restricted didSend:(id)send
{
  sendCopy = send;
  timeoutCopy = timeout;
  requestCopy = request;
  delegate = [(BLTBulletinSendQueuePassthrough *)self delegate];
  [delegate sendRequest:requestCopy type:1 withTimeout:timeoutCopy didSend:sendCopy didQueue:0];
}

- (void)sendRequest:(id)request withTimeout:(id)timeout didSend:(id)send
{
  sendCopy = send;
  timeoutCopy = timeout;
  requestCopy = request;
  delegate = [(BLTBulletinSendQueuePassthrough *)self delegate];
  [delegate sendRequest:requestCopy type:27 withTimeout:timeoutCopy didSend:sendCopy didQueue:0];
}

- (BLTBulletinSendQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end