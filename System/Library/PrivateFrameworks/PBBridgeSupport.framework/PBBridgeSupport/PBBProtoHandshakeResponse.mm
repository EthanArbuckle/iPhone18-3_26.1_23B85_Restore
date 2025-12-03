@interface PBBProtoHandshakeResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PBBProtoHandshakeResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoHandshakeResponse;
  v4 = [(PBBProtoHandshakeResponse *)&v8 description];
  dictionaryRepresentation = [(PBBProtoHandshakeResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_position];
  [dictionary setObject:v4 forKey:@"position"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v5 forKey:@"version"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_state];
  [dictionary setObject:v6 forKey:@"state"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  position = self->_position;
  toCopy = to;
  PBDataWriterWriteUint32Field();
  version = self->_version;
  PBDataWriterWriteUint32Field();
  state = self->_state;
  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  *(to + 2) = self->_position;
  *(to + 4) = self->_version;
  *(to + 3) = self->_state;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_position;
  *(result + 4) = self->_version;
  *(result + 3) = self->_state;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_position == equalCopy[2] && self->_version == equalCopy[4] && self->_state == equalCopy[3];

  return v5;
}

- (void)mergeFrom:(id)from
{
  self->_position = *(from + 2);
  self->_version = *(from + 4);
  self->_state = *(from + 3);
}

@end