@interface MSAttachmentInfo
- (MSAttachmentInfo)initWithCoder:(id)coder;
- (MSAttachmentInfo)initWithURL:(id)l filename:(id)filename;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSAttachmentInfo

- (MSAttachmentInfo)initWithURL:(id)l filename:(id)filename
{
  lCopy = l;
  filenameCopy = filename;
  v12.receiver = self;
  v12.super_class = MSAttachmentInfo;
  v9 = [(MSAttachmentInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_filename, filename);
  }

  return v10;
}

- (MSAttachmentInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MSAttachmentInfo;
  v5 = [(MSAttachmentInfo *)&v12 init];
  if (v5)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_filename"];
    filename = v5->_filename;
    v5->_filename = v8;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_url)
  {
    v4 = [(MSAttachmentInfo *)self url];
    [coderCopy encodeObject:v4 forKey:@"EFPropertyKey_url"];
  }

  if (self->_filename)
  {
    filename = [(MSAttachmentInfo *)self filename];
    [coderCopy encodeObject:filename forKey:@"EFPropertyKey_filename"];
  }
}

@end