@interface BMContextualActionContent
- (BMContextualActionContent)initWithCoder:(id)a3;
- (BMContextualActionContent)initWithType:(id)a3 metadata:(id)a4;
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMContextualActionContent

- (BMContextualActionContent)initWithType:(id)a3 metadata:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BMContextualActionContent;
  v9 = [(BMContextualActionContent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentType, a3);
    objc_storeStrong(&v10->_contentMetadata, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  contentType = self->_contentType;
  v5 = a3;
  [v5 encodeObject:contentType forKey:@"contentType"];
  [v5 encodeObject:self->_contentMetadata forKey:@"contentMetadata"];
}

- (BMContextualActionContent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"contentMetadata"];

  v14 = [(BMContextualActionContent *)self initWithType:v5 metadata:v13];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(BMContextualActionContent *)self contentType];
    if (v7 || ([v6 contentType], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(BMContextualActionContent *)self contentType];
      v9 = [v6 contentType];
      v10 = [v8 isEqual:v9];

      if (v7)
      {
LABEL_9:

        v12 = [(BMContextualActionContent *)self contentMetadata];
        if (v12 || ([v6 contentMetadata], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v13 = [(BMContextualActionContent *)self contentMetadata];
          v14 = [v6 contentMetadata];
          v15 = [v13 isEqualToDictionary:v14];

          if (v12)
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