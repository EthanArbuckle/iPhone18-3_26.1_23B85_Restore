@interface HKCodableSummaryCurrentValue
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

@implementation HKCodableSummaryCurrentValue

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
  v8.super_class = HKCodableSummaryCurrentValue;
  v4 = [(HKCodableSummaryCurrentValue *)&v8 description];
  v5 = [(HKCodableSummaryCurrentValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  valueData = self->_valueData;
  if (valueData)
  {
    [v3 setObject:valueData forKey:@"valueData"];
  }

  kindRawValue = self->_kindRawValue;
  if (kindRawValue)
  {
    [v4 setObject:kindRawValue forKey:@"kindRawValue"];
  }

  supplementaryValue = self->_supplementaryValue;
  if (supplementaryValue)
  {
    v8 = [(HKCodableSummarySupplementaryValue *)supplementaryValue dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"supplementaryValue"];
  }

  queryConfigurationData = self->_queryConfigurationData;
  if (queryConfigurationData)
  {
    [v4 setObject:queryConfigurationData forKey:@"queryConfigurationData"];
  }

  metadataDictionary = self->_metadataDictionary;
  if (metadataDictionary)
  {
    v11 = [(HKCodableMetadataDictionary *)metadataDictionary dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"metadataDictionary"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_latestSupportedVersion];
    [v4 setObject:v13 forKey:@"latestSupportedVersion"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minimumSupportedVersion];
    [v4 setObject:v14 forKey:@"minimumSupportedVersion"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_valueData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_kindRawValue)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_supplementaryValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_queryConfigurationData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_metadataDictionary)
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
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_valueData)
  {
    [v4 setValueData:?];
    v4 = v6;
  }

  if (self->_kindRawValue)
  {
    [v6 setKindRawValue:?];
    v4 = v6;
  }

  if (self->_supplementaryValue)
  {
    [v6 setSupplementaryValue:?];
    v4 = v6;
  }

  if (self->_queryConfigurationData)
  {
    [v6 setQueryConfigurationData:?];
    v4 = v6;
  }

  if (self->_metadataDictionary)
  {
    [v6 setMetadataDictionary:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_latestSupportedVersion;
    *(v4 + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_minimumSupportedVersion;
    *(v4 + 64) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_valueData copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_kindRawValue copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(HKCodableSummarySupplementaryValue *)self->_supplementaryValue copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSData *)self->_queryConfigurationData copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(HKCodableMetadataDictionary *)self->_metadataDictionary copyWithZone:a3];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_latestSupportedVersion;
    *(v5 + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_minimumSupportedVersion;
    *(v5 + 64) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  valueData = self->_valueData;
  if (valueData | *(v4 + 7))
  {
    if (![(NSData *)valueData isEqual:?])
    {
      goto LABEL_21;
    }
  }

  kindRawValue = self->_kindRawValue;
  if (kindRawValue | *(v4 + 3))
  {
    if (![(NSString *)kindRawValue isEqual:?])
    {
      goto LABEL_21;
    }
  }

  supplementaryValue = self->_supplementaryValue;
  if (supplementaryValue | *(v4 + 6))
  {
    if (![(HKCodableSummarySupplementaryValue *)supplementaryValue isEqual:?])
    {
      goto LABEL_21;
    }
  }

  queryConfigurationData = self->_queryConfigurationData;
  if (queryConfigurationData | *(v4 + 5))
  {
    if (![(NSData *)queryConfigurationData isEqual:?])
    {
      goto LABEL_21;
    }
  }

  metadataDictionary = self->_metadataDictionary;
  if (metadataDictionary | *(v4 + 4))
  {
    if (![(HKCodableMetadataDictionary *)metadataDictionary isEqual:?])
    {
      goto LABEL_21;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_latestSupportedVersion != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_21:
    v10 = 0;
    goto LABEL_22;
  }

  v10 = (*(v4 + 64) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_minimumSupportedVersion != *(v4 + 2))
    {
      goto LABEL_21;
    }

    v10 = 1;
  }

LABEL_22:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_valueData hash];
  v4 = [(NSString *)self->_kindRawValue hash];
  v5 = [(HKCodableSummarySupplementaryValue *)self->_supplementaryValue hash];
  v6 = [(NSData *)self->_queryConfigurationData hash];
  v7 = [(HKCodableMetadataDictionary *)self->_metadataDictionary hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_latestSupportedVersion;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = 2654435761 * self->_minimumSupportedVersion;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4[7])
  {
    [(HKCodableSummaryCurrentValue *)self setValueData:?];
    v4 = v10;
  }

  if (v4[3])
  {
    [(HKCodableSummaryCurrentValue *)self setKindRawValue:?];
    v4 = v10;
  }

  supplementaryValue = self->_supplementaryValue;
  v6 = v4[6];
  if (supplementaryValue)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(HKCodableSummarySupplementaryValue *)supplementaryValue mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(HKCodableSummaryCurrentValue *)self setSupplementaryValue:?];
  }

  v4 = v10;
LABEL_11:
  if (v4[5])
  {
    [(HKCodableSummaryCurrentValue *)self setQueryConfigurationData:?];
    v4 = v10;
  }

  metadataDictionary = self->_metadataDictionary;
  v8 = v4[4];
  if (metadataDictionary)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    metadataDictionary = [(HKCodableMetadataDictionary *)metadataDictionary mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    metadataDictionary = [(HKCodableSummaryCurrentValue *)self setMetadataDictionary:?];
  }

  v4 = v10;
LABEL_19:
  v9 = *(v4 + 64);
  if (v9)
  {
    self->_latestSupportedVersion = v4[1];
    *&self->_has |= 1u;
    v9 = *(v4 + 64);
  }

  if ((v9 & 2) != 0)
  {
    self->_minimumSupportedVersion = v4[2];
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8](metadataDictionary, v4);
}

@end