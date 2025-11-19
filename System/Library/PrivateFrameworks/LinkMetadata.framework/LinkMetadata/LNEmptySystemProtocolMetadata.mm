@interface LNEmptySystemProtocolMetadata
- (BOOL)isEqual:(id)a3;
- (LNEmptySystemProtocolMetadata)init;
- (NSString)description;
@end

@implementation LNEmptySystemProtocolMetadata

- (LNEmptySystemProtocolMetadata)init
{
  v3.receiver = self;
  v3.super_class = LNEmptySystemProtocolMetadata;
  return [(LNEmptySystemProtocolMetadata *)&v3 init];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    isKindOfClass = 1;
  }

  else if (v4)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p>", v5, self];

  return v6;
}

@end