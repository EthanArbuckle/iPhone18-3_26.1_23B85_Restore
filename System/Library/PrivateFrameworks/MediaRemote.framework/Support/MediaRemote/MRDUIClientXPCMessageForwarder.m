@interface MRDUIClientXPCMessageForwarder
- (MRUIClientXPCProtocol)target;
@end

@implementation MRDUIClientXPCMessageForwarder

- (MRUIClientXPCProtocol)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end