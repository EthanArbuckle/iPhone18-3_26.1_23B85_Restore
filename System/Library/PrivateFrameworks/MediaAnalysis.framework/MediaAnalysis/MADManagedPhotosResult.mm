@interface MADManagedPhotosResult
+ (id)resultsArrayFromData:(id)a3;
+ (id)resultsDataFromArray:(id)a3;
- (id)description;
@end

@implementation MADManagedPhotosResult

+ (id)resultsDataFromArray:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v8 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:&v8];
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
      v12 = v3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedPhotosResult] Failed to convert NSArray -> NSData: %@, resultsArray: %@", buf, 0x16u);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)resultsArrayFromData:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v9 = 0;
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:&v9];
    v5 = v9;
    if (v4)
    {
      v6 = v4;
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 length];
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
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  v6 = [objc_opt_class() assetColumnName];
  v7 = [(MADManagedPhotosResult *)self asset];
  v8 = [v7 localIdentifier];
  [v3 appendFormat:@"%@: %@, ", v6, v8];

  v9 = [objc_opt_class() resultsTypeColumnName];
  [v3 appendFormat:@"%@: %lld, ", v9, -[MADManagedPhotosResult resultsType](self, "resultsType")];

  v10 = [objc_opt_class() resultsColumnName];
  v11 = objc_opt_class();
  v12 = [(MADManagedPhotosResult *)self results];
  v13 = [v11 resultsArrayFromData:v12];
  [v3 appendFormat:@"%@: %@>", v10, v13];

  return v3;
}

@end