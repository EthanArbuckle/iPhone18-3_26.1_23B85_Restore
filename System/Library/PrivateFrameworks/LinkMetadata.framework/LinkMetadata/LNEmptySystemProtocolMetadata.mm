@interface LNEmptySystemProtocolMetadata
- (BOOL)isEqual:(id)equal;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    isKindOfClass = 1;
  }

  else if (equalCopy)
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