@interface CKSpotlightSearchResult
- (CKSpotlightSearchResult)initWithMessageGUID:(id)d chatGUID:(id)iD messageTime:(id)time summery:(id)summery;
- (int64_t)compare:(id)compare;
@end

@implementation CKSpotlightSearchResult

- (CKSpotlightSearchResult)initWithMessageGUID:(id)d chatGUID:(id)iD messageTime:(id)time summery:(id)summery
{
  dCopy = d;
  iDCopy = iD;
  timeCopy = time;
  summeryCopy = summery;
  v17.receiver = self;
  v17.super_class = CKSpotlightSearchResult;
  v14 = [(CKSpotlightSearchResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(CKSpotlightSearchResult *)v14 setSummary:summeryCopy];
    [(CKSpotlightSearchResult *)v15 setMessageDate:timeCopy];
    [(CKSpotlightSearchResult *)v15 setMessageGUID:dCopy];
    [(CKSpotlightSearchResult *)v15 setChatGUID:iDCopy];
  }

  return v15;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  messageDate = [(CKSpotlightSearchResult *)self messageDate];
  if (messageDate && (v6 = messageDate, [compareCopy messageDate], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    messageDate2 = [(CKSpotlightSearchResult *)self messageDate];
    messageDate3 = [compareCopy messageDate];
    v10 = [messageDate2 compare:messageDate3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end