@interface HFMediaAccessoryItemUpdateResponse
- (HFMediaAccessoryItemUpdateResponse)initWithDisplayMetadata:(id)metadata standardResults:(id)results;
@end

@implementation HFMediaAccessoryItemUpdateResponse

- (HFMediaAccessoryItemUpdateResponse)initWithDisplayMetadata:(id)metadata standardResults:(id)results
{
  metadataCopy = metadata;
  resultsCopy = results;
  v12.receiver = self;
  v12.super_class = HFMediaAccessoryItemUpdateResponse;
  v9 = [(HFMediaAccessoryItemUpdateResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayMetadata, metadata);
    objc_storeStrong(&v10->_standardResults, results);
  }

  return v10;
}

@end