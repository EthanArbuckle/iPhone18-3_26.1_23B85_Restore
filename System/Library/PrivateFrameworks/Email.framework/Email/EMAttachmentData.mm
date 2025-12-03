@interface EMAttachmentData
+ (id)attachmentWithURL:(id)l displayName:(id)name;
- (EMAttachmentData)initWithCoder:(id)coder;
- (EMAttachmentData)initWithURL:(id)l displayName:(id)name;
- (NSString)ef_publicDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMAttachmentData

+ (id)attachmentWithURL:(id)l displayName:(id)name
{
  lCopy = l;
  nameCopy = name;
  v8 = [[self alloc] initWithURL:lCopy displayName:nameCopy];

  return v8;
}

- (EMAttachmentData)initWithURL:(id)l displayName:(id)name
{
  lCopy = l;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = EMAttachmentData;
  v9 = [(EMAttachmentData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_displayName, name);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(EMAttachmentData *)self url];
  [coderCopy encodeObject:v4 forKey:@"EFPropertyKey_url"];

  displayName = [(EMAttachmentData *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"EFPropertyKey_displayName"];
}

- (EMAttachmentData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = EMAttachmentData;
  v5 = [(EMAttachmentData *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;
  }

  return v5;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  url = self->_url;
  v6 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:self->_displayName];
  v7 = [v3 stringWithFormat:@"<%@: %p> (%@, %@)", v4, self, url, v6];

  return v7;
}

@end