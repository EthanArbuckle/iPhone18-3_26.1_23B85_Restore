@interface _EDPartitionedObjectIDs
- (_EDPartitionedObjectIDs)initWithMessageObjectIDs:(id)ds threadObjectIDsByScope:(id)scope;
@end

@implementation _EDPartitionedObjectIDs

- (_EDPartitionedObjectIDs)initWithMessageObjectIDs:(id)ds threadObjectIDsByScope:(id)scope
{
  dsCopy = ds;
  scopeCopy = scope;
  v12.receiver = self;
  v12.super_class = _EDPartitionedObjectIDs;
  v9 = [(_EDPartitionedObjectIDs *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageObjectIDs, ds);
    objc_storeStrong(&v10->_threadObjectIDsByScope, scope);
  }

  return v10;
}

@end