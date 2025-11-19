@interface _DKSyncContextObjectFactory
+ (id)objectFactoryForClass:(Class)a3 context:(id)a4;
- (_DKSyncContextObjectFactory)initWithContext:(id)a3 fabricateClass:(Class)a4;
- (id)instance;
@end

@implementation _DKSyncContextObjectFactory

+ (id)objectFactoryForClass:(Class)a3 context:(id)a4
{
  v6 = a4;
  if (objectFactoryForClass_context__initialized != -1)
  {
    +[_DKSyncContextObjectFactory objectFactoryForClass:context:];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = [v6 name];
  v9 = NSStringFromClass(a3);
  v10 = [v7 stringWithFormat:@"%@::%@", v8, v9];

  v11 = objectFactoryForClass_context__instances;
  objc_sync_enter(v11);
  v12 = [objectFactoryForClass_context__instances objectForKeyedSubscript:v10];
  if (!v12)
  {
    v12 = [[a1 alloc] initWithContext:v6 fabricateClass:a3];
    [objectFactoryForClass_context__instances setObject:v12 forKeyedSubscript:v10];
  }

  objc_sync_exit(v11);

  return v12;
}

- (_DKSyncContextObjectFactory)initWithContext:(id)a3 fabricateClass:(Class)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = _DKSyncContextObjectFactory;
  v8 = [(_DKSyncContextObjectFactory *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, a3);
    objc_storeStrong(&v9->_class, a4);
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    instances = v9->_instances;
    v9->_instances = v10;
  }

  return v9;
}

- (id)instance
{
  v3 = [(_DKSyncContext *)self->_context name];
  v4 = self->_instances;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)self->_instances objectForKeyedSubscript:v3];
  if (!v5)
  {
    v5 = [objc_alloc(self->_class) initWithContext:self->_context];
    [(NSMutableDictionary *)self->_instances setObject:v5 forKeyedSubscript:v3];
  }

  objc_sync_exit(v4);

  return v5;
}

@end