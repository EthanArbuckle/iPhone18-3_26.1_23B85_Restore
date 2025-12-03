@interface LNParameterConfiguration
- (BOOL)isEqual:(id)equal;
- (LNParameterConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNParameterConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[LNParameterConfiguration forcesNeedsValue](self forKey:{"forcesNeedsValue"), @"forcesNeedsValue"}];
}

- (LNParameterConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(LNParameterConfiguration *)self init];
  if (v5)
  {
    v5->_forcesNeedsValue = [coderCopy decodeBoolForKey:@"forcesNeedsValue"];
    v6 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
    goto LABEL_10;
  }

  v6 = equalCopy;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
    goto LABEL_7;
  }

  forcesNeedsValue = [(LNParameterConfiguration *)self forcesNeedsValue];
  if (forcesNeedsValue != [(LNParameterConfiguration *)v6 forcesNeedsValue])
  {
LABEL_7:
    LOBYTE(v9) = 0;
    goto LABEL_8;
  }

  isSecure = [(LNParameterConfiguration *)self isSecure];
  v9 = isSecure ^ [(LNParameterConfiguration *)v6 isSecure]^ 1;
LABEL_8:

LABEL_10:
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(LNParameterConfiguration);
  [(LNParameterConfiguration *)v4 setForcesNeedsValue:[(LNParameterConfiguration *)self forcesNeedsValue]];
  [(LNParameterConfiguration *)v4 setSecure:[(LNParameterConfiguration *)self isSecure]];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(LNParameterConfiguration *)self forcesNeedsValue])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(LNParameterConfiguration *)self isSecure])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p, forcesNeedsValue: %@, secure: %@>", v5, self, v6, v7];

  return v8;
}

@end