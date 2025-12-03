@interface NPKProtoInitializeCloudStoreIfNecessaryRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NPKProtoInitializeCloudStoreIfNecessaryRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoInitializeCloudStoreIfNecessaryRequest;
  v4 = [(NPKProtoInitializeCloudStoreIfNecessaryRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoInitializeCloudStoreIfNecessaryRequest *)self dictionaryRepresentation];
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