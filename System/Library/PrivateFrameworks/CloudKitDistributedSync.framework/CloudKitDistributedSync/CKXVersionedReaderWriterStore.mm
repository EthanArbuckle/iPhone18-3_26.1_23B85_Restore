@interface CKXVersionedReaderWriterStore
- (CKXVersionedReaderWriterStore)initWithBinding:(id)binding optionsByReaderWriterClass:(id)class;
@end

@implementation CKXVersionedReaderWriterStore

- (CKXVersionedReaderWriterStore)initWithBinding:(id)binding optionsByReaderWriterClass:(id)class
{
  bindingCopy = binding;
  classCopy = class;
  v12.receiver = self;
  v12.super_class = CKXVersionedReaderWriterStore;
  v9 = [(CKXVersionedReaderWriterStore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_binding, binding);
    objc_storeStrong(&v10->_optionsByReaderWriterClass, class);
  }

  return v10;
}

@end