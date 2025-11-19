@interface CBSService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.ClassroomKit.BooksService-access"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    [v5 setExportedObject:self->mRequestServicer];
    v8 = CRKBooksServiceXPCInterface();
    [v5 setExportedInterface:v8];

    [v5 resume];
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
      sub_10000522C(v9, v5);
    }
  }

  return v7;
}

@end