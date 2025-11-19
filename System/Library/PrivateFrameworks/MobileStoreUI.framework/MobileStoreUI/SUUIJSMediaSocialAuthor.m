@interface SUUIJSMediaSocialAuthor
- (SUUIJSMediaSocialAuthor)initWithSUUIMediaSocialAuthor:(id)a3;
@end

@implementation SUUIJSMediaSocialAuthor

- (SUUIJSMediaSocialAuthor)initWithSUUIMediaSocialAuthor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIJSMediaSocialAuthor;
  v6 = [(SUUIJSMediaSocialAuthor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaSocialAuthor, a3);
  }

  return v7;
}

@end