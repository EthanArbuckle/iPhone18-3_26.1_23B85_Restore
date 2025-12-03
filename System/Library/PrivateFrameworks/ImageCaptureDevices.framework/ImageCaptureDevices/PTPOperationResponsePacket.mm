@interface PTPOperationResponsePacket
- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)code transactionID:(unsigned int)d;
- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)code transactionID:(unsigned int)d numParameters:(unsigned int)parameters parameters:(unsigned int *)a6;
- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1;
- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2;
- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2 parameter3:(unsigned int)parameter3;
- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2 parameter3:(unsigned int)parameter3 parameter4:(unsigned int)parameter4;
- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2 parameter3:(unsigned int)parameter3 parameter4:(unsigned int)parameter4 parameter5:(unsigned int)parameter5;
- (PTPOperationResponsePacket)initWithTCPBuffer:(void *)buffer;
- (PTPOperationResponsePacket)initWithUSBBuffer:(void *)buffer;
- (id)contentForTCP;
- (id)contentForUSB;
- (id)contentForUSBUsingBuffer:(void *)buffer capacity:(unsigned int)capacity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unsigned)parameterAtIndex:(unsigned int)index;
- (void)setNumParameters:(unsigned int)parameters;
- (void)setPparameter:(unsigned int)pparameter atIndex:(unsigned int)index;
@end

@implementation PTPOperationResponsePacket

- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)code transactionID:(unsigned int)d numParameters:(unsigned int)parameters parameters:(unsigned int *)a6
{
  v14.receiver = self;
  v14.super_class = PTPOperationResponsePacket;
  result = [(PTPOperationResponsePacket *)&v14 init];
  if (result)
  {
    result->_responseCode = code;
    result->_transactionID = d;
    result->_numParameters = parameters;
    if (parameters)
    {
      parameters = result->_parameters;
      parametersCopy = parameters;
      do
      {
        v13 = *a6++;
        *parameters++ = v13;
        --parametersCopy;
      }

      while (parametersCopy);
    }
  }

  return result;
}

- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)code transactionID:(unsigned int)d
{
  v7.receiver = self;
  v7.super_class = PTPOperationResponsePacket;
  result = [(PTPOperationResponsePacket *)&v7 init];
  if (result)
  {
    result->_responseCode = code;
    result->_transactionID = d;
    result->_numParameters = 0;
  }

  return result;
}

- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1
{
  v9.receiver = self;
  v9.super_class = PTPOperationResponsePacket;
  result = [(PTPOperationResponsePacket *)&v9 init];
  if (result)
  {
    result->_responseCode = code;
    result->_transactionID = d;
    result->_parameters[0] = parameter1;
    result->_numParameters = 1;
  }

  return result;
}

- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2
{
  v11.receiver = self;
  v11.super_class = PTPOperationResponsePacket;
  result = [(PTPOperationResponsePacket *)&v11 init];
  if (result)
  {
    result->_responseCode = code;
    result->_transactionID = d;
    result->_parameters[0] = parameter1;
    result->_parameters[1] = parameter2;
    result->_numParameters = 2;
  }

  return result;
}

- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2 parameter3:(unsigned int)parameter3
{
  v13.receiver = self;
  v13.super_class = PTPOperationResponsePacket;
  result = [(PTPOperationResponsePacket *)&v13 init];
  if (result)
  {
    result->_responseCode = code;
    result->_transactionID = d;
    result->_parameters[0] = parameter1;
    result->_parameters[1] = parameter2;
    result->_parameters[2] = parameter3;
    result->_numParameters = 3;
  }

  return result;
}

- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2 parameter3:(unsigned int)parameter3 parameter4:(unsigned int)parameter4
{
  v15.receiver = self;
  v15.super_class = PTPOperationResponsePacket;
  result = [(PTPOperationResponsePacket *)&v15 init];
  if (result)
  {
    result->_responseCode = code;
    result->_transactionID = d;
    result->_parameters[0] = parameter1;
    result->_parameters[1] = parameter2;
    result->_parameters[2] = parameter3;
    result->_parameters[3] = parameter4;
    result->_numParameters = 4;
  }

  return result;
}

- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)code transactionID:(unsigned int)d parameter1:(unsigned int)parameter1 parameter2:(unsigned int)parameter2 parameter3:(unsigned int)parameter3 parameter4:(unsigned int)parameter4 parameter5:(unsigned int)parameter5
{
  v16.receiver = self;
  v16.super_class = PTPOperationResponsePacket;
  result = [(PTPOperationResponsePacket *)&v16 init];
  if (result)
  {
    result->_responseCode = code;
    result->_transactionID = d;
    result->_parameters[0] = parameter1;
    result->_parameters[1] = parameter2;
    result->_parameters[2] = parameter3;
    result->_parameters[3] = parameter4;
    result->_parameters[4] = parameter5;
    result->_numParameters = 5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  responseCode = [(PTPOperationResponsePacket *)self responseCode];
  transactionID = [(PTPOperationResponsePacket *)self transactionID];
  parameter1 = [(PTPOperationResponsePacket *)self parameter1];
  parameter2 = [(PTPOperationResponsePacket *)self parameter2];
  parameter3 = [(PTPOperationResponsePacket *)self parameter3];
  parameter4 = [(PTPOperationResponsePacket *)self parameter4];
  LODWORD(v13) = [(PTPOperationResponsePacket *)self parameter5];
  v11 = [v4 initWithResponseCode:responseCode transactionID:transactionID parameter1:parameter1 parameter2:parameter2 parameter3:parameter3 parameter4:parameter4 parameter5:v13];
  [v11 setNumParameters:{-[PTPOperationResponsePacket numParameters](self, "numParameters")}];
  return v11;
}

- (PTPOperationResponsePacket)initWithTCPBuffer:(void *)buffer
{
  v3 = *buffer;
  if ((*buffer - 35) >= 0xFFFFFFEB && *(buffer + 1) == 7)
  {
    v11.receiver = self;
    v11.super_class = PTPOperationResponsePacket;
    v7 = [(PTPOperationResponsePacket *)&v11 init];
    if (v7)
    {
      v10 = buffer + 8;
      v7->_responseCode = ReadUInt16(&v10);
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

- (PTPOperationResponsePacket)initWithUSBBuffer:(void *)buffer
{
  v3 = *buffer;
  if ((*buffer - 33) >= 0xFFFFFFEB && *(buffer + 2) == 3)
  {
    v11.receiver = self;
    v11.super_class = PTPOperationResponsePacket;
    v7 = [(PTPOperationResponsePacket *)&v11 init];
    if (v7)
    {
      v10 = buffer + 6;
      v7->_responseCode = ReadUInt16(&v10);
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
  WriteUInt32(&mutableBytes, 7);
  WriteUInt16(&mutableBytes, self->_responseCode);
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
  WriteUInt16(&mutableBytes, 3);
  WriteUInt16(&mutableBytes, self->_responseCode);
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
    WriteUInt16(&bufferCopy, 3);
    WriteUInt16(&bufferCopy, self->_responseCode);
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
  v4 = stringForResponseCode(self->_responseCode);
  v5 = [v2 stringWithFormat:@" <-[%lu] %@\n", transactionID, v4];

  return v5;
}

- (void)setNumParameters:(unsigned int)parameters
{
  if (parameters <= 4)
  {
    self->_numParameters = parameters;
  }
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