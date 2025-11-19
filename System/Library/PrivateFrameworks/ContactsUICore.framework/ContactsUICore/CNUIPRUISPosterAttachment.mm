@interface CNUIPRUISPosterAttachment
- (CNUIPRUISPosterAttachment)initWithAttachment:(id)a3;
@end

@implementation CNUIPRUISPosterAttachment

- (CNUIPRUISPosterAttachment)initWithAttachment:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNUIPRUISPosterAttachment;
  v6 = [(CNUIPRUISPosterAttachment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attachment, a3);
  }

  return v7;
}

@end