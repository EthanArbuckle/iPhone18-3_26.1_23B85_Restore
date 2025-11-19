@interface MUPresentationOptions
+ (MUPresentationOptions)optionsWithSender:(id)a3;
- (CGRect)sourceRect;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MUPresentationOptions);
  v5 = [(MUPresentationOptions *)self presentingViewController];
  [(MUPresentationOptions *)v4 setPresentingViewController:v5];

  v6 = [(MUPresentationOptions *)self sourceView];
  [(MUPresentationOptions *)v4 setSourceView:v6];

  [(MUPresentationOptions *)self sourceRect];
  [(MUPresentationOptions *)v4 setSourceRect:?];
  v7 = [(MUPresentationOptions *)self progressObserver];
  [(MUPresentationOptions *)v4 setProgressObserver:v7];

  v8 = [(MUPresentationOptions *)self sourceItem];
  [(MUPresentationOptions *)v4 setSourceItem:v8];

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

+ (MUPresentationOptions)optionsWithSender:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MUPresentationOptions);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MUPresentationOptions *)v4 setSourceItem:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MUPresentationOptions *)v4 setSourceView:v3];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v3;
    v7 = [v6 view];
    [(MUPresentationOptions *)v4 setSourceView:v7];

    [(MUPresentationOptions *)v4 setPresentingViewController:v6];
  }

  v5 = 0;
LABEL_9:

  return v5;
}

@end