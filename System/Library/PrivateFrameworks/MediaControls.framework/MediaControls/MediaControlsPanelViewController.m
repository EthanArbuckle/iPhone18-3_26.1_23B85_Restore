@interface MediaControlsPanelViewController
- (id)delegate;
@end

@implementation MediaControlsPanelViewController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end