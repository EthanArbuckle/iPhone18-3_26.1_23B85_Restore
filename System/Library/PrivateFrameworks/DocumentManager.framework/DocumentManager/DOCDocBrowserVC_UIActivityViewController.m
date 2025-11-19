@interface DOCDocBrowserVC_UIActivityViewController
- (UIBarButtonItem)barButtonItem;
@end

@implementation DOCDocBrowserVC_UIActivityViewController

- (UIBarButtonItem)barButtonItem
{
  WeakRetained = objc_loadWeakRetained(&self->_barButtonItem);

  return WeakRetained;
}

@end