@interface MODataExportResults
- (MODataExportResults)initWithFilePath:(id)path kvPairs:(id)pairs;
@end

@implementation MODataExportResults

- (MODataExportResults)initWithFilePath:(id)path kvPairs:(id)pairs
{
  pathCopy = path;
  pairsCopy = pairs;
  v12.receiver = self;
  v12.super_class = MODataExportResults;
  v9 = [(MODataExportResults *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_filePath, path);
    objc_storeStrong(&v10->_kvPairs, pairs);
  }

  return v10;
}

@end