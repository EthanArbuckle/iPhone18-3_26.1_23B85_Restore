@interface EMAttachmentData
+ (id)attachmentWithURL:(id)a3 displayName:(id)a4;
- (EMAttachmentData)initWithCoder:(id)a3;
- (EMAttachmentData)initWithURL:(id)a3 displayName:(id)a4;
- (NSString)ef_publicDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMAttachmentData

+ (id)attachmentWithURL:(id)a3 displayName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initWithURL:v6 displayName:v7];

  return v8;
}

- (EMAttachmentData)initWithURL:(id)a3 displayName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EMAttachmentData;
  v9 = [(EMAttachmentData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    objc_storeStrong(&v10->_displayName, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(EMAttachmentData *)self url];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_url"];

  v5 = [(EMAttachmentData *)self displayName];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_displayName"];
}

- (EMAttachmentData)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EMAttachmentData;
  v5 = [(EMAttachmentData *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_displayName"];
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