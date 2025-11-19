@interface DDRemotePersonViewControllerProvider
- (void)createViewControllerWithCompletionHandler:(id)a3;
@end

@implementation DDRemotePersonViewControllerProvider

- (void)createViewControllerWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DDRemotePersonViewControllerProvider *)self actionContext];
  v6 = [v5 createContact:0];

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

  v4[2](v4, v8);
}

@end