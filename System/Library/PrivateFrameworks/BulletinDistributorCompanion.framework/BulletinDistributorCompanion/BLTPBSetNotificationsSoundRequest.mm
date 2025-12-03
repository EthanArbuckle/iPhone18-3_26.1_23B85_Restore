@interface BLTPBSetNotificationsSoundRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSound:(id)sound;
- (int)sound;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBSetNotificationsSoundRequest

- (int)sound
{
  if (*&self->_has)
  {
    return self->_sound;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsSound:(id)sound
{
  soundCopy = sound;
  if ([soundCopy isEqualToString:@"Off"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [soundCopy isEqualToString:@"On"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBSetNotificationsSoundRequest;
  v4 = [(BLTPBSetNotificationsSoundRequest *)&v8 description];
  dictionaryRepresentation = [(BLTPBSetNotificationsSoundRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    sound = self->_sound;
    if (sound)
    {
      if (sound == 1)
      {
        v5 = @"On";
      }

      else
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_sound];
      }
    }

    else
    {
      v5 = @"Off";
    }

    [dictionary setObject:v5 forKey:@"sound"];
  }

  sectionID = self->_sectionID;
  if (sectionID)
  {
    [dictionary setObject:sectionID forKey:@"sectionID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    sound = self->_sound;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_sound;
    *(toCopy + 20) |= 1u;
  }

  if (self->_sectionID)
  {
    v5 = toCopy;
    [toCopy setSectionID:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_sound;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_sectionID copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 20);
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_sound != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  sectionID = self->_sectionID;
  if (sectionID | *(equalCopy + 1))
  {
    v7 = [(NSString *)sectionID isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_sound;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_sectionID hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    self->_sound = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(BLTPBSetNotificationsSoundRequest *)self setSectionID:?];
    fromCopy = v5;
  }
}

@end