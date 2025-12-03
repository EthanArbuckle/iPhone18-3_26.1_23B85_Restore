@interface NPKIDVRemoteDeviceProtoPrearmStatusUpdate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPrearmStatus:(id)status;
@end

@implementation NPKIDVRemoteDeviceProtoPrearmStatusUpdate

- (int)StringAsPrearmStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"Unknown"])
  {
    v4 = -1;
  }

  else if ([statusCopy isEqualToString:@"ShouldBeDisarmed"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"ReadyForPrearm"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"Prearmed"])
  {
    v4 = 2;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoPrearmStatusUpdate;
  v4 = [(NPKIDVRemoteDeviceProtoPrearmStatusUpdate *)&v8 description];
  dictionaryRepresentation = [(NPKIDVRemoteDeviceProtoPrearmStatusUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = self->_prearmStatus + 1;
  if (v4 >= 4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_prearmStatus];
  }

  else
  {
    v5 = off_279949800[v4];
  }

  [dictionary setObject:v5 forKey:@"prearmStatus"];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_prearmStatus;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_prearmStatus == equalCopy[2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end