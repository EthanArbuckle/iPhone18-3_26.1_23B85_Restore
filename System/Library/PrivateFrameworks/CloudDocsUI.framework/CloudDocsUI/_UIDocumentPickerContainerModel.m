@interface _UIDocumentPickerContainerModel
- (_UIDocumentPickerContainerModel)init;
- (void)dealloc;
@end

@implementation _UIDocumentPickerContainerModel

- (_UIDocumentPickerContainerModel)init
{
  v9.receiver = self;
  v9.super_class = _UIDocumentPickerContainerModel;
  v2 = [(_UIDocumentPickerContainerModel *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    thumbnailQueue = v2->_thumbnailQueue;
    v2->_thumbnailQueue = v3;

    [(NSOperationQueue *)v2->_thumbnailQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_thumbnailQueue setName:@"Thumbnail loading queue"];
    [(NSOperationQueue *)v2->_thumbnailQueue setQualityOfService:17];
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create(0, v5);
    underlyingQueue = v2->_underlyingQueue;
    v2->_underlyingQueue = v6;

    [(NSOperationQueue *)v2->_thumbnailQueue setUnderlyingQueue:v2->_underlyingQueue];
  }

  return v2;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_thumbnailQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerContainerModel;
  [(_UIDocumentPickerContainerModel *)&v3 dealloc];
}

@end