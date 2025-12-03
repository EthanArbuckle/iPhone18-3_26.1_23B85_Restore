@interface HDCodableRoutineLocationResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableRoutineLocationResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableRoutineLocationResponse;
  v4 = [(HDCodableRoutineLocationResponse *)&v8 description];
  dictionaryRepresentation = [(HDCodableRoutineLocationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  locationOfInterest = self->_locationOfInterest;
  if (locationOfInterest)
  {
    dictionaryRepresentation = [(HDCodableRoutineLocation *)locationOfInterest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"locationOfInterest"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_locationOfInterest)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  locationOfInterest = self->_locationOfInterest;
  if (locationOfInterest)
  {
    [to setLocationOfInterest:locationOfInterest];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableRoutineLocation *)self->_locationOfInterest copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    locationOfInterest = self->_locationOfInterest;
    if (locationOfInterest | equalCopy[1])
    {
      v6 = [(HDCodableRoutineLocation *)locationOfInterest isEqual:?];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  locationOfInterest = self->_locationOfInterest;
  v6 = fromCopy[1];
  if (locationOfInterest)
  {
    if (v6)
    {
      [(HDCodableRoutineLocation *)locationOfInterest mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableRoutineLocationResponse *)self setLocationOfInterest:?];
  }

  MEMORY[0x2821F96F8]();
}

@end