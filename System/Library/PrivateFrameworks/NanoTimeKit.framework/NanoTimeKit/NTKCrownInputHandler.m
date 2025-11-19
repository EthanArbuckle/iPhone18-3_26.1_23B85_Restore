@interface NTKCrownInputHandler
- (NTKCrownInputHandler)init;
- (NTKCrownInputHandlerDelegate)delegate;
@end

@implementation NTKCrownInputHandler

- (NTKCrownInputHandler)init
{
  v3.receiver = self;
  v3.super_class = NTKCrownInputHandler;
  return [(NTKCrownInputHandler *)&v3 init];
}

- (NTKCrownInputHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end