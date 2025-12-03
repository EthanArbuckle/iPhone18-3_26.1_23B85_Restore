@interface CRXUDispatchGroup
- (CRXUDispatchGroup)initWithName:(id)name;
- (id)debugDescription;
- (void)notifyOnQueue:(id)queue withBlock:(id)block;
- (void)onQueue:(id)queue dispatchAsync:(id)async;
@end

@implementation CRXUDispatchGroup

- (CRXUDispatchGroup)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = CRXUDispatchGroup;
  v5 = [(CRXUDispatchGroup *)&v11 init];
  if (v5)
  {
    v6 = dispatch_group_create();
    group = v5->_group;
    v5->_group = v6;

    v8 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v8;
  }

  return v5;
}

- (void)onQueue:(id)queue dispatchAsync:(id)async
{
  group = self->_group;
  asyncCopy = async;
  queue = [queue queue];
  dispatch_group_async(group, queue, asyncCopy);
}

- (void)notifyOnQueue:(id)queue withBlock:(id)block
{
  group = self->_group;
  blockCopy = block;
  queue = [queue queue];
  dispatch_group_notify(group, queue, blockCopy);
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  name = [(CRXUDispatchGroup *)self name];
  v5 = [NSString stringWithFormat:@"%@<%p> %@", v3, self, name];

  return v5;
}

@end