@interface NPKProtoTriggerCloudStoreZoneCreationForAccountRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoTriggerCloudStoreZoneCreationForAccountRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoTriggerCloudStoreZoneCreationForAccountRequest;
  v4 = [(NPKProtoTriggerCloudStoreZoneCreationForAccountRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoTriggerCloudStoreZoneCreationForAccountRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  accountData = self->_accountData;
  if (accountData)
  {
    [dictionary setObject:accountData forKey:@"accountData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_accountData)
  {
    [NPKProtoTriggerCloudStoreZoneCreationForAccountRequest writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteDataField();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_accountData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    accountData = self->_accountData;
    if (accountData | equalCopy[1])
    {
      v6 = [(NSData *)accountData isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(NPKProtoTriggerCloudStoreZoneCreationForAccountRequest *)self setAccountData:?];
  }
}

@end