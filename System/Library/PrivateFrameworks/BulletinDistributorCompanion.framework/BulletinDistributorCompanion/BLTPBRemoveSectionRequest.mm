@interface BLTPBRemoveSectionRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBRemoveSectionRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBRemoveSectionRequest;
  v4 = [(BLTPBRemoveSectionRequest *)&v8 description];
  dictionaryRepresentation = [(BLTPBRemoveSectionRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  sectionID = self->_sectionID;
  if (sectionID)
  {
    [dictionary setObject:sectionID forKey:@"sectionID"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  sectionID = self->_sectionID;
  if (sectionID)
  {
    [to setSectionID:sectionID];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sectionID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    sectionID = self->_sectionID;
    if (sectionID | equalCopy[1])
    {
      v6 = [(NSString *)sectionID isEqual:?];
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
  if (*(from + 1))
  {
    [(BLTPBRemoveSectionRequest *)self setSectionID:?];
  }
}

@end