@interface LNParameterConfiguration
- (BOOL)isEqual:(id)a3;
- (LNParameterConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNParameterConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[LNParameterConfiguration forcesNeedsValue](self forKey:{"forcesNeedsValue"), @"forcesNeedsValue"}];
}

- (LNParameterConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNParameterConfiguration *)self init];
  if (v5)
  {
    v5->_forcesNeedsValue = [v4 decodeBoolForKey:@"forcesNeedsValue"];
    v6 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
    goto LABEL_10;
  }

  v6 = v4;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
    goto LABEL_7;
  }

  v7 = [(LNParameterConfiguration *)self forcesNeedsValue];
  if (v7 != [(LNParameterConfiguration *)v6 forcesNeedsValue])
  {
LABEL_7:
    LOBYTE(v9) = 0;
    goto LABEL_8;
  }

  v8 = [(LNParameterConfiguration *)self isSecure];
  v9 = v8 ^ [(LNParameterConfiguration *)v6 isSecure]^ 1;
LABEL_8:

LABEL_10:
  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
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