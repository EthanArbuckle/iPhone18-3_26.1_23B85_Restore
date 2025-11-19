@interface MRDUIClientBSMessageForwarder
- (MRUIClientProtocol)target;
@end

@implementation MRDUIClientBSMessageForwarder

- (MRUIClientProtocol)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end