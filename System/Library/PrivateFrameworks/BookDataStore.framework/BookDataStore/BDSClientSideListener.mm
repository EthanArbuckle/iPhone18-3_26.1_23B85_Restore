@interface BDSClientSideListener
- (BDSClientSideProtocol)delegate;
- (void)handleServiceNotificationNames:(id)names latestChangeToken:(int64_t)token;
@end

@implementation BDSClientSideListener

- (BDSClientSideProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleServiceNotificationNames:(id)names latestChangeToken:(int64_t)token
{
  namesCopy = names;
  delegate = [(BDSClientSideListener *)self delegate];
  [delegate handleServiceNotificationNames:namesCopy latestChangeToken:token];
}

@end