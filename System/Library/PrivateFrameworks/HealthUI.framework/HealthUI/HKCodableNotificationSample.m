@interface HKCodableNotificationSample
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDataType:(BOOL)a3;
- (void)setHasEndDate:(BOOL)a3;
- (void)setHasLatestSupportedVersion:(BOOL)a3;
- (void)setHasMinimumSupportedVersion:(BOOL)a3;
- (void)setHasStartDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableNotificationSample

- (void)setHasStartDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasEndDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDataType:(BOOL)a3
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

- (void)setHasLatestSupportedVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMinimumSupportedVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableNotificationSample;
  v4 = [(HKCodableNotificationSample *)&v8 description];
  v5 = [(HKCodableNotificationSample *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDate];
    [v3 setObject:v5 forKey:@"startDate"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDate];
    [v3 setObject:v6 forKey:@"endDate"];
  }

  metadataDictionary = self->_metadataDictionary;
  if (metadataDictionary)
  {
    v8 = [(HKCodableMetadataDictionary *)metadataDictionary dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"metadataDictionary"];
  }

  v9 = self->_has;
  if (v9)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_categoryValue];
    [v3 setObject:v13 forKey:@"categoryValue"];

    v9 = self->_has;
    if ((v9 & 2) == 0)
    {
LABEL_9:
      if ((v9 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_dataType];
  [v3 setObject:v14 forKey:@"dataType"];

  v9 = self->_has;
  if ((v9 & 8) == 0)
  {
LABEL_10:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_latestSupportedVersion];
  [v3 setObject:v15 forKey:@"latestSupportedVersion"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minimumSupportedVersion];
    [v3 setObject:v10 forKey:@"minimumSupportedVersion"];
  }

LABEL_12:
  sampleUUID = self->_sampleUUID;
  if (sampleUUID)
  {
    [v3 setObject:sampleUUID forKey:@"sampleUUID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v7 = v4;
  if ((has & 0x20) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v7;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

  if (self->_metadataDictionary)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    PBDataWriterWriteInt64Field();
    v4 = v7;
    v6 = self->_has;
    if ((v6 & 2) == 0)
    {
LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteInt64Field();
  v4 = v7;
  v6 = self->_has;
  if ((v6 & 8) == 0)
  {
LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  PBDataWriterWriteInt64Field();
  v4 = v7;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }

LABEL_12:
  if (self->_sampleUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v4[6] = *&self->_startDate;
    *(v4 + 72) |= 0x20u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v4[3] = *&self->_endDate;
    *(v4 + 72) |= 4u;
  }

  v7 = v4;
  if (self->_metadataDictionary)
  {
    [v4 setMetadataDictionary:?];
    v4 = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    v4[1] = self->_categoryValue;
    *(v4 + 72) |= 1u;
    v6 = self->_has;
    if ((v6 & 2) == 0)
    {
LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  v4[2] = self->_dataType;
  *(v4 + 72) |= 2u;
  v6 = self->_has;
  if ((v6 & 8) == 0)
  {
LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  v4[4] = self->_latestSupportedVersion;
  *(v4 + 72) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    v4[5] = self->_minimumSupportedVersion;
    *(v4 + 72) |= 0x10u;
  }

LABEL_12:
  if (self->_sampleUUID)
  {
    [v7 setSampleUUID:?];
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 48) = self->_startDate;
    *(v5 + 72) |= 0x20u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_endDate;
    *(v5 + 72) |= 4u;
  }

  v8 = [(HKCodableMetadataDictionary *)self->_metadataDictionary copyWithZone:a3];
  v9 = *(v6 + 56);
  *(v6 + 56) = v8;

  v10 = self->_has;
  if (v10)
  {
    *(v6 + 8) = self->_categoryValue;
    *(v6 + 72) |= 1u;
    v10 = self->_has;
    if ((v10 & 2) == 0)
    {
LABEL_7:
      if ((v10 & 8) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      *(v6 + 32) = self->_latestSupportedVersion;
      *(v6 + 72) |= 8u;
      if ((*&self->_has & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 16) = self->_dataType;
  *(v6 + 72) |= 2u;
  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v10 & 0x10) != 0)
  {
LABEL_9:
    *(v6 + 40) = self->_minimumSupportedVersion;
    *(v6 + 72) |= 0x10u;
  }

LABEL_10:
  v11 = [(NSString *)self->_sampleUUID copyWithZone:a3];
  v12 = *(v6 + 64);
  *(v6 + 64) = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    if ((*(v4 + 72) & 0x20) == 0 || self->_startDate != *(v4 + 6))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 72) & 0x20) != 0)
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 72) & 4) == 0 || self->_endDate != *(v4 + 3))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 72) & 4) != 0)
  {
    goto LABEL_37;
  }

  metadataDictionary = self->_metadataDictionary;
  if (metadataDictionary | *(v4 + 7))
  {
    if (![(HKCodableMetadataDictionary *)metadataDictionary isEqual:?])
    {
LABEL_37:
      v8 = 0;
      goto LABEL_38;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_categoryValue != *(v4 + 1))
    {
      goto LABEL_37;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_37;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 72) & 2) == 0 || self->_dataType != *(v4 + 2))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 72) & 2) != 0)
  {
    goto LABEL_37;
  }

  if ((has & 8) != 0)
  {
    if ((*(v4 + 72) & 8) == 0 || self->_latestSupportedVersion != *(v4 + 4))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 72) & 8) != 0)
  {
    goto LABEL_37;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 72) & 0x10) == 0 || self->_minimumSupportedVersion != *(v4 + 5))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 72) & 0x10) != 0)
  {
    goto LABEL_37;
  }

  sampleUUID = self->_sampleUUID;
  if (sampleUUID | *(v4 + 8))
  {
    v8 = [(NSString *)sampleUUID isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_38:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) != 0)
  {
    startDate = self->_startDate;
    if (startDate < 0.0)
    {
      startDate = -startDate;
    }

    *v2.i64 = floor(startDate + 0.5);
    v7 = (startDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v2.i64 = floor(endDate + 0.5);
    v11 = (endDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = [(HKCodableMetadataDictionary *)self->_metadataDictionary hash];
  if (*&self->_has)
  {
    v14 = 2654435761 * self->_categoryValue;
    if ((*&self->_has & 2) != 0)
    {
LABEL_19:
      v15 = 2654435761 * self->_dataType;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_20;
      }

LABEL_24:
      v16 = 0;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_21;
      }

LABEL_25:
      v17 = 0;
      return v9 ^ v5 ^ v14 ^ v15 ^ v16 ^ v17 ^ v13 ^ [(NSString *)self->_sampleUUID hash];
    }
  }

  else
  {
    v14 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_19;
    }
  }

  v15 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v16 = 2654435761 * self->_latestSupportedVersion;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  v17 = 2654435761 * self->_minimumSupportedVersion;
  return v9 ^ v5 ^ v14 ^ v15 ^ v16 ^ v17 ^ v13 ^ [(NSString *)self->_sampleUUID hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 72);
  if ((v6 & 0x20) != 0)
  {
    self->_startDate = v4[6];
    *&self->_has |= 0x20u;
    v6 = *(v4 + 72);
  }

  if ((v6 & 4) != 0)
  {
    self->_endDate = v4[3];
    *&self->_has |= 4u;
  }

  metadataDictionary = self->_metadataDictionary;
  v8 = *(v5 + 7);
  v10 = v5;
  if (metadataDictionary)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    metadataDictionary = [(HKCodableMetadataDictionary *)metadataDictionary mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    metadataDictionary = [(HKCodableNotificationSample *)self setMetadataDictionary:?];
  }

  v5 = v10;
LABEL_11:
  v9 = *(v5 + 72);
  if (v9)
  {
    self->_categoryValue = v5[1];
    *&self->_has |= 1u;
    v9 = *(v5 + 72);
    if ((v9 & 2) == 0)
    {
LABEL_13:
      if ((v9 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }
  }

  else if ((v5[9] & 2) == 0)
  {
    goto LABEL_13;
  }

  self->_dataType = v5[2];
  *&self->_has |= 2u;
  v9 = *(v5 + 72);
  if ((v9 & 8) == 0)
  {
LABEL_14:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_23:
  self->_latestSupportedVersion = v5[4];
  *&self->_has |= 8u;
  if ((v5[9] & 0x10) != 0)
  {
LABEL_15:
    self->_minimumSupportedVersion = v5[5];
    *&self->_has |= 0x10u;
  }

LABEL_16:
  if (*(v5 + 8))
  {
    metadataDictionary = [(HKCodableNotificationSample *)self setSampleUUID:?];
    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](metadataDictionary, v5);
}

@end