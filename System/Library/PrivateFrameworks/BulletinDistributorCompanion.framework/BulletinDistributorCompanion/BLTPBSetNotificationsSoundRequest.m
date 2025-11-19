@interface BLTPBSetNotificationsSoundRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSound:(id)a3;
- (int)sound;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsSound:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Off"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"On"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBSetNotificationsSoundRequest;
  v4 = [(BLTPBSetNotificationsSoundRequest *)&v8 description];
  v5 = [(BLTPBSetNotificationsSoundRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v5 forKey:@"sound"];
  }

  sectionID = self->_sectionID;
  if (sectionID)
  {
    [v3 setObject:sectionID forKey:@"sectionID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    sound = self->_sound;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_sound;
    *(v4 + 20) |= 1u;
  }

  if (self->_sectionID)
  {
    v5 = v4;
    [v4 setSectionID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_sound;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_sectionID copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 20);
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_sound != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  sectionID = self->_sectionID;
  if (sectionID | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    self->_sound = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(BLTPBSetNotificationsSoundRequest *)self setSectionID:?];
    v4 = v5;
  }
}

@end