@interface MTInMemorySyncChangeStore
- (MTInMemorySyncChangeStore)init;
- (id)loadChanges;
- (void)persistChanges:(id)changes;
@end

@implementation MTInMemorySyncChangeStore

- (MTInMemorySyncChangeStore)init
{
  v6.receiver = self;
  v6.super_class = MTInMemorySyncChangeStore;
  v2 = [(MTInMemorySyncChangeStore *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    changes = v2->_changes;
    v2->_changes = v3;
  }

  return v2;
}

- (void)persistChanges:(id)changes
{
  v4 = [MEMORY[0x1E695DF70] arrayWithArray:changes];
  changes = self->_changes;
  self->_changes = v4;

  MEMORY[0x1EEE66BB8](v4, changes);
}

- (id)loadChanges
{
  v2 = MEMORY[0x1E69B3780];
  v3 = [(NSMutableArray *)self->_changes copy];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

@end