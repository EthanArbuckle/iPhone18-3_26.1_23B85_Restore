@interface IXSPlaceholderFailureInfo
- (IXSPlaceholderFailureInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXSPlaceholderFailureInfo

- (IXSPlaceholderFailureInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = IXSPlaceholderFailureInfo;
  v5 = [(IXSPlaceholderFailureInfo *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installType"];
    v5->_installType = [v6 unsignedLongLongValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    v5->_reason = [v7 unsignedLongLongValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"underlyingError"];
    underlyingError = v5->_underlyingError;
    v5->_underlyingError = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"client"];
    v5->_client = [v10 unsignedLongLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [NSNumber numberWithUnsignedInteger:[(IXSPlaceholderFailureInfo *)self installType]];
  [coderCopy encodeObject:v5 forKey:@"installType"];

  v6 = [NSNumber numberWithInteger:[(IXSPlaceholderFailureInfo *)self reason]];
  [coderCopy encodeObject:v6 forKey:@"reason"];

  underlyingError = [(IXSPlaceholderFailureInfo *)self underlyingError];
  [coderCopy encodeObject:underlyingError forKey:@"underlyingError"];

  v8 = [NSNumber numberWithUnsignedInteger:[(IXSPlaceholderFailureInfo *)self client]];
  [coderCopy encodeObject:v8 forKey:@"client"];
}

@end