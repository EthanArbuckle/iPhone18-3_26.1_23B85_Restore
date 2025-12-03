@interface MFMailWebProcessPlugin
+ (void)initialize;
- (BOOL)isMailPrivacyProtectionAllowed;
- (MFMailWebProcessPlugin)init;
- (NSString)remoteContentNoProxySchemePrefix;
- (NSString)remoteContentProxySchemePrefix;
- (void)webProcessPlugIn:(id)in didCreateBrowserContextController:(id)controller;
- (void)webProcessPlugIn:(id)in willDestroyBrowserContextController:(id)controller;
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
  parameters = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [parameters valueForKey:@"remoteContentProxySchemePrefix"];

  return v3;
}

- (NSString)remoteContentNoProxySchemePrefix
{
  parameters = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [parameters valueForKey:@"remoteContentNoProxySchemePrefix"];

  return v3;
}

- (BOOL)isMailPrivacyProtectionAllowed
{
  parameters = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [parameters valueForKey:@"isMailPrivacyProtectionAllowed"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)webProcessPlugIn:(id)in didCreateBrowserContextController:(id)controller
{
  controllerCopy = controller;
  v5 = [[MFMailWebProcessPlugInPageController alloc] initWithPlugIn:self contextController:controllerCopy];
  [(NSMapTable *)self->_pageControllersByContext setObject:v5 forKey:controllerCopy];
}

- (void)webProcessPlugIn:(id)in willDestroyBrowserContextController:(id)controller
{
  controllerCopy = controller;
  v5 = [(NSMapTable *)self->_pageControllersByContext objectForKey:?];
  [v5 invalidate];
  [(NSMapTable *)self->_pageControllersByContext removeObjectForKey:controllerCopy];
}

@end