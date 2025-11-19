@interface NPKProtoBitmap
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoBitmap

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoBitmap;
  v4 = [(NPKProtoBitmap *)&v8 description];
  v5 = [(NPKProtoBitmap *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_width];
  [v3 setObject:v4 forKey:@"width"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_height];
  [v3 setObject:v5 forKey:@"height"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_bitsPerComponent];
  [v3 setObject:v6 forKey:@"bitsPerComponent"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_bitsPerPixel];
  [v3 setObject:v7 forKey:@"bitsPerPixel"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_bytesPerRow];
  [v3 setObject:v8 forKey:@"bytesPerRow"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bitmapInfo];
  [v3 setObject:v9 forKey:@"bitmapInfo"];

  bitmapData = self->_bitmapData;
  if (bitmapData)
  {
    [v3 setObject:bitmapData forKey:@"bitmapData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
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

- (void)copyTo:(id)a3
{
  *(a3 + 5) = self->_width;
  *(a3 + 4) = self->_height;
  *(a3 + 1) = self->_bitsPerComponent;
  *(a3 + 2) = self->_bitsPerPixel;
  *(a3 + 3) = self->_bytesPerRow;
  *(a3 + 14) = self->_bitmapInfo;
  [a3 setBitmapData:self->_bitmapData];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 40) = self->_width;
  *(v5 + 32) = self->_height;
  *(v5 + 8) = self->_bitsPerComponent;
  *(v5 + 16) = self->_bitsPerPixel;
  *(v5 + 24) = self->_bytesPerRow;
  *(v5 + 56) = self->_bitmapInfo;
  v6 = [(NSData *)self->_bitmapData copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_width == v4[5] && self->_height == v4[4] && self->_bitsPerComponent == v4[1] && self->_bitsPerPixel == v4[2] && self->_bytesPerRow == v4[3] && self->_bitmapInfo == *(v4 + 14))
  {
    bitmapData = self->_bitmapData;
    if (bitmapData | v4[6])
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

- (void)mergeFrom:(id)a3
{
  self->_width = *(a3 + 5);
  self->_height = *(a3 + 4);
  self->_bitsPerComponent = *(a3 + 1);
  self->_bitsPerPixel = *(a3 + 2);
  self->_bytesPerRow = *(a3 + 3);
  self->_bitmapInfo = *(a3 + 14);
  if (*(a3 + 6))
  {
    [(NPKProtoBitmap *)self setBitmapData:?];
  }
}

@end