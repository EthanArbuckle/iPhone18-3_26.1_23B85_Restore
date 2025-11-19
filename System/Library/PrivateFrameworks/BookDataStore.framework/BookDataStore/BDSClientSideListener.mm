@interface BDSClientSideListener
- (BDSClientSideProtocol)delegate;
- (void)handleServiceNotificationNames:(id)a3 latestChangeToken:(int64_t)a4;
@end

@implementation BDSClientSideListener

- (BDSClientSideProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleServiceNotificationNames:(id)a3 latestChangeToken:(int64_t)a4
{
  v6 = a3;
  v7 = [(BDSClientSideListener *)self delegate];
  [v7 handleServiceNotificationNames:v6 latestChangeToken:a4];
}

@end