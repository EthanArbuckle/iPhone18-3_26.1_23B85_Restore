@interface BLTBulletinSendQueuePassthrough
- (BLTBulletinSendQueueDelegate)delegate;
- (void)sendRequest:(id)a3 withTimeout:(id)a4 didSend:(id)a5;
- (void)sendRequest:(id)a3 withTimeout:(id)a4 isTrafficRestricted:(BOOL)a5 didSend:(id)a6;
@end

@implementation BLTBulletinSendQueuePassthrough

- (void)sendRequest:(id)a3 withTimeout:(id)a4 isTrafficRestricted:(BOOL)a5 didSend:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [(BLTBulletinSendQueuePassthrough *)self delegate];
  [v12 sendRequest:v11 type:1 withTimeout:v10 didSend:v9 didQueue:0];
}

- (void)sendRequest:(id)a3 withTimeout:(id)a4 didSend:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BLTBulletinSendQueuePassthrough *)self delegate];
  [v11 sendRequest:v10 type:27 withTimeout:v9 didSend:v8 didQueue:0];
}

- (BLTBulletinSendQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end