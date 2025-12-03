@interface BDSBookWidgetInfoSource
+ (id)sharedServiceProxy;
- (BDSBookWidgetInfoSource)init;
- (void)getBookWidgetInfoWithLimit:(unint64_t)limit completionHandler:(id)handler;
@end

@implementation BDSBookWidgetInfoSource

+ (id)sharedServiceProxy
{
  if (qword_1EE2B04A8 != -1)
  {
    sub_1E4706258();
  }

  v3 = qword_1EE2B04D8;

  return v3;
}

- (BDSBookWidgetInfoSource)init
{
  v6.receiver = self;
  v6.super_class = BDSBookWidgetInfoSource;
  v2 = [(BDSBookWidgetInfoSource *)&v6 init];
  if (v2)
  {
    v3 = +[BDSBookWidgetInfoSource sharedServiceProxy];
    serviceProxy = v2->_serviceProxy;
    v2->_serviceProxy = v3;
  }

  return v2;
}

- (void)getBookWidgetInfoWithLimit:(unint64_t)limit completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = BDSServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "BDSBookWidgetInfoSource getBookWidgetDataWithLimit calling remote.", v9, 2u);
  }

  serviceProxy = [(BDSBookWidgetInfoSource *)self serviceProxy];
  [serviceProxy getBookWidgetInfoWithLimit:limit completion:handlerCopy];
}

@end