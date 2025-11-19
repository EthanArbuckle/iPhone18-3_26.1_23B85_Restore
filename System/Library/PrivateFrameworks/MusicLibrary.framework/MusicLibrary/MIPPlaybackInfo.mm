@interface MIPPlaybackInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBeatsPerMinute:(BOOL)a3;
- (void)setHasBitRate:(BOOL)a3;
- (void)setHasCodecSubType:(BOOL)a3;
- (void)setHasCodecType:(BOOL)a3;
- (void)setHasDataKind:(BOOL)a3;
- (void)setHasGaplessEncodingDrainCode:(BOOL)a3;
- (void)setHasGaplessFrameResyncCode:(BOOL)a3;
- (void)setHasGaplessHeuristicCode:(BOOL)a3;
- (void)setHasGaplessHeuristicDelayCode:(BOOL)a3;
- (void)setHasProgressionDirection:(BOOL)a3;
- (void)setHasRelativeVolume:(BOOL)a3;
- (void)setHasSampleRate:(BOOL)a3;
- (void)setHasStartTime:(BOOL)a3;
- (void)setHasStopTime:(BOOL)a3;
- (void)setHasVolumeNormalizationEnergy:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MIPPlaybackInfo

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 66);
  if ((v5 & 0x200) != 0)
  {
    self->_bitRate = *(v4 + 19);
    *&self->_has |= 0x200u;
    v5 = *(v4 + 66);
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

  else if ((*(v4 + 66) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  self->_codecType = *(v4 + 21);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 66);
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
  self->_codecSubType = *(v4 + 20);
  *&self->_has |= 0x400u;
  if ((*(v4 + 66) & 0x1000) != 0)
  {
LABEL_5:
    self->_dataKind = *(v4 + 22);
    *&self->_has |= 0x1000u;
  }

LABEL_6:
  v7 = v4;
  if (*(v4 + 12))
  {
    [(MIPPlaybackInfo *)self setDataUrl:?];
    v4 = v7;
  }

  if (*(v4 + 13))
  {
    [(MIPPlaybackInfo *)self setEqPreset:?];
    v4 = v7;
  }

  if (*(v4 + 14))
  {
    [(MIPPlaybackInfo *)self setPlaybackFormat:?];
    v4 = v7;
  }

  v6 = *(v4 + 66);
  if ((v6 & 8) != 0)
  {
    self->_gaplessHeuristicCode = *(v4 + 4);
    *&self->_has |= 8u;
    v6 = *(v4 + 66);
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

  self->_gaplessHeuristicDelayCode = *(v4 + 5);
  *&self->_has |= 0x10u;
  v6 = *(v4 + 66);
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
  self->_gaplessEncodingDrainCode = *(v4 + 2);
  *&self->_has |= 2u;
  v6 = *(v4 + 66);
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
  self->_gaplessFrameResyncCode = *(v4 + 3);
  *&self->_has |= 4u;
  v6 = *(v4 + 66);
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
  self->_relativeVolume = *(v4 + 31);
  *&self->_has |= 0x4000u;
  v6 = *(v4 + 66);
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
  self->_sampleRate = *(v4 + 32);
  *&self->_has |= 0x8000u;
  v6 = *(v4 + 66);
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
  self->_startTime = *(v4 + 6);
  *&self->_has |= 0x20u;
  v6 = *(v4 + 66);
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
  self->_stopTime = *(v4 + 7);
  *&self->_has |= 0x40u;
  v6 = *(v4 + 66);
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
  self->_volumeNormalizationEnergy = *(v4 + 8);
  *&self->_has |= 0x80u;
  v6 = *(v4 + 66);
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
  self->_beatsPerMinute = *(v4 + 18);
  *&self->_has |= 0x100u;
  v6 = *(v4 + 66);
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
  self->_progressionDirection = *(v4 + 30);
  *&self->_has |= 0x2000u;
  if (*(v4 + 66))
  {
LABEL_24:
    self->_durationInSamples = *(v4 + 1);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 66) & 0x200) == 0 || self->_bitRate != *(v4 + 19))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 66) & 0x200) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 66) & 0x800) == 0 || self->_codecType != *(v4 + 21))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 66) & 0x800) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 66) & 0x400) == 0 || self->_codecSubType != *(v4 + 20))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 66) & 0x400) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 66) & 0x1000) == 0 || self->_dataKind != *(v4 + 22))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 66) & 0x1000) != 0)
  {
    goto LABEL_88;
  }

  dataUrl = self->_dataUrl;
  if (dataUrl | *(v4 + 12) && ![(NSString *)dataUrl isEqual:?])
  {
    goto LABEL_88;
  }

  eqPreset = self->_eqPreset;
  if (eqPreset | *(v4 + 13))
  {
    if (![(NSString *)eqPreset isEqual:?])
    {
      goto LABEL_88;
    }
  }

  playbackFormat = self->_playbackFormat;
  if (playbackFormat | *(v4 + 14))
  {
    if (![(NSString *)playbackFormat isEqual:?])
    {
      goto LABEL_88;
    }
  }

  has = self->_has;
  v9 = *(v4 + 66);
  if ((has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_gaplessHeuristicCode != *(v4 + 4))
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
    if ((v9 & 0x10) == 0 || self->_gaplessHeuristicDelayCode != *(v4 + 5))
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
    if ((v9 & 2) == 0 || self->_gaplessEncodingDrainCode != *(v4 + 2))
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
    if ((v9 & 4) == 0 || self->_gaplessFrameResyncCode != *(v4 + 3))
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
    if ((*(v4 + 66) & 0x4000) == 0 || self->_relativeVolume != *(v4 + 31))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 66) & 0x4000) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x8000) != 0)
  {
    if ((*(v4 + 66) & 0x8000) == 0 || self->_sampleRate != *(v4 + 32))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 66) & 0x8000) != 0)
  {
LABEL_88:
    v10 = 0;
    goto LABEL_89;
  }

  if ((has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_startTime != *(v4 + 6))
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
    if ((v9 & 0x40) == 0 || self->_stopTime != *(v4 + 7))
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
    if ((v9 & 0x80) == 0 || self->_volumeNormalizationEnergy != *(v4 + 8))
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
    if ((*(v4 + 66) & 0x100) == 0 || self->_beatsPerMinute != *(v4 + 18))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 66) & 0x100) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 66) & 0x2000) == 0 || self->_progressionDirection != *(v4 + 30))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 66) & 0x2000) != 0)
  {
    goto LABEL_88;
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_durationInSamples != *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v8 = [(NSString *)self->_dataUrl copyWithZone:a3];
  v9 = *(v6 + 96);
  *(v6 + 96) = v8;

  v10 = [(NSString *)self->_eqPreset copyWithZone:a3];
  v11 = *(v6 + 104);
  *(v6 + 104) = v10;

  v12 = [(NSString *)self->_playbackFormat copyWithZone:a3];
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v4[19] = self->_bitRate;
    *(v4 + 66) |= 0x200u;
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

  v4[21] = self->_codecType;
  *(v4 + 66) |= 0x800u;
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
  v4[20] = self->_codecSubType;
  *(v4 + 66) |= 0x400u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_5:
    v4[22] = self->_dataKind;
    *(v4 + 66) |= 0x1000u;
  }

LABEL_6:
  v7 = v4;
  if (self->_dataUrl)
  {
    [v4 setDataUrl:?];
    v4 = v7;
  }

  if (self->_eqPreset)
  {
    [v7 setEqPreset:?];
    v4 = v7;
  }

  if (self->_playbackFormat)
  {
    [v7 setPlaybackFormat:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    *(v4 + 4) = self->_gaplessHeuristicCode;
    *(v4 + 66) |= 8u;
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

  *(v4 + 5) = self->_gaplessHeuristicDelayCode;
  *(v4 + 66) |= 0x10u;
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
  *(v4 + 2) = self->_gaplessEncodingDrainCode;
  *(v4 + 66) |= 2u;
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
  *(v4 + 3) = self->_gaplessFrameResyncCode;
  *(v4 + 66) |= 4u;
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
  v4[31] = self->_relativeVolume;
  *(v4 + 66) |= 0x4000u;
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
  v4[32] = self->_sampleRate;
  *(v4 + 66) |= 0x8000u;
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
  *(v4 + 6) = self->_startTime;
  *(v4 + 66) |= 0x20u;
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
  *(v4 + 7) = self->_stopTime;
  *(v4 + 66) |= 0x40u;
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
  *(v4 + 8) = self->_volumeNormalizationEnergy;
  *(v4 + 66) |= 0x80u;
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
  v4[18] = self->_beatsPerMinute;
  *(v4 + 66) |= 0x100u;
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
  v4[30] = self->_progressionDirection;
  *(v4 + 66) |= 0x2000u;
  if (*&self->_has)
  {
LABEL_24:
    *(v4 + 1) = self->_durationInSamples;
    *(v4 + 66) |= 1u;
  }

LABEL_25:
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_bitRate];
    [v3 setObject:v12 forKey:@"bitRate"];

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
  [v3 setObject:v13 forKey:@"codecType"];

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
  [v3 setObject:v14 forKey:@"codecSubType"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_dataKind];
    [v3 setObject:v5 forKey:@"dataKind"];
  }

LABEL_6:
  dataUrl = self->_dataUrl;
  if (dataUrl)
  {
    [v3 setObject:dataUrl forKey:@"dataUrl"];
  }

  eqPreset = self->_eqPreset;
  if (eqPreset)
  {
    [v3 setObject:eqPreset forKey:@"eqPreset"];
  }

  playbackFormat = self->_playbackFormat;
  if (playbackFormat)
  {
    [v3 setObject:playbackFormat forKey:@"playbackFormat"];
  }

  v9 = self->_has;
  if ((v9 & 8) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_gaplessHeuristicCode];
    [v3 setObject:v15 forKey:@"gaplessHeuristicCode"];

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
  [v3 setObject:v16 forKey:@"gaplessHeuristicDelayCode"];

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
  [v3 setObject:v17 forKey:@"gaplessEncodingDrainCode"];

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
  [v3 setObject:v18 forKey:@"gaplessFrameResyncCode"];

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
  [v3 setObject:v19 forKey:@"relativeVolume"];

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
  [v3 setObject:v20 forKey:@"sampleRate"];

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
  [v3 setObject:v21 forKey:@"startTime"];

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
  [v3 setObject:v22 forKey:@"stopTime"];

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
  [v3 setObject:v23 forKey:@"volumeNormalizationEnergy"];

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
  [v3 setObject:v24 forKey:@"beatsPerMinute"];

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
  [v3 setObject:v25 forKey:@"progressionDirection"];

  if (*&self->_has)
  {
LABEL_24:
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_durationInSamples];
    [v3 setObject:v10 forKey:@"durationInSamples"];
  }

LABEL_25:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPPlaybackInfo;
  v4 = [(MIPPlaybackInfo *)&v8 description];
  v5 = [(MIPPlaybackInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasProgressionDirection:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasBeatsPerMinute:(BOOL)a3
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

- (void)setHasVolumeNormalizationEnergy:(BOOL)a3
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

- (void)setHasStopTime:(BOOL)a3
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

- (void)setHasStartTime:(BOOL)a3
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

- (void)setHasSampleRate:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasRelativeVolume:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasGaplessFrameResyncCode:(BOOL)a3
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

- (void)setHasGaplessEncodingDrainCode:(BOOL)a3
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

- (void)setHasGaplessHeuristicDelayCode:(BOOL)a3
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

- (void)setHasGaplessHeuristicCode:(BOOL)a3
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

- (void)setHasDataKind:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasCodecSubType:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasCodecType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasBitRate:(BOOL)a3
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

@end