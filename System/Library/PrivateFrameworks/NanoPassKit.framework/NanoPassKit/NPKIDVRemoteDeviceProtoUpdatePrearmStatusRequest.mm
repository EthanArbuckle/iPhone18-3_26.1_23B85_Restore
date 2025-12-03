@interface NPKIDVRemoteDeviceProtoUpdatePrearmStatusRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NPKIDVRemoteDeviceProtoUpdatePrearmStatusRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoUpdatePrearmStatusRequest;
  v4 = [(NPKIDVRemoteDeviceProtoUpdatePrearmStatusRequest *)&v8 description];
  dictionaryRepresentation = [(NPKIDVRemoteDeviceProtoUpdatePrearmStatusRequest *)self dictionaryRepresentation];
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