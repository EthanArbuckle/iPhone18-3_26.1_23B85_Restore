@interface VCPProtoPoint
+ (VCPProtoPoint)pointWithPoint:(CGPoint)point;
- (BOOL)isEqual:(id)equal;
- (CGPoint)pointValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoPoint

+ (VCPProtoPoint)pointWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = objc_alloc_init(VCPProtoPoint);
  [(VCPProtoPoint *)v5 setX:x];
  [(VCPProtoPoint *)v5 setY:y];

  return v5;
}

- (CGPoint)pointValue
{
  [(VCPProtoPoint *)self x];
  v4 = v3;
  [(VCPProtoPoint *)self y];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoPoint;
  v4 = [(VCPProtoPoint *)&v8 description];
  dictionaryRepresentation = [(VCPProtoPoint *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_x];
  [dictionary setObject:v4 forKey:@"x"];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_y];
  [dictionary setObject:v5 forKey:@"y"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = *&self->_x;
  *(result + 2) = *&self->_y;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_x == equalCopy[1] && self->_y == equalCopy[2];

  return v5;
}

- (unint64_t)hash
{
  x = self->_x;
  if (x < 0.0)
  {
    x = -x;
  }

  *v3.i64 = floor(x + 0.5);
  v6 = (x - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vnegq_f64(v7);
  v9 = vbslq_s8(v8, v4, v3);
  v10 = 2654435761u * *v9.i64;
  v11 = v10 + v6;
  if (v6 <= 0.0)
  {
    v11 = 2654435761u * *v9.i64;
  }

  v12 = v10 - fabs(v6);
  if (v6 >= 0.0)
  {
    v12 = v11;
  }

  y = self->_y;
  if (y < 0.0)
  {
    y = -y;
  }

  *v2.i64 = floor(y + 0.5);
  v14 = (y - *v2.i64) * 1.84467441e19;
  *v9.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v2.i64[0] = vbslq_s8(v8, v9, v2).i64[0];
  v15 = 2654435761u * *v2.i64;
  v16 = v15 + v14;
  if (v14 <= 0.0)
  {
    v16 = 2654435761u * *v2.i64;
  }

  v17 = v15 - fabs(v14);
  if (v14 >= 0.0)
  {
    v17 = v16;
  }

  return v17 ^ v12;
}

@end