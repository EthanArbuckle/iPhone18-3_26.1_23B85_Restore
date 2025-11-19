@interface LNConditionallyEnabledSystemProtocolMetadata
- (BOOL)isEqual:(id)a3;
- (LNConditionallyEnabledSystemProtocolMetadata)initWithCoder:(id)a3;
- (LNConditionallyEnabledSystemProtocolMetadata)initWithPersistState:(BOOL)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNConditionallyEnabledSystemProtocolMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNConditionallyEnabledSystemProtocolMetadata *)self persistState];
      v8 = v7 ^ [(LNConditionallyEnabledSystemProtocolMetadata *)v6 persistState]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNConditionallyEnabledSystemProtocolMetadata *)self persistState];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p, persistState: %@>", v5, self, v7];

  return v8;
}

- (LNConditionallyEnabledSystemProtocolMetadata)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"persistState"];

  return [(LNConditionallyEnabledSystemProtocolMetadata *)self initWithPersistState:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[LNConditionallyEnabledSystemProtocolMetadata persistState](self forKey:{"persistState"), @"persistState"}];
}

- (LNConditionallyEnabledSystemProtocolMetadata)initWithPersistState:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = LNConditionallyEnabledSystemProtocolMetadata;
  v4 = [(LNConditionallyEnabledSystemProtocolMetadata *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_persistState = a3;
    v6 = v4;
  }

  return v5;
}

@end