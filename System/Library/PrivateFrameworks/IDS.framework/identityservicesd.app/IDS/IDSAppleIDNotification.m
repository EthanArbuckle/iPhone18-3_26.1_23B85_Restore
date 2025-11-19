@interface IDSAppleIDNotification
- (IDSAppleIDNotification)init;
- (void)addAlias:(id)a3;
- (void)addCompletionBlock:(id)a3 forSession:(id)a4;
- (void)addSession:(id)a3;
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

- (void)addAlias:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_aliases addObject:?];
  }
}

- (void)addSession:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(NSMutableSet *)self->_sessions addObject:v4];
  }
}

- (void)addCompletionBlock:(id)a3 forSession:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9 && [v6 length])
  {
    sessionToBlockMap = self->_sessionToBlockMap;
    v8 = [v9 copy];
    [(NSMutableDictionary *)sessionToBlockMap setObject:v8 forKey:v6];
  }
}

@end