@interface MXAudioMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAudioSource:(id)a3;
- (int)StringAsCodec:(id)a3;
- (int)audioSource;
- (int)codec;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCodec:(BOOL)a3;
- (void)setHasEnableServerEndpoint:(BOOL)a3;
- (void)setHasIsFarField:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXAudioMetadata

- (int)codec
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_codec;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCodec:(BOOL)a3
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

- (int)StringAsCodec:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CODEC_UNDEF"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SPXWB"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SPXNB"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PCM_8K"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PCM_16K"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"OPUS_8K"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"OPUS_16K"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ULAW_8K"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)audioSource
{
  if (*&self->_has)
  {
    return self->_audioSource;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAudioSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BuiltInMic"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LineIn"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"WiredHeadsetMic"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BluetoothHandsFreeDeviceSource"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"UsbAudioSource"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CarAudioSource"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"BluetoothDoAPDevice"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CarJarvisDevice"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsFarField:(BOOL)a3
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

- (void)setHasEnableServerEndpoint:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXAudioMetadata;
  v4 = [(MXAudioMetadata *)&v8 description];
  v5 = [(MXAudioMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    codec = self->_codec;
    if (codec >= 8)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_codec];
    }

    else
    {
      v6 = off_27991BC40[codec];
    }

    [v3 setObject:v6 forKey:@"codec"];

    has = self->_has;
  }

  if (has)
  {
    audioSource = self->_audioSource;
    if (audioSource >= 8)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_audioSource];
    }

    else
    {
      v8 = off_27991BC80[audioSource];
    }

    [v3 setObject:v8 forKey:@"audio_source"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFarField];
    [v3 setObject:v9 forKey:@"is_far_field"];
  }

  voiceTriggerInfo = self->_voiceTriggerInfo;
  if (voiceTriggerInfo)
  {
    v11 = [(MXVoiceTriggerInfo *)voiceTriggerInfo dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"voice_trigger_info"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableServerEndpoint];
    [v3 setObject:v12 forKey:@"enable_server_endpoint"];
  }

  clientModelVersion = self->_clientModelVersion;
  if (clientModelVersion)
  {
    [v3 setObject:clientModelVersion forKey:@"client_model_version"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v10 = v4;
  if ((has & 2) != 0)
  {
    codec = self->_codec;
    PBDataWriterWriteInt32Field();
    v4 = v10;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  audioSource = self->_audioSource;
  PBDataWriterWriteInt32Field();
  v4 = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    isFarField = self->_isFarField;
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }

LABEL_5:
  if (self->_voiceTriggerInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if ((*&self->_has & 4) != 0)
  {
    enableServerEndpoint = self->_enableServerEndpoint;
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }

  if (self->_clientModelVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[6] = self->_codec;
    *(v4 + 44) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = self->_audioSource;
  *(v4 + 44) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    *(v4 + 41) = self->_isFarField;
    *(v4 + 44) |= 8u;
  }

LABEL_5:
  v6 = v4;
  if (self->_voiceTriggerInfo)
  {
    [v4 setVoiceTriggerInfo:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 40) = self->_enableServerEndpoint;
    *(v4 + 44) |= 4u;
  }

  if (self->_clientModelVersion)
  {
    [v6 setClientModelVersion:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_codec;
    *(v5 + 44) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_audioSource;
  *(v5 + 44) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    *(v5 + 41) = self->_isFarField;
    *(v5 + 44) |= 8u;
  }

LABEL_5:
  v8 = [(MXVoiceTriggerInfo *)self->_voiceTriggerInfo copyWithZone:a3];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 40) = self->_enableServerEndpoint;
    *(v6 + 44) |= 4u;
  }

  v10 = [(NSString *)self->_clientModelVersion copyWithZone:a3];
  v11 = *(v6 + 16);
  *(v6 + 16) = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  has = self->_has;
  v6 = *(v4 + 44);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_codec != *(v4 + 6))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_33;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_audioSource != *(v4 + 2))
    {
      goto LABEL_33;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 44) & 8) == 0)
    {
      goto LABEL_33;
    }

    v11 = *(v4 + 41);
    if (self->_isFarField)
    {
      if ((*(v4 + 41) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(v4 + 41))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 44) & 8) != 0)
  {
    goto LABEL_33;
  }

  voiceTriggerInfo = self->_voiceTriggerInfo;
  if (voiceTriggerInfo | *(v4 + 4))
  {
    if (![(MXVoiceTriggerInfo *)voiceTriggerInfo isEqual:?])
    {
      goto LABEL_33;
    }

    has = self->_has;
  }

  v8 = *(v4 + 44);
  if ((has & 4) == 0)
  {
    if ((*(v4 + 44) & 4) == 0)
    {
      goto LABEL_19;
    }

LABEL_33:
    v10 = 0;
    goto LABEL_34;
  }

  if ((*(v4 + 44) & 4) == 0)
  {
    goto LABEL_33;
  }

  v12 = *(v4 + 40);
  if (self->_enableServerEndpoint)
  {
    if ((*(v4 + 40) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_33;
  }

LABEL_19:
  clientModelVersion = self->_clientModelVersion;
  if (clientModelVersion | *(v4 + 2))
  {
    v10 = [(NSString *)clientModelVersion isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_34:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761 * self->_codec;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_audioSource;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_isFarField;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(MXVoiceTriggerInfo *)self->_voiceTriggerInfo hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_enableServerEndpoint;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v7 ^ v6 ^ [(NSString *)self->_clientModelVersion hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 44);
  if ((v6 & 2) != 0)
  {
    self->_codec = *(v4 + 6);
    *&self->_has |= 2u;
    v6 = *(v4 + 44);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 44) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_audioSource = *(v4 + 2);
  *&self->_has |= 1u;
  if ((*(v4 + 44) & 8) != 0)
  {
LABEL_4:
    self->_isFarField = *(v4 + 41);
    *&self->_has |= 8u;
  }

LABEL_5:
  voiceTriggerInfo = self->_voiceTriggerInfo;
  v8 = *(v5 + 4);
  v9 = v5;
  if (voiceTriggerInfo)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    [(MXVoiceTriggerInfo *)voiceTriggerInfo mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    [(MXAudioMetadata *)self setVoiceTriggerInfo:?];
  }

  v5 = v9;
LABEL_14:
  if ((*(v5 + 44) & 4) != 0)
  {
    self->_enableServerEndpoint = *(v5 + 40);
    *&self->_has |= 4u;
  }

  if (*(v5 + 2))
  {
    [(MXAudioMetadata *)self setClientModelVersion:?];
  }

  MEMORY[0x2821F96F8]();
}

@end