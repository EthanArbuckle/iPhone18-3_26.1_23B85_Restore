@interface MFMailWebProcessPlugin
+ (void)initialize;
- (BOOL)isMailPrivacyProtectionAllowed;
- (MFMailWebProcessPlugin)init;
- (NSString)remoteContentNoProxySchemePrefix;
- (NSString)remoteContentProxySchemePrefix;
- (void)webProcessPlugIn:(id)a3 didCreateBrowserContextController:(id)a4;
- (void)webProcessPlugIn:(id)a3 willDestroyBrowserContextController:(id)a4;
@end

@implementation MFMailWebProcessPlugin

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    signal(30, (&dword_0 + 1));
    v3 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, &_dispatch_main_q);
    v4 = qword_D530;
    qword_D530 = v3;

    dispatch_source_set_event_handler(qword_D530, &stru_82F0);
    v5 = qword_D530;

    dispatch_resume(v5);
  }
}

- (MFMailWebProcessPlugin)init
{
  v6.receiver = self;
  v6.super_class = MFMailWebProcessPlugin;
  v2 = [(MFMailWebProcessPlugin *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    pageControllersByContext = v2->_pageControllersByContext;
    v2->_pageControllersByContext = v3;
  }

  return v2;
}

- (NSString)remoteContentProxySchemePrefix
{
  v2 = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [v2 valueForKey:@"remoteContentProxySchemePrefix"];

  return v3;
}

- (NSString)remoteContentNoProxySchemePrefix
{
  v2 = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [v2 valueForKey:@"remoteContentNoProxySchemePrefix"];

  return v3;
}

- (BOOL)isMailPrivacyProtectionAllowed
{
  v2 = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [v2 valueForKey:@"isMailPrivacyProtectionAllowed"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)webProcessPlugIn:(id)a3 didCreateBrowserContextController:(id)a4
{
  v6 = a4;
  v5 = [[MFMailWebProcessPlugInPageController alloc] initWithPlugIn:self contextController:v6];
  [(NSMapTable *)self->_pageControllersByContext setObject:v5 forKey:v6];
}

- (void)webProcessPlugIn:(id)a3 willDestroyBrowserContextController:(id)a4
{
  v6 = a4;
  v5 = [(NSMapTable *)self->_pageControllersByContext objectForKey:?];
  [v5 invalidate];
  [(NSMapTable *)self->_pageControllersByContext removeObjectForKey:v6];
}

@end