@interface HKFHIRAttachmentContent
- (BOOL)isEqual:(id)a3;
- (HKFHIRAttachmentContent)initWithCoder:(id)a3;
- (HKFHIRAttachmentContent)initWithContent:(id)a3 contentType:(id)a4;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFHIRAttachmentContent

- (HKFHIRAttachmentContent)initWithContent:(id)a3 contentType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKFHIRAttachmentContent;
  v8 = [(HKFHIRAttachmentContent *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    content = v8->_content;
    v8->_content = v9;

    v11 = [v7 copy];
    contentType = v8->_contentType;
    v8->_contentType = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      content = self->_content;
      v9 = [(HKFHIRAttachmentContent *)v7 content];
      if (content == v9)
      {
        goto LABEL_9;
      }

      v10 = [(HKFHIRAttachmentContent *)v7 content];
      if (!v10)
      {
        v12 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v3 = v10;
      v11 = self->_content;
      v4 = [(HKFHIRAttachmentContent *)v7 content];
      if ([(NSData *)v11 isEqual:v4])
      {
LABEL_9:
        contentType = self->_contentType;
        v14 = [(HKFHIRAttachmentContent *)v7 contentType];
        v15 = v14;
        if (contentType == v14)
        {

          v12 = 1;
        }

        else
        {
          v16 = [(HKFHIRAttachmentContent *)v7 contentType];
          if (v16)
          {
            v17 = v16;
            v18 = self->_contentType;
            v19 = [(HKFHIRAttachmentContent *)v7 contentType];
            v12 = [(NSString *)v18 isEqualToString:v19];
          }

          else
          {

            v12 = 0;
          }
        }

        if (content == v9)
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

- (HKFHIRAttachmentContent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Content"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ContentType"];

  v7 = [(HKFHIRAttachmentContent *)self initWithContent:v5 contentType:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  content = self->_content;
  v5 = a3;
  [v5 encodeObject:content forKey:@"Content"];
  [v5 encodeObject:self->_contentType forKey:@"ContentType"];
}

@end