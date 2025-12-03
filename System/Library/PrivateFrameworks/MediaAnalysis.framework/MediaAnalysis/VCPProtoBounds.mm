@interface VCPProtoBounds
+ (VCPProtoBounds)boundsWithCGRect:(CGRect)rect;
- (BOOL)isEqual:(id)equal;
- (CGRect)rectValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoBounds

+ (VCPProtoBounds)boundsWithCGRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = objc_alloc_init(VCPProtoBounds);
  [(VCPProtoBounds *)v7 setX0:x];
  [(VCPProtoBounds *)v7 setY0:y];
  [(VCPProtoBounds *)v7 setWidth:width];
  [(VCPProtoBounds *)v7 setHeight:height];

  return v7;
}

- (CGRect)rectValue
{
  [(VCPProtoBounds *)self x0];
  v4 = v3;
  [(VCPProtoBounds *)self y0];
  v6 = v5;
  [(VCPProtoBounds *)self width];
  v8 = v7;
  [(VCPProtoBounds *)self height];
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoBounds;
  v4 = [(VCPProtoBounds *)&v8 description];
  dictionaryRepresentation = [(VCPProtoBounds *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_x0];
  [dictionary setObject:v4 forKey:@"x0"];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_y0];
  [dictionary setObject:v5 forKey:@"y0"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_width];
  [dictionary setObject:v6 forKey:@"width"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_height];
  [dictionary setObject:v7 forKey:@"height"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
}

- (void)copyTo:(id)to
{
  *(to + 3) = *&self->_x0;
  *(to + 4) = *&self->_y0;
  *(to + 2) = *&self->_width;
  *(to + 1) = *&self->_height;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 3) = *&self->_x0;
  *(result + 4) = *&self->_y0;
  *(result + 2) = *&self->_width;
  *(result + 1) = *&self->_height;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_x0 == equalCopy[3] && self->_y0 == equalCopy[4] && self->_width == equalCopy[2] && self->_height == equalCopy[1];

  return v5;
}

- (unint64_t)hash
{
  x0 = self->_x0;
  v7 = -x0;
  if (x0 >= 0.0)
  {
    v7 = self->_x0;
  }

  *v3.i64 = floor(v7 + 0.5);
  v8 = (v7 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = vnegq_f64(v9);
  v3.i64[0] = vbslq_s8(v10, v4, v3).i64[0];
  v11 = 2654435761u * *v3.i64;
  v12 = v11 + v8;
  if (v8 <= 0.0)
  {
    v12 = 2654435761u * *v3.i64;
  }

  v13 = v11 - fabs(v8);
  if (v8 >= 0.0)
  {
    v13 = v12;
  }

  y0 = self->_y0;
  if (y0 < 0.0)
  {
    y0 = -y0;
  }

  *v4.i64 = floor(y0 + 0.5);
  v15 = (y0 - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v16 = vbslq_s8(v10, v5, v4);
  v17 = 2654435761u * *v16.i64;
  v18 = v17 + v15;
  if (v15 <= 0.0)
  {
    v18 = 2654435761u * *v16.i64;
  }

  v19 = v17 - fabs(v15);
  v20 = v15 < 0.0;
  width = self->_width;
  if (!v20)
  {
    v19 = v18;
  }

  if (width < 0.0)
  {
    width = -width;
  }

  *v16.i64 = floor(width + 0.5);
  v22 = (width - *v16.i64) * 1.84467441e19;
  *v5.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
  v23 = vbslq_s8(v10, v5, v16);
  v24 = 2654435761u * *v23.i64;
  v25 = v24 + v22;
  if (v22 <= 0.0)
  {
    v25 = 2654435761u * *v23.i64;
  }

  v26 = v24 - fabs(v22);
  if (v22 >= 0.0)
  {
    v26 = v25;
  }

  height = self->_height;
  if (height < 0.0)
  {
    height = -height;
  }

  *v2.i64 = floor(height + 0.5);
  v28 = (height - *v2.i64) * 1.84467441e19;
  *v23.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v2.i64[0] = vbslq_s8(v10, v23, v2).i64[0];
  v29 = 2654435761u * *v2.i64;
  v30 = v29 + v28;
  if (v28 <= 0.0)
  {
    v30 = 2654435761u * *v2.i64;
  }

  v31 = v29 - fabs(v28);
  if (v28 >= 0.0)
  {
    v31 = v30;
  }

  return v19 ^ v13 ^ v26 ^ v31;
}

- (void)mergeFrom:(id)from
{
  self->_x0 = *(from + 3);
  self->_y0 = *(from + 4);
  self->_width = *(from + 2);
  self->_height = *(from + 1);
}

@end