@interface _DKSyncContextObjectFactory
+ (id)objectFactoryForClass:(Class)class context:(id)context;
- (_DKSyncContextObjectFactory)initWithContext:(id)context fabricateClass:(Class)class;
- (id)instance;
@end

@implementation _DKSyncContextObjectFactory

+ (id)objectFactoryForClass:(Class)class context:(id)context
{
  contextCopy = context;
  if (objectFactoryForClass_context__initialized != -1)
  {
    +[_DKSyncContextObjectFactory objectFactoryForClass:context:];
  }

  v7 = MEMORY[0x1E696AEC0];
  name = [contextCopy name];
  v9 = NSStringFromClass(class);
  v10 = [v7 stringWithFormat:@"%@::%@", name, v9];

  v11 = objectFactoryForClass_context__instances;
  objc_sync_enter(v11);
  v12 = [objectFactoryForClass_context__instances objectForKeyedSubscript:v10];
  if (!v12)
  {
    v12 = [[self alloc] initWithContext:contextCopy fabricateClass:class];
    [objectFactoryForClass_context__instances setObject:v12 forKeyedSubscript:v10];
  }

  objc_sync_exit(v11);

  return v12;
}

- (_DKSyncContextObjectFactory)initWithContext:(id)context fabricateClass:(Class)class
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = _DKSyncContextObjectFactory;
  v8 = [(_DKSyncContextObjectFactory *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, context);
    objc_storeStrong(&v9->_class, class);
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    instances = v9->_instances;
    v9->_instances = v10;
  }

  return v9;
}

- (id)instance
{
  name = [(_DKSyncContext *)self->_context name];
  v4 = self->_instances;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)self->_instances objectForKeyedSubscript:name];
  if (!v5)
  {
    v5 = [objc_alloc(self->_class) initWithContext:self->_context];
    [(NSMutableDictionary *)self->_instances setObject:v5 forKeyedSubscript:name];
  }

  objc_sync_exit(v4);

  return v5;
}

@end