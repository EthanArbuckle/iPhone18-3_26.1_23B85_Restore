@interface _DKLocalChanges
- (id)initWithInsertedObjects:(uint64_t)a1 tombstones:(void *)a2 startDate:endDate:;
@end

@implementation _DKLocalChanges

- (id)initWithInsertedObjects:(uint64_t)a1 tombstones:(void *)a2 startDate:endDate:
{
  v7 = OUTLINED_FUNCTION_18_3(a1, a2);
  v8 = v4;
  v9 = v3;
  v10 = v2;
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = _DKLocalChanges;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    v6 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, v5);
      objc_storeStrong(v6 + 2, v4);
      objc_storeStrong(v6 + 3, v3);
      objc_storeStrong(v6 + 4, v2);
    }
  }

  return v6;
}

@end