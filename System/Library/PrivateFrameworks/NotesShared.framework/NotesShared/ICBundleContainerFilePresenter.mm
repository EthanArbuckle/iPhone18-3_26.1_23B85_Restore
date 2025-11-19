@interface ICBundleContainerFilePresenter
- (ICBundleContainerFilePresenter)initWithURL:(id)a3;
- (void)presentedSubitemDidChangeAtURL:(id)a3;
@end

@implementation ICBundleContainerFilePresenter

- (ICBundleContainerFilePresenter)initWithURL:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICBundleContainerFilePresenter;
  v5 = [(ICBundleContainerFilePresenter *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v5->_operationQueue;
    v5->_operationQueue = v8;

    [(NSOperationQueue *)v5->_operationQueue setName:@"com.apple.notes.bundle-container-file-presenter"];
    [(NSOperationQueue *)v5->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v5->_operationQueue setQualityOfService:17];
  }

  return v5;
}

- (void)presentedSubitemDidChangeAtURL:(id)a3
{
  v4 = a3;
  v3 = v4;
  performBlockOnMainThread();
}

void __65__ICBundleContainerFilePresenter_presentedSubitemDidChangeAtURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) subitemBundleDidChange];

  if (v2)
  {
    v3 = [*(a1 + 32) subitemBundleDidChange];
    v3[2](v3, *(a1 + 40));
  }
}

@end