@interface BLTPBSetSectionSubtypeParametersIconRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDefaultSubtype:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBSetSectionSubtypeParametersIconRequest

- (void)setHasDefaultSubtype:(BOOL)a3
{
  if (a3)
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
  v5 = [(BLTPBSetSectionSubtypeParametersIconRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  sectionID = self->_sectionID;
  if (sectionID)
  {
    [v3 setObject:sectionID forKey:@"sectionID"];
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
    v10 = [(BLTPBSectionIcon *)icon dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"icon"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    subtypeID = self->_subtypeID;
    PBDataWriterWriteUint64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    defaultSubtype = self->_defaultSubtype;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_icon)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sectionID)
  {
    [v4 setSectionID:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_subtypeID;
    *(v4 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 32) = self->_defaultSubtype;
    *(v4 + 36) |= 2u;
  }

  if (self->_icon)
  {
    [v6 setIcon:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_sectionID copyWithZone:a3];
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

  v9 = [(BLTPBSectionIcon *)self->_icon copyWithZone:a3];
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  sectionID = self->_sectionID;
  if (sectionID | *(v4 + 3))
  {
    if (![(NSString *)sectionID isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v6 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_subtypeID != *(v4 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_14;
  }

  v10 = *(v4 + 32);
  if (self->_defaultSubtype)
  {
    if ((*(v4 + 32) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_14;
  }

LABEL_11:
  icon = self->_icon;
  if (icon | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 3))
  {
    [(BLTPBSetSectionSubtypeParametersIconRequest *)self setSectionID:?];
    v4 = v8;
  }

  v5 = *(v4 + 36);
  if (v5)
  {
    self->_subtypeID = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
  }

  if ((v5 & 2) != 0)
  {
    self->_defaultSubtype = *(v4 + 32);
    *&self->_has |= 2u;
  }

  icon = self->_icon;
  v7 = *(v4 + 2);
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