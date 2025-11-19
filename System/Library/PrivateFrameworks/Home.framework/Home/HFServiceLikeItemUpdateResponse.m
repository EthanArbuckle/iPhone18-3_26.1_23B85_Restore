@interface HFServiceLikeItemUpdateResponse
- (HFServiceLikeItemUpdateResponse)initWithDisplayMetadata:(id)a3 readResponse:(id)a4 standardResults:(id)a5;
@end

@implementation HFServiceLikeItemUpdateResponse

- (HFServiceLikeItemUpdateResponse)initWithDisplayMetadata:(id)a3 readResponse:(id)a4 standardResults:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HFServiceLikeItemUpdateResponse;
  v12 = [(HFServiceLikeItemUpdateResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_displayMetadata, a3);
    objc_storeStrong(&v13->_readResponse, a4);
    objc_storeStrong(&v13->_standardResults, a5);
  }

  return v13;
}

@end