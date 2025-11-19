@interface MXVoiceTriggerInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasHardwareSampleRate:(BOOL)a3;
- (void)setHasRecognizerScore:(BOOL)a3;
- (void)setHasRecognizerThresholdOffset:(BOOL)a3;
- (void)setHasSatScore:(BOOL)a3;
- (void)setHasSatThreshold:(BOOL)a3;
- (void)setHasTriggerEnd:(BOOL)a3;
- (void)setHasTriggerScore:(BOOL)a3;
- (void)setHasTriggerThreshold:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXVoiceTriggerInfo

- (void)setHasTriggerScore:(BOOL)a3
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

- (void)setHasTriggerThreshold:(BOOL)a3
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

- (void)setHasSatScore:(BOOL)a3
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

- (void)setHasSatThreshold:(BOOL)a3
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

- (void)setHasRecognizerScore:(BOOL)a3
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

- (void)setHasRecognizerThresholdOffset:(BOOL)a3
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

- (void)setHasHardwareSampleRate:(BOOL)a3
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

- (void)setHasTriggerEnd:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXVoiceTriggerInfo;
  v4 = [(MXVoiceTriggerInfo *)&v8 description];
  v5 = [(MXVoiceTriggerInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_triggerScore];
    [v3 setObject:v10 forKey:@"trigger_score"];

    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_triggerThreshold];
  [v3 setObject:v11 forKey:@"trigger_threshold"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_satScore];
  [v3 setObject:v12 forKey:@"sat_score"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_satThreshold];
  [v3 setObject:v13 forKey:@"sat_threshold"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_21:
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_recognizerScore];
  [v3 setObject:v14 forKey:@"recognizer_score"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_recognizerThresholdOffset];
    [v3 setObject:v5 forKey:@"recognizer_threshold_offset"];
  }

LABEL_8:
  configVersion = self->_configVersion;
  if (configVersion)
  {
    [v3 setObject:configVersion forKey:@"config_version"];
  }

  v7 = self->_has;
  if ((v7 & 2) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_hardwareSampleRate];
    [v3 setObject:v15 forKey:@"hardware_sample_rate"];

    v7 = self->_has;
    if ((v7 & 1) == 0)
    {
LABEL_12:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_extraSamplesAtStart];
  [v3 setObject:v16 forKey:@"extra_samples_at_start"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_triggerEnd];
    [v3 setObject:v8 forKey:@"trigger_end"];
  }

LABEL_14:

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    triggerScore = self->_triggerScore;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  triggerThreshold = self->_triggerThreshold;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  satScore = self->_satScore;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  satThreshold = self->_satThreshold;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_21:
  recognizerScore = self->_recognizerScore;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    recognizerThresholdOffset = self->_recognizerThresholdOffset;
    PBDataWriterWriteDoubleField();
  }

LABEL_8:
  if (self->_configVersion)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    hardwareSampleRate = self->_hardwareSampleRate;
    PBDataWriterWriteDoubleField();
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_12:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  extraSamplesAtStart = self->_extraSamplesAtStart;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    triggerEnd = self->_triggerEnd;
    PBDataWriterWriteDoubleField();
  }

LABEL_14:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    v4[8] = *&self->_triggerScore;
    *(v4 + 44) |= 0x80u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v4[9] = *&self->_triggerThreshold;
  *(v4 + 44) |= 0x100u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4[5] = *&self->_satScore;
  *(v4 + 44) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4[6] = *&self->_satThreshold;
  *(v4 + 44) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_21:
  v4[3] = *&self->_recognizerScore;
  *(v4 + 44) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v4[4] = *&self->_recognizerThresholdOffset;
    *(v4 + 44) |= 8u;
  }

LABEL_8:
  if (self->_configVersion)
  {
    v7 = v4;
    [v4 setConfigVersion:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    v4[2] = *&self->_hardwareSampleRate;
    *(v4 + 44) |= 2u;
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_12:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  v4[1] = *&self->_extraSamplesAtStart;
  *(v4 + 44) |= 1u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    v4[7] = *&self->_triggerEnd;
    *(v4 + 44) |= 0x40u;
  }

LABEL_14:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    *(v5 + 64) = self->_triggerScore;
    *(v5 + 88) |= 0x80u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 72) = self->_triggerThreshold;
  *(v5 + 88) |= 0x100u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 40) = self->_satScore;
  *(v5 + 88) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 48) = self->_satThreshold;
  *(v5 + 88) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  *(v5 + 24) = self->_recognizerScore;
  *(v5 + 88) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(v5 + 32) = self->_recognizerThresholdOffset;
    *(v5 + 88) |= 8u;
  }

LABEL_8:
  v8 = [(NSString *)self->_configVersion copyWithZone:a3];
  v9 = *(v6 + 80);
  *(v6 + 80) = v8;

  v10 = self->_has;
  if ((v10 & 2) == 0)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    *(v6 + 8) = self->_extraSamplesAtStart;
    *(v6 + 88) |= 1u;
    if ((*&self->_has & 0x40) == 0)
    {
      return v6;
    }

    goto LABEL_11;
  }

  *(v6 + 16) = self->_hardwareSampleRate;
  *(v6 + 88) |= 2u;
  v10 = self->_has;
  if (v10)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v10 & 0x40) != 0)
  {
LABEL_11:
    *(v6 + 56) = self->_triggerEnd;
    *(v6 + 88) |= 0x40u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_49;
  }

  has = self->_has;
  v6 = *(v4 + 44);
  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_triggerScore != *(v4 + 8))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 44) & 0x100) == 0 || self->_triggerThreshold != *(v4 + 9))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 44) & 0x100) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_satScore != *(v4 + 5))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_satThreshold != *(v4 + 6))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_recognizerScore != *(v4 + 3))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_recognizerThresholdOffset != *(v4 + 4))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_49;
  }

  configVersion = self->_configVersion;
  if (configVersion | *(v4 + 10))
  {
    if (![(NSString *)configVersion isEqual:?])
    {
LABEL_49:
      v9 = 0;
      goto LABEL_50;
    }

    has = self->_has;
  }

  v8 = *(v4 + 44);
  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_hardwareSampleRate != *(v4 + 2))
    {
      goto LABEL_49;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_49;
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_extraSamplesAtStart != *(v4 + 1))
    {
      goto LABEL_49;
    }
  }

  else if (v8)
  {
    goto LABEL_49;
  }

  v9 = (v8 & 0x40) == 0;
  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_triggerEnd != *(v4 + 7))
    {
      goto LABEL_49;
    }

    v9 = 1;
  }

LABEL_50:

  return v9;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    triggerScore = self->_triggerScore;
    if (triggerScore < 0.0)
    {
      triggerScore = -triggerScore;
    }

    *v2.i64 = floor(triggerScore + 0.5);
    v8 = (triggerScore - *v2.i64) * 1.84467441e19;
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

  if ((*&self->_has & 0x100) != 0)
  {
    triggerThreshold = self->_triggerThreshold;
    if (triggerThreshold < 0.0)
    {
      triggerThreshold = -triggerThreshold;
    }

    *v2.i64 = floor(triggerThreshold + 0.5);
    v12 = (triggerThreshold - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v13), v3, v2);
    v10 = 2654435761u * *v2.i64;
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

  if ((has & 0x10) != 0)
  {
    satScore = self->_satScore;
    if (satScore < 0.0)
    {
      satScore = -satScore;
    }

    *v2.i64 = floor(satScore + 0.5);
    v16 = (satScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v17), v3, v2);
    v14 = 2654435761u * *v2.i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((has & 0x20) != 0)
  {
    satThreshold = self->_satThreshold;
    if (satThreshold < 0.0)
    {
      satThreshold = -satThreshold;
    }

    *v2.i64 = floor(satThreshold + 0.5);
    v20 = (satThreshold - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v21), v3, v2);
    v18 = 2654435761u * *v2.i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((has & 4) != 0)
  {
    recognizerScore = self->_recognizerScore;
    if (recognizerScore < 0.0)
    {
      recognizerScore = -recognizerScore;
    }

    *v2.i64 = floor(recognizerScore + 0.5);
    v24 = (recognizerScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v25), v3, v2);
    v22 = 2654435761u * *v2.i64;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v22 += v24;
      }
    }

    else
    {
      v22 -= fabs(v24);
    }
  }

  else
  {
    v22 = 0;
  }

  if ((has & 8) != 0)
  {
    recognizerThresholdOffset = self->_recognizerThresholdOffset;
    if (recognizerThresholdOffset < 0.0)
    {
      recognizerThresholdOffset = -recognizerThresholdOffset;
    }

    *v2.i64 = floor(recognizerThresholdOffset + 0.5);
    v28 = (recognizerThresholdOffset - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v26 = 2654435761u * *vbslq_s8(vnegq_f64(v29), v3, v2).i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabs(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  v30 = [(NSString *)self->_configVersion hash];
  v33 = self->_has;
  if ((v33 & 2) != 0)
  {
    hardwareSampleRate = self->_hardwareSampleRate;
    if (hardwareSampleRate < 0.0)
    {
      hardwareSampleRate = -hardwareSampleRate;
    }

    *v31.i64 = floor(hardwareSampleRate + 0.5);
    v36 = (hardwareSampleRate - *v31.i64) * 1.84467441e19;
    *v32.i64 = *v31.i64 - trunc(*v31.i64 * 5.42101086e-20) * 1.84467441e19;
    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    v31 = vbslq_s8(vnegq_f64(v37), v32, v31);
    v34 = 2654435761u * *v31.i64;
    if (v36 >= 0.0)
    {
      if (v36 > 0.0)
      {
        v34 += v36;
      }
    }

    else
    {
      v34 -= fabs(v36);
    }
  }

  else
  {
    v34 = 0;
  }

  if (v33)
  {
    extraSamplesAtStart = self->_extraSamplesAtStart;
    if (extraSamplesAtStart < 0.0)
    {
      extraSamplesAtStart = -extraSamplesAtStart;
    }

    *v31.i64 = floor(extraSamplesAtStart + 0.5);
    v40 = (extraSamplesAtStart - *v31.i64) * 1.84467441e19;
    *v32.i64 = *v31.i64 - trunc(*v31.i64 * 5.42101086e-20) * 1.84467441e19;
    v41.f64[0] = NAN;
    v41.f64[1] = NAN;
    v31 = vbslq_s8(vnegq_f64(v41), v32, v31);
    v38 = 2654435761u * *v31.i64;
    if (v40 >= 0.0)
    {
      if (v40 > 0.0)
      {
        v38 += v40;
      }
    }

    else
    {
      v38 -= fabs(v40);
    }
  }

  else
  {
    v38 = 0;
  }

  if ((v33 & 0x40) != 0)
  {
    triggerEnd = self->_triggerEnd;
    if (triggerEnd < 0.0)
    {
      triggerEnd = -triggerEnd;
    }

    *v31.i64 = floor(triggerEnd + 0.5);
    v44 = (triggerEnd - *v31.i64) * 1.84467441e19;
    *v32.i64 = *v31.i64 - trunc(*v31.i64 * 5.42101086e-20) * 1.84467441e19;
    v45.f64[0] = NAN;
    v45.f64[1] = NAN;
    v42 = 2654435761u * *vbslq_s8(vnegq_f64(v45), v32, v31).i64;
    if (v44 >= 0.0)
    {
      if (v44 > 0.0)
      {
        v42 += v44;
      }
    }

    else
    {
      v42 -= fabs(v44);
    }
  }

  else
  {
    v42 = 0;
  }

  return v10 ^ v6 ^ v14 ^ v18 ^ v22 ^ v26 ^ v34 ^ v38 ^ v42 ^ v30;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if ((v5 & 0x80) != 0)
  {
    self->_triggerScore = *(v4 + 8);
    *&self->_has |= 0x80u;
    v5 = *(v4 + 44);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*(v4 + 44) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_triggerThreshold = *(v4 + 9);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_satScore = *(v4 + 5);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_satThreshold = *(v4 + 6);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 44);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_21:
  self->_recognizerScore = *(v4 + 3);
  *&self->_has |= 4u;
  if ((*(v4 + 44) & 8) != 0)
  {
LABEL_7:
    self->_recognizerThresholdOffset = *(v4 + 4);
    *&self->_has |= 8u;
  }

LABEL_8:
  if (*(v4 + 10))
  {
    v7 = v4;
    [(MXVoiceTriggerInfo *)self setConfigVersion:?];
    v4 = v7;
  }

  v6 = *(v4 + 44);
  if ((v6 & 2) != 0)
  {
    self->_hardwareSampleRate = *(v4 + 2);
    *&self->_has |= 2u;
    v6 = *(v4 + 44);
    if ((v6 & 1) == 0)
    {
LABEL_12:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  self->_extraSamplesAtStart = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 44) & 0x40) != 0)
  {
LABEL_13:
    self->_triggerEnd = *(v4 + 7);
    *&self->_has |= 0x40u;
  }

LABEL_14:
}

@end