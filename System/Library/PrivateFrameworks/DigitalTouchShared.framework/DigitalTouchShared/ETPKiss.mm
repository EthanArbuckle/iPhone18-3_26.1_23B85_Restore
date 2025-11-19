@interface ETPKiss
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ETPKiss

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ETPKiss;
  v4 = [(ETPKiss *)&v8 description];
  v5 = [(ETPKiss *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  delays = self->_delays;
  if (delays)
  {
    [v3 setObject:delays forKey:@"delays"];
  }

  points = self->_points;
  if (points)
  {
    [v4 setObject:points forKey:@"points"];
  }

  angles = self->_angles;
  if (angles)
  {
    [v4 setObject:angles forKey:@"angles"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_delays)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_points)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_angles)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_delays copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_points copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_angles copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((delays = self->_delays, !(delays | v4[2])) || -[NSData isEqual:](delays, "isEqual:")) && ((points = self->_points, !(points | v4[3])) || -[NSData isEqual:](points, "isEqual:")))
  {
    angles = self->_angles;
    if (angles | v4[1])
    {
      v8 = [(NSData *)angles isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_delays hash];
  v4 = [(NSData *)self->_points hash]^ v3;
  return v4 ^ [(NSData *)self->_angles hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(ETPKiss *)self setDelays:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(ETPKiss *)self setPoints:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(ETPKiss *)self setAngles:?];
    v4 = v5;
  }
}

@end