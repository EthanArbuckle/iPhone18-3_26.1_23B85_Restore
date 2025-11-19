@interface MUCallToActionSectionController
- (MUPlaceCallToActionSectionControllerDelegate)callToActionDelegate;
@end

@implementation MUCallToActionSectionController

- (MUPlaceCallToActionSectionControllerDelegate)callToActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_callToActionDelegate);

  return WeakRetained;
}

@end