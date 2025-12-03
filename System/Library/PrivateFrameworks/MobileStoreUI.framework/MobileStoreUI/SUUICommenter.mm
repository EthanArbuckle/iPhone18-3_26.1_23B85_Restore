@interface SUUICommenter
- (SUUICommenter)initWithAuthor:(id)author;
@end

@implementation SUUICommenter

- (SUUICommenter)initWithAuthor:(id)author
{
  authorCopy = author;
  v11.receiver = self;
  v11.super_class = SUUICommenter;
  v5 = [(SUUICommenter *)&v11 init];
  if (v5)
  {
    thumbnailImageURL = [authorCopy thumbnailImageURL];
    [(SUUIMediaSocialAuthor *)v5 setThumbnailImageURL:thumbnailImageURL];

    name = [authorCopy name];
    [(SUUIMediaSocialAuthor *)v5 setName:name];

    authorType = [authorCopy authorType];
    [(SUUIMediaSocialAuthor *)v5 setAuthorType:authorType];

    identifier = [authorCopy identifier];
    [(SUUIMediaSocialAuthor *)v5 setIdentifier:identifier];
  }

  return v5;
}

@end