@interface EMCollectionItemIDStateCapturer
- (EMCollectionItemIDStateCapturer)initWithTitle:(id)title delegate:(id)delegate;
- (EMCollectionItemIDStateCapturerDelegate)delegate;
- (id)descriptionForItem:(id)item;
- (id)itemsForStateCaptureWithErrorString:(id *)string;
- (id)labelForStateCapture;
@end

@implementation EMCollectionItemIDStateCapturer

- (EMCollectionItemIDStateCapturer)initWithTitle:(id)title delegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = EMCollectionItemIDStateCapturer;
  v7 = [(EFListStateCapturer *)&v10 initWithTitle:title itemName:@"Item IDs" headLimit:200 tailLimit:100 delegate:self];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
  }

  return v8;
}

- (id)labelForStateCapture
{
  delegate = [(EMCollectionItemIDStateCapturer *)self delegate];
  labelForStateCapture = [delegate labelForStateCapture];

  return labelForStateCapture;
}

- (id)itemsForStateCaptureWithErrorString:(id *)string
{
  delegate = [(EMCollectionItemIDStateCapturer *)self delegate];
  v5 = [delegate itemIDsForStateCaptureWithErrorString:string];

  return v5;
}

- (id)descriptionForItem:(id)item
{
  itemCopy = item;
  if (objc_opt_respondsToSelector())
  {
    v4 = [itemCopy description];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (EMCollectionItemIDStateCapturerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end