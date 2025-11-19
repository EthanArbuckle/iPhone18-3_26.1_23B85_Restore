@interface CKSafariViewControllerImportWorkaround
- (CKSafariViewControllerImportWorkaroundDelegate)delegate;
- (id)_safariViewControllerWithURL:(id)a3;
- (void)safariViewControllerDidFinish:(id)a3;
@end

@implementation CKSafariViewControllerImportWorkaround

- (id)_safariViewControllerWithURL:(id)a3
{
  v4 = MEMORY[0x277CDB708];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setEntersReaderIfAvailable:0];
  v7 = [objc_alloc(MEMORY[0x277CDB700]) initWithURL:v5 configuration:v6];

  [v7 setDelegate:self];
  [v7 setModalPresentationStyle:2];

  return v7;
}

- (void)safariViewControllerDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(CKSafariViewControllerImportWorkaround *)self delegate];
  [v5 safariViewControllerDidFinish:v4];
}

- (CKSafariViewControllerImportWorkaroundDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end