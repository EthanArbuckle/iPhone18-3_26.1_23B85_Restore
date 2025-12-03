@interface MXVoiceTriggerInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasHardwareSampleRate:(BOOL)rate;
- (void)setHasRecognizerScore:(BOOL)score;
- (void)setHasRecognizerThresholdOffset:(BOOL)offset;
- (void)setHasSatScore:(BOOL)score;
- (void)setHasSatThreshold:(BOOL)threshold;
- (void)setHasTriggerEnd:(BOOL)end;
- (void)setHasTriggerScore:(BOOL)score;
- (void)setHasTriggerThreshold:(BOOL)threshold;
- (void)writeTo:(id)to;
@end

@implementation MXVoiceTriggerInfo

- (void)setHasTriggerScore:(BOOL)score
{
  if (score)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasTriggerThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasSatScore:(BOOL)score
{
  if (score)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasSatThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasRecognizerScore:(BOOL)score
{
  if (score)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRecognizerThresholdOffset:(BOOL)offset
{
  if (offset)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasHardwareSampleRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTriggerEnd:(BOOL)end
{
  if (end)
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
  dictionaryRepresentation = [(MXVoiceTriggerInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_triggerScore];
    [dictionary setObject:v10 forKey:@"trigger_score"];

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
  [dictionary setObject:v11 forKey:@"trigger_threshold"];

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
  [dictionary setObject:v12 forKey:@"sat_score"];

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
  [dictionary setObject:v13 forKey:@"sat_threshold"];

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
  [dictionary setObject:v14 forKey:@"recognizer_score"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_recognizerThresholdOffset];
    [dictionary setObject:v5 forKey:@"recognizer_threshold_offset"];
  }

LABEL_8:
  configVersion = self->_configVersion;
  if (configVersion)
  {
    [dictionary setObject:configVersion forKey:@"config_version"];
  }

  v7 = self->_has;
  if ((v7 & 2) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_hardwareSampleRate];
    [dictionary setObject:v15 forKey:@"hardware_sample_rate"];

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
  [dictionary setObject:v16 forKey:@"extra_samples_at_start"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_triggerEnd];
    [dictionary setObject:v8 forKey:@"trigger_end"];
  }

LABEL_14:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    toCopy[8] = *&self->_triggerScore;
    *(toCopy + 44) |= 0x80u;
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

  toCopy[9] = *&self->_triggerThreshold;
  *(toCopy + 44) |= 0x100u;
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
  toCopy[5] = *&self->_satScore;
  *(toCopy + 44) |= 0x10u;
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
  toCopy[6] = *&self->_satThreshold;
  *(toCopy + 44) |= 0x20u;
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
  toCopy[3] = *&self->_recognizerScore;
  *(toCopy + 44) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    toCopy[4] = *&self->_recognizerThresholdOffset;
    *(toCopy + 44) |= 8u;
  }

LABEL_8:
  if (self->_configVersion)
  {
    v7 = toCopy;
    [toCopy setConfigVersion:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    toCopy[2] = *&self->_hardwareSampleRate;
    *(toCopy + 44) |= 2u;
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

  toCopy[1] = *&self->_extraSamplesAtStart;
  *(toCopy + 44) |= 1u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    toCopy[7] = *&self->_triggerEnd;
    *(toCopy + 44) |= 0x40u;
  }

LABEL_14:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(NSString *)self->_configVersion copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_49;
  }

  has = self->_has;
  v6 = *(equalCopy + 44);
  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_triggerScore != *(equalCopy + 8))
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
    if ((*(equalCopy + 44) & 0x100) == 0 || self->_triggerThreshold != *(equalCopy + 9))
    {
      goto LABEL_49;
    }
  }

  else if ((*(equalCopy + 44) & 0x100) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_satScore != *(equalCopy + 5))
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
    if ((v6 & 0x20) == 0 || self->_satThreshold != *(equalCopy + 6))
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
    if ((v6 & 4) == 0 || self->_recognizerScore != *(equalCopy + 3))
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
    if ((v6 & 8) == 0 || self->_recognizerThresholdOffset != *(equalCopy + 4))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_49;
  }

  configVersion = self->_configVersion;
  if (configVersion | *(equalCopy + 10))
  {
    if (![(NSString *)configVersion isEqual:?])
    {
LABEL_49:
      v9 = 0;
      goto LABEL_50;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 44);
  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_hardwareSampleRate != *(equalCopy + 2))
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
    if ((v8 & 1) == 0 || self->_extraSamplesAtStart != *(equalCopy + 1))
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
    if ((v8 & 0x40) == 0 || self->_triggerEnd != *(equalCopy + 7))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x80) != 0)
  {
    self->_triggerScore = *(fromCopy + 8);
    *&self->_has |= 0x80u;
    v5 = *(fromCopy + 44);
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

  else if ((*(fromCopy + 44) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_triggerThreshold = *(fromCopy + 9);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 44);
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
  self->_satScore = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 44);
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
  self->_satThreshold = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 44);
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
  self->_recognizerScore = *(fromCopy + 3);
  *&self->_has |= 4u;
  if ((*(fromCopy + 44) & 8) != 0)
  {
LABEL_7:
    self->_recognizerThresholdOffset = *(fromCopy + 4);
    *&self->_has |= 8u;
  }

LABEL_8:
  if (*(fromCopy + 10))
  {
    v7 = fromCopy;
    [(MXVoiceTriggerInfo *)self setConfigVersion:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 44);
  if ((v6 & 2) != 0)
  {
    self->_hardwareSampleRate = *(fromCopy + 2);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 44);
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

  self->_extraSamplesAtStart = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 44) & 0x40) != 0)
  {
LABEL_13:
    self->_triggerEnd = *(fromCopy + 7);
    *&self->_has |= 0x40u;
  }

LABEL_14:
}

@end