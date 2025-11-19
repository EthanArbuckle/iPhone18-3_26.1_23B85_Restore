@interface BaseFileProviderShareOperationServiceSource
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BaseFileProviderShareOperationServiceSource)initWithItemIdentifier:(id)a3 operationQueue:(id)a4;
- (id)makeListenerEndpointAndReturnError:(id *)a3;
@end

@implementation BaseFileProviderShareOperationServiceSource

- (BaseFileProviderShareOperationServiceSource)initWithItemIdentifier:(id)a3 operationQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BaseFileProviderShareOperationServiceSource;
  v9 = [(BaseFileProviderShareOperationServiceSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemIdentifier, a3);
    objc_storeStrong(&v10->_operationQueue, a4);
    v11 = [NSHashTable hashTableWithOptions:0];
    listeners = v10->_listeners;
    v10->_listeners = v11;
  }

  return v10;
}

- (id)makeListenerEndpointAndReturnError:(id *)a3
{
  v4 = +[NSXPCListener anonymousListener];
  [v4 setDelegate:self];
  v5 = [v4 endpoint];
  [v4 resume];
  v6 = self;
  objc_sync_enter(v6);
  [(NSHashTable *)v6->_listeners addObject:v4];
  objc_sync_exit(v6);

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100026ACC(v4, v5);
  }

  return 0;
}

@end