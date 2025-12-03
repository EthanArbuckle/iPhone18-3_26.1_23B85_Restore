@interface SUUIPostReviewOperation
- (NSDictionary)responseDictionary;
- (SUUIPostReviewOperation)initWithReviewMetadata:(id)metadata;
- (id)_httpBody;
- (void)run;
@end

@implementation SUUIPostReviewOperation

- (SUUIPostReviewOperation)initWithReviewMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9.receiver = self;
  v9.super_class = SUUIPostReviewOperation;
  v5 = [(SUUIPostReviewOperation *)&v9 init];
  if (v5)
  {
    v6 = [metadataCopy copy];
    review = v5->_review;
    v5->_review = v6;
  }

  return v5;
}

- (NSDictionary)responseDictionary
{
  [(SUUIPostReviewOperation *)self lock];
  v3 = self->_responseDictionary;
  [(SUUIPostReviewOperation *)self unlock];

  return v3;
}

- (void)run
{
  v3 = objc_alloc_init(MEMORY[0x277D7FD48]);
  v4 = objc_alloc(MEMORY[0x277D69BD0]);
  submitURL = [(SUUIReviewMetadata *)self->_review submitURL];
  v6 = [v4 initWithURL:submitURL];

  [v6 setAllowedRetryCount:0];
  [v6 setCachePolicy:1];
  _httpBody = [(SUUIPostReviewOperation *)self _httpBody];
  [v6 setHTTPBody:_httpBody];

  [v6 setHTTPMethod:@"POST"];
  [v3 setRequestProperties:v6];
  provider = [MEMORY[0x277D7FD30] provider];
  [provider setShouldProcessDialogs:0];
  [v3 setDataProvider:provider];
  v16 = 0;
  v9 = [(SUUIPostReviewOperation *)self runSubOperation:v3 returningError:&v16];
  v10 = v16;
  v11 = 0;
  if (v9)
  {
    output = [provider output];
    v13 = [output objectForKey:@"status-code"];
    objc_opt_class();
    v11 = (objc_opt_isKindOfClass() & 1) != 0 && [v13 integerValue] == 3200;
    [(SUUIPostReviewOperation *)self lock];
    v14 = [output copy];
    responseDictionary = self->_responseDictionary;
    self->_responseDictionary = v14;

    [(SUUIPostReviewOperation *)self unlock];
  }

  [(SUUIPostReviewOperation *)self setError:v10];
  [(SUUIPostReviewOperation *)self setSuccess:v11];
}

- (id)_httpBody
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = MEMORY[0x277CCACA8];
  [(SUUIReviewMetadata *)self->_review rating];
  v6 = [v4 stringWithFormat:@"%.2f", v5];
  [v3 setObject:v6 forKey:@"rating"];

  body = [(SUUIReviewMetadata *)self->_review body];
  if ([body length])
  {
    [v3 setObject:body forKey:@"body"];
  }

  mEMORY[0x277D7FCE0] = [MEMORY[0x277D7FCE0] sharedInstance];
  guid = [mEMORY[0x277D7FCE0] guid];

  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  nickname = [(SUUIReviewMetadata *)self->_review nickname];

  if ([nickname length])
  {
    [v3 setObject:nickname forKey:@"nickname"];
  }

  title = [(SUUIReviewMetadata *)self->_review title];

  if ([title length])
  {
    [v3 setObject:title forKey:@"title"];
  }

  v12 = [MEMORY[0x277CBEBC0] queryStringForDictionary:v3 escapedValues:1];
  v13 = [v12 dataUsingEncoding:4];

  return v13;
}

@end