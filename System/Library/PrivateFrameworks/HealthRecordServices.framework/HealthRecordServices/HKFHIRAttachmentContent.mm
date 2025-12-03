@interface HKFHIRAttachmentContent
- (BOOL)isEqual:(id)equal;
- (HKFHIRAttachmentContent)initWithCoder:(id)coder;
- (HKFHIRAttachmentContent)initWithContent:(id)content contentType:(id)type;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFHIRAttachmentContent

- (HKFHIRAttachmentContent)initWithContent:(id)content contentType:(id)type
{
  contentCopy = content;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = HKFHIRAttachmentContent;
  v8 = [(HKFHIRAttachmentContent *)&v14 init];
  if (v8)
  {
    v9 = [contentCopy copy];
    content = v8->_content;
    v8->_content = v9;

    v11 = [typeCopy copy];
    contentType = v8->_contentType;
    v8->_contentType = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      content = self->_content;
      content = [(HKFHIRAttachmentContent *)v7 content];
      if (content == content)
      {
        goto LABEL_9;
      }

      content2 = [(HKFHIRAttachmentContent *)v7 content];
      if (!content2)
      {
        v12 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v3 = content2;
      v11 = self->_content;
      content3 = [(HKFHIRAttachmentContent *)v7 content];
      if ([(NSData *)v11 isEqual:content3])
      {
LABEL_9:
        contentType = self->_contentType;
        contentType = [(HKFHIRAttachmentContent *)v7 contentType];
        v15 = contentType;
        if (contentType == contentType)
        {

          v12 = 1;
        }

        else
        {
          contentType2 = [(HKFHIRAttachmentContent *)v7 contentType];
          if (contentType2)
          {
            v17 = contentType2;
            v18 = self->_contentType;
            contentType3 = [(HKFHIRAttachmentContent *)v7 contentType];
            v12 = [(NSString *)v18 isEqualToString:contentType3];
          }

          else
          {

            v12 = 0;
          }
        }

        if (content == content)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_18:

  return v12;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p, attachment contentType %@ items>", v5, self, self->_contentType];

  return v6;
}

- (HKFHIRAttachmentContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Content"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContentType"];

  v7 = [(HKFHIRAttachmentContent *)self initWithContent:v5 contentType:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  content = self->_content;
  coderCopy = coder;
  [coderCopy encodeObject:content forKey:@"Content"];
  [coderCopy encodeObject:self->_contentType forKey:@"ContentType"];
}

@end