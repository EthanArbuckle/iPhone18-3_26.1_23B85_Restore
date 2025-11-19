@interface HFMediaAccessoryItemUpdateResponse
- (HFMediaAccessoryItemUpdateResponse)initWithDisplayMetadata:(id)a3 standardResults:(id)a4;
@end

@implementation HFMediaAccessoryItemUpdateResponse

- (HFMediaAccessoryItemUpdateResponse)initWithDisplayMetadata:(id)a3 standardResults:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFMediaAccessoryItemUpdateResponse;
  v9 = [(HFMediaAccessoryItemUpdateResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayMetadata, a3);
    objc_storeStrong(&v10->_standardResults, a4);
  }

  return v10;
}

@end