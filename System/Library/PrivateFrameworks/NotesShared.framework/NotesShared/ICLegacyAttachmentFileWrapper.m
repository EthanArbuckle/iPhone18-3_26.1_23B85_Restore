@interface ICLegacyAttachmentFileWrapper
- (ICLegacyAttachmentFileWrapper)initWithCIDURL:(id)a3;
- (ICLegacyAttachmentFileWrapper)initWithCoder:(id)a3;
- (NSString)attachmentIdentifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICLegacyAttachmentFileWrapper

- (ICLegacyAttachmentFileWrapper)initWithCIDURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICLegacyAttachmentFileWrapper;
  v5 = [(ICLegacyAttachmentFileWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICLegacyAttachmentFileWrapper *)v5 setCidURL:v4];
  }

  return v6;
}

- (ICLegacyAttachmentFileWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cidURL"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ICLegacyAttachmentFileWrapper *)self initWithCIDURL:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if ([v5 allowsKeyedCoding])
  {
    v4 = [(ICLegacyAttachmentFileWrapper *)self cidURL];
    [v5 encodeObject:v4 forKey:@"cidURL"];
  }
}

- (NSString)attachmentIdentifier
{
  v2 = [(ICLegacyAttachmentFileWrapper *)self cidURL];
  v3 = [v2 resourceSpecifier];
  v4 = [v3 ic_md5];

  return v4;
}

@end