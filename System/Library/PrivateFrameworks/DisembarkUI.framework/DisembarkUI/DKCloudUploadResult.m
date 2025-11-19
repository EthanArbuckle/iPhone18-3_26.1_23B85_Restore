@interface DKCloudUploadResult
- (id)description;
@end

@implementation DKCloudUploadResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(DKCloudUploadResult *)self username];
  v7 = [(DKCloudUploadResult *)self isPrimaryAccount];
  v8 = [(DKCloudUploadResult *)self success];
  v9 = [(DKCloudUploadResult *)self error];
  v10 = [v3 stringWithFormat:@"<%@: %p> username: %@ isPrimaryAccount: %@ success: %d error: %@", v5, self, v6, v7, v8, v9];

  return v10;
}

@end