@interface MUPlaceInfoSectionControllerConfiguration
- (MKPlaceActionManagerProtocol)actionDelegate;
@end

@implementation MUPlaceInfoSectionControllerConfiguration

- (MKPlaceActionManagerProtocol)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

@end