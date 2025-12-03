@interface _DKSyncContext
- (_DKSyncContext)initWithName:(id)name;
@end

@implementation _DKSyncContext

- (_DKSyncContext)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = _DKSyncContext;
  v6 = [(_DKSyncContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

@end