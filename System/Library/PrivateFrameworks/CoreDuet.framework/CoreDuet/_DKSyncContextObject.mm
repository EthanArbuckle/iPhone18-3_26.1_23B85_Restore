@interface _DKSyncContextObject
- (_DKSyncContextObject)initWithContext:(id)context;
@end

@implementation _DKSyncContextObject

- (_DKSyncContextObject)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = _DKSyncContextObject;
  v6 = [(_DKSyncContextObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

@end