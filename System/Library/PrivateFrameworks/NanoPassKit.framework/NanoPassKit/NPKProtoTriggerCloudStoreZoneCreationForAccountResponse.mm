@interface NPKProtoTriggerCloudStoreZoneCreationForAccountResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation NPKProtoTriggerCloudStoreZoneCreationForAccountResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoTriggerCloudStoreZoneCreationForAccountResponse;
  v4 = [(NPKProtoTriggerCloudStoreZoneCreationForAccountResponse *)&v8 description];
  v5 = [(NPKProtoTriggerCloudStoreZoneCreationForAccountResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
  [v3 setObject:v4 forKey:@"success"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 8) = self->_success;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_success == v4[8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end