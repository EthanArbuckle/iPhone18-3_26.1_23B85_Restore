@interface NPKProtoDeviceMetadataWithFieldsRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation NPKProtoDeviceMetadataWithFieldsRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoDeviceMetadataWithFieldsRequest;
  v4 = [(NPKProtoDeviceMetadataWithFieldsRequest *)&v8 description];
  v5 = [(NPKProtoDeviceMetadataWithFieldsRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_metadataFields];
  [v3 setObject:v4 forKey:@"metadataFields"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_metadataFields;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_metadataFields == v4[2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end