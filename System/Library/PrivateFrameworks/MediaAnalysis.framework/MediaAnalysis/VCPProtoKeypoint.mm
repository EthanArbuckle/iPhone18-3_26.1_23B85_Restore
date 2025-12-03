@interface VCPProtoKeypoint
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoKeypoint

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoKeypoint;
  v4 = [(VCPProtoKeypoint *)&v8 description];
  dictionaryRepresentation = [(VCPProtoKeypoint *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_x;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v5 forKey:@"x"];

  *&v6 = self->_y;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [dictionary setObject:v7 forKey:@"y"];

  *&v8 = self->_confidence;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [dictionary setObject:v9 forKey:@"confidence"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
}

- (void)copyTo:(id)to
{
  *(to + 3) = LODWORD(self->_x);
  *(to + 4) = LODWORD(self->_y);
  *(to + 2) = LODWORD(self->_confidence);
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 3) = LODWORD(self->_x);
  *(result + 4) = LODWORD(self->_y);
  *(result + 2) = LODWORD(self->_confidence);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_x == equalCopy[3] && self->_y == equalCopy[4] && self->_confidence == equalCopy[2];

  return v5;
}

- (unint64_t)hash
{
  x = self->_x;
  v7 = -x;
  if (x >= 0.0)
  {
    v7 = self->_x;
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

  y = self->_y;
  if (y < 0.0)
  {
    y = -y;
  }

  *v4.i32 = floorf(y + 0.5);
  v15 = y - *v4.i32;
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

  confidence = self->_confidence;
  if (confidence < 0.0)
  {
    confidence = -confidence;
  }

  *v2.i32 = floorf(confidence + 0.5);
  v22 = (confidence - *v2.i32) * 1.8447e19;
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
  self->_x = *(from + 3);
  self->_y = *(from + 4);
  self->_confidence = *(from + 2);
}

@end