@interface SUUITableViewSection
- (SUUITableViewSectionDelegate)delegate;
@end

@implementation SUUITableViewSection

- (SUUITableViewSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end