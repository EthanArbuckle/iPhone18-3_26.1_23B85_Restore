@interface IXSPlaceholderFailureInfo
- (IXSPlaceholderFailureInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXSPlaceholderFailureInfo

- (IXSPlaceholderFailureInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IXSPlaceholderFailureInfo;
  v5 = [(IXSPlaceholderFailureInfo *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installType"];
    v5->_installType = [v6 unsignedLongLongValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    v5->_reason = [v7 unsignedLongLongValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"underlyingError"];
    underlyingError = v5->_underlyingError;
    v5->_underlyingError = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"client"];
    v5->_client = [v10 unsignedLongLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:[(IXSPlaceholderFailureInfo *)self installType]];
  [v4 encodeObject:v5 forKey:@"installType"];

  v6 = [NSNumber numberWithInteger:[(IXSPlaceholderFailureInfo *)self reason]];
  [v4 encodeObject:v6 forKey:@"reason"];

  v7 = [(IXSPlaceholderFailureInfo *)self underlyingError];
  [v4 encodeObject:v7 forKey:@"underlyingError"];

  v8 = [NSNumber numberWithUnsignedInteger:[(IXSPlaceholderFailureInfo *)self client]];
  [v4 encodeObject:v8 forKey:@"client"];
}

@end