@interface IDSQRProtoUnAllocBindUnAllocBind
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation IDSQRProtoUnAllocBindUnAllocBind

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoUnAllocBindUnAllocBind;
  v4 = [(IDSQRProtoUnAllocBindUnAllocBind *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoUnAllocBindUnAllocBind *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

@end