@interface _MRVoiceInputDevice
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRecordingState:(id)a3;
- (int)recordingState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRecordingState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRVoiceInputDevice

- (int)recordingState
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_recordingState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRecordingState:(BOOL)a3
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

- (int)StringAsRecordingState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Recording"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NotRecording"])
  {
    v4 = 2;
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
  v8.super_class = _MRVoiceInputDevice;
  v4 = [(_MRVoiceInputDevice *)&v8 description];
  v5 = [(_MRVoiceInputDevice *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_deviceID];
    [v3 setObject:v4 forKey:@"deviceID"];
  }

  descriptor = self->_descriptor;
  if (descriptor)
  {
    v6 = [(_MRVoiceInputDeviceDescriptorProtobuf *)descriptor dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"descriptor"];
  }

  if ((*&self->_has & 2) != 0)
  {
    recordingState = self->_recordingState;
    if (recordingState >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_recordingState];
    }

    else
    {
      v8 = off_1E769E030[recordingState];
    }

    [v3 setObject:v8 forKey:@"recordingState"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*&self->_has)
  {
    deviceID = self->_deviceID;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_descriptor)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    recordingState = self->_recordingState;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_deviceID;
    *(v4 + 24) |= 1u;
  }

  if (self->_descriptor)
  {
    v5 = v4;
    [v4 setDescriptor:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[5] = self->_recordingState;
    *(v4 + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_deviceID;
    *(v5 + 24) |= 1u;
  }

  v7 = [(_MRVoiceInputDeviceDescriptorProtobuf *)self->_descriptor copyWithZone:a3];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 20) = self->_recordingState;
    *(v6 + 24) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = *(v4 + 24);
  if (has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_deviceID != *(v4 + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_14;
  }

  descriptor = self->_descriptor;
  if (descriptor | *(v4 + 1))
  {
    if (![(_MRVoiceInputDeviceDescriptorProtobuf *)descriptor isEqual:?])
    {
LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 24) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_recordingState != *(v4 + 5))
    {
      goto LABEL_14;
    }

    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_deviceID;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_MRVoiceInputDeviceDescriptorProtobuf *)self->_descriptor hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_recordingState;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[6])
  {
    self->_deviceID = v4[4];
    *&self->_has |= 1u;
  }

  descriptor = self->_descriptor;
  v7 = *(v5 + 1);
  if (descriptor)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    [(_MRVoiceInputDeviceDescriptorProtobuf *)descriptor mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    [(_MRVoiceInputDevice *)self setDescriptor:?];
  }

  v5 = v8;
LABEL_9:
  if ((*(v5 + 24) & 2) != 0)
  {
    self->_recordingState = *(v5 + 5);
    *&self->_has |= 2u;
  }
}

@end