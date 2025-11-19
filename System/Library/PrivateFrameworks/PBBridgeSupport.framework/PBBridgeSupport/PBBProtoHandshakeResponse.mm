@interface PBBProtoHandshakeResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PBBProtoHandshakeResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoHandshakeResponse;
  v4 = [(PBBProtoHandshakeResponse *)&v8 description];
  v5 = [(PBBProtoHandshakeResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_position];
  [v3 setObject:v4 forKey:@"position"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
  [v3 setObject:v5 forKey:@"version"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_state];
  [v3 setObject:v6 forKey:@"state"];

  return v3;
}

- (void)writeTo:(id)a3
{
  position = self->_position;
  v7 = a3;
  PBDataWriterWriteUint32Field();
  version = self->_version;
  PBDataWriterWriteUint32Field();
  state = self->_state;
  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  *(a3 + 2) = self->_position;
  *(a3 + 4) = self->_version;
  *(a3 + 3) = self->_state;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_position;
  *(result + 4) = self->_version;
  *(result + 3) = self->_state;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_position == v4[2] && self->_version == v4[4] && self->_state == v4[3];

  return v5;
}

- (void)mergeFrom:(id)a3
{
  self->_position = *(a3 + 2);
  self->_version = *(a3 + 4);
  self->_state = *(a3 + 3);
}

@end