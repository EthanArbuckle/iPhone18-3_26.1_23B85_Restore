@interface GKActivity
+ (id)currentOrNewNamed:(id)named;
+ (id)detachedNamed:(id)named;
+ (id)named:(id)named;
+ (void)named:(id)named execute:(id)execute;
- (id)childNamed:(id)named;
- (void)childNamed:(id)named execute:(id)execute;
- (void)createActivity;
- (void)execute:(id)execute;
@end

@implementation GKActivity

+ (id)named:(id)named
{
  namedCopy = named;
  v4 = [GKActivity alloc];
  v5 = [(GKActivity *)v4 initWithName:namedCopy parent:MEMORY[0x277D86210] mode:2];

  return v5;
}

+ (id)detachedNamed:(id)named
{
  namedCopy = named;
  v4 = [GKActivity alloc];
  v5 = [(GKActivity *)v4 initWithName:namedCopy parent:MEMORY[0x277D86210] mode:1];

  return v5;
}

+ (id)currentOrNewNamed:(id)named
{
  namedCopy = named;
  v4 = [GKActivity alloc];
  v5 = [(GKActivity *)v4 initWithName:namedCopy parent:MEMORY[0x277D86210] mode:2];

  return v5;
}

- (void)createActivity
{
  v3 = _os_activity_create(&dword_227904000, [(NSString *)self->_name UTF8String], self->_parent, self->_mode);
  [(GKActivity *)self setActivity:v3];
}

- (id)childNamed:(id)named
{
  namedCopy = named;
  if (!self->_activity)
  {
    [(GKActivity *)self createActivity];
  }

  v5 = [[GKActivity alloc] initWithName:namedCopy parent:self->_activity mode:0];

  return v5;
}

- (void)childNamed:(id)named execute:(id)execute
{
  executeCopy = execute;
  v7 = [(GKActivity *)self childNamed:named];
  [v7 execute:executeCopy];
}

+ (void)named:(id)named execute:(id)execute
{
  executeCopy = execute;
  v6 = [GKActivity named:named];
  [v6 execute:executeCopy];
}

- (void)execute:(id)execute
{
  executeCopy = execute;
  activity = self->_activity;
  if (!activity)
  {
    [(GKActivity *)self createActivity];
    activity = self->_activity;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__GKActivity_execute___block_invoke;
  block[3] = &unk_2785DD710;
  v8 = executeCopy;
  v6 = executeCopy;
  os_activity_apply(activity, block);
}

@end