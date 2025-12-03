@interface ICInvitation(App)
- (id)highlight;
@end

@implementation ICInvitation(App)

- (id)highlight
{
  v2 = +[ICSharedWithYouController sharedController];
  shareURL = [self shareURL];
  v4 = [v2 highlightForURL:shareURL];

  return v4;
}

@end