@interface BaseFileProvideriWorkCollaborationServiceSource
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BaseFileProvideriWorkCollaborationServiceSource)initWithItemIdentifier:(id)identifier operationQueue:(id)queue;
- (id)makeListenerEndpointAndReturnError:(id *)error;
@end

@implementation BaseFileProvideriWorkCollaborationServiceSource

- (BaseFileProvideriWorkCollaborationServiceSource)initWithItemIdentifier:(id)identifier operationQueue:(id)queue
{
  identifierCopy = identifier;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = BaseFileProvideriWorkCollaborationServiceSource;
  v9 = [(BaseFileProvideriWorkCollaborationServiceSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemIdentifier, identifier);
    objc_storeStrong(&v10->_operationQueue, queue);
    v11 = [NSHashTable hashTableWithOptions:0];
    listeners = v10->_listeners;
    v10->_listeners = v11;
  }

  return v10;
}

- (id)makeListenerEndpointAndReturnError:(id *)error
{
  v4 = +[NSXPCListener anonymousListener];
  [v4 setDelegate:self];
  endpoint = [v4 endpoint];
  [v4 resume];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_listeners addObject:v4];
  objc_sync_exit(selfCopy);

  return endpoint;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100026A54();
  }

  return 0;
}

@end