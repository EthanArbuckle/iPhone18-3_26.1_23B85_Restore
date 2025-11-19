@interface _MRMRNowPlayingAudioFormatContentInfoProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAudioSessionID:(BOOL)a3;
- (void)setHasChannelCount:(BOOL)a3;
- (void)setHasEligibleForSpatialization:(BOOL)a3;
- (void)setHasIntendedSpatialExperience:(BOOL)a3;
- (void)setHasPid:(BOOL)a3;
- (void)setHasRenderingMode:(BOOL)a3;
- (void)setHasResolvedSpatialExperience:(BOOL)a3;
- (void)setHasSpatialized:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRMRNowPlayingAudioFormatContentInfoProtobuf

- (void)setHasAudioSessionID:(BOOL)a3
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

- (void)setHasChannelCount:(BOOL)a3
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

- (void)setHasEligibleForSpatialization:(BOOL)a3
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

- (void)setHasSpatialized:(BOOL)a3
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

- (void)setHasIntendedSpatialExperience:(BOOL)a3
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

- (void)setHasResolvedSpatialExperience:(BOOL)a3
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

- (void)setHasPid:(BOOL)a3
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

- (void)setHasRenderingMode:(BOOL)a3
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRMRNowPlayingAudioFormatContentInfoProtobuf;
  v4 = [(_MRMRNowPlayingAudioFormatContentInfoProtobuf *)&v8 description];
  v5 = [(_MRMRNowPlayingAudioFormatContentInfoProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_audioSessionID];
    [v4 setObject:v12 forKey:@"audioSessionID"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_audioFormat];
  [v4 setObject:v13 forKey:@"audioFormat"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_channelCount];
    [v4 setObject:v7 forKey:@"channelCount"];
  }

LABEL_7:
  bestAvailableContent = self->_bestAvailableContent;
  if (bestAvailableContent)
  {
    [v4 setObject:bestAvailableContent forKey:@"bestAvailableContent"];
  }

  v9 = self->_has;
  if ((v9 & 0x80) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_eligibleForSpatialization];
    [v4 setObject:v14 forKey:@"eligibleForSpatialization"];

    v9 = self->_has;
    if ((v9 & 0x100) == 0)
    {
LABEL_11:
      if ((v9 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_11;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_spatialized];
  [v4 setObject:v15 forKey:@"spatialized"];

  v9 = self->_has;
  if ((v9 & 8) == 0)
  {
LABEL_12:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_intendedSpatialExperience];
  [v4 setObject:v16 forKey:@"intendedSpatialExperience"];

  v9 = self->_has;
  if ((v9 & 0x40) == 0)
  {
LABEL_13:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v17 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_resolvedSpatialExperience];
  [v4 setObject:v17 forKey:@"resolvedSpatialExperience"];

  v9 = self->_has;
  if ((v9 & 0x10) == 0)
  {
LABEL_14:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_26:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_pid];
  [v4 setObject:v18 forKey:@"pid"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_renderingMode];
    [v4 setObject:v10 forKey:@"renderingMode"];
  }

LABEL_16:

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v16 = v4;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v16;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    audioSessionID = self->_audioSessionID;
    PBDataWriterWriteUint64Field();
    v4 = v16;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_5;
  }

  audioFormat = self->_audioFormat;
  PBDataWriterWriteUint64Field();
  v4 = v16;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    channelCount = self->_channelCount;
    PBDataWriterWriteUint64Field();
    v4 = v16;
  }

LABEL_7:
  if (self->_bestAvailableContent)
  {
    PBDataWriterWriteStringField();
    v4 = v16;
  }

  v7 = self->_has;
  if ((v7 & 0x80) != 0)
  {
    eligibleForSpatialization = self->_eligibleForSpatialization;
    PBDataWriterWriteBOOLField();
    v4 = v16;
    v7 = self->_has;
    if ((v7 & 0x100) == 0)
    {
LABEL_11:
      if ((v7 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_11;
  }

  spatialized = self->_spatialized;
  PBDataWriterWriteBOOLField();
  v4 = v16;
  v7 = self->_has;
  if ((v7 & 8) == 0)
  {
LABEL_12:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  intendedSpatialExperience = self->_intendedSpatialExperience;
  PBDataWriterWriteInt64Field();
  v4 = v16;
  v7 = self->_has;
  if ((v7 & 0x40) == 0)
  {
LABEL_13:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  resolvedSpatialExperience = self->_resolvedSpatialExperience;
  PBDataWriterWriteInt64Field();
  v4 = v16;
  v7 = self->_has;
  if ((v7 & 0x10) == 0)
  {
LABEL_14:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_26:
  pid = self->_pid;
  PBDataWriterWriteUint64Field();
  v4 = v16;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    renderingMode = self->_renderingMode;
    PBDataWriterWriteInt64Field();
    v4 = v16;
  }

LABEL_16:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_bundleID)
  {
    [v4 setBundleID:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_audioSessionID;
    *(v4 + 42) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 1) = self->_audioFormat;
  *(v4 + 42) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(v4 + 3) = self->_channelCount;
    *(v4 + 42) |= 4u;
  }

LABEL_7:
  if (self->_bestAvailableContent)
  {
    [v7 setBestAvailableContent:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x80) != 0)
  {
    *(v4 + 80) = self->_eligibleForSpatialization;
    *(v4 + 42) |= 0x80u;
    v6 = self->_has;
    if ((v6 & 0x100) == 0)
    {
LABEL_11:
      if ((v6 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_11;
  }

  *(v4 + 81) = self->_spatialized;
  *(v4 + 42) |= 0x100u;
  v6 = self->_has;
  if ((v6 & 8) == 0)
  {
LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 4) = self->_intendedSpatialExperience;
  *(v4 + 42) |= 8u;
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_13:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 7) = self->_resolvedSpatialExperience;
  *(v4 + 42) |= 0x40u;
  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
LABEL_14:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_26:
  *(v4 + 5) = self->_pid;
  *(v4 + 42) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    *(v4 + 6) = self->_renderingMode;
    *(v4 + 42) |= 0x20u;
  }

LABEL_16:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleID copyWithZone:a3];
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_audioSessionID;
    *(v5 + 84) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_audioFormat;
  *(v5 + 84) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_channelCount;
    *(v5 + 84) |= 4u;
  }

LABEL_5:
  v9 = [(NSString *)self->_bestAvailableContent copyWithZone:a3];
  v10 = *(v5 + 64);
  *(v5 + 64) = v9;

  v11 = self->_has;
  if ((v11 & 0x80) != 0)
  {
    *(v5 + 80) = self->_eligibleForSpatialization;
    *(v5 + 84) |= 0x80u;
    v11 = self->_has;
    if ((v11 & 0x100) == 0)
    {
LABEL_7:
      if ((v11 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_7;
  }

  *(v5 + 81) = self->_spatialized;
  *(v5 + 84) |= 0x100u;
  v11 = self->_has;
  if ((v11 & 8) == 0)
  {
LABEL_8:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 32) = self->_intendedSpatialExperience;
  *(v5 + 84) |= 8u;
  v11 = self->_has;
  if ((v11 & 0x40) == 0)
  {
LABEL_9:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    *(v5 + 40) = self->_pid;
    *(v5 + 84) |= 0x10u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v5;
    }

    goto LABEL_11;
  }

LABEL_19:
  *(v5 + 56) = self->_resolvedSpatialExperience;
  *(v5 + 84) |= 0x40u;
  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v11 & 0x20) != 0)
  {
LABEL_11:
    *(v5 + 48) = self->_renderingMode;
    *(v5 + 84) |= 0x20u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(v4 + 9))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_58;
    }
  }

  has = self->_has;
  v7 = *(v4 + 42);
  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_audioSessionID != *(v4 + 2))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_58;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_audioFormat != *(v4 + 1))
    {
      goto LABEL_58;
    }
  }

  else if (v7)
  {
    goto LABEL_58;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_channelCount != *(v4 + 3))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_58;
  }

  bestAvailableContent = self->_bestAvailableContent;
  if (bestAvailableContent | *(v4 + 8))
  {
    if (![(NSString *)bestAvailableContent isEqual:?])
    {
      goto LABEL_58;
    }

    has = self->_has;
  }

  v9 = *(v4 + 42);
  if ((has & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_58;
    }

    v10 = *(v4 + 80);
    if (self->_eligibleForSpatialization)
    {
      if ((*(v4 + 80) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (*(v4 + 80))
    {
      goto LABEL_58;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x100) == 0)
  {
    if ((*(v4 + 42) & 0x100) == 0)
    {
      goto LABEL_26;
    }

LABEL_58:
    v12 = 0;
    goto LABEL_59;
  }

  if ((*(v4 + 42) & 0x100) == 0)
  {
    goto LABEL_58;
  }

  v11 = *(v4 + 81);
  if (self->_spatialized)
  {
    if ((*(v4 + 81) & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  else if (*(v4 + 81))
  {
    goto LABEL_58;
  }

LABEL_26:
  if ((has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_intendedSpatialExperience != *(v4 + 4))
    {
      goto LABEL_58;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_resolvedSpatialExperience != *(v4 + 7))
    {
      goto LABEL_58;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_pid != *(v4 + 5))
    {
      goto LABEL_58;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_renderingMode != *(v4 + 6))
    {
      goto LABEL_58;
    }

    v12 = 1;
  }

  else
  {
    v12 = (v9 & 0x20) == 0;
  }

LABEL_59:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleID hash];
  has = self->_has;
  if ((has & 2) == 0)
  {
    v5 = 0;
    if (has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v5 = 2654435761u * self->_audioSessionID;
  if ((has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 2654435761u * self->_audioFormat;
  if ((has & 4) != 0)
  {
LABEL_4:
    v7 = 2654435761u * self->_channelCount;
    goto LABEL_8;
  }

LABEL_7:
  v7 = 0;
LABEL_8:
  v8 = [(NSString *)self->_bestAvailableContent hash];
  v9 = self->_has;
  if ((v9 & 0x80) != 0)
  {
    v10 = 2654435761 * self->_eligibleForSpatialization;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_10:
      v11 = 2654435761 * self->_spatialized;
      if ((v9 & 8) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }
  }

  v11 = 0;
  if ((v9 & 8) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_intendedSpatialExperience;
    if ((v9 & 0x40) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = 0;
  if ((v9 & 0x40) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_resolvedSpatialExperience;
    if ((v9 & 0x10) != 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v14 = 0;
    if ((v9 & 0x20) != 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    v15 = 0;
    return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_18:
  v13 = 0;
  if ((v9 & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v14 = 2654435761u * self->_pid;
  if ((v9 & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  v15 = 2654435761 * self->_renderingMode;
  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 9))
  {
    [(_MRMRNowPlayingAudioFormatContentInfoProtobuf *)self setBundleID:?];
    v4 = v7;
  }

  v5 = *(v4 + 42);
  if ((v5 & 2) != 0)
  {
    self->_audioSessionID = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 42);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_audioFormat = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 42) & 4) != 0)
  {
LABEL_6:
    self->_channelCount = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_7:
  if (*(v4 + 8))
  {
    [(_MRMRNowPlayingAudioFormatContentInfoProtobuf *)self setBestAvailableContent:?];
    v4 = v7;
  }

  v6 = *(v4 + 42);
  if ((v6 & 0x80) != 0)
  {
    self->_eligibleForSpatialization = *(v4 + 80);
    *&self->_has |= 0x80u;
    v6 = *(v4 + 42);
    if ((v6 & 0x100) == 0)
    {
LABEL_11:
      if ((v6 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }
  }

  else if ((*(v4 + 42) & 0x100) == 0)
  {
    goto LABEL_11;
  }

  self->_spatialized = *(v4 + 81);
  *&self->_has |= 0x100u;
  v6 = *(v4 + 42);
  if ((v6 & 8) == 0)
  {
LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_intendedSpatialExperience = *(v4 + 4);
  *&self->_has |= 8u;
  v6 = *(v4 + 42);
  if ((v6 & 0x40) == 0)
  {
LABEL_13:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_resolvedSpatialExperience = *(v4 + 7);
  *&self->_has |= 0x40u;
  v6 = *(v4 + 42);
  if ((v6 & 0x10) == 0)
  {
LABEL_14:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_26:
  self->_pid = *(v4 + 5);
  *&self->_has |= 0x10u;
  if ((*(v4 + 42) & 0x20) != 0)
  {
LABEL_15:
    self->_renderingMode = *(v4 + 6);
    *&self->_has |= 0x20u;
  }

LABEL_16:
}

@end