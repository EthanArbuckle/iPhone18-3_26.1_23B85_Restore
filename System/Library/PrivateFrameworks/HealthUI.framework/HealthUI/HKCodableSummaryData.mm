@interface HKCodableSummaryData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMinimumSupportedVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryData

- (void)setHasMinimumSupportedVersion:(BOOL)a3
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryData;
  v4 = [(HKCodableSummaryData *)&v8 description];
  v5 = [(HKCodableSummaryData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  contentData = self->_contentData;
  if (contentData)
  {
    [v3 setObject:contentData forKey:@"contentData"];
  }

  kindRawValue = self->_kindRawValue;
  if (kindRawValue)
  {
    [v4 setObject:kindRawValue forKey:@"kindRawValue"];
  }

  databaseChangesQueryAnchor = self->_databaseChangesQueryAnchor;
  if (databaseChangesQueryAnchor)
  {
    v8 = [(HKCodableQueryAnchor *)databaseChangesQueryAnchor dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"databaseChangesQueryAnchor"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_contentData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_kindRawValue)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_databaseChangesQueryAnchor)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_audienceRawValue)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_contentData)
  {
    [v4 setContentData:?];
    v4 = v6;
  }

  if (self->_kindRawValue)
  {
    [v6 setKindRawValue:?];
    v4 = v6;
  }

  if (self->_databaseChangesQueryAnchor)
  {
    [v6 setDatabaseChangesQueryAnchor:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_latestSupportedVersion;
    *(v4 + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_minimumSupportedVersion;
    *(v4 + 56) |= 2u;
  }

  if (self->_audienceRawValue)
  {
    [v6 setAudienceRawValue:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_contentData copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_kindRawValue copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(HKCodableQueryAnchor *)self->_databaseChangesQueryAnchor copyWithZone:a3];
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

  v13 = [(NSString *)self->_audienceRawValue copyWithZone:a3];
  v14 = *(v5 + 24);
  *(v5 + 24) = v13;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  contentData = self->_contentData;
  if (contentData | *(v4 + 4))
  {
    if (![(NSData *)contentData isEqual:?])
    {
      goto LABEL_20;
    }
  }

  kindRawValue = self->_kindRawValue;
  if (kindRawValue | *(v4 + 6))
  {
    if (![(NSString *)kindRawValue isEqual:?])
    {
      goto LABEL_20;
    }
  }

  databaseChangesQueryAnchor = self->_databaseChangesQueryAnchor;
  if (databaseChangesQueryAnchor | *(v4 + 5))
  {
    if (![(HKCodableQueryAnchor *)databaseChangesQueryAnchor isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_latestSupportedVersion != *(v4 + 1))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_20:
    v9 = 0;
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_minimumSupportedVersion != *(v4 + 2))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_20;
  }

  audienceRawValue = self->_audienceRawValue;
  if (audienceRawValue | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4[4])
  {
    [(HKCodableSummaryData *)self setContentData:?];
    v4 = v8;
  }

  if (v4[6])
  {
    [(HKCodableSummaryData *)self setKindRawValue:?];
    v4 = v8;
  }

  databaseChangesQueryAnchor = self->_databaseChangesQueryAnchor;
  v6 = v4[5];
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

  v4 = v8;
LABEL_11:
  v7 = *(v4 + 56);
  if (v7)
  {
    self->_latestSupportedVersion = v4[1];
    *&self->_has |= 1u;
    v7 = *(v4 + 56);
  }

  if ((v7 & 2) != 0)
  {
    self->_minimumSupportedVersion = v4[2];
    *&self->_has |= 2u;
  }

  if (v4[3])
  {
    databaseChangesQueryAnchor = [(HKCodableSummaryData *)self setAudienceRawValue:?];
    v4 = v8;
  }

  MEMORY[0x1EEE66BB8](databaseChangesQueryAnchor, v4);
}

@end