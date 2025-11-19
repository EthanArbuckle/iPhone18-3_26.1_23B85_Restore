@interface ATXPBHeroAppPrediction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsTouristApp:(BOOL)a3;
- (void)setHasLatitude:(BOOL)a3;
- (void)setHasLatitudeAtPredictionTime:(BOOL)a3;
- (void)setHasLongitude:(BOOL)a3;
- (void)setHasLongitudeAtPredictionTime:(BOOL)a3;
- (void)setHasPoiMuid:(BOOL)a3;
- (void)setHasRadius:(BOOL)a3;
- (void)setHasRank:(BOOL)a3;
- (void)setHasScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBHeroAppPrediction

- (void)setHasLatitude:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasLongitude:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasIsTouristApp:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasRank:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRadius:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasLatitudeAtPredictionTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasLongitudeAtPredictionTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasPoiMuid:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBHeroAppPrediction;
  v4 = [(ATXPBHeroAppPrediction *)&v8 description];
  v5 = [(ATXPBHeroAppPrediction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_latitude];
    [v3 setObject:v5 forKey:@"latitude"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_longitude];
    [v3 setObject:v6 forKey:@"longitude"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
  }

  v8 = self->_has;
  if ((v8 & 0x200) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isTouristApp];
    [v3 setObject:v9 forKey:@"isTouristApp"];

    v8 = self->_has;
  }

  if ((v8 & 0x100) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_score];
    [v3 setObject:v10 forKey:@"score"];
  }

  urlHash = self->_urlHash;
  if (urlHash)
  {
    [v3 setObject:urlHash forKey:@"urlHash"];
  }

  clipMetadata = self->_clipMetadata;
  if (clipMetadata)
  {
    [v3 setObject:clipMetadata forKey:@"clipMetadata"];
  }

  v13 = self->_has;
  if (v13)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_adamId];
    [v3 setObject:v18 forKey:@"adamId"];

    v13 = self->_has;
    if ((v13 & 0x80) == 0)
    {
LABEL_17:
      if ((v13 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    goto LABEL_17;
  }

  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_rank];
  [v3 setObject:v19 forKey:@"rank"];

  v13 = self->_has;
  if ((v13 & 0x40) == 0)
  {
LABEL_18:
    if ((v13 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  v20 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_radius];
  [v3 setObject:v20 forKey:@"radius"];

  v13 = self->_has;
  if ((v13 & 4) == 0)
  {
LABEL_19:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_31:
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_latitudeAtPredictionTime];
  [v3 setObject:v21 forKey:@"latitudeAtPredictionTime"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_20:
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_longitudeAtPredictionTime];
    [v3 setObject:v14 forKey:@"longitudeAtPredictionTime"];
  }

LABEL_21:
  poiCategory = self->_poiCategory;
  if (poiCategory)
  {
    [v3 setObject:poiCategory forKey:@"poiCategory"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_poiMuid];
    [v3 setObject:v16 forKey:@"poiMuid"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    latitude = self->_latitude;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    longitude = self->_longitude;
    PBDataWriterWriteDoubleField();
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 0x200) != 0)
  {
    isTouristApp = self->_isTouristApp;
    PBDataWriterWriteBOOLField();
    v7 = self->_has;
  }

  if ((v7 & 0x100) != 0)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
  }

  if (self->_urlHash)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_clipMetadata)
  {
    PBDataWriterWriteDataField();
  }

  v10 = self->_has;
  if (v10)
  {
    adamId = self->_adamId;
    PBDataWriterWriteInt64Field();
    v10 = self->_has;
    if ((v10 & 0x80) == 0)
    {
LABEL_17:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_17;
  }

  rank = self->_rank;
  PBDataWriterWriteInt64Field();
  v10 = self->_has;
  if ((v10 & 0x40) == 0)
  {
LABEL_18:
    if ((v10 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  radius = self->_radius;
  PBDataWriterWriteInt64Field();
  v10 = self->_has;
  if ((v10 & 4) == 0)
  {
LABEL_19:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_31:
  latitudeAtPredictionTime = self->_latitudeAtPredictionTime;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_20:
    longitudeAtPredictionTime = self->_longitudeAtPredictionTime;
    PBDataWriterWriteDoubleField();
  }

LABEL_21:
  if (self->_poiCategory)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    poiMuid = self->_poiMuid;
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = *&self->_latitude;
    *(v4 + 58) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v4[4] = *&self->_longitude;
    *(v4 + 58) |= 8u;
  }

  v8 = v4;
  if (self->_bundleId)
  {
    [v4 setBundleId:?];
    v4 = v8;
  }

  v6 = self->_has;
  if ((v6 & 0x200) != 0)
  {
    *(v4 + 112) = self->_isTouristApp;
    *(v4 + 58) |= 0x200u;
    v6 = self->_has;
  }

  if ((v6 & 0x100) != 0)
  {
    v4[9] = *&self->_score;
    *(v4 + 58) |= 0x100u;
  }

  if (self->_urlHash)
  {
    [v8 setUrlHash:?];
    v4 = v8;
  }

  if (self->_clipMetadata)
  {
    [v8 setClipMetadata:?];
    v4 = v8;
  }

  v7 = self->_has;
  if (v7)
  {
    v4[1] = self->_adamId;
    *(v4 + 58) |= 1u;
    v7 = self->_has;
    if ((v7 & 0x80) == 0)
    {
LABEL_17:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_17;
  }

  v4[8] = self->_rank;
  *(v4 + 58) |= 0x80u;
  v7 = self->_has;
  if ((v7 & 0x40) == 0)
  {
LABEL_18:
    if ((v7 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4[7] = self->_radius;
  *(v4 + 58) |= 0x40u;
  v7 = self->_has;
  if ((v7 & 4) == 0)
  {
LABEL_19:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_31:
  v4[3] = *&self->_latitudeAtPredictionTime;
  *(v4 + 58) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_20:
    v4[5] = *&self->_longitudeAtPredictionTime;
    *(v4 + 58) |= 0x10u;
  }

LABEL_21:
  if (self->_poiCategory)
  {
    [v8 setPoiCategory:?];
    v4 = v8;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v4[6] = self->_poiMuid;
    *(v4 + 58) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_latitude;
    *(v5 + 116) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_longitude;
    *(v5 + 116) |= 8u;
  }

  v8 = [(NSString *)self->_bundleId copyWithZone:a3];
  v9 = *(v6 + 80);
  *(v6 + 80) = v8;

  v10 = self->_has;
  if ((v10 & 0x200) != 0)
  {
    *(v6 + 112) = self->_isTouristApp;
    *(v6 + 116) |= 0x200u;
    v10 = self->_has;
  }

  if ((v10 & 0x100) != 0)
  {
    *(v6 + 72) = self->_score;
    *(v6 + 116) |= 0x100u;
  }

  v11 = [(NSString *)self->_urlHash copyWithZone:a3];
  v12 = *(v6 + 104);
  *(v6 + 104) = v11;

  v13 = [(NSData *)self->_clipMetadata copyWithZone:a3];
  v14 = *(v6 + 88);
  *(v6 + 88) = v13;

  v15 = self->_has;
  if (v15)
  {
    *(v6 + 8) = self->_adamId;
    *(v6 + 116) |= 1u;
    v15 = self->_has;
    if ((v15 & 0x80) == 0)
    {
LABEL_11:
      if ((v15 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else if ((v15 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  *(v6 + 64) = self->_rank;
  *(v6 + 116) |= 0x80u;
  v15 = self->_has;
  if ((v15 & 0x40) == 0)
  {
LABEL_12:
    if ((v15 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v6 + 56) = self->_radius;
  *(v6 + 116) |= 0x40u;
  v15 = self->_has;
  if ((v15 & 4) == 0)
  {
LABEL_13:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_21:
  *(v6 + 24) = self->_latitudeAtPredictionTime;
  *(v6 + 116) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    *(v6 + 40) = self->_longitudeAtPredictionTime;
    *(v6 + 116) |= 0x10u;
  }

LABEL_15:
  v16 = [(NSString *)self->_poiCategory copyWithZone:a3];
  v17 = *(v6 + 96);
  *(v6 + 96) = v16;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 48) = self->_poiMuid;
    *(v6 + 116) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_65;
  }

  has = self->_has;
  v6 = *(v4 + 58);
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_latitude != *(v4 + 2))
    {
      goto LABEL_65;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_65;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_longitude != *(v4 + 4))
    {
      goto LABEL_65;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_65;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 10))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_65;
    }

    has = self->_has;
  }

  v8 = *(v4 + 58);
  if ((has & 0x200) != 0)
  {
    if ((*(v4 + 58) & 0x200) == 0)
    {
      goto LABEL_65;
    }

    v9 = *(v4 + 112);
    if (self->_isTouristApp)
    {
      if ((*(v4 + 112) & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    else if (*(v4 + 112))
    {
      goto LABEL_65;
    }
  }

  else if ((*(v4 + 58) & 0x200) != 0)
  {
    goto LABEL_65;
  }

  if ((has & 0x100) != 0)
  {
    if ((*(v4 + 58) & 0x100) == 0 || self->_score != *(v4 + 9))
    {
      goto LABEL_65;
    }
  }

  else if ((*(v4 + 58) & 0x100) != 0)
  {
    goto LABEL_65;
  }

  urlHash = self->_urlHash;
  if (urlHash | *(v4 + 13) && ![(NSString *)urlHash isEqual:?])
  {
    goto LABEL_65;
  }

  clipMetadata = self->_clipMetadata;
  if (clipMetadata | *(v4 + 11))
  {
    if (![(NSData *)clipMetadata isEqual:?])
    {
      goto LABEL_65;
    }
  }

  v12 = self->_has;
  v13 = *(v4 + 58);
  if (v12)
  {
    if ((v13 & 1) == 0 || self->_adamId != *(v4 + 1))
    {
      goto LABEL_65;
    }
  }

  else if (v13)
  {
    goto LABEL_65;
  }

  if ((v12 & 0x80) != 0)
  {
    if ((v13 & 0x80) == 0 || self->_rank != *(v4 + 8))
    {
      goto LABEL_65;
    }
  }

  else if ((v13 & 0x80) != 0)
  {
    goto LABEL_65;
  }

  if ((v12 & 0x40) != 0)
  {
    if ((v13 & 0x40) == 0 || self->_radius != *(v4 + 7))
    {
      goto LABEL_65;
    }
  }

  else if ((v13 & 0x40) != 0)
  {
    goto LABEL_65;
  }

  if ((v12 & 4) != 0)
  {
    if ((v13 & 4) == 0 || self->_latitudeAtPredictionTime != *(v4 + 3))
    {
      goto LABEL_65;
    }
  }

  else if ((v13 & 4) != 0)
  {
    goto LABEL_65;
  }

  if ((v12 & 0x10) != 0)
  {
    if ((v13 & 0x10) == 0 || self->_longitudeAtPredictionTime != *(v4 + 5))
    {
      goto LABEL_65;
    }
  }

  else if ((v13 & 0x10) != 0)
  {
    goto LABEL_65;
  }

  poiCategory = self->_poiCategory;
  if (poiCategory | *(v4 + 12))
  {
    if ([(NSString *)poiCategory isEqual:?])
    {
      v12 = self->_has;
      goto LABEL_60;
    }

LABEL_65:
    v16 = 0;
    goto LABEL_66;
  }

LABEL_60:
  v15 = *(v4 + 58);
  if ((v12 & 0x20) != 0)
  {
    if ((v15 & 0x20) == 0 || self->_poiMuid != *(v4 + 6))
    {
      goto LABEL_65;
    }

    v16 = 1;
  }

  else
  {
    v16 = (v15 & 0x20) == 0;
  }

LABEL_66:

  return v16;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    latitude = self->_latitude;
    if (latitude < 0.0)
    {
      latitude = -latitude;
    }

    *v2.i64 = floor(latitude + 0.5);
    v8 = (latitude - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v9), v3, v2);
    v6 = 2654435761u * *v2.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  v42 = v6;
  if ((has & 8) != 0)
  {
    longitude = self->_longitude;
    if (longitude < 0.0)
    {
      longitude = -longitude;
    }

    *v2.i64 = floor(longitude + 0.5);
    v12 = (longitude - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v3, v2).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  v41 = v10;
  v40 = [(NSString *)self->_bundleId hash];
  if ((*&self->_has & 0x200) != 0)
  {
    v39 = 2654435761 * self->_isTouristApp;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    v19 = 0;
    goto LABEL_25;
  }

  v39 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  score = self->_score;
  if (score < 0.0)
  {
    score = -score;
  }

  *v14.i64 = floor(score + 0.5);
  v17 = (score - *v14.i64) * 1.84467441e19;
  *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v19 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v15, v14).i64;
  if (v17 >= 0.0)
  {
    if (v17 > 0.0)
    {
      v19 += v17;
    }
  }

  else
  {
    v19 -= fabs(v17);
  }

LABEL_25:
  v38 = [(NSString *)self->_urlHash hash];
  v20 = [(NSData *)self->_clipMetadata hash];
  v23 = self->_has;
  if (v23)
  {
    v24 = 2654435761 * self->_adamId;
    if ((v23 & 0x80) != 0)
    {
LABEL_27:
      v25 = 2654435761 * self->_rank;
      if ((v23 & 0x40) != 0)
      {
        goto LABEL_28;
      }

LABEL_35:
      v26 = 0;
      if ((v23 & 4) != 0)
      {
        goto LABEL_29;
      }

LABEL_36:
      v30 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v24 = 0;
    if ((v23 & 0x80) != 0)
    {
      goto LABEL_27;
    }
  }

  v25 = 0;
  if ((v23 & 0x40) == 0)
  {
    goto LABEL_35;
  }

LABEL_28:
  v26 = 2654435761 * self->_radius;
  if ((v23 & 4) == 0)
  {
    goto LABEL_36;
  }

LABEL_29:
  latitudeAtPredictionTime = self->_latitudeAtPredictionTime;
  if (latitudeAtPredictionTime < 0.0)
  {
    latitudeAtPredictionTime = -latitudeAtPredictionTime;
  }

  *v21.i64 = floor(latitudeAtPredictionTime + 0.5);
  v28 = (latitudeAtPredictionTime - *v21.i64) * 1.84467441e19;
  *v22.i64 = *v21.i64 - trunc(*v21.i64 * 5.42101086e-20) * 1.84467441e19;
  v29.f64[0] = NAN;
  v29.f64[1] = NAN;
  v21 = vbslq_s8(vnegq_f64(v29), v22, v21);
  v30 = 2654435761u * *v21.i64;
  if (v28 >= 0.0)
  {
    if (v28 > 0.0)
    {
      v30 += v28;
    }
  }

  else
  {
    v30 -= fabs(v28);
  }

LABEL_37:
  if ((v23 & 0x10) != 0)
  {
    longitudeAtPredictionTime = self->_longitudeAtPredictionTime;
    if (longitudeAtPredictionTime < 0.0)
    {
      longitudeAtPredictionTime = -longitudeAtPredictionTime;
    }

    *v21.i64 = floor(longitudeAtPredictionTime + 0.5);
    v33 = (longitudeAtPredictionTime - *v21.i64) * 1.84467441e19;
    *v22.i64 = *v21.i64 - trunc(*v21.i64 * 5.42101086e-20) * 1.84467441e19;
    v34.f64[0] = NAN;
    v34.f64[1] = NAN;
    v31 = 2654435761u * *vbslq_s8(vnegq_f64(v34), v22, v21).i64;
    if (v33 >= 0.0)
    {
      if (v33 > 0.0)
      {
        v31 += v33;
      }
    }

    else
    {
      v31 -= fabs(v33);
    }
  }

  else
  {
    v31 = 0;
  }

  v35 = [(NSString *)self->_poiCategory hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v36 = 2654435761u * self->_poiMuid;
  }

  else
  {
    v36 = 0;
  }

  return v41 ^ v42 ^ v39 ^ v19 ^ v40 ^ v38 ^ v20 ^ v24 ^ v25 ^ v26 ^ v30 ^ v31 ^ v35 ^ v36;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 58);
  if ((v5 & 2) != 0)
  {
    self->_latitude = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 58);
  }

  if ((v5 & 8) != 0)
  {
    self->_longitude = *(v4 + 4);
    *&self->_has |= 8u;
  }

  v8 = v4;
  if (*(v4 + 10))
  {
    [(ATXPBHeroAppPrediction *)self setBundleId:?];
    v4 = v8;
  }

  v6 = *(v4 + 58);
  if ((v6 & 0x200) != 0)
  {
    self->_isTouristApp = *(v4 + 112);
    *&self->_has |= 0x200u;
    v6 = *(v4 + 58);
  }

  if ((v6 & 0x100) != 0)
  {
    self->_score = *(v4 + 9);
    *&self->_has |= 0x100u;
  }

  if (*(v4 + 13))
  {
    [(ATXPBHeroAppPrediction *)self setUrlHash:?];
    v4 = v8;
  }

  if (*(v4 + 11))
  {
    [(ATXPBHeroAppPrediction *)self setClipMetadata:?];
    v4 = v8;
  }

  v7 = *(v4 + 58);
  if (v7)
  {
    self->_adamId = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 58);
    if ((v7 & 0x80) == 0)
    {
LABEL_17:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_17;
  }

  self->_rank = *(v4 + 8);
  *&self->_has |= 0x80u;
  v7 = *(v4 + 58);
  if ((v7 & 0x40) == 0)
  {
LABEL_18:
    if ((v7 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_radius = *(v4 + 7);
  *&self->_has |= 0x40u;
  v7 = *(v4 + 58);
  if ((v7 & 4) == 0)
  {
LABEL_19:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_31:
  self->_latitudeAtPredictionTime = *(v4 + 3);
  *&self->_has |= 4u;
  if ((*(v4 + 58) & 0x10) != 0)
  {
LABEL_20:
    self->_longitudeAtPredictionTime = *(v4 + 5);
    *&self->_has |= 0x10u;
  }

LABEL_21:
  if (*(v4 + 12))
  {
    [(ATXPBHeroAppPrediction *)self setPoiCategory:?];
    v4 = v8;
  }

  if ((*(v4 + 58) & 0x20) != 0)
  {
    self->_poiMuid = *(v4 + 6);
    *&self->_has |= 0x20u;
  }
}

@end