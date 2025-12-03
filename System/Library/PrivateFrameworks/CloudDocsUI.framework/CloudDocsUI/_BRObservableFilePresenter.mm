@interface _BRObservableFilePresenter
- (BRObservableFile)parent;
- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler;
- (void)presentedItemDidChange;
- (void)presentedItemDidMoveToURL:(id)l;
- (void)presentedItemUbiquityDidChange;
@end

@implementation _BRObservableFilePresenter

- (void)presentedItemDidChange
{
  parent = [(_BRObservableFilePresenter *)self parent];
  [parent _presenterDidChange];
}

- (void)presentedItemUbiquityDidChange
{
  parent = [(_BRObservableFilePresenter *)self parent];
  [parent _presenterDidChange];
}

- (void)presentedItemDidMoveToURL:(id)l
{
  [(_BRObservableFilePresenter *)self setPresentedItemURL:l];
  parent = [(_BRObservableFilePresenter *)self parent];
  [parent _presenterDidChange];
}

- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(_BRObservableFilePresenter *)self setPresentedItemURL:0];
  parent = [(_BRObservableFilePresenter *)self parent];
  [parent _presenterDidChange];

  handlerCopy[2](handlerCopy, 0);
}

- (BRObservableFile)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end