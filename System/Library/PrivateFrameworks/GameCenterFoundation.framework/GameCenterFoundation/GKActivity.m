@interface GKActivity
+ (id)currentOrNewNamed:(id)a3;
+ (id)detachedNamed:(id)a3;
+ (id)named:(id)a3;
+ (void)named:(id)a3 execute:(id)a4;
- (id)childNamed:(id)a3;
- (void)childNamed:(id)a3 execute:(id)a4;
- (void)createActivity;
- (void)execute:(id)a3;
@end

@implementation GKActivity

+ (id)named:(id)a3
{
  v3 = a3;
  v4 = [GKActivity alloc];
  v5 = [(GKActivity *)v4 initWithName:v3 parent:MEMORY[0x277D86210] mode:2];

  return v5;
}

+ (id)detachedNamed:(id)a3
{
  v3 = a3;
  v4 = [GKActivity alloc];
  v5 = [(GKActivity *)v4 initWithName:v3 parent:MEMORY[0x277D86210] mode:1];

  return v5;
}

+ (id)currentOrNewNamed:(id)a3
{
  v3 = a3;
  v4 = [GKActivity alloc];
  v5 = [(GKActivity *)v4 initWithName:v3 parent:MEMORY[0x277D86210] mode:2];

  return v5;
}

- (void)createActivity
{
  v3 = _os_activity_create(&dword_227904000, [(NSString *)self->_name UTF8String], self->_parent, self->_mode);
  [(GKActivity *)self setActivity:v3];
}

- (id)childNamed:(id)a3
{
  v4 = a3;
  if (!self->_activity)
  {
    [(GKActivity *)self createActivity];
  }

  v5 = [[GKActivity alloc] initWithName:v4 parent:self->_activity mode:0];

  return v5;
}

- (void)childNamed:(id)a3 execute:(id)a4
{
  v6 = a4;
  v7 = [(GKActivity *)self childNamed:a3];
  [v7 execute:v6];
}

+ (void)named:(id)a3 execute:(id)a4
{
  v5 = a4;
  v6 = [GKActivity named:a3];
  [v6 execute:v5];
}

- (void)execute:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
  os_activity_apply(activity, block);
}

@end