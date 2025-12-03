@interface CNUIPRUISPosterAttachment
- (CNUIPRUISPosterAttachment)initWithAttachment:(id)attachment;
@end

@implementation CNUIPRUISPosterAttachment

- (CNUIPRUISPosterAttachment)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v9.receiver = self;
  v9.super_class = CNUIPRUISPosterAttachment;
  v6 = [(CNUIPRUISPosterAttachment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attachment, attachment);
  }

  return v7;
}

@end