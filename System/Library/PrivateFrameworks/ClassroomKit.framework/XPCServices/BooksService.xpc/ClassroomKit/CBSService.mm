@interface CBSService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CBSService)init;
- (int)run;
@end

@implementation CBSService

- (CBSService)init
{
  v6.receiver = self;
  v6.super_class = CBSService;
  v2 = [(CBSService *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mRequestServicer = v2->mRequestServicer;
    v2->mRequestServicer = v3;
  }

  return v2;
}

- (int)run
{
  v3 = +[NSXPCListener serviceListener];
  [v3 setDelegate:self];
  [v3 resume];

  return 0;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.ClassroomKit.BooksService-access"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    [connectionCopy setExportedObject:self->mRequestServicer];
    v8 = CRKBooksServiceXPCInterface();
    [connectionCopy setExportedInterface:v8];

    [connectionCopy resume];
  }

  else
  {
    if (qword_100011EA8 != -1)
    {
      sub_100005218();
    }

    v9 = qword_100011EA0;
    if (os_log_type_enabled(qword_100011EA0, OS_LOG_TYPE_ERROR))
    {
      sub_10000522C(v9, connectionCopy);
    }
  }

  return bOOLValue;
}

@end