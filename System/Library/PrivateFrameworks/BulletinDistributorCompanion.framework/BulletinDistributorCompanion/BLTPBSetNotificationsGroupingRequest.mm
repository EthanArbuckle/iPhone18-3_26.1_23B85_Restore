@interface BLTPBSetNotificationsGroupingRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsGrouping:(id)grouping;
- (int)grouping;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBSetNotificationsGroupingRequest

- (int)grouping
{
  if (*&self->_has)
  {
    return self->_grouping;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsGrouping:(id)grouping
{
  groupingCopy = grouping;
  if ([groupingCopy isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([groupingCopy isEqualToString:@"Section"])
  {
    v4 = 1;
  }

  else if ([groupingCopy isEqualToString:@"Off"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBSetNotificationsGroupingRequest;
  v4 = [(BLTPBSetNotificationsGroupingRequest *)&v8 description];
  dictionaryRepresentation = [(BLTPBSetNotificationsGroupingRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    grouping = self->_grouping;
    if (grouping >= 3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_grouping];
    }

    else
    {
      v5 = off_278D31ED0[grouping];
    }

    [dictionary setObject:v5 forKey:@"grouping"];
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
    grouping = self->_grouping;
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
    toCopy[2] = self->_grouping;
    *(toCopy + 24) |= 1u;
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
    *(v5 + 8) = self->_grouping;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_sectionID copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_grouping != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  sectionID = self->_sectionID;
  if (sectionID | *(equalCopy + 2))
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
    v2 = 2654435761 * self->_grouping;
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
  if (fromCopy[6])
  {
    self->_grouping = fromCopy[2];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(BLTPBSetNotificationsGroupingRequest *)self setSectionID:?];
    fromCopy = v5;
  }
}

@end