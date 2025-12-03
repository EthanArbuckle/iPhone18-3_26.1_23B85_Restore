@interface PTPEventPacket
- (PTPEventPacket)initWithDictionary:(id)dictionary;
- (PTPEventPacket)initWithEventCode:(unsigned __int16)code transactionID:(unsigned int)d;
- (PTPEventPacket)initWithEventCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1;
- (PTPEventPacket)initWithEventCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2;
- (PTPEventPacket)initWithEventCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2 parameter3:(unsigned int)parameter3;
- (PTPEventPacket)initWithTCPBuffer:(void *)buffer;
- (PTPEventPacket)initWithUSBBuffer:(void *)buffer;
- (id)contentForTCP;
- (id)contentForUSB;
- (id)contentForUSBUsingBuffer:(void *)buffer capacity:(unsigned int)capacity;
- (id)description;
- (id)eventPacketDictionary;
@end

@implementation PTPEventPacket

- (PTPEventPacket)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PTPEventPacket;
  v5 = [(PTPEventPacket *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventCode"];
    v5->_eventCode = [v6 unsignedShortValue];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"transactionID"];
    v5->_transactionID = [v7 unsignedIntValue];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"numParameters"];
    v5->_numParameters = [v8 unsignedIntValue];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"parameter0"];
    v5->_parameters[0] = [v9 unsignedIntValue];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"parameter1"];
    v5->_parameters[1] = [v10 unsignedIntValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"parameter2"];
    v5->_parameters[2] = [v11 unsignedIntValue];
  }

  return v5;
}

- (PTPEventPacket)initWithEventCode:(unsigned __int16)code transactionID:(unsigned int)d
{
  v7.receiver = self;
  v7.super_class = PTPEventPacket;
  result = [(PTPEventPacket *)&v7 init];
  if (result)
  {
    result->_eventCode = code;
    result->_transactionID = d;
    result->_numParameters = 0;
  }

  return result;
}

- (PTPEventPacket)initWithEventCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1
{
  v9.receiver = self;
  v9.super_class = PTPEventPacket;
  result = [(PTPEventPacket *)&v9 init];
  if (result)
  {
    result->_eventCode = code;
    result->_transactionID = d;
    result->_parameters[0] = parameter1;
    result->_numParameters = 1;
  }

  return result;
}

- (PTPEventPacket)initWithEventCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2
{
  v11.receiver = self;
  v11.super_class = PTPEventPacket;
  result = [(PTPEventPacket *)&v11 init];
  if (result)
  {
    result->_eventCode = code;
    result->_transactionID = d;
    result->_parameters[0] = parameter1;
    result->_parameters[1] = parameter2;
    result->_numParameters = 2;
  }

  return result;
}

- (PTPEventPacket)initWithEventCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2 parameter3:(unsigned int)parameter3
{
  v13.receiver = self;
  v13.super_class = PTPEventPacket;
  result = [(PTPEventPacket *)&v13 init];
  if (result)
  {
    result->_eventCode = code;
    result->_transactionID = d;
    result->_parameters[0] = parameter1;
    result->_parameters[1] = parameter2;
    result->_parameters[2] = parameter3;
    result->_numParameters = 3;
  }

  return result;
}

- (PTPEventPacket)initWithTCPBuffer:(void *)buffer
{
  v3 = *buffer;
  if ((*buffer - 27) >= 0xFFFFFFF3 && *(buffer + 1) == 8)
  {
    v11.receiver = self;
    v11.super_class = PTPEventPacket;
    v7 = [(PTPEventPacket *)&v11 init];
    if (v7)
    {
      v10 = buffer + 8;
      v7->_eventCode = ReadUInt16(&v10);
      v7->_transactionID = ReadUInt32(&v10);
      v7->_numParameters = (v3 - 14) >> 2;
      if ((v3 - 14) >= 4)
      {
        v8 = 0;
        do
        {
          v7->_parameters[v8++] = ReadUInt32(&v10);
        }

        while (v8 < v7->_numParameters);
      }
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PTPEventPacket)initWithUSBBuffer:(void *)buffer
{
  v3 = *buffer;
  if ((*buffer - 25) >= 0xFFFFFFF3 && *(buffer + 2) == 4)
  {
    v11.receiver = self;
    v11.super_class = PTPEventPacket;
    v7 = [(PTPEventPacket *)&v11 init];
    if (v7)
    {
      v10 = buffer + 6;
      v7->_eventCode = ReadUInt16(&v10);
      v7->_transactionID = ReadUInt32(&v10);
      v7->_numParameters = (v3 - 12) >> 2;
      if ((v3 - 12) >= 4)
      {
        v8 = 0;
        do
        {
          v7->_parameters[v8++] = ReadUInt32(&v10);
        }

        while (v8 < v7->_numParameters);
      }
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)contentForTCP
{
  v3 = (4 * self->_numParameters + 14);
  v4 = [PTPWrappedBytes wrappedBytesWithCapacity:v3];
  mutableBytes = [v4 mutableBytes];
  WriteUInt32(&mutableBytes, v3);
  WriteUInt32(&mutableBytes, 8);
  WriteUInt16(&mutableBytes, self->_eventCode);
  WriteUInt32(&mutableBytes, self->_transactionID);
  if (self->_numParameters >= 1)
  {
    v5 = 0;
    do
    {
      WriteUInt32(&mutableBytes, self->_parameters[v5++]);
    }

    while (v5 < self->_numParameters);
  }

  [v4 setLength:v3];

  return v4;
}

- (id)contentForUSB
{
  v3 = (4 * self->_numParameters + 12);
  v4 = [PTPWrappedBytes wrappedBytesWithCapacity:v3];
  mutableBytes = [v4 mutableBytes];
  WriteUInt32(&mutableBytes, v3);
  WriteUInt16(&mutableBytes, 4);
  WriteUInt16(&mutableBytes, self->_eventCode);
  WriteUInt32(&mutableBytes, self->_transactionID);
  if (self->_numParameters >= 1)
  {
    v5 = 0;
    do
    {
      WriteUInt32(&mutableBytes, self->_parameters[v5++]);
    }

    while (v5 < self->_numParameters);
  }

  [v4 setLength:v3];

  return v4;
}

- (id)contentForUSBUsingBuffer:(void *)buffer capacity:(unsigned int)capacity
{
  v4 = (4 * self->_numParameters + 12);
  if (v4 <= capacity)
  {
    bufferCopy = buffer;
    v5 = [PTPWrappedBytes wrappedBytesWithBytes:buffer capacity:capacity];
    WriteUInt32(&bufferCopy, v4);
    WriteUInt16(&bufferCopy, 4);
    WriteUInt16(&bufferCopy, self->_eventCode);
    WriteUInt32(&bufferCopy, self->_transactionID);
    if (self->_numParameters >= 1)
    {
      v7 = 0;
      do
      {
        WriteUInt32(&bufferCopy, self->_parameters[v7++]);
      }

      while (v7 < self->_numParameters);
    }

    [v5 setLength:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = stringForEventCode(self->_eventCode);
  v5 = [v3 stringWithFormat:@"<PTPEventPacket %p>{\n  _eventCode:     %@\n  _transactionID: %lu\n", self, v4, self->_transactionID];

  if (self->_numParameters >= 1)
  {
    v6 = 0;
    do
    {
      [v5 appendFormat:@"  _parameters[%d]: 0x%08lX\n", v6, self->_parameters[v6]];
      ++v6;
    }

    while (v6 < self->_numParameters);
  }

  [v5 appendString:@"}"];

  return v5;
}

- (id)eventPacketDictionary
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v4 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:self->_eventCode];
  [v3 setObject:v4 forKeyedSubscript:@"eventCode"];

  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_transactionID];
  [v3 setObject:v5 forKeyedSubscript:@"transactionID"];

  v6 = [MEMORY[0x29EDBA070] numberWithInt:self->_numParameters];
  [v3 setObject:v6 forKeyedSubscript:@"numParameters"];

  v7 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_parameters[0]];
  [v3 setObject:v7 forKeyedSubscript:@"parameter0"];

  v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_parameters[1]];
  [v3 setObject:v8 forKeyedSubscript:@"parameter1"];

  v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_parameters[2]];
  [v3 setObject:v9 forKeyedSubscript:@"parameter2"];

  return v3;
}

@end