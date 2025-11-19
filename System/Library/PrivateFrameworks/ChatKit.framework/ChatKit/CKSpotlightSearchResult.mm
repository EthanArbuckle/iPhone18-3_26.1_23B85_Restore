@interface CKSpotlightSearchResult
- (CKSpotlightSearchResult)initWithMessageGUID:(id)a3 chatGUID:(id)a4 messageTime:(id)a5 summery:(id)a6;
- (int64_t)compare:(id)a3;
@end

@implementation CKSpotlightSearchResult

- (CKSpotlightSearchResult)initWithMessageGUID:(id)a3 chatGUID:(id)a4 messageTime:(id)a5 summery:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CKSpotlightSearchResult;
  v14 = [(CKSpotlightSearchResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(CKSpotlightSearchResult *)v14 setSummary:v13];
    [(CKSpotlightSearchResult *)v15 setMessageDate:v12];
    [(CKSpotlightSearchResult *)v15 setMessageGUID:v10];
    [(CKSpotlightSearchResult *)v15 setChatGUID:v11];
  }

  return v15;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(CKSpotlightSearchResult *)self messageDate];
  if (v5 && (v6 = v5, [v4 messageDate], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [(CKSpotlightSearchResult *)self messageDate];
    v9 = [v4 messageDate];
    v10 = [v8 compare:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end