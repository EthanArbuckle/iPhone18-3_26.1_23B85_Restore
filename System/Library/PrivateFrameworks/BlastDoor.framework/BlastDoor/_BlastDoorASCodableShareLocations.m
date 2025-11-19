@interface _BlastDoorASCodableShareLocations
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _BlastDoorASCodableShareLocations

- (id)description
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = _BlastDoorASCodableShareLocations;
  v4 = [(_BlastDoorASCodableShareLocations *)&v9 description];
  v5 = [(_BlastDoorASCodableShareLocations *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  activityShareURL = self->_activityShareURL;
  if (activityShareURL)
  {
    [v3 setObject:activityShareURL forKey:@"activityShareURL"];
  }

  relationshipShareURL = self->_relationshipShareURL;
  if (relationshipShareURL)
  {
    [v4 setObject:relationshipShareURL forKey:@"relationshipShareURL"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_activityShareURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_relationshipShareURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_activityShareURL)
  {
    [v4 setActivityShareURL:?];
    v4 = v5;
  }

  if (self->_relationshipShareURL)
  {
    [v5 setRelationshipShareURL:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_activityShareURL copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_relationshipShareURL copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((activityShareURL = self->_activityShareURL, !(activityShareURL | v4[1])) || -[NSString isEqual:](activityShareURL, "isEqual:")))
  {
    relationshipShareURL = self->_relationshipShareURL;
    if (relationshipShareURL | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(_BlastDoorASCodableShareLocations *)self setActivityShareURL:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(_BlastDoorASCodableShareLocations *)self setRelationshipShareURL:?];
    v4 = v5;
  }
}

@end