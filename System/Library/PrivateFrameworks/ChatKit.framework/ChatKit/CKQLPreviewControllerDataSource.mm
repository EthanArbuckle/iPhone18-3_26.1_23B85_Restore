@interface CKQLPreviewControllerDataSource
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller;
- (void)setPreviewItems:(id)items;
@end

@implementation CKQLPreviewControllerDataSource

- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller
{
  previewItems = [(CKQLPreviewControllerDataSource *)self previewItems];
  v4 = [previewItems count];

  return v4;
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  previewItems = [(CKQLPreviewControllerDataSource *)self previewItems];
  v7 = [previewItems count];

  if (v7 >= index)
  {
    previewItems2 = [(CKQLPreviewControllerDataSource *)self previewItems];
    v8 = [previewItems2 objectAtIndex:index];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setPreviewItems:(id)items
{
  itemsCopy = items;
  previewItems = self->_previewItems;
  p_previewItems = &self->_previewItems;
  v9 = itemsCopy;
  if ([(NSArray *)previewItems isEqualToArray:?])
  {
    v7 = v9;
  }

  else
  {
    v8 = [v9 copy];

    objc_storeStrong(p_previewItems, v8);
    v7 = v8;
  }
}

@end