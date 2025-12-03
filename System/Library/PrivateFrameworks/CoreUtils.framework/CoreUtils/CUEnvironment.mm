@interface CUEnvironment
- (id)description;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation CUEnvironment

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = objectCopy;
  if (objectCopy && !selfCopy->_objects)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    objects = selfCopy->_objects;
    selfCopy->_objects = v9;

    v8 = objectCopy;
  }

  [(NSMutableDictionary *)selfCopy->_objects setObject:v8 forKeyedSubscript:subscriptCopy];
  objc_sync_exit(selfCopy);
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_objects objectForKeyedSubscript:subscriptCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)description
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v11 = NSPrintF("%@: %##@", v4, v5, v6, v7, v8, v9, v10, v3);

  return v11;
}

@end