@interface ICInvitation(App)
- (id)highlight;
@end

@implementation ICInvitation(App)

- (id)highlight
{
  v2 = +[ICSharedWithYouController sharedController];
  v3 = [a1 shareURL];
  v4 = [v2 highlightForURL:v3];

  return v4;
}

@end