@interface VCPProtoClassification
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoClassification

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoClassification;
  v4 = [(VCPProtoClassification *)&v8 description];
  v5 = [(VCPProtoClassification *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_identifier];
  [v3 setObject:v4 forKey:@"identifier"];

  *&v5 = self->_confidence;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [v3 setObject:v6 forKey:@"confidence"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteFloatField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 3) = self->_identifier;
  *(result + 2) = LODWORD(self->_confidence);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_identifier == *(v4 + 3) && self->_confidence == *(v4 + 2);

  return v5;
}

- (unint64_t)hash
{
  confidence = self->_confidence;
  if (confidence < 0.0)
  {
    confidence = -confidence;
  }

  *v2.i32 = floorf(confidence + 0.5);
  v5 = (confidence - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v6.i64[0] = 0x8000000080000000;
  v6.i64[1] = 0x8000000080000000;
  v7 = 2654435761u * *vbslq_s8(v6, v3, v2).i32;
  v8 = v7 + v5;
  v9 = fabsf(v5);
  if (v5 <= 0.0)
  {
    v8 = v7;
  }

  v10 = v7 - v9;
  if (v5 >= 0.0)
  {
    v10 = v8;
  }

  return v10 ^ (2654435761 * self->_identifier);
}

@end