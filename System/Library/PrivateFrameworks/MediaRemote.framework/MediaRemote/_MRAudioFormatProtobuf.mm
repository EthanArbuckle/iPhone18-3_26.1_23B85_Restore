@interface _MRAudioFormatProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRenderingMode:(id)a3;
- (int)StringAsTier:(id)a3;
- (int)renderingMode;
- (int)tier;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBitrate:(BOOL)a3;
- (void)setHasChannelLayout:(BOOL)a3;
- (void)setHasCodec:(BOOL)a3;
- (void)setHasMultiChannel:(BOOL)a3;
- (void)setHasRenderingMode:(BOOL)a3;
- (void)setHasSampleRate:(BOOL)a3;
- (void)setHasSpatialized:(BOOL)a3;
- (void)setHasTier:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRAudioFormatProtobuf

- (int)tier
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_tier;
  }

  else
  {
    return 0;
  }
}

- (int)renderingMode
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_renderingMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTier:(BOOL)a3
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

- (int)StringAsTier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LowBandwidthStereo"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"HighQualityStereo"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Lossless"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HighResolutionLossless"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Spatial"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasBitrate:(BOOL)a3
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

- (void)setHasSampleRate:(BOOL)a3
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

- (void)setHasCodec:(BOOL)a3
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

- (void)setHasMultiChannel:(BOOL)a3
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

- (void)setHasChannelLayout:(BOOL)a3
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

- (int)StringAsRenderingMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MonoStereo"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Surround"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SpatialAudio"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"DolbyAudio"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"DolbyAtmos"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAudioFormatProtobuf;
  v4 = [(_MRAudioFormatProtobuf *)&v8 description];
  v5 = [(_MRAudioFormatProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    tier = self->_tier;
    if (tier >= 5)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_tier];
    }

    else
    {
      v6 = off_1E769DFD8[tier];
    }

    [v3 setObject:v6 forKey:@"tier"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_bitrate];
    [v3 setObject:v13 forKey:@"bitrate"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_8:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_8;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sampleRate];
  [v3 setObject:v14 forKey:@"sampleRate"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_bitDepth];
  [v3 setObject:v15 forKey:@"bitDepth"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_codec];
  [v3 setObject:v16 forKey:@"codec"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_spatialized];
  [v3 setObject:v17 forKey:@"spatialized"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_28:
  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_multiChannel];
  [v3 setObject:v18 forKey:@"multiChannel"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_channelLayout];
    [v3 setObject:v7 forKey:@"channelLayout"];
  }

LABEL_14:
  audioChannelLayoutDescription = self->_audioChannelLayoutDescription;
  if (audioChannelLayoutDescription)
  {
    [v3 setObject:audioChannelLayoutDescription forKey:@"audioChannelLayoutDescription"];
  }

  groupID = self->_groupID;
  if (groupID)
  {
    [v3 setObject:groupID forKey:@"groupID"];
  }

  stableVariantID = self->_stableVariantID;
  if (stableVariantID)
  {
    [v3 setObject:stableVariantID forKey:@"stableVariantID"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    renderingMode = self->_renderingMode;
    if (renderingMode >= 6)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_renderingMode];
    }

    else
    {
      v12 = off_1E769E000[renderingMode];
    }

    [v3 setObject:v12 forKey:@"renderingMode"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    tier = self->_tier;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  bitrate = self->_bitrate;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  sampleRate = self->_sampleRate;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  bitDepth = self->_bitDepth;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  codec = self->_codec;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  spatialized = self->_spatialized;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_27:
  multiChannel = self->_multiChannel;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    channelLayout = self->_channelLayout;
    PBDataWriterWriteUint32Field();
  }

LABEL_10:
  if (self->_audioChannelLayoutDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_groupID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_stableVariantID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    renderingMode = self->_renderingMode;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v4[18] = self->_tier;
    *(v4 + 40) |= 0x40u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 2) = self->_bitrate;
  *(v4 + 40) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 3) = self->_sampleRate;
  *(v4 + 40) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 1) = self->_bitDepth;
  *(v4 + 40) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4[11] = self->_codec;
  *(v4 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 77) = self->_spatialized;
  *(v4 + 40) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_27:
  *(v4 + 76) = self->_multiChannel;
  *(v4 + 40) |= 0x80u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    v4[10] = self->_channelLayout;
    *(v4 + 40) |= 8u;
  }

LABEL_10:
  v6 = v4;
  if (self->_audioChannelLayoutDescription)
  {
    [v4 setAudioChannelLayoutDescription:?];
    v4 = v6;
  }

  if (self->_groupID)
  {
    [v6 setGroupID:?];
    v4 = v6;
  }

  if (self->_stableVariantID)
  {
    [v6 setStableVariantID:?];
    v4 = v6;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v4[14] = self->_renderingMode;
    *(v4 + 40) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v5 + 72) = self->_tier;
    *(v5 + 80) |= 0x40u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_bitrate;
  *(v5 + 80) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 24) = self->_sampleRate;
  *(v5 + 80) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 8) = self->_bitDepth;
  *(v5 + 80) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 44) = self->_codec;
  *(v5 + 80) |= 0x10u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 77) = self->_spatialized;
  *(v5 + 80) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  *(v5 + 76) = self->_multiChannel;
  *(v5 + 80) |= 0x80u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    *(v5 + 40) = self->_channelLayout;
    *(v5 + 80) |= 8u;
  }

LABEL_10:
  v8 = [(NSString *)self->_audioChannelLayoutDescription copyWithZone:a3];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  v10 = [(NSString *)self->_groupID copyWithZone:a3];
  v11 = *(v6 + 48);
  *(v6 + 48) = v10;

  v12 = [(NSString *)self->_stableVariantID copyWithZone:a3];
  v13 = *(v6 + 64);
  *(v6 + 64) = v12;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 56) = self->_renderingMode;
    *(v6 + 80) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_55;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_tier != *(v4 + 18))
    {
      goto LABEL_55;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_bitrate != *(v4 + 2))
    {
      goto LABEL_55;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_sampleRate != *(v4 + 3))
    {
      goto LABEL_55;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_55;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_bitDepth != *(v4 + 1))
    {
      goto LABEL_55;
    }
  }

  else if (v6)
  {
    goto LABEL_55;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_codec != *(v4 + 11))
    {
      goto LABEL_55;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_55;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 40) & 0x100) == 0)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 77);
    if (self->_spatialized)
    {
      if ((*(v4 + 77) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(v4 + 77))
    {
      goto LABEL_55;
    }
  }

  else if ((*(v4 + 40) & 0x100) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 0x80) == 0)
  {
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_31;
    }

LABEL_55:
    v13 = 0;
    goto LABEL_56;
  }

  if ((v6 & 0x80) == 0)
  {
    goto LABEL_55;
  }

  v8 = *(v4 + 76);
  if (self->_multiChannel)
  {
    if ((*(v4 + 76) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (*(v4 + 76))
  {
    goto LABEL_55;
  }

LABEL_31:
  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_channelLayout != *(v4 + 10))
    {
      goto LABEL_55;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_55;
  }

  audioChannelLayoutDescription = self->_audioChannelLayoutDescription;
  if (audioChannelLayoutDescription | *(v4 + 4) && ![(NSString *)audioChannelLayoutDescription isEqual:?])
  {
    goto LABEL_55;
  }

  groupID = self->_groupID;
  if (groupID | *(v4 + 6))
  {
    if (![(NSString *)groupID isEqual:?])
    {
      goto LABEL_55;
    }
  }

  stableVariantID = self->_stableVariantID;
  if (stableVariantID | *(v4 + 8))
  {
    if (![(NSString *)stableVariantID isEqual:?])
    {
      goto LABEL_55;
    }
  }

  v12 = *(v4 + 40);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((v12 & 0x20) != 0 && self->_renderingMode == *(v4 + 14))
    {
      v13 = 1;
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v13 = (v12 & 0x20) == 0;
LABEL_56:

  return v13;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v16 = 2654435761 * self->_tier;
    if ((has & 2) != 0)
    {
LABEL_3:
      v15 = 2654435761 * self->_bitrate;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v14 = 2654435761 * self->_sampleRate;
    if (has)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v14 = 0;
  if (has)
  {
LABEL_5:
    v4 = 2654435761 * self->_bitDepth;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v5 = 2654435761 * self->_codec;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v6 = 2654435761 * self->_spatialized;
    if ((has & 0x80) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v7 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v6 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v7 = 2654435761 * self->_multiChannel;
  if ((has & 8) != 0)
  {
LABEL_9:
    v8 = 2654435761 * self->_channelLayout;
    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
LABEL_18:
  v9 = [(NSString *)self->_audioChannelLayoutDescription hash];
  v10 = [(NSString *)self->_groupID hash];
  v11 = [(NSString *)self->_stableVariantID hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v12 = 2654435761 * self->_renderingMode;
  }

  else
  {
    v12 = 0;
  }

  return v15 ^ v16 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if ((v5 & 0x40) != 0)
  {
    self->_tier = *(v4 + 18);
    *&self->_has |= 0x40u;
    v5 = *(v4 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_bitrate = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_sampleRate = *(v4 + 3);
  *&self->_has |= 4u;
  v5 = *(v4 + 40);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_bitDepth = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_codec = *(v4 + 11);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 40);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_spatialized = *(v4 + 77);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 40);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_27:
  self->_multiChannel = *(v4 + 76);
  *&self->_has |= 0x80u;
  if ((*(v4 + 40) & 8) != 0)
  {
LABEL_9:
    self->_channelLayout = *(v4 + 10);
    *&self->_has |= 8u;
  }

LABEL_10:
  v6 = v4;
  if (*(v4 + 4))
  {
    [(_MRAudioFormatProtobuf *)self setAudioChannelLayoutDescription:?];
    v4 = v6;
  }

  if (*(v4 + 6))
  {
    [(_MRAudioFormatProtobuf *)self setGroupID:?];
    v4 = v6;
  }

  if (*(v4 + 8))
  {
    [(_MRAudioFormatProtobuf *)self setStableVariantID:?];
    v4 = v6;
  }

  if ((*(v4 + 40) & 0x20) != 0)
  {
    self->_renderingMode = *(v4 + 14);
    *&self->_has |= 0x20u;
  }
}

@end