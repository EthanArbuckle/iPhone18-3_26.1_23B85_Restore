@interface BLTPBSetSectionSubtypeParametersIconRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDefaultSubtype:(BOOL)subtype;
- (void)writeTo:(id)to;
@end

@implementation BLTPBSetSectionSubtypeParametersIconRequest

- (void)setHasDefaultSubtype:(BOOL)subtype
{
  if (subtype)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBSetSectionSubtypeParametersIconRequest;
  v4 = [(BLTPBSetSectionSubtypeParametersIconRequest *)&v8 description];
  dictionaryRepresentation = [(BLTPBSetSectionSubtypeParametersIconRequest *)self dictionaryRepresentation];
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

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_subtypeID];
    [v4 setObject:v7 forKey:@"subtypeID"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_defaultSubtype];
    [v4 setObject:v8 forKey:@"defaultSubtype"];
  }

  icon = self->_icon;
  if (icon)
  {
    dictionaryRepresentation = [(BLTPBSectionIcon *)icon dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"icon"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    subtypeID = self->_subtypeID;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    defaultSubtype = self->_defaultSubtype;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_icon)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sectionID)
  {
    [toCopy setSectionID:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_subtypeID;
    *(toCopy + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 32) = self->_defaultSubtype;
    *(toCopy + 36) |= 2u;
  }

  if (self->_icon)
  {
    [v6 setIcon:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sectionID copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_subtypeID;
    *(v5 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_defaultSubtype;
    *(v5 + 36) |= 2u;
  }

  v9 = [(BLTPBSectionIcon *)self->_icon copyWithZone:zone];
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  sectionID = self->_sectionID;
  if (sectionID | *(equalCopy + 3))
  {
    if (![(NSString *)sectionID isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v6 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_subtypeID != *(equalCopy + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  if ((*(equalCopy + 36) & 2) == 0)
  {
    goto LABEL_14;
  }

  v10 = *(equalCopy + 32);
  if (self->_defaultSubtype)
  {
    if ((*(equalCopy + 32) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_14;
  }

LABEL_11:
  icon = self->_icon;
  if (icon | *(equalCopy + 2))
  {
    v8 = [(BLTPBSectionIcon *)icon isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sectionID hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_subtypeID;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(BLTPBSectionIcon *)self->_icon hash];
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_defaultSubtype;
  return v4 ^ v3 ^ v5 ^ [(BLTPBSectionIcon *)self->_icon hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(BLTPBSetSectionSubtypeParametersIconRequest *)self setSectionID:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_subtypeID = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
  }

  if ((v5 & 2) != 0)
  {
    self->_defaultSubtype = *(fromCopy + 32);
    *&self->_has |= 2u;
  }

  icon = self->_icon;
  v7 = *(fromCopy + 2);
  if (icon)
  {
    if (v7)
    {
      [(BLTPBSectionIcon *)icon mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(BLTPBSetSectionSubtypeParametersIconRequest *)self setIcon:?];
  }

  MEMORY[0x2821F96F8]();
}

@end