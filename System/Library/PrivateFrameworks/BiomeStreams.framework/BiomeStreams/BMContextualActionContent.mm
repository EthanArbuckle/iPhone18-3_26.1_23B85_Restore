@interface BMContextualActionContent
- (BMContextualActionContent)initWithCoder:(id)coder;
- (BMContextualActionContent)initWithType:(id)type metadata:(id)metadata;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMContextualActionContent

- (BMContextualActionContent)initWithType:(id)type metadata:(id)metadata
{
  typeCopy = type;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = BMContextualActionContent;
  v9 = [(BMContextualActionContent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentType, type);
    objc_storeStrong(&v10->_contentMetadata, metadata);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  contentType = self->_contentType;
  coderCopy = coder;
  [coderCopy encodeObject:contentType forKey:@"contentType"];
  [coderCopy encodeObject:self->_contentMetadata forKey:@"contentMetadata"];
}

- (BMContextualActionContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"contentMetadata"];

  v14 = [(BMContextualActionContent *)self initWithType:v5 metadata:v13];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    contentType = [(BMContextualActionContent *)self contentType];
    if (contentType || ([v6 contentType], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      contentType2 = [(BMContextualActionContent *)self contentType];
      contentType3 = [v6 contentType];
      v10 = [contentType2 isEqual:contentType3];

      if (contentType)
      {
LABEL_9:

        contentMetadata = [(BMContextualActionContent *)self contentMetadata];
        if (contentMetadata || ([v6 contentMetadata], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          contentMetadata2 = [(BMContextualActionContent *)self contentMetadata];
          contentMetadata3 = [v6 contentMetadata];
          v15 = [contentMetadata2 isEqualToDictionary:contentMetadata3];

          if (contentMetadata)
          {
LABEL_15:

            v11 = v10 & v15;
            goto LABEL_16;
          }
        }

        else
        {
          v15 = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_9;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

@end