@interface NPKProtoStandaloneImageSize
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandaloneImageSize

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandaloneImageSize;
  v4 = [(NPKProtoStandaloneImageSize *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandaloneImageSize *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_width];
  [dictionary setObject:v4 forKey:@"width"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_height];
  [dictionary setObject:v5 forKey:@"height"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  width = self->_width;
  toCopy = to;
  PBDataWriterWriteInt32Field();
  height = self->_height;
  PBDataWriterWriteInt32Field();
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 3) = self->_width;
  *(result + 2) = self->_height;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_width == equalCopy[3] && self->_height == equalCopy[2];

  return v5;
}

@end