@interface NPKProtoStandaloneImageSize
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandaloneImageSize

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandaloneImageSize;
  v4 = [(NPKProtoStandaloneImageSize *)&v8 description];
  v5 = [(NPKProtoStandaloneImageSize *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_width];
  [v3 setObject:v4 forKey:@"width"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_height];
  [v3 setObject:v5 forKey:@"height"];

  return v3;
}

- (void)writeTo:(id)a3
{
  width = self->_width;
  v6 = a3;
  PBDataWriterWriteInt32Field();
  height = self->_height;
  PBDataWriterWriteInt32Field();
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 3) = self->_width;
  *(result + 2) = self->_height;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_width == v4[3] && self->_height == v4[2];

  return v5;
}

@end