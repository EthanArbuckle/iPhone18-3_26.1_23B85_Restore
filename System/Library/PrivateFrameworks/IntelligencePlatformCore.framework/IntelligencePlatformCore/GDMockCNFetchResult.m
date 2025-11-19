@interface GDMockCNFetchResult
- (GDMockCNFetchResult)initWithValue:(id)a3 currentHistoryToken:(id)a4;
@end

@implementation GDMockCNFetchResult

- (GDMockCNFetchResult)initWithValue:(id)a3 currentHistoryToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GDMockCNFetchResult;
  v9 = [(GDMockCNFetchResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, a3);
    objc_storeStrong(&v10->_currentHistoryToken, a4);
  }

  return v10;
}

@end