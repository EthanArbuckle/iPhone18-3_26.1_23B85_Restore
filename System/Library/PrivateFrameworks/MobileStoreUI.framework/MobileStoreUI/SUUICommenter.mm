@interface SUUICommenter
- (SUUICommenter)initWithAuthor:(id)a3;
@end

@implementation SUUICommenter

- (SUUICommenter)initWithAuthor:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SUUICommenter;
  v5 = [(SUUICommenter *)&v11 init];
  if (v5)
  {
    v6 = [v4 thumbnailImageURL];
    [(SUUIMediaSocialAuthor *)v5 setThumbnailImageURL:v6];

    v7 = [v4 name];
    [(SUUIMediaSocialAuthor *)v5 setName:v7];

    v8 = [v4 authorType];
    [(SUUIMediaSocialAuthor *)v5 setAuthorType:v8];

    v9 = [v4 identifier];
    [(SUUIMediaSocialAuthor *)v5 setIdentifier:v9];
  }

  return v5;
}

@end