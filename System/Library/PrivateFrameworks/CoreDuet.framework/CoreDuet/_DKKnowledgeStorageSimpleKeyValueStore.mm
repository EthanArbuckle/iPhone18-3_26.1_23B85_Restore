@interface _DKKnowledgeStorageSimpleKeyValueStore
- (id)initWithStorage:(void *)storage domain:;
@end

@implementation _DKKnowledgeStorageSimpleKeyValueStore

- (id)initWithStorage:(void *)storage domain:
{
  v6 = a2;
  storageCopy = storage;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = _DKKnowledgeStorageSimpleKeyValueStore;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, storage);
    }
  }

  return self;
}

@end