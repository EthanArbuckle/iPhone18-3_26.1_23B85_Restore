@interface _DKSyncContextObject
- (_DKSyncContextObject)initWithContext:(id)a3;
@end

@implementation _DKSyncContextObject

- (_DKSyncContextObject)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _DKSyncContextObject;
  v6 = [(_DKSyncContextObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

@end