@interface MADManagedChangeToken
- (id)_tokenDataInHexFormat:(id)format;
- (id)description;
@end

@implementation MADManagedChangeToken

- (id)_tokenDataInHexFormat:(id)format
{
  formatCopy = format;
  v4 = [formatCopy length];
  v5 = [MEMORY[0x1E696AD60] stringWithCapacity:2 * v4];
  bytes = [formatCopy bytes];
  if ([formatCopy length])
  {
    v7 = 0;
    do
    {
      [v5 appendFormat:@"%02X", *(bytes + v7++)];
    }

    while (v7 < [formatCopy length]);
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  tokenIDColumnName = [objc_opt_class() tokenIDColumnName];
  [string appendFormat:@"%@: %lld, ", tokenIDColumnName, -[MADManagedChangeToken tokenID](self, "tokenID")];

  tokenTypeColumnName = [objc_opt_class() tokenTypeColumnName];
  [string appendFormat:@"%@: %lld, ", tokenTypeColumnName, -[MADManagedChangeToken tokenType](self, "tokenType")];

  tokenDataColumnName = [objc_opt_class() tokenDataColumnName];
  tokenData = [(MADManagedChangeToken *)self tokenData];
  v10 = [(MADManagedChangeToken *)self _tokenDataInHexFormat:tokenData];
  [string appendFormat:@"%@: %@, ", tokenDataColumnName, v10];

  dateColumnName = [objc_opt_class() dateColumnName];
  date = [(MADManagedChangeToken *)self date];
  [string appendFormat:@"%@: %@, ", dateColumnName, date];

  versionColumnName = [objc_opt_class() versionColumnName];
  [string appendFormat:@"%@: %d>", versionColumnName, -[MADManagedChangeToken version](self, "version")];

  return string;
}

@end