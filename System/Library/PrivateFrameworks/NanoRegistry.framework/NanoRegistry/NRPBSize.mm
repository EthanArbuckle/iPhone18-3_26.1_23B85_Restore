@interface NRPBSize
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NRPBSize

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NRPBSize;
  v4 = [(NRPBSize *)&v8 description];
  dictionaryRepresentation = [(NRPBSize *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_width;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v5 forKey:@"width"];

  *&v6 = self->_height;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [dictionary setObject:v7 forKey:@"height"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  width = self->_width;
  toCopy = to;
  PBDataWriterWriteFloatField();
  height = self->_height;
  PBDataWriterWriteFloatField();
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 3) = LODWORD(self->_width);
  *(result + 2) = LODWORD(self->_height);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_width == equalCopy[3] && self->_height == equalCopy[2];

  return v5;
}

- (unint64_t)hash
{
  width = self->_width;
  if (width < 0.0)
  {
    width = -width;
  }

  *v3.i32 = floorf(width + 0.5);
  v6 = (width - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v8 = vbslq_s8(v7, v4, v3);
  v9 = 2654435761u * *v8.i32;
  v10 = v9 + v6;
  if (v6 <= 0.0)
  {
    v10 = 2654435761u * *v8.i32;
  }

  v11 = v9 - fabsf(v6);
  if (v6 >= 0.0)
  {
    v11 = v10;
  }

  height = self->_height;
  if (height < 0.0)
  {
    height = -height;
  }

  *v2.i32 = floorf(height + 0.5);
  v13 = (height - *v2.i32) * 1.8447e19;
  *v8.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v2.i32[0] = vbslq_s8(v7, v8, v2).i32[0];
  v14 = 2654435761u * *v2.i32;
  v15 = v14 + v13;
  if (v13 <= 0.0)
  {
    v15 = 2654435761u * *v2.i32;
  }

  v16 = v14 - fabsf(v13);
  if (v13 >= 0.0)
  {
    v16 = v15;
  }

  return v16 ^ v11;
}

@end