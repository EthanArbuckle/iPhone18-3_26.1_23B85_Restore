@interface DKCloudUploadResult
- (id)description;
@end

@implementation DKCloudUploadResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  username = [(DKCloudUploadResult *)self username];
  isPrimaryAccount = [(DKCloudUploadResult *)self isPrimaryAccount];
  success = [(DKCloudUploadResult *)self success];
  error = [(DKCloudUploadResult *)self error];
  v10 = [v3 stringWithFormat:@"<%@: %p> username: %@ isPrimaryAccount: %@ success: %d error: %@", v5, self, username, isPrimaryAccount, success, error];

  return v10;
}

@end