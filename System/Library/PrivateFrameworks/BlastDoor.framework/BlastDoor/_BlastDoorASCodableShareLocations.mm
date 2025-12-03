@interface _BlastDoorASCodableShareLocations
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _BlastDoorASCodableShareLocations

- (id)description
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = _BlastDoorASCodableShareLocations;
  v4 = [(_BlastDoorASCodableShareLocations *)&v9 description];
  dictionaryRepresentation = [(_BlastDoorASCodableShareLocations *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  activityShareURL = self->_activityShareURL;
  if (activityShareURL)
  {
    [dictionary setObject:activityShareURL forKey:@"activityShareURL"];
  }

  relationshipShareURL = self->_relationshipShareURL;
  if (relationshipShareURL)
  {
    [v4 setObject:relationshipShareURL forKey:@"relationshipShareURL"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_activityShareURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_relationshipShareURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_activityShareURL)
  {
    [toCopy setActivityShareURL:?];
    toCopy = v5;
  }

  if (self->_relationshipShareURL)
  {
    [v5 setRelationshipShareURL:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_activityShareURL copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_relationshipShareURL copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((activityShareURL = self->_activityShareURL, !(activityShareURL | equalCopy[1])) || -[NSString isEqual:](activityShareURL, "isEqual:")))
  {
    relationshipShareURL = self->_relationshipShareURL;
    if (relationshipShareURL | equalCopy[2])
    {
      v7 = [(NSString *)relationshipShareURL isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(_BlastDoorASCodableShareLocations *)self setActivityShareURL:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(_BlastDoorASCodableShareLocations *)self setRelationshipShareURL:?];
    fromCopy = v5;
  }
}

@end