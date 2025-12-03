@interface MREmulatedGameController
- (MREmulatedGameController)initWithProperties:(id)properties;
- (MREmulatedGameControllerDelegate)delegate;
@end

@implementation MREmulatedGameController

- (MREmulatedGameController)initWithProperties:(id)properties
{
  v4.receiver = self;
  v4.super_class = MREmulatedGameController;
  return [(MREmulatedGameController *)&v4 init];
}

- (MREmulatedGameControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end