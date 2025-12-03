@interface SUUIReviewMetadata
- (SUUIReviewMetadata)initWithReviewDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SUUIReviewMetadata

- (SUUIReviewMetadata)initWithReviewDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
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
    v6 = [dictionaryCopy objectForKey:@"metadata"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_21:
      v18 = [dictionaryCopy objectForKey:@"review-info"];
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
      unsignedIntegerValue = [v7 unsignedIntegerValue];
      v5->_bodyMaxLength = unsignedIntegerValue;
      if (!unsignedIntegerValue)
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
      unsignedIntegerValue2 = [v9 unsignedIntegerValue];
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      if (unsignedIntegerValue2)
      {
        v11 = unsignedIntegerValue2;
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
      unsignedIntegerValue3 = [v15 unsignedIntegerValue];
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      if (unsignedIntegerValue3)
      {
        v17 = unsignedIntegerValue3;
      }

      v5->_titleMaxLength = v17;
    }

    goto LABEL_21;
  }

LABEL_32:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_body copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_bodyMaxLength;
  v8 = [(NSString *)self->_nickname copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 32) = self->_nicknameMaxLength;
  *(v5 + 40) = self->_rating;
  v10 = [(NSURL *)self->_submitURL copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_title copyWithZone:zone];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  *(v5 + 64) = self->_titleMaxLength;
  return v5;
}

@end