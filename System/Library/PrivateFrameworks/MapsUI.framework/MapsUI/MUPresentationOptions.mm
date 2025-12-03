@interface MUPresentationOptions
+ (MUPresentationOptions)optionsWithSender:(id)sender;
- (CGRect)sourceRect;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MUPresentationOptions

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MUPresentationOptions);
  presentingViewController = [(MUPresentationOptions *)self presentingViewController];
  [(MUPresentationOptions *)v4 setPresentingViewController:presentingViewController];

  sourceView = [(MUPresentationOptions *)self sourceView];
  [(MUPresentationOptions *)v4 setSourceView:sourceView];

  [(MUPresentationOptions *)self sourceRect];
  [(MUPresentationOptions *)v4 setSourceRect:?];
  progressObserver = [(MUPresentationOptions *)self progressObserver];
  [(MUPresentationOptions *)v4 setProgressObserver:progressObserver];

  sourceItem = [(MUPresentationOptions *)self sourceItem];
  [(MUPresentationOptions *)v4 setSourceItem:sourceItem];

  return v4;
}

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  sourceItem = self->_sourceItem;
  if (!sourceItem)
  {
    sourceItem = self->_sourceView;
  }

  return sourceItem;
}

+ (MUPresentationOptions)optionsWithSender:(id)sender
{
  senderCopy = sender;
  v4 = objc_alloc_init(MUPresentationOptions);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MUPresentationOptions *)v4 setSourceItem:senderCopy];
LABEL_5:
    v5 = v4;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MUPresentationOptions *)v4 setSourceView:senderCopy];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = senderCopy;
    view = [v6 view];
    [(MUPresentationOptions *)v4 setSourceView:view];

    [(MUPresentationOptions *)v4 setPresentingViewController:v6];
  }

  v5 = 0;
LABEL_9:

  return v5;
}

@end