@interface HFServiceLikeItemUpdateResponse
- (HFServiceLikeItemUpdateResponse)initWithDisplayMetadata:(id)metadata readResponse:(id)response standardResults:(id)results;
@end

@implementation HFServiceLikeItemUpdateResponse

- (HFServiceLikeItemUpdateResponse)initWithDisplayMetadata:(id)metadata readResponse:(id)response standardResults:(id)results
{
  metadataCopy = metadata;
  responseCopy = response;
  resultsCopy = results;
  v15.receiver = self;
  v15.super_class = HFServiceLikeItemUpdateResponse;
  v12 = [(HFServiceLikeItemUpdateResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_displayMetadata, metadata);
    objc_storeStrong(&v13->_readResponse, response);
    objc_storeStrong(&v13->_standardResults, results);
  }

  return v13;
}

@end