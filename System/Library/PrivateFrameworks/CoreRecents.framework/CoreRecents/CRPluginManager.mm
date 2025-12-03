@interface CRPluginManager
+ (id)defaultPluginPath;
- (CRPluginManager)initWithPath:(id)path;
- (id)addressHandlers;
- (void)_addAddressHandler:(id)handler;
- (void)_loadPluginBundle:(id)bundle;
- (void)_loadPlugins;
- (void)dealloc;
@end

@implementation CRPluginManager

+ (id)defaultPluginPath
{
  if (qword_100034378 != -1)
  {
    sub_100018ED4();
  }

  return qword_100034370;
}

- (CRPluginManager)initWithPath:(id)path
{
  v6.receiver = self;
  v6.super_class = CRPluginManager;
  v4 = [(CRPluginManager *)&v6 init];
  if (v4)
  {
    v4->_path = [path copy];
    v4->_addressHandlersByKind = objc_alloc_init(NSMutableDictionary);
    [(CRPluginManager *)v4 _loadPlugins];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CRPluginManager;
  [(CRPluginManager *)&v3 dealloc];
}

- (void)_loadPlugins
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:self->_path, 0, 0];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        if (![objc_msgSend(v8 "pathExtension")])
        {
          v10 = [NSBundle bundleWithPath:[(NSString *)self->_path stringByAppendingPathComponent:v8]];
          if (v10)
          {
            [(CRPluginManager *)self _loadPluginBundle:v10];
          }
        }

        objc_autoreleasePoolPop(v9);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_loadPluginBundle:(id)bundle
{
  v6 = 0;
  if ([bundle loadAndReturnError:&v6])
  {
    principalClass = [bundle principalClass];
    if ([principalClass conformsToProtocol:&OBJC_PROTOCOL___CRAddressHandler])
    {
      [(CRPluginManager *)self _addAddressHandler:[CRAddressHandler addressHandlerWithPrincipalClass:principalClass]];
    }

    else
    {
      NSLog(@"no conforming principal class found in %@", bundle);
    }
  }

  else
  {
    NSLog(@"unable to load plugin bundle %@: %@", bundle, v6);
  }
}

- (void)_addAddressHandler:(id)handler
{
  supportedAddressKinds = [handler supportedAddressKinds];
  v6 = [NSMutableSet setWithSet:supportedAddressKinds];
  [(NSMutableSet *)v6 intersectSet:[NSSet setWithArray:[(NSMutableDictionary *)self->_addressHandlersByKind allKeys]]];
  if ([(NSMutableSet *)v6 count])
  {
    v7 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"ERROR: %@ attempting to register multiple sync transformers for kinds: {%@}\n\tregistered transformers:\n", handler, [-[NSMutableSet allObjects](v6 "allObjects")]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v6);
          }

          [(NSMutableString *)v7 appendFormat:@"\t%@ => %@\n", *(*(&v20 + 1) + 8 * v11), [(NSMutableDictionary *)self->_addressHandlersByKind objectForKey:*(*(&v20 + 1) + 8 * v11)]];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v9);
    }

    NSLog(@"%@", v7);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v12 = [supportedAddressKinds countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(supportedAddressKinds);
          }

          [(NSMutableDictionary *)self->_addressHandlersByKind setObject:handler forKey:*(*(&v16 + 1) + 8 * v15)];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [supportedAddressKinds countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

- (id)addressHandlers
{
  v2 = [NSSet setWithArray:[(NSMutableDictionary *)self->_addressHandlersByKind allValues]];

  return [(NSSet *)v2 allObjects];
}

@end