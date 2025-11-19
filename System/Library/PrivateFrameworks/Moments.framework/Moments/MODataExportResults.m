@interface MODataExportResults
- (MODataExportResults)initWithFilePath:(id)a3 kvPairs:(id)a4;
@end

@implementation MODataExportResults

- (MODataExportResults)initWithFilePath:(id)a3 kvPairs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MODataExportResults;
  v9 = [(MODataExportResults *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_filePath, a3);
    objc_storeStrong(&v10->_kvPairs, a4);
  }

  return v10;
}

@end