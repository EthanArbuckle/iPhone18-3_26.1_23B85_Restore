@interface DDRemotePersonViewControllerProvider
- (void)createViewControllerWithCompletionHandler:(id)handler;
@end

@implementation DDRemotePersonViewControllerProvider

- (void)createViewControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  actionContext = [(DDRemotePersonViewControllerProvider *)self actionContext];
  v6 = [actionContext createContact:0];

  if (v6)
  {
    v9 = v6;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
    v8 = [CNAvatarCardController previewHeaderViewControllerForContacts:v7];
  }

  else
  {
    v8 = 0;
  }

  handlerCopy[2](handlerCopy, v8);
}

@end