@interface MIPPlaybackInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBeatsPerMinute:(BOOL)minute;
- (void)setHasBitRate:(BOOL)rate;
- (void)setHasCodecSubType:(BOOL)type;
- (void)setHasCodecType:(BOOL)type;
- (void)setHasDataKind:(BOOL)kind;
- (void)setHasGaplessEncodingDrainCode:(BOOL)code;
- (void)setHasGaplessFrameResyncCode:(BOOL)code;
- (void)setHasGaplessHeuristicCode:(BOOL)code;
- (void)setHasGaplessHeuristicDelayCode:(BOOL)code;
- (void)setHasProgressionDirection:(BOOL)direction;
- (void)setHasRelativeVolume:(BOOL)volume;
- (void)setHasSampleRate:(BOOL)rate;
- (void)setHasStartTime:(BOOL)time;
- (void)setHasStopTime:(BOOL)time;
- (void)setHasVolumeNormalizationEnergy:(BOOL)energy;
- (void)writeTo:(id)to;
@end

@implementation MIPPlaybackInfo

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 66);
  if ((v5 & 0x200) != 0)
  {
    self->_bitRate = *(fromCopy + 19);
    *&self->_has |= 0x200u;
    v5 = *(fromCopy + 66);
    if ((v5 & 0x800) == 0)
    {
LABEL_3:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((*(fromCopy + 66) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  self->_codecType = *(fromCopy + 21);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 66);
  if ((v5 & 0x400) == 0)
  {
LABEL_4:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_30:
  self->_codecSubType = *(fromCopy + 20);
  *&self->_has |= 0x400u;
  if ((*(fromCopy + 66) & 0x1000) != 0)
  {
LABEL_5:
    self->_dataKind = *(fromCopy + 22);
    *&self->_has |= 0x1000u;
  }

LABEL_6:
  v7 = fromCopy;
  if (*(fromCopy + 12))
  {
    [(MIPPlaybackInfo *)self setDataUrl:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 13))
  {
    [(MIPPlaybackInfo *)self setEqPreset:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 14))
  {
    [(MIPPlaybackInfo *)self setPlaybackFormat:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 66);
  if ((v6 & 8) != 0)
  {
    self->_gaplessHeuristicCode = *(fromCopy + 4);
    *&self->_has |= 8u;
    v6 = *(fromCopy + 66);
    if ((v6 & 0x10) == 0)
    {
LABEL_14:
      if ((v6 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_14;
  }

  self->_gaplessHeuristicDelayCode = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v6 = *(fromCopy + 66);
  if ((v6 & 2) == 0)
  {
LABEL_15:
    if ((v6 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_gaplessEncodingDrainCode = *(fromCopy + 2);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 66);
  if ((v6 & 4) == 0)
  {
LABEL_16:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_gaplessFrameResyncCode = *(fromCopy + 3);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 66);
  if ((v6 & 0x4000) == 0)
  {
LABEL_17:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_relativeVolume = *(fromCopy + 31);
  *&self->_has |= 0x4000u;
  v6 = *(fromCopy + 66);
  if ((v6 & 0x8000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_sampleRate = *(fromCopy + 32);
  *&self->_has |= 0x8000u;
  v6 = *(fromCopy + 66);
  if ((v6 & 0x20) == 0)
  {
LABEL_19:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_startTime = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v6 = *(fromCopy + 66);
  if ((v6 & 0x40) == 0)
  {
LABEL_20:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_stopTime = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v6 = *(fromCopy + 66);
  if ((v6 & 0x80) == 0)
  {
LABEL_21:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_volumeNormalizationEnergy = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v6 = *(fromCopy + 66);
  if ((v6 & 0x100) == 0)
  {
LABEL_22:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_beatsPerMinute = *(fromCopy + 18);
  *&self->_has |= 0x100u;
  v6 = *(fromCopy + 66);
  if ((v6 & 0x2000) == 0)
  {
LABEL_23:
    if ((v6 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_42:
  self->_progressionDirection = *(fromCopy + 30);
  *&self->_has |= 0x2000u;
  if (*(fromCopy + 66))
  {
LABEL_24:
    self->_durationInSamples = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_25:
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x200) != 0)
  {
    v3 = 2654435761 * self->_bitRate;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_codecType;
      if ((*&self->_has & 0x400) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_codecSubType;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_dataKind;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  v7 = [(NSString *)self->_dataUrl hash];
  v8 = [(NSString *)self->_eqPreset hash];
  v9 = [(NSString *)self->_playbackFormat hash];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v11 = 2654435761 * self->_gaplessHeuristicCode;
    if ((has & 0x10) != 0)
    {
LABEL_12:
      v12 = 2654435761 * self->_gaplessHeuristicDelayCode;
      if ((has & 2) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v11 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_12;
    }
  }

  v12 = 0;
  if ((has & 2) != 0)
  {
LABEL_13:
    v13 = 2654435761 * self->_gaplessEncodingDrainCode;
    if ((has & 4) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = 0;
  if ((has & 4) != 0)
  {
LABEL_14:
    v14 = 2654435761 * self->_gaplessFrameResyncCode;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_15:
    v15 = 2654435761 * self->_relativeVolume;
    if ((*&self->_has & 0x8000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = 0;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_16:
    v16 = 2654435761 * self->_sampleRate;
    if ((has & 0x20) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_17:
    v17 = 2654435761 * self->_startTime;
    if ((has & 0x40) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_18:
    v18 = 2654435761 * self->_stopTime;
    if ((has & 0x80) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  v18 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_19:
    v19 = 2654435761 * self->_volumeNormalizationEnergy;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

LABEL_31:
  v19 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_20:
    v20 = 2654435761 * self->_beatsPerMinute;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_21;
    }

LABEL_33:
    v21 = 0;
    if (has)
    {
      goto LABEL_22;
    }

LABEL_34:
    v22 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22;
  }

LABEL_32:
  v20 = 0;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v21 = 2654435761 * self->_progressionDirection;
  if ((has & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_22:
  v22 = 2654435761 * self->_durationInSamples;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 66) & 0x200) == 0 || self->_bitRate != *(equalCopy + 19))
    {
      goto LABEL_88;
    }
  }

  else if ((*(equalCopy + 66) & 0x200) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 66) & 0x800) == 0 || self->_codecType != *(equalCopy + 21))
    {
      goto LABEL_88;
    }
  }

  else if ((*(equalCopy + 66) & 0x800) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 66) & 0x400) == 0 || self->_codecSubType != *(equalCopy + 20))
    {
      goto LABEL_88;
    }
  }

  else if ((*(equalCopy + 66) & 0x400) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 66) & 0x1000) == 0 || self->_dataKind != *(equalCopy + 22))
    {
      goto LABEL_88;
    }
  }

  else if ((*(equalCopy + 66) & 0x1000) != 0)
  {
    goto LABEL_88;
  }

  dataUrl = self->_dataUrl;
  if (dataUrl | *(equalCopy + 12) && ![(NSString *)dataUrl isEqual:?])
  {
    goto LABEL_88;
  }

  eqPreset = self->_eqPreset;
  if (eqPreset | *(equalCopy + 13))
  {
    if (![(NSString *)eqPreset isEqual:?])
    {
      goto LABEL_88;
    }
  }

  playbackFormat = self->_playbackFormat;
  if (playbackFormat | *(equalCopy + 14))
  {
    if (![(NSString *)playbackFormat isEqual:?])
    {
      goto LABEL_88;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 66);
  if ((has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_gaplessHeuristicCode != *(equalCopy + 4))
    {
      goto LABEL_88;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_gaplessHeuristicDelayCode != *(equalCopy + 5))
    {
      goto LABEL_88;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_gaplessEncodingDrainCode != *(equalCopy + 2))
    {
      goto LABEL_88;
    }
  }

  else if ((v9 & 2) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 4) != 0)
  {
    if ((v9 & 4) == 0 || self->_gaplessFrameResyncCode != *(equalCopy + 3))
    {
      goto LABEL_88;
    }
  }

  else if ((v9 & 4) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(equalCopy + 66) & 0x4000) == 0 || self->_relativeVolume != *(equalCopy + 31))
    {
      goto LABEL_88;
    }
  }

  else if ((*(equalCopy + 66) & 0x4000) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x8000) != 0)
  {
    if ((*(equalCopy + 66) & 0x8000) == 0 || self->_sampleRate != *(equalCopy + 32))
    {
      goto LABEL_88;
    }
  }

  else if ((*(equalCopy + 66) & 0x8000) != 0)
  {
LABEL_88:
    v10 = 0;
    goto LABEL_89;
  }

  if ((has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_startTime != *(equalCopy + 6))
    {
      goto LABEL_88;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_stopTime != *(equalCopy + 7))
    {
      goto LABEL_88;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0 || self->_volumeNormalizationEnergy != *(equalCopy + 8))
    {
      goto LABEL_88;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 66) & 0x100) == 0 || self->_beatsPerMinute != *(equalCopy + 18))
    {
      goto LABEL_88;
    }
  }

  else if ((*(equalCopy + 66) & 0x100) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(equalCopy + 66) & 0x2000) == 0 || self->_progressionDirection != *(equalCopy + 30))
    {
      goto LABEL_88;
    }
  }

  else if ((*(equalCopy + 66) & 0x2000) != 0)
  {
    goto LABEL_88;
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_durationInSamples != *(equalCopy + 1))
    {
      goto LABEL_88;
    }

    v10 = 1;
  }

  else
  {
    v10 = (v9 & 1) == 0;
  }

LABEL_89:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v5 + 76) = self->_bitRate;
    *(v5 + 132) |= 0x200u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 84) = self->_codecType;
  *(v5 + 132) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_22:
  *(v5 + 80) = self->_codecSubType;
  *(v5 + 132) |= 0x400u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_5:
    *(v5 + 88) = self->_dataKind;
    *(v5 + 132) |= 0x1000u;
  }

LABEL_6:
  v8 = [(NSString *)self->_dataUrl copyWithZone:zone];
  v9 = *(v6 + 96);
  *(v6 + 96) = v8;

  v10 = [(NSString *)self->_eqPreset copyWithZone:zone];
  v11 = *(v6 + 104);
  *(v6 + 104) = v10;

  v12 = [(NSString *)self->_playbackFormat copyWithZone:zone];
  v13 = *(v6 + 112);
  *(v6 + 112) = v12;

  v14 = self->_has;
  if ((v14 & 8) != 0)
  {
    *(v6 + 32) = self->_gaplessHeuristicCode;
    *(v6 + 132) |= 8u;
    v14 = self->_has;
    if ((v14 & 0x10) == 0)
    {
LABEL_8:
      if ((v14 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((v14 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  *(v6 + 40) = self->_gaplessHeuristicDelayCode;
  *(v6 + 132) |= 0x10u;
  v14 = self->_has;
  if ((v14 & 2) == 0)
  {
LABEL_9:
    if ((v14 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v6 + 16) = self->_gaplessEncodingDrainCode;
  *(v6 + 132) |= 2u;
  v14 = self->_has;
  if ((v14 & 4) == 0)
  {
LABEL_10:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v6 + 24) = self->_gaplessFrameResyncCode;
  *(v6 + 132) |= 4u;
  v14 = self->_has;
  if ((v14 & 0x4000) == 0)
  {
LABEL_11:
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v6 + 124) = self->_relativeVolume;
  *(v6 + 132) |= 0x4000u;
  v14 = self->_has;
  if ((v14 & 0x8000) == 0)
  {
LABEL_12:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v6 + 128) = self->_sampleRate;
  *(v6 + 132) |= 0x8000u;
  v14 = self->_has;
  if ((v14 & 0x20) == 0)
  {
LABEL_13:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v6 + 48) = self->_startTime;
  *(v6 + 132) |= 0x20u;
  v14 = self->_has;
  if ((v14 & 0x40) == 0)
  {
LABEL_14:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v6 + 56) = self->_stopTime;
  *(v6 + 132) |= 0x40u;
  v14 = self->_has;
  if ((v14 & 0x80) == 0)
  {
LABEL_15:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v6 + 64) = self->_volumeNormalizationEnergy;
  *(v6 + 132) |= 0x80u;
  v14 = self->_has;
  if ((v14 & 0x100) == 0)
  {
LABEL_16:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    *(v6 + 120) = self->_progressionDirection;
    *(v6 + 132) |= 0x2000u;
    if ((*&self->_has & 1) == 0)
    {
      return v6;
    }

    goto LABEL_18;
  }

LABEL_33:
  *(v6 + 72) = self->_beatsPerMinute;
  *(v6 + 132) |= 0x100u;
  v14 = self->_has;
  if ((v14 & 0x2000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if (v14)
  {
LABEL_18:
    *(v6 + 8) = self->_durationInSamples;
    *(v6 + 132) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    toCopy[19] = self->_bitRate;
    *(toCopy + 66) |= 0x200u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  toCopy[21] = self->_codecType;
  *(toCopy + 66) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_30:
  toCopy[20] = self->_codecSubType;
  *(toCopy + 66) |= 0x400u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_5:
    toCopy[22] = self->_dataKind;
    *(toCopy + 66) |= 0x1000u;
  }

LABEL_6:
  v7 = toCopy;
  if (self->_dataUrl)
  {
    [toCopy setDataUrl:?];
    toCopy = v7;
  }

  if (self->_eqPreset)
  {
    [v7 setEqPreset:?];
    toCopy = v7;
  }

  if (self->_playbackFormat)
  {
    [v7 setPlaybackFormat:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    *(toCopy + 4) = self->_gaplessHeuristicCode;
    *(toCopy + 66) |= 8u;
    v6 = self->_has;
    if ((v6 & 0x10) == 0)
    {
LABEL_14:
      if ((v6 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_14;
  }

  *(toCopy + 5) = self->_gaplessHeuristicDelayCode;
  *(toCopy + 66) |= 0x10u;
  v6 = self->_has;
  if ((v6 & 2) == 0)
  {
LABEL_15:
    if ((v6 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 2) = self->_gaplessEncodingDrainCode;
  *(toCopy + 66) |= 2u;
  v6 = self->_has;
  if ((v6 & 4) == 0)
  {
LABEL_16:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 3) = self->_gaplessFrameResyncCode;
  *(toCopy + 66) |= 4u;
  v6 = self->_has;
  if ((v6 & 0x4000) == 0)
  {
LABEL_17:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  toCopy[31] = self->_relativeVolume;
  *(toCopy + 66) |= 0x4000u;
  v6 = self->_has;
  if ((v6 & 0x8000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  toCopy[32] = self->_sampleRate;
  *(toCopy + 66) |= 0x8000u;
  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
LABEL_19:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(toCopy + 6) = self->_startTime;
  *(toCopy + 66) |= 0x20u;
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_20:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 7) = self->_stopTime;
  *(toCopy + 66) |= 0x40u;
  v6 = self->_has;
  if ((v6 & 0x80) == 0)
  {
LABEL_21:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 8) = self->_volumeNormalizationEnergy;
  *(toCopy + 66) |= 0x80u;
  v6 = self->_has;
  if ((v6 & 0x100) == 0)
  {
LABEL_22:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  toCopy[18] = self->_beatsPerMinute;
  *(toCopy + 66) |= 0x100u;
  v6 = self->_has;
  if ((v6 & 0x2000) == 0)
  {
LABEL_23:
    if ((v6 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_42:
  toCopy[30] = self->_progressionDirection;
  *(toCopy + 66) |= 0x2000u;
  if (*&self->_has)
  {
LABEL_24:
    *(toCopy + 1) = self->_durationInSamples;
    *(toCopy + 66) |= 1u;
  }

LABEL_25:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_30:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
  if (self->_dataUrl)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_eqPreset)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_playbackFormat)
  {
    PBDataWriterWriteStringField();
  }

  v5 = self->_has;
  if ((v5 & 8) != 0)
  {
    PBDataWriterWriteInt64Field();
    v5 = self->_has;
    if ((v5 & 0x10) == 0)
    {
LABEL_14:
      if ((v5 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_14;
  }

  PBDataWriterWriteInt64Field();
  v5 = self->_has;
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteInt64Field();
  v5 = self->_has;
  if ((v5 & 4) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  PBDataWriterWriteInt64Field();
  v5 = self->_has;
  if ((v5 & 0x4000) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  PBDataWriterWriteInt32Field();
  v5 = self->_has;
  if ((v5 & 0x8000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  PBDataWriterWriteInt32Field();
  v5 = self->_has;
  if ((v5 & 0x20) == 0)
  {
LABEL_19:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  PBDataWriterWriteInt64Field();
  v5 = self->_has;
  if ((v5 & 0x40) == 0)
  {
LABEL_20:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  PBDataWriterWriteInt64Field();
  v5 = self->_has;
  if ((v5 & 0x80) == 0)
  {
LABEL_21:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  PBDataWriterWriteInt64Field();
  v5 = self->_has;
  if ((v5 & 0x100) == 0)
  {
LABEL_22:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  PBDataWriterWriteInt32Field();
  v5 = self->_has;
  if ((v5 & 0x2000) == 0)
  {
LABEL_23:
    if ((v5 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_42:
  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_24:
    PBDataWriterWriteInt64Field();
  }

LABEL_25:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_bitRate];
    [dictionary setObject:v12 forKey:@"bitRate"];

    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInt:self->_codecType];
  [dictionary setObject:v13 forKey:@"codecType"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_30:
  v14 = [MEMORY[0x277CCABB0] numberWithInt:self->_codecSubType];
  [dictionary setObject:v14 forKey:@"codecSubType"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_dataKind];
    [dictionary setObject:v5 forKey:@"dataKind"];
  }

LABEL_6:
  dataUrl = self->_dataUrl;
  if (dataUrl)
  {
    [dictionary setObject:dataUrl forKey:@"dataUrl"];
  }

  eqPreset = self->_eqPreset;
  if (eqPreset)
  {
    [dictionary setObject:eqPreset forKey:@"eqPreset"];
  }

  playbackFormat = self->_playbackFormat;
  if (playbackFormat)
  {
    [dictionary setObject:playbackFormat forKey:@"playbackFormat"];
  }

  v9 = self->_has;
  if ((v9 & 8) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_gaplessHeuristicCode];
    [dictionary setObject:v15 forKey:@"gaplessHeuristicCode"];

    v9 = self->_has;
    if ((v9 & 0x10) == 0)
    {
LABEL_14:
      if ((v9 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }
  }

  else if ((v9 & 0x10) == 0)
  {
    goto LABEL_14;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_gaplessHeuristicDelayCode];
  [dictionary setObject:v16 forKey:@"gaplessHeuristicDelayCode"];

  v9 = self->_has;
  if ((v9 & 2) == 0)
  {
LABEL_15:
    if ((v9 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_gaplessEncodingDrainCode];
  [dictionary setObject:v17 forKey:@"gaplessEncodingDrainCode"];

  v9 = self->_has;
  if ((v9 & 4) == 0)
  {
LABEL_16:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_gaplessFrameResyncCode];
  [dictionary setObject:v18 forKey:@"gaplessFrameResyncCode"];

  v9 = self->_has;
  if ((v9 & 0x4000) == 0)
  {
LABEL_17:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = [MEMORY[0x277CCABB0] numberWithInt:self->_relativeVolume];
  [dictionary setObject:v19 forKey:@"relativeVolume"];

  v9 = self->_has;
  if ((v9 & 0x8000) == 0)
  {
LABEL_18:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v20 = [MEMORY[0x277CCABB0] numberWithInt:self->_sampleRate];
  [dictionary setObject:v20 forKey:@"sampleRate"];

  v9 = self->_has;
  if ((v9 & 0x20) == 0)
  {
LABEL_19:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_startTime];
  [dictionary setObject:v21 forKey:@"startTime"];

  v9 = self->_has;
  if ((v9 & 0x40) == 0)
  {
LABEL_20:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_stopTime];
  [dictionary setObject:v22 forKey:@"stopTime"];

  v9 = self->_has;
  if ((v9 & 0x80) == 0)
  {
LABEL_21:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  v23 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_volumeNormalizationEnergy];
  [dictionary setObject:v23 forKey:@"volumeNormalizationEnergy"];

  v9 = self->_has;
  if ((v9 & 0x100) == 0)
  {
LABEL_22:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  v24 = [MEMORY[0x277CCABB0] numberWithInt:self->_beatsPerMinute];
  [dictionary setObject:v24 forKey:@"beatsPerMinute"];

  v9 = self->_has;
  if ((v9 & 0x2000) == 0)
  {
LABEL_23:
    if ((v9 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_42:
  v25 = [MEMORY[0x277CCABB0] numberWithInt:self->_progressionDirection];
  [dictionary setObject:v25 forKey:@"progressionDirection"];

  if (*&self->_has)
  {
LABEL_24:
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_durationInSamples];
    [dictionary setObject:v10 forKey:@"durationInSamples"];
  }

LABEL_25:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPPlaybackInfo;
  v4 = [(MIPPlaybackInfo *)&v8 description];
  dictionaryRepresentation = [(MIPPlaybackInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasProgressionDirection:(BOOL)direction
{
  if (direction)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasBeatsPerMinute:(BOOL)minute
{
  if (minute)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasVolumeNormalizationEnergy:(BOOL)energy
{
  if (energy)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasStopTime:(BOOL)time
{
  if (time)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasStartTime:(BOOL)time
{
  if (time)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasSampleRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasRelativeVolume:(BOOL)volume
{
  if (volume)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasGaplessFrameResyncCode:(BOOL)code
{
  if (code)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasGaplessEncodingDrainCode:(BOOL)code
{
  if (code)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasGaplessHeuristicDelayCode:(BOOL)code
{
  if (code)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasGaplessHeuristicCode:(BOOL)code
{
  if (code)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasDataKind:(BOOL)kind
{
  if (kind)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasCodecSubType:(BOOL)type
{
  if (type)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasCodecType:(BOOL)type
{
  if (type)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasBitRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

@end