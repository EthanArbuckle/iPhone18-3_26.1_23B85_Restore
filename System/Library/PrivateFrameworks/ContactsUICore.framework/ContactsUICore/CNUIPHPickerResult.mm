@interface CNUIPHPickerResult
- (CNUIPHPickerResult)initWithWrappedResult:(id)result;
- (NSString)assetID;
@end

@implementation CNUIPHPickerResult

- (CNUIPHPickerResult)initWithWrappedResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = CNUIPHPickerResult;
  v6 = [(CNUIPHPickerResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedResult, result);
  }

  return v7;
}

- (NSString)assetID
{
  v3 = getPHObjectClass[0]();
  assetIdentifier = [(PHPickerResult *)self->_wrappedResult assetIdentifier];
  v5 = [(objc_class *)v3 uuidFromLocalIdentifier:assetIdentifier];

  return v5;
}

@end