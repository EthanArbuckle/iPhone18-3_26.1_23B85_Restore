@interface NPKProtoBitmap
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoBitmap

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoBitmap;
  v4 = [(NPKProtoBitmap *)&v8 description];
  dictionaryRepresentation = [(NPKProtoBitmap *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_width];
  [dictionary setObject:v4 forKey:@"width"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_height];
  [dictionary setObject:v5 forKey:@"height"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_bitsPerComponent];
  [dictionary setObject:v6 forKey:@"bitsPerComponent"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_bitsPerPixel];
  [dictionary setObject:v7 forKey:@"bitsPerPixel"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_bytesPerRow];
  [dictionary setObject:v8 forKey:@"bytesPerRow"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bitmapInfo];
  [dictionary setObject:v9 forKey:@"bitmapInfo"];

  bitmapData = self->_bitmapData;
  if (bitmapData)
  {
    [dictionary setObject:bitmapData forKey:@"bitmapData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  width = self->_width;
  PBDataWriterWriteUint64Field();
  height = self->_height;
  PBDataWriterWriteUint64Field();
  bitsPerComponent = self->_bitsPerComponent;
  PBDataWriterWriteUint64Field();
  bitsPerPixel = self->_bitsPerPixel;
  PBDataWriterWriteUint64Field();
  bytesPerRow = self->_bytesPerRow;
  PBDataWriterWriteUint64Field();
  bitmapInfo = self->_bitmapInfo;
  PBDataWriterWriteUint32Field();
  if (!self->_bitmapData)
  {
    [NPKProtoBitmap writeTo:];
  }

  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)to
{
  *(to + 5) = self->_width;
  *(to + 4) = self->_height;
  *(to + 1) = self->_bitsPerComponent;
  *(to + 2) = self->_bitsPerPixel;
  *(to + 3) = self->_bytesPerRow;
  *(to + 14) = self->_bitmapInfo;
  [to setBitmapData:self->_bitmapData];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 40) = self->_width;
  *(v5 + 32) = self->_height;
  *(v5 + 8) = self->_bitsPerComponent;
  *(v5 + 16) = self->_bitsPerPixel;
  *(v5 + 24) = self->_bytesPerRow;
  *(v5 + 56) = self->_bitmapInfo;
  v6 = [(NSData *)self->_bitmapData copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_width == equalCopy[5] && self->_height == equalCopy[4] && self->_bitsPerComponent == equalCopy[1] && self->_bitsPerPixel == equalCopy[2] && self->_bytesPerRow == equalCopy[3] && self->_bitmapInfo == *(equalCopy + 14))
  {
    bitmapData = self->_bitmapData;
    if (bitmapData | equalCopy[6])
    {
      v6 = [(NSData *)bitmapData isEqual:?];
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

- (unint64_t)hash
{
  v2 = (2654435761u * self->_height) ^ (2654435761u * self->_width) ^ (2654435761u * self->_bitsPerComponent) ^ (2654435761u * self->_bitsPerPixel);
  v3 = (2654435761u * self->_bytesPerRow) ^ (2654435761 * self->_bitmapInfo);
  return v2 ^ v3 ^ [(NSData *)self->_bitmapData hash];
}

- (void)mergeFrom:(id)from
{
  self->_width = *(from + 5);
  self->_height = *(from + 4);
  self->_bitsPerComponent = *(from + 1);
  self->_bitsPerPixel = *(from + 2);
  self->_bytesPerRow = *(from + 3);
  self->_bitmapInfo = *(from + 14);
  if (*(from + 6))
  {
    [(NPKProtoBitmap *)self setBitmapData:?];
  }
}

@end