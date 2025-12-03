@interface MXAudioMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAudioSource:(id)source;
- (int)StringAsCodec:(id)codec;
- (int)audioSource;
- (int)codec;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCodec:(BOOL)codec;
- (void)setHasEnableServerEndpoint:(BOOL)endpoint;
- (void)setHasIsFarField:(BOOL)field;
- (void)writeTo:(id)to;
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

- (void)setHasCodec:(BOOL)codec
{
  if (codec)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsCodec:(id)codec
{
  codecCopy = codec;
  if ([codecCopy isEqualToString:@"CODEC_UNDEF"])
  {
    v4 = 0;
  }

  else if ([codecCopy isEqualToString:@"SPXWB"])
  {
    v4 = 1;
  }

  else if ([codecCopy isEqualToString:@"SPXNB"])
  {
    v4 = 2;
  }

  else if ([codecCopy isEqualToString:@"PCM_8K"])
  {
    v4 = 3;
  }

  else if ([codecCopy isEqualToString:@"PCM_16K"])
  {
    v4 = 4;
  }

  else if ([codecCopy isEqualToString:@"OPUS_8K"])
  {
    v4 = 5;
  }

  else if ([codecCopy isEqualToString:@"OPUS_16K"])
  {
    v4 = 6;
  }

  else if ([codecCopy isEqualToString:@"ULAW_8K"])
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

- (int)StringAsAudioSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"BuiltInMic"])
  {
    v4 = 0;
  }

  else if ([sourceCopy isEqualToString:@"LineIn"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"WiredHeadsetMic"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"BluetoothHandsFreeDeviceSource"])
  {
    v4 = 3;
  }

  else if ([sourceCopy isEqualToString:@"UsbAudioSource"])
  {
    v4 = 4;
  }

  else if ([sourceCopy isEqualToString:@"CarAudioSource"])
  {
    v4 = 5;
  }

  else if ([sourceCopy isEqualToString:@"BluetoothDoAPDevice"])
  {
    v4 = 6;
  }

  else if ([sourceCopy isEqualToString:@"CarJarvisDevice"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsFarField:(BOOL)field
{
  if (field)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEnableServerEndpoint:(BOOL)endpoint
{
  if (endpoint)
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
  dictionaryRepresentation = [(MXAudioMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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

    [dictionary setObject:v6 forKey:@"codec"];

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

    [dictionary setObject:v8 forKey:@"audio_source"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFarField];
    [dictionary setObject:v9 forKey:@"is_far_field"];
  }

  voiceTriggerInfo = self->_voiceTriggerInfo;
  if (voiceTriggerInfo)
  {
    dictionaryRepresentation = [(MXVoiceTriggerInfo *)voiceTriggerInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"voice_trigger_info"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableServerEndpoint];
    [dictionary setObject:v12 forKey:@"enable_server_endpoint"];
  }

  clientModelVersion = self->_clientModelVersion;
  if (clientModelVersion)
  {
    [dictionary setObject:clientModelVersion forKey:@"client_model_version"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v10 = toCopy;
  if ((has & 2) != 0)
  {
    codec = self->_codec;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
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
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    isFarField = self->_isFarField;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }

LABEL_5:
  if (self->_voiceTriggerInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if ((*&self->_has & 4) != 0)
  {
    enableServerEndpoint = self->_enableServerEndpoint;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }

  if (self->_clientModelVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[6] = self->_codec;
    *(toCopy + 44) |= 2u;
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

  toCopy[2] = self->_audioSource;
  *(toCopy + 44) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    *(toCopy + 41) = self->_isFarField;
    *(toCopy + 44) |= 8u;
  }

LABEL_5:
  v6 = toCopy;
  if (self->_voiceTriggerInfo)
  {
    [toCopy setVoiceTriggerInfo:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 40) = self->_enableServerEndpoint;
    *(toCopy + 44) |= 4u;
  }

  if (self->_clientModelVersion)
  {
    [v6 setClientModelVersion:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(MXVoiceTriggerInfo *)self->_voiceTriggerInfo copyWithZone:zone];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 40) = self->_enableServerEndpoint;
    *(v6 + 44) |= 4u;
  }

  v10 = [(NSString *)self->_clientModelVersion copyWithZone:zone];
  v11 = *(v6 + 16);
  *(v6 + 16) = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  has = self->_has;
  v6 = *(equalCopy + 44);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_codec != *(equalCopy + 6))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_33;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_audioSource != *(equalCopy + 2))
    {
      goto LABEL_33;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 44) & 8) == 0)
    {
      goto LABEL_33;
    }

    v11 = *(equalCopy + 41);
    if (self->_isFarField)
    {
      if ((*(equalCopy + 41) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(equalCopy + 41))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 44) & 8) != 0)
  {
    goto LABEL_33;
  }

  voiceTriggerInfo = self->_voiceTriggerInfo;
  if (voiceTriggerInfo | *(equalCopy + 4))
  {
    if (![(MXVoiceTriggerInfo *)voiceTriggerInfo isEqual:?])
    {
      goto LABEL_33;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 44);
  if ((has & 4) == 0)
  {
    if ((*(equalCopy + 44) & 4) == 0)
    {
      goto LABEL_19;
    }

LABEL_33:
    v10 = 0;
    goto LABEL_34;
  }

  if ((*(equalCopy + 44) & 4) == 0)
  {
    goto LABEL_33;
  }

  v12 = *(equalCopy + 40);
  if (self->_enableServerEndpoint)
  {
    if ((*(equalCopy + 40) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_33;
  }

LABEL_19:
  clientModelVersion = self->_clientModelVersion;
  if (clientModelVersion | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 44);
  if ((v6 & 2) != 0)
  {
    self->_codec = *(fromCopy + 6);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 44);
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

  else if ((*(fromCopy + 44) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_audioSource = *(fromCopy + 2);
  *&self->_has |= 1u;
  if ((*(fromCopy + 44) & 8) != 0)
  {
LABEL_4:
    self->_isFarField = *(fromCopy + 41);
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