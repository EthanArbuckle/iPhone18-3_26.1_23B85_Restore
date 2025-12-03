@interface ICLegacyAttachmentFileWrapper
- (ICLegacyAttachmentFileWrapper)initWithCIDURL:(id)l;
- (ICLegacyAttachmentFileWrapper)initWithCoder:(id)coder;
- (NSString)attachmentIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICLegacyAttachmentFileWrapper

- (ICLegacyAttachmentFileWrapper)initWithCIDURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = ICLegacyAttachmentFileWrapper;
  v5 = [(ICLegacyAttachmentFileWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICLegacyAttachmentFileWrapper *)v5 setCidURL:lCopy];
  }

  return v6;
}

- (ICLegacyAttachmentFileWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cidURL"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ICLegacyAttachmentFileWrapper *)self initWithCIDURL:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    cidURL = [(ICLegacyAttachmentFileWrapper *)self cidURL];
    [coderCopy encodeObject:cidURL forKey:@"cidURL"];
  }
}

- (NSString)attachmentIdentifier
{
  cidURL = [(ICLegacyAttachmentFileWrapper *)self cidURL];
  resourceSpecifier = [cidURL resourceSpecifier];
  ic_md5 = [resourceSpecifier ic_md5];

  return ic_md5;
}

@end