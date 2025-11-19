@interface CKQLPreviewControllerDataSource
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3;
- (void)setPreviewItems:(id)a3;
@end

@implementation CKQLPreviewControllerDataSource

- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3
{
  v3 = [(CKQLPreviewControllerDataSource *)self previewItems];
  v4 = [v3 count];

  return v4;
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v6 = [(CKQLPreviewControllerDataSource *)self previewItems];
  v7 = [v6 count];

  if (v7 >= a4)
  {
    v9 = [(CKQLPreviewControllerDataSource *)self previewItems];
    v8 = [v9 objectAtIndex:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setPreviewItems:(id)a3
{
  v4 = a3;
  previewItems = self->_previewItems;
  p_previewItems = &self->_previewItems;
  v9 = v4;
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