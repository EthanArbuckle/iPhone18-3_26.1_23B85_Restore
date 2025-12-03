@interface PTPOperationRequestPacket
- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d dataPhaseInfo:(unsigned int)info;
- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d dataPhaseInfo:(unsigned int)info numParameters:(unsigned int)parameters parameters:(unsigned int *)a7;
- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d dataPhaseInfo:(unsigned int)info parameter1:(unsigned int)parameter1;
- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d dataPhaseInfo:(unsigned int)info parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2;
- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d dataPhaseInfo:(unsigned int)info parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2 parameter3:(unsigned int)parameter3;
- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d dataPhaseInfo:(unsigned int)info parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2 parameter3:(unsigned int)parameter3 parameter4:(unsigned int)parameter4;
- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d dataPhaseInfo:(unsigned int)info parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2 parameter3:(unsigned int)parameter3 parameter4:(unsigned int)parameter4 parameter5:(unsigned int)self0;
- (PTPOperationRequestPacket)initWithTCPBuffer:(void *)buffer;
- (PTPOperationRequestPacket)initWithUSBBuffer:(void *)buffer;
- (id)contentForTCP;
- (id)contentForUSB;
- (id)contentForUSBUsingBuffer:(void *)buffer capacity:(unsigned int)capacity;
- (id)description;
- (unsigned)parameterAtIndex:(unsigned int)index;
- (void)setPparameter:(unsigned int)pparameter atIndex:(unsigned int)index;
@end

@implementation PTPOperationRequestPacket

- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d dataPhaseInfo:(unsigned int)info numParameters:(unsigned int)parameters parameters:(unsigned int *)a7
{
  v16.receiver = self;
  v16.super_class = PTPOperationRequestPacket;
  result = [(PTPOperationRequestPacket *)&v16 init];
  if (result)
  {
    result->_operationCode = code;
    result->_transactionID = d;
    result->_numParameters = parameters;
    result->_dataPhaseInfo = info;
    if (parameters)
    {
      parameters = result->_parameters;
      parametersCopy = parameters;
      do
      {
        v15 = *a7++;
        *parameters++ = v15;
        --parametersCopy;
      }

      while (parametersCopy);
    }
  }

  return result;
}

- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d dataPhaseInfo:(unsigned int)info
{
  v9.receiver = self;
  v9.super_class = PTPOperationRequestPacket;
  result = [(PTPOperationRequestPacket *)&v9 init];
  if (result)
  {
    result->_operationCode = code;
    result->_transactionID = d;
    result->_numParameters = 0;
    result->_dataPhaseInfo = info;
  }

  return result;
}

- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d dataPhaseInfo:(unsigned int)info parameter1:(unsigned int)parameter1
{
  v11.receiver = self;
  v11.super_class = PTPOperationRequestPacket;
  result = [(PTPOperationRequestPacket *)&v11 init];
  if (result)
  {
    result->_operationCode = code;
    result->_transactionID = d;
    result->_parameters[0] = parameter1;
    result->_numParameters = 1;
    result->_dataPhaseInfo = info;
  }

  return result;
}

- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d dataPhaseInfo:(unsigned int)info parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2
{
  v13.receiver = self;
  v13.super_class = PTPOperationRequestPacket;
  result = [(PTPOperationRequestPacket *)&v13 init];
  if (result)
  {
    result->_operationCode = code;
    result->_transactionID = d;
    result->_parameters[0] = parameter1;
    result->_parameters[1] = parameter2;
    result->_numParameters = 2;
    result->_dataPhaseInfo = info;
  }

  return result;
}

- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d dataPhaseInfo:(unsigned int)info parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2 parameter3:(unsigned int)parameter3
{
  v15.receiver = self;
  v15.super_class = PTPOperationRequestPacket;
  result = [(PTPOperationRequestPacket *)&v15 init];
  if (result)
  {
    result->_operationCode = code;
    result->_transactionID = d;
    result->_parameters[0] = parameter1;
    result->_parameters[1] = parameter2;
    result->_parameters[2] = parameter3;
    result->_numParameters = 3;
    result->_dataPhaseInfo = info;
  }

  return result;
}

- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d dataPhaseInfo:(unsigned int)info parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2 parameter3:(unsigned int)parameter3 parameter4:(unsigned int)parameter4
{
  v16.receiver = self;
  v16.super_class = PTPOperationRequestPacket;
  result = [(PTPOperationRequestPacket *)&v16 init];
  if (result)
  {
    result->_operationCode = code;
    result->_transactionID = d;
    result->_parameters[0] = parameter1;
    result->_parameters[1] = parameter2;
    result->_parameters[2] = parameter3;
    result->_parameters[3] = parameter4;
    result->_numParameters = 4;
    result->_dataPhaseInfo = info;
  }

  return result;
}

- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d dataPhaseInfo:(unsigned int)info parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2 parameter3:(unsigned int)parameter3 parameter4:(unsigned int)parameter4 parameter5:(unsigned int)self0
{
  v17.receiver = self;
  v17.super_class = PTPOperationRequestPacket;
  result = [(PTPOperationRequestPacket *)&v17 init];
  if (result)
  {
    result->_operationCode = code;
    result->_transactionID = d;
    result->_parameters[0] = parameter1;
    result->_parameters[1] = parameter2;
    result->_parameters[2] = parameter3;
    result->_parameters[3] = parameter4;
    result->_parameters[4] = parameter5;
    result->_numParameters = 5;
    result->_dataPhaseInfo = info;
  }

  return result;
}

- (PTPOperationRequestPacket)initWithTCPBuffer:(void *)buffer
{
  v3 = *buffer;
  if ((*buffer - 39) >= 0xFFFFFFEB && *(buffer + 1) == 6)
  {
    v11.receiver = self;
    v11.super_class = PTPOperationRequestPacket;
    v7 = [(PTPOperationRequestPacket *)&v11 init];
    if (v7)
    {
      v10 = buffer + 8;
      v7->_dataPhaseInfo = ReadUInt32(&v10);
      v7->_operationCode = ReadUInt16(&v10);
      v7->_transactionID = ReadUInt32(&v10);
      v7->_numParameters = (v3 - 18) >> 2;
      if ((v3 - 18) >= 4)
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

- (PTPOperationRequestPacket)initWithUSBBuffer:(void *)buffer
{
  v3 = *buffer;
  if ((*buffer - 33) >= 0xFFFFFFEB && *(buffer + 2) == 1)
  {
    v12.receiver = self;
    v12.super_class = PTPOperationRequestPacket;
    v7 = [(PTPOperationRequestPacket *)&v12 init];
    v8 = v7;
    if (v7)
    {
      v11 = buffer + 6;
      v7->_dataPhaseInfo = 0;
      v7->_operationCode = ReadUInt16(&v11);
      v8->_transactionID = ReadUInt32(&v11);
      v8->_numParameters = (v3 - 12) >> 2;
      if ((v3 - 12) >= 4)
      {
        v9 = 0;
        do
        {
          v8->_parameters[v9++] = ReadUInt32(&v11);
        }

        while (v9 < v8->_numParameters);
      }
    }

    self = v8;
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
  v3 = (4 * self->_numParameters + 18);
  v4 = [PTPWrappedBytes wrappedBytesWithCapacity:v3];
  mutableBytes = [v4 mutableBytes];
  WriteUInt32(&mutableBytes, v3);
  WriteUInt32(&mutableBytes, 6);
  WriteUInt32(&mutableBytes, self->_dataPhaseInfo);
  WriteUInt16(&mutableBytes, self->_operationCode);
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
  WriteUInt16(&mutableBytes, 1);
  WriteUInt16(&mutableBytes, self->_operationCode);
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
    WriteUInt16(&bufferCopy, 1);
    WriteUInt16(&bufferCopy, self->_operationCode);
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
  v2 = MEMORY[0x29EDBA050];
  transactionID = self->_transactionID;
  v4 = stringForOperationCode(self->_operationCode);
  v5 = [v2 stringWithFormat:@" ->[%lu] %@\n", transactionID, v4];

  return v5;
}

- (unsigned)parameterAtIndex:(unsigned int)index
{
  if (index > 3)
  {
    return 0;
  }

  else
  {
    return self->_parameters[index];
  }
}

- (void)setPparameter:(unsigned int)pparameter atIndex:(unsigned int)index
{
  if (index <= 3)
  {
    self->_parameters[index] = pparameter;
  }
}

@end