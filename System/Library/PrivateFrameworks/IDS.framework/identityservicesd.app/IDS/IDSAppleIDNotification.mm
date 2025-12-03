@interface IDSAppleIDNotification
- (IDSAppleIDNotification)init;
- (void)addAlias:(id)alias;
- (void)addCompletionBlock:(id)block forSession:(id)session;
- (void)addSession:(id)session;
@end

@implementation IDSAppleIDNotification

- (IDSAppleIDNotification)init
{
  v12.receiver = self;
  v12.super_class = IDSAppleIDNotification;
  v2 = [(IDSAppleIDNotification *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    serviceTypes = v2->_serviceTypes;
    v2->_serviceTypes = v3;

    v5 = objc_alloc_init(NSMutableSet);
    sessions = v2->_sessions;
    v2->_sessions = v5;

    v7 = objc_alloc_init(NSMutableSet);
    aliases = v2->_aliases;
    v2->_aliases = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    sessionToBlockMap = v2->_sessionToBlockMap;
    v2->_sessionToBlockMap = v9;
  }

  return v2;
}

- (void)addAlias:(id)alias
{
  if (alias)
  {
    [(NSMutableSet *)self->_aliases addObject:?];
  }
}

- (void)addSession:(id)session
{
  sessionCopy = session;
  if ([sessionCopy length])
  {
    [(NSMutableSet *)self->_sessions addObject:sessionCopy];
  }
}

- (void)addCompletionBlock:(id)block forSession:(id)session
{
  blockCopy = block;
  sessionCopy = session;
  if (blockCopy && [sessionCopy length])
  {
    sessionToBlockMap = self->_sessionToBlockMap;
    v8 = [blockCopy copy];
    [(NSMutableDictionary *)sessionToBlockMap setObject:v8 forKey:sessionCopy];
  }
}

@end