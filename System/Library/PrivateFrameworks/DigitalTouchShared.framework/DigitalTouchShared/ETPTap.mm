@interface ETPTap
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ETPTap

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ETPTap;
  v4 = [(ETPTap *)&v8 description];
  dictionaryRepresentation = [(ETPTap *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  timeDeltas = self->_timeDeltas;
  if (timeDeltas)
  {
    [dictionary setObject:timeDeltas forKey:@"timeDeltas"];
  }

  points = self->_points;
  if (points)
  {
    [v4 setObject:points forKey:@"points"];
  }

  colors = self->_colors;
  if (colors)
  {
    [v4 setObject:colors forKey:@"colors"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_timeDeltas)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_points)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_colors)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_timeDeltas copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_points copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_colors copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((timeDeltas = self->_timeDeltas, !(timeDeltas | equalCopy[3])) || -[NSData isEqual:](timeDeltas, "isEqual:")) && ((points = self->_points, !(points | equalCopy[2])) || -[NSData isEqual:](points, "isEqual:")))
  {
    colors = self->_colors;
    if (colors | equalCopy[1])
    {
      v8 = [(NSData *)colors isEqual:?];
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
  v3 = [(NSData *)self->_timeDeltas hash];
  v4 = [(NSData *)self->_points hash]^ v3;
  return v4 ^ [(NSData *)self->_colors hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(ETPTap *)self setTimeDeltas:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(ETPTap *)self setPoints:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(ETPTap *)self setColors:?];
    fromCopy = v5;
  }
}

@end