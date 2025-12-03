@interface PUProtoDidUnlock
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PUProtoDidUnlock

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUProtoDidUnlock;
  v3 = [(PUProtoDidUnlock *)&v7 description];
  dictionaryRepresentation = [(PUProtoDidUnlock *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
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