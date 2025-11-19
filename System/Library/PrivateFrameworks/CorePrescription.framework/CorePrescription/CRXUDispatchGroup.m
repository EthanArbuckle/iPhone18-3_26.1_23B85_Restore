@interface CRXUDispatchGroup
- (CRXUDispatchGroup)initWithName:(id)a3;
- (id)debugDescription;
- (void)notifyOnQueue:(id)a3 withBlock:(id)a4;
- (void)onQueue:(id)a3 dispatchAsync:(id)a4;
@end

@implementation CRXUDispatchGroup

- (CRXUDispatchGroup)initWithName:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRXUDispatchGroup;
  v5 = [(CRXUDispatchGroup *)&v11 init];
  if (v5)
  {
    v6 = dispatch_group_create();
    group = v5->_group;
    v5->_group = v6;

    v8 = [v4 copy];
    name = v5->_name;
    v5->_name = v8;
  }

  return v5;
}

- (void)onQueue:(id)a3 dispatchAsync:(id)a4
{
  group = self->_group;
  v6 = a4;
  v7 = [a3 queue];
  dispatch_group_async(group, v7, v6);
}

- (void)notifyOnQueue:(id)a3 withBlock:(id)a4
{
  group = self->_group;
  v6 = a4;
  v7 = [a3 queue];
  dispatch_group_notify(group, v7, v6);
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRXUDispatchGroup *)self name];
  v6 = [v3 stringWithFormat:@"%@<%p> %@", v4, self, v5];

  return v6;
}

@end