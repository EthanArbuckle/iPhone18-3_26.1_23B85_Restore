@interface MADManagedPhotosResult
+ (id)resultsArrayFromData:(id)data;
+ (id)resultsDataFromArray:(id)array;
- (id)description;
@end

@implementation MADManagedPhotosResult

+ (id)resultsDataFromArray:(id)array
{
  v13 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v8 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:arrayCopy format:200 options:0 error:&v8];
    v5 = v8;
    if (v4)
    {
      v6 = v4;
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = arrayCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedPhotosResult] Failed to convert NSArray -> NSData: %@, resultsArray: %@", buf, 0x16u);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)resultsArrayFromData:(id)data
{
  v14 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v9 = 0;
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:&v9];
    v5 = v9;
    if (v4)
    {
      v6 = v4;
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [dataCopy length];
      *buf = 67109378;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedPhotosResult] Failed to convert NSData (%d bytes) -> NSArray: %@", buf, 0x12u);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  assetColumnName = [objc_opt_class() assetColumnName];
  asset = [(MADManagedPhotosResult *)self asset];
  localIdentifier = [asset localIdentifier];
  [string appendFormat:@"%@: %@, ", assetColumnName, localIdentifier];

  resultsTypeColumnName = [objc_opt_class() resultsTypeColumnName];
  [string appendFormat:@"%@: %lld, ", resultsTypeColumnName, -[MADManagedPhotosResult resultsType](self, "resultsType")];

  resultsColumnName = [objc_opt_class() resultsColumnName];
  v11 = objc_opt_class();
  results = [(MADManagedPhotosResult *)self results];
  v13 = [v11 resultsArrayFromData:results];
  [string appendFormat:@"%@: %@>", resultsColumnName, v13];

  return string;
}

@end