@interface _MRRegisterForGameControllerEventsMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInputModeFlags:(id)a3;
- (int)inputModeFlags;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRRegisterForGameControllerEventsMessageProtobuf

- (int)inputModeFlags
{
  if (*&self->_has)
  {
    return self->_inputModeFlags;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsInputModeFlags:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Motion"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Buttons"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Digitizer"])
  {
    v4 = 4;
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
  v8.super_class = _MRRegisterForGameControllerEventsMessageProtobuf;
  v4 = [(_MRRegisterForGameControllerEventsMessageProtobuf *)&v8 description];
  v5 = [(_MRRegisterForGameControllerEventsMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    inputModeFlags = self->_inputModeFlags;
    if (inputModeFlags < 5 && ((0x17u >> inputModeFlags) & 1) != 0)
    {
      v5 = off_1E76A1E50[inputModeFlags];
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_inputModeFlags];
    }

    [v3 setObject:v5 forKey:@"inputModeFlags"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    inputModeFlags = self->_inputModeFlags;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = self->_inputModeFlags;
    *(a3 + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_inputModeFlags;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 12) & 1) != 0 && self->_inputModeFlags == *(v4 + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_inputModeFlags;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_inputModeFlags = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end