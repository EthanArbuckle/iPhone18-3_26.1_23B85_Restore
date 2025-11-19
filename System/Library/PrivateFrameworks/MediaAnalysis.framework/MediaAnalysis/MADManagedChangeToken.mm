@interface MADManagedChangeToken
- (id)_tokenDataInHexFormat:(id)a3;
- (id)description;
@end

@implementation MADManagedChangeToken

- (id)_tokenDataInHexFormat:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = [MEMORY[0x1E696AD60] stringWithCapacity:2 * v4];
  v6 = [v3 bytes];
  if ([v3 length])
  {
    v7 = 0;
    do
    {
      [v5 appendFormat:@"%02X", *(v6 + v7++)];
    }

    while (v7 < [v3 length]);
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  v6 = [objc_opt_class() tokenIDColumnName];
  [v3 appendFormat:@"%@: %lld, ", v6, -[MADManagedChangeToken tokenID](self, "tokenID")];

  v7 = [objc_opt_class() tokenTypeColumnName];
  [v3 appendFormat:@"%@: %lld, ", v7, -[MADManagedChangeToken tokenType](self, "tokenType")];

  v8 = [objc_opt_class() tokenDataColumnName];
  v9 = [(MADManagedChangeToken *)self tokenData];
  v10 = [(MADManagedChangeToken *)self _tokenDataInHexFormat:v9];
  [v3 appendFormat:@"%@: %@, ", v8, v10];

  v11 = [objc_opt_class() dateColumnName];
  v12 = [(MADManagedChangeToken *)self date];
  [v3 appendFormat:@"%@: %@, ", v11, v12];

  v13 = [objc_opt_class() versionColumnName];
  [v3 appendFormat:@"%@: %d>", v13, -[MADManagedChangeToken version](self, "version")];

  return v3;
}

@end