@interface CKSafariViewControllerImportWorkaround
- (CKSafariViewControllerImportWorkaroundDelegate)delegate;
- (id)_safariViewControllerWithURL:(id)l;
- (void)safariViewControllerDidFinish:(id)finish;
@end

@implementation CKSafariViewControllerImportWorkaround

- (id)_safariViewControllerWithURL:(id)l
{
  v4 = MEMORY[0x277CDB708];
  lCopy = l;
  v6 = objc_alloc_init(v4);
  [v6 setEntersReaderIfAvailable:0];
  v7 = [objc_alloc(MEMORY[0x277CDB700]) initWithURL:lCopy configuration:v6];

  [v7 setDelegate:self];
  [v7 setModalPresentationStyle:2];

  return v7;
}

- (void)safariViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  delegate = [(CKSafariViewControllerImportWorkaround *)self delegate];
  [delegate safariViewControllerDidFinish:finishCopy];
}

- (CKSafariViewControllerImportWorkaroundDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end