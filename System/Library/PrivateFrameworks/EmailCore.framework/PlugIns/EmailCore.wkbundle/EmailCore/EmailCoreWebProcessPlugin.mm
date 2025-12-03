@interface EmailCoreWebProcessPlugin
- (EmailCoreWebProcessPlugin)init;
- (void)webProcessPlugIn:(id)in didCreateBrowserContextController:(id)controller;
- (void)webProcessPlugIn:(id)in willDestroyBrowserContextController:(id)controller;
@end

@implementation EmailCoreWebProcessPlugin

- (EmailCoreWebProcessPlugin)init
{
  v6.receiver = self;
  v6.super_class = EmailCoreWebProcessPlugin;
  v2 = [(EmailCoreWebProcessPlugin *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    pageControllersByContext = v2->_pageControllersByContext;
    v2->_pageControllersByContext = v3;
  }

  return v2;
}

- (void)webProcessPlugIn:(id)in didCreateBrowserContextController:(id)controller
{
  controllerCopy = controller;
  v5 = [[ECBundlePageController_iOS alloc] initWithPlugIn:self contextController:controllerCopy];
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