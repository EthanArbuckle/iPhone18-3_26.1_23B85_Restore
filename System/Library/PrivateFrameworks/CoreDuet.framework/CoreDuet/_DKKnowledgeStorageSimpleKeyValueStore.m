@interface _DKKnowledgeStorageSimpleKeyValueStore
- (id)initWithStorage:(void *)a3 domain:;
@end

@implementation _DKKnowledgeStorageSimpleKeyValueStore

- (id)initWithStorage:(void *)a3 domain:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = _DKKnowledgeStorageSimpleKeyValueStore;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

@end