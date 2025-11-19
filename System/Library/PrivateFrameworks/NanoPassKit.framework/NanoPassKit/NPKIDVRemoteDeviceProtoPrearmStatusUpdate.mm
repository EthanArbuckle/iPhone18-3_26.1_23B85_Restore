@interface NPKIDVRemoteDeviceProtoPrearmStatusUpdate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPrearmStatus:(id)a3;
@end

@implementation NPKIDVRemoteDeviceProtoPrearmStatusUpdate

- (int)StringAsPrearmStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"ShouldBeDisarmed"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ReadyForPrearm"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Prearmed"])
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
  v5 = [(NPKIDVRemoteDeviceProtoPrearmStatusUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = self->_prearmStatus + 1;
  if (v4 >= 4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_prearmStatus];
  }

  else
  {
    v5 = off_279949800[v4];
  }

  [v3 setObject:v5 forKey:@"prearmStatus"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_prearmStatus;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_prearmStatus == v4[2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end