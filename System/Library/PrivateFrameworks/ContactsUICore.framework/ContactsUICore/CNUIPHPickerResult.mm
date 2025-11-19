@interface CNUIPHPickerResult
- (CNUIPHPickerResult)initWithWrappedResult:(id)a3;
- (NSString)assetID;
@end

@implementation CNUIPHPickerResult

- (CNUIPHPickerResult)initWithWrappedResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNUIPHPickerResult;
  v6 = [(CNUIPHPickerResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedResult, a3);
  }

  return v7;
}

- (NSString)assetID
{
  v3 = getPHObjectClass[0]();
  v4 = [(PHPickerResult *)self->_wrappedResult assetIdentifier];
  v5 = [(objc_class *)v3 uuidFromLocalIdentifier:v4];

  return v5;
}

@end