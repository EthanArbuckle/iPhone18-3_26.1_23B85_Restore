@interface PBBProtoAppViewListImageRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PBBProtoAppViewListImageRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoAppViewListImageRequest;
  v4 = [(PBBProtoAppViewListImageRequest *)&v8 description];
  dictionaryRepresentation = [(PBBProtoAppViewListImageRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  *&v4 = self->_scale;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v5 forKey:@"scale"];

  *&v6 = self->_width;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [dictionary setObject:v7 forKey:@"width"];

  *&v8 = self->_height;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  [dictionary setObject:v9 forKey:@"height"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  scale = self->_scale;
  toCopy = to;
  PBDataWriterWriteFloatField();
  width = self->_width;
  PBDataWriterWriteFloatField();
  height = self->_height;
  PBDataWriterWriteFloatField();
}

- (void)copyTo:(id)to
{
  *(to + 3) = LODWORD(self->_scale);
  *(to + 4) = LODWORD(self->_width);
  *(to + 2) = LODWORD(self->_height);
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 3) = LODWORD(self->_scale);
  *(result + 4) = LODWORD(self->_width);
  *(result + 2) = LODWORD(self->_height);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_scale == equalCopy[3] && self->_width == equalCopy[4] && self->_height == equalCopy[2];

  return v5;
}

- (unint64_t)hash
{
  scale = self->_scale;
  v7 = -scale;
  if (scale >= 0.0)
  {
    v7 = self->_scale;
  }

  *v3.i32 = floorf(v7 + 0.5);
  v8 = (v7 - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v10 = 2654435761u * *vbslq_s8(v9, v4, v3).i32;
  v11 = v10 + v8;
  v12 = fabsf(v8);
  if (v8 <= 0.0)
  {
    v11 = v10;
  }

  v13 = v10 - v12;
  if (v8 >= 0.0)
  {
    v13 = v11;
  }

  width = self->_width;
  if (width < 0.0)
  {
    width = -width;
  }

  *v4.i32 = floorf(width + 0.5);
  v15 = width - *v4.i32;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v16 = vbslq_s8(v9, v5, v4);
  v17 = v15 * 1.8447e19;
  v18 = 2654435761u * *v16.i32;
  v19 = v18 + v17;
  if (v17 <= 0.0)
  {
    v19 = 2654435761u * *v16.i32;
  }

  v20 = v18 - fabsf(v17);
  if (v17 >= 0.0)
  {
    v20 = v19;
  }

  height = self->_height;
  if (height < 0.0)
  {
    height = -height;
  }

  *v2.i32 = floorf(height + 0.5);
  v22 = (height - *v2.i32) * 1.8447e19;
  *v16.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v23 = 2654435761u * *vbslq_s8(v9, v16, v2).i32;
  v24 = v23 + v22;
  v25 = fabsf(v22);
  if (v22 <= 0.0)
  {
    v24 = v23;
  }

  v26 = v23 - v25;
  if (v22 >= 0.0)
  {
    v26 = v24;
  }

  return v20 ^ v13 ^ v26;
}

- (void)mergeFrom:(id)from
{
  self->_scale = *(from + 3);
  self->_width = *(from + 4);
  self->_height = *(from + 2);
}

@end