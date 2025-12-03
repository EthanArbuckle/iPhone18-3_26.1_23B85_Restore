@interface GDMockCNFetchResult
- (GDMockCNFetchResult)initWithValue:(id)value currentHistoryToken:(id)token;
@end

@implementation GDMockCNFetchResult

- (GDMockCNFetchResult)initWithValue:(id)value currentHistoryToken:(id)token
{
  valueCopy = value;
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = GDMockCNFetchResult;
  v9 = [(GDMockCNFetchResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, value);
    objc_storeStrong(&v10->_currentHistoryToken, token);
  }

  return v10;
}

@end