@interface LNConditionallyEnabledSystemProtocolMetadata
- (BOOL)isEqual:(id)equal;
- (LNConditionallyEnabledSystemProtocolMetadata)initWithCoder:(id)coder;
- (LNConditionallyEnabledSystemProtocolMetadata)initWithPersistState:(BOOL)state;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNConditionallyEnabledSystemProtocolMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      persistState = [(LNConditionallyEnabledSystemProtocolMetadata *)self persistState];
      v8 = persistState ^ [(LNConditionallyEnabledSystemProtocolMetadata *)v6 persistState]^ 1;
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
  persistState = [(LNConditionallyEnabledSystemProtocolMetadata *)self persistState];
  v7 = @"NO";
  if (persistState)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p, persistState: %@>", v5, self, v7];

  return v8;
}

- (LNConditionallyEnabledSystemProtocolMetadata)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"persistState"];

  return [(LNConditionallyEnabledSystemProtocolMetadata *)self initWithPersistState:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[LNConditionallyEnabledSystemProtocolMetadata persistState](self forKey:{"persistState"), @"persistState"}];
}

- (LNConditionallyEnabledSystemProtocolMetadata)initWithPersistState:(BOOL)state
{
  v8.receiver = self;
  v8.super_class = LNConditionallyEnabledSystemProtocolMetadata;
  v4 = [(LNConditionallyEnabledSystemProtocolMetadata *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_persistState = state;
    v6 = v4;
  }

  return v5;
}

@end