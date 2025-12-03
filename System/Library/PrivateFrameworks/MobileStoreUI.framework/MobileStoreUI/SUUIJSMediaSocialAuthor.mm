@interface SUUIJSMediaSocialAuthor
- (SUUIJSMediaSocialAuthor)initWithSUUIMediaSocialAuthor:(id)author;
@end

@implementation SUUIJSMediaSocialAuthor

- (SUUIJSMediaSocialAuthor)initWithSUUIMediaSocialAuthor:(id)author
{
  authorCopy = author;
  v9.receiver = self;
  v9.super_class = SUUIJSMediaSocialAuthor;
  v6 = [(SUUIJSMediaSocialAuthor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaSocialAuthor, author);
  }

  return v7;
}

@end