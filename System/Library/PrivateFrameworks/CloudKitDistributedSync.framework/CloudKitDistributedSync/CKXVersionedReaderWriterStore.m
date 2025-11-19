@interface CKXVersionedReaderWriterStore
- (CKXVersionedReaderWriterStore)initWithBinding:(id)a3 optionsByReaderWriterClass:(id)a4;
@end

@implementation CKXVersionedReaderWriterStore

- (CKXVersionedReaderWriterStore)initWithBinding:(id)a3 optionsByReaderWriterClass:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CKXVersionedReaderWriterStore;
  v9 = [(CKXVersionedReaderWriterStore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_binding, a3);
    objc_storeStrong(&v10->_optionsByReaderWriterClass, a4);
  }

  return v10;
}

@end