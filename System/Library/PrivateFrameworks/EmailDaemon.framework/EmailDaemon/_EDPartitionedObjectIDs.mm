@interface _EDPartitionedObjectIDs
- (_EDPartitionedObjectIDs)initWithMessageObjectIDs:(id)a3 threadObjectIDsByScope:(id)a4;
@end

@implementation _EDPartitionedObjectIDs

- (_EDPartitionedObjectIDs)initWithMessageObjectIDs:(id)a3 threadObjectIDsByScope:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _EDPartitionedObjectIDs;
  v9 = [(_EDPartitionedObjectIDs *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageObjectIDs, a3);
    objc_storeStrong(&v10->_threadObjectIDsByScope, a4);
  }

  return v10;
}

@end