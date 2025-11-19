@interface _BRObservableFilePresenter
- (BRObservableFile)parent;
- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)a3;
- (void)presentedItemDidChange;
- (void)presentedItemDidMoveToURL:(id)a3;
- (void)presentedItemUbiquityDidChange;
@end

@implementation _BRObservableFilePresenter

- (void)presentedItemDidChange
{
  v2 = [(_BRObservableFilePresenter *)self parent];
  [v2 _presenterDidChange];
}

- (void)presentedItemUbiquityDidChange
{
  v2 = [(_BRObservableFilePresenter *)self parent];
  [v2 _presenterDidChange];
}

- (void)presentedItemDidMoveToURL:(id)a3
{
  [(_BRObservableFilePresenter *)self setPresentedItemURL:a3];
  v4 = [(_BRObservableFilePresenter *)self parent];
  [v4 _presenterDidChange];
}

- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)a3
{
  v5 = a3;
  [(_BRObservableFilePresenter *)self setPresentedItemURL:0];
  v4 = [(_BRObservableFilePresenter *)self parent];
  [v4 _presenterDidChange];

  v5[2](v5, 0);
}

- (BRObservableFile)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end