@interface MRUCoordinatedUpdate
- (MRUCoordinatedUpdate)initWithUpdate:(id)a3 completion:(id)a4;
- (void)complete;
- (void)process;
@end

@implementation MRUCoordinatedUpdate

- (MRUCoordinatedUpdate)initWithUpdate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MRUCoordinatedUpdate;
  v8 = [(MRUCoordinatedUpdate *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    update = v8->_update;
    v8->_update = v9;

    v11 = [v7 copy];
    completion = v8->_completion;
    v8->_completion = v11;
  }

  return v8;
}

- (void)process
{
  update = self->_update;
  if (update)
  {
    update[2]();
  }
}

- (void)complete
{
  completion = self->_completion;
  if (completion)
  {
    completion[2]();
  }
}

@end