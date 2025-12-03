@interface HKCodableSummaryData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMinimumSupportedVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryData

- (void)setHasMinimumSupportedVersion:(BOOL)version
{
  if (version)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryData;
  v4 = [(HKCodableSummaryData *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  contentData = self->_contentData;
  if (contentData)
  {
    [dictionary setObject:contentData forKey:@"contentData"];
  }

  kindRawValue = self->_kindRawValue;
  if (kindRawValue)
  {
    [v4 setObject:kindRawValue forKey:@"kindRawValue"];
  }

  databaseChangesQueryAnchor = self->_databaseChangesQueryAnchor;
  if (databaseChangesQueryAnchor)
  {
    dictionaryRepresentation = [(HKCodableQueryAnchor *)databaseChangesQueryAnchor dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"databaseChangesQueryAnchor"];
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_latestSupportedVersion];
    [v4 setObject:v10 forKey:@"latestSupportedVersion"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minimumSupportedVersion];
    [v4 setObject:v11 forKey:@"minimumSupportedVersion"];
  }

  audienceRawValue = self->_audienceRawValue;
  if (audienceRawValue)
  {
    [v4 setObject:audienceRawValue forKey:@"audienceRawValue"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_contentData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_kindRawValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_databaseChangesQueryAnchor)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_audienceRawValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_contentData)
  {
    [toCopy setContentData:?];
    toCopy = v6;
  }

  if (self->_kindRawValue)
  {
    [v6 setKindRawValue:?];
    toCopy = v6;
  }

  if (self->_databaseChangesQueryAnchor)
  {
    [v6 setDatabaseChangesQueryAnchor:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_latestSupportedVersion;
    *(toCopy + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_minimumSupportedVersion;
    *(toCopy + 56) |= 2u;
  }

  if (self->_audienceRawValue)
  {
    [v6 setAudienceRawValue:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_contentData copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_kindRawValue copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(HKCodableQueryAnchor *)self->_databaseChangesQueryAnchor copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_latestSupportedVersion;
    *(v5 + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_minimumSupportedVersion;
    *(v5 + 56) |= 2u;
  }

  v13 = [(NSString *)self->_audienceRawValue copyWithZone:zone];
  v14 = *(v5 + 24);
  *(v5 + 24) = v13;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  contentData = self->_contentData;
  if (contentData | *(equalCopy + 4))
  {
    if (![(NSData *)contentData isEqual:?])
    {
      goto LABEL_20;
    }
  }

  kindRawValue = self->_kindRawValue;
  if (kindRawValue | *(equalCopy + 6))
  {
    if (![(NSString *)kindRawValue isEqual:?])
    {
      goto LABEL_20;
    }
  }

  databaseChangesQueryAnchor = self->_databaseChangesQueryAnchor;
  if (databaseChangesQueryAnchor | *(equalCopy + 5))
  {
    if (![(HKCodableQueryAnchor *)databaseChangesQueryAnchor isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_latestSupportedVersion != *(equalCopy + 1))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_20:
    v9 = 0;
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_minimumSupportedVersion != *(equalCopy + 2))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_20;
  }

  audienceRawValue = self->_audienceRawValue;
  if (audienceRawValue | *(equalCopy + 3))
  {
    v9 = [(NSString *)audienceRawValue isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_21:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_contentData hash];
  v4 = [(NSString *)self->_kindRawValue hash];
  v5 = [(HKCodableQueryAnchor *)self->_databaseChangesQueryAnchor hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_latestSupportedVersion;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_audienceRawValue hash];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_minimumSupportedVersion;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_audienceRawValue hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (fromCopy[4])
  {
    [(HKCodableSummaryData *)self setContentData:?];
    fromCopy = v8;
  }

  if (fromCopy[6])
  {
    [(HKCodableSummaryData *)self setKindRawValue:?];
    fromCopy = v8;
  }

  databaseChangesQueryAnchor = self->_databaseChangesQueryAnchor;
  v6 = fromCopy[5];
  if (databaseChangesQueryAnchor)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    databaseChangesQueryAnchor = [(HKCodableQueryAnchor *)databaseChangesQueryAnchor mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    databaseChangesQueryAnchor = [(HKCodableSummaryData *)self setDatabaseChangesQueryAnchor:?];
  }

  fromCopy = v8;
LABEL_11:
  v7 = *(fromCopy + 56);
  if (v7)
  {
    self->_latestSupportedVersion = fromCopy[1];
    *&self->_has |= 1u;
    v7 = *(fromCopy + 56);
  }

  if ((v7 & 2) != 0)
  {
    self->_minimumSupportedVersion = fromCopy[2];
    *&self->_has |= 2u;
  }

  if (fromCopy[3])
  {
    databaseChangesQueryAnchor = [(HKCodableSummaryData *)self setAudienceRawValue:?];
    fromCopy = v8;
  }

  MEMORY[0x1EEE66BB8](databaseChangesQueryAnchor, fromCopy);
}

@end