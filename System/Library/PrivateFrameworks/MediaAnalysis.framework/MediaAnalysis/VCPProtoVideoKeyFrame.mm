@interface VCPProtoVideoKeyFrame
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoVideoKeyFrame

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoVideoKeyFrame;
  v4 = [(VCPProtoVideoKeyFrame *)&v8 description];
  v5 = [(VCPProtoVideoKeyFrame *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  timestamp = self->_timestamp;
  if (timestamp)
  {
    v6 = [(VCPProtoTime *)timestamp dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"timestamp"];
  }

  *&v4 = self->_curationScore;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v7 forKey:@"curationScore"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteFloatField();
}

- (void)copyTo:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 setTimestamp:timestamp];
  v5[2] = self->_curationScore;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTime *)self->_timestamp copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_curationScore;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((timestamp = self->_timestamp, !(timestamp | *(v4 + 2))) || -[VCPProtoTime isEqual:](timestamp, "isEqual:")) && self->_curationScore == *(v4 + 2);

  return v6;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoTime *)self->_timestamp hash];
  curationScore = self->_curationScore;
  if (curationScore < 0.0)
  {
    curationScore = -curationScore;
  }

  *v4.i32 = floorf(curationScore + 0.5);
  v7 = (curationScore - *v4.i32) * 1.8447e19;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v4.i32[0] = vbslq_s8(v8, v5, v4).i32[0];
  v9 = 2654435761u * *v4.i32;
  v10 = v9 + v7;
  if (v7 <= 0.0)
  {
    v10 = 2654435761u * *v4.i32;
  }

  v11 = v9 - fabsf(v7);
  if (v7 >= 0.0)
  {
    v11 = v10;
  }

  return v11 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  timestamp = self->_timestamp;
  v6 = *(v4 + 2);
  if (timestamp)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(VCPProtoTime *)timestamp mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(VCPProtoVideoKeyFrame *)self setTimestamp:?];
  }

  v4 = v7;
LABEL_7:
  self->_curationScore = *(v4 + 2);
}

@end