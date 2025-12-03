@interface SUUIPostRatingOperation
- (NSDictionary)responseDictionary;
- (SUUIPostRatingOperation)initWithRating:(int64_t)rating forItemID:(id)d reviewConfiguration:(id)configuration;
- (void)run;
@end

@implementation SUUIPostRatingOperation

- (SUUIPostRatingOperation)initWithRating:(int64_t)rating forItemID:(id)d reviewConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = SUUIPostRatingOperation;
  v9 = [(SUUIPostRatingOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_rating = rating;
    v11 = [(NSString *)v9->_itemID copy];
    itemID = v10->_itemID;
    v10->_itemID = v11;

    objc_storeStrong(&v10->_reviewConfiguration, configuration);
  }

  return v10;
}

- (NSDictionary)responseDictionary
{
  [(SUUIPostRatingOperation *)self lock];
  v3 = self->_responseDictionary;
  [(SUUIPostRatingOperation *)self unlock];

  return v3;
}

- (void)run
{
  ratingURLString = [(SUUIReviewConfiguration *)self->_reviewConfiguration ratingURLString];
  if (!ratingURLString)
  {
    ratingURLString = [MEMORY[0x277CCACA8] stringWithFormat:@"https://userpub.itunes.apple.com/WebObjects/MZUserPublishing.woa/wa/userRateContent?displayable-kind=11&id=%@", self->_itemID];
  }

  v4 = [MEMORY[0x277CBEBC0] URLWithString:ratingURLString];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", self->_rating];
  v6 = [v4 URLByAppendingQueryParameter:@"rating" value:v5];

  v7 = objc_alloc_init(MEMORY[0x277D7FD48]);
  v8 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURL:v6];
  [v8 setAllowedRetryCount:0];
  [v8 setCachePolicy:1];
  [v8 setHTTPMethod:@"POST"];
  [v7 setRequestProperties:v8];
  v9 = +[(ISDataProvider *)SUUIRatingResponseProvider];
  [v9 setShouldProcessDialogs:1];
  [v9 setShouldProcessDialogsOutsideDaemon:1];
  [v7 setDataProvider:v9];
  v17 = 0;
  v10 = [(SUUIPostRatingOperation *)self runSubOperation:v7 returningError:&v17];
  v11 = v17;
  if (v10)
  {
    output = [v9 output];
    v13 = [output objectForKey:@"status-code"];
    objc_opt_class();
    v14 = (objc_opt_isKindOfClass() & 1) != 0 && [v13 integerValue] == 3200;
    [(SUUIPostRatingOperation *)self lock];
    v15 = [output copy];
    responseDictionary = self->_responseDictionary;
    self->_responseDictionary = v15;

    [(SUUIPostRatingOperation *)self unlock];
  }

  else
  {
    v14 = 0;
  }

  [(SUUIPostRatingOperation *)self setError:v11];
  [(SUUIPostRatingOperation *)self setSuccess:v14];
}

@end