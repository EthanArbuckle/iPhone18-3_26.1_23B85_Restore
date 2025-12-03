@interface CKDAppContainerAccountMetadata
- (CKDAppContainerAccountMetadata)initWithContainerOptions:(id)options tokenRegistered:(int64_t)registered;
@end

@implementation CKDAppContainerAccountMetadata

- (CKDAppContainerAccountMetadata)initWithContainerOptions:(id)options tokenRegistered:(int64_t)registered
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = CKDAppContainerAccountMetadata;
  v8 = [(CKDAppContainerAccountMetadata *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_containerOptions, options);
    v9->_tokenRegistered = registered;
  }

  return v9;
}

@end