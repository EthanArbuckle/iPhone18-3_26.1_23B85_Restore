@interface SUUIReviewMetadata
- (SUUIReviewMetadata)initWithReviewDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUUIReviewMetadata

- (SUUIReviewMetadata)initWithReviewDictionary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = 0;
    goto LABEL_32;
  }

  v31.receiver = self;
  v31.super_class = SUUIReviewMetadata;
  v5 = [(SUUIReviewMetadata *)&v31 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"metadata"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_21:
      v18 = [v4 objectForKey:@"review-info"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v18 objectForKey:@"body"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [v19 copy];
          body = v5->_body;
          v5->_body = v20;
        }

        v22 = [v18 objectForKey:@"nickname"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [v22 copy];
          nickname = v5->_nickname;
          v5->_nickname = v23;
        }

        v25 = [v18 objectForKey:@"rating"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v25 floatValue];
          v5->_rating = v26;
        }

        v27 = [v18 objectForKey:@"title"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = [v27 copy];
          title = v5->_title;
          v5->_title = v28;
        }
      }

      goto LABEL_32;
    }

    v7 = [v6 objectForKey:@"body-max-length"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 unsignedIntegerValue];
      v5->_bodyMaxLength = v8;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else if (!v5->_bodyMaxLength)
    {
LABEL_9:
      v5->_bodyMaxLength = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9 = [v6 objectForKey:@"nickname-max-length"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 unsignedIntegerValue];
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      if (v10)
      {
        v11 = v10;
      }

      v5->_nicknameMaxLength = v11;
    }

    v12 = [v6 objectForKey:@"save-user-review-url"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v12];
      submitURL = v5->_submitURL;
      v5->_submitURL = v13;
    }

    v15 = [v6 objectForKey:@"title-max-length"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 unsignedIntegerValue];
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      if (v16)
      {
        v17 = v16;
      }

      v5->_titleMaxLength = v17;
    }

    goto LABEL_21;
  }

LABEL_32:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_body copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_bodyMaxLength;
  v8 = [(NSString *)self->_nickname copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 32) = self->_nicknameMaxLength;
  *(v5 + 40) = self->_rating;
  v10 = [(NSURL *)self->_submitURL copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_title copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  *(v5 + 64) = self->_titleMaxLength;
  return v5;
}

@end