@interface PTPOperationRequestPacket
- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 dataPhaseInfo:(unsigned int)a5;
- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 dataPhaseInfo:(unsigned int)a5 numParameters:(unsigned int)a6 parameters:(unsigned int *)a7;
- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 dataPhaseInfo:(unsigned int)a5 parameter1:(unsigned int)a6;
- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 dataPhaseInfo:(unsigned int)a5 parameter1:(unsigned int)a6 parameter2:(unsigned int)a7;
- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 dataPhaseInfo:(unsigned int)a5 parameter1:(unsigned int)a6 parameter2:(unsigned int)a7 parameter3:(unsigned int)a8;
- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 dataPhaseInfo:(unsigned int)a5 parameter1:(unsigned int)a6 parameter2:(unsigned int)a7 parameter3:(unsigned int)a8 parameter4:(unsigned int)a9;
- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 dataPhaseInfo:(unsigned int)a5 parameter1:(unsigned int)a6 parameter2:(unsigned int)a7 parameter3:(unsigned int)a8 parameter4:(unsigned int)a9 parameter5:(unsigned int)a10;
- (PTPOperationRequestPacket)initWithTCPBuffer:(void *)a3;
- (PTPOperationRequestPacket)initWithUSBBuffer:(void *)a3;
- (id)contentForTCP;
- (id)contentForUSB;
- (id)contentForUSBUsingBuffer:(void *)a3 capacity:(unsigned int)a4;
- (id)description;
- (unsigned)parameterAtIndex:(unsigned int)a3;
- (void)setPparameter:(unsigned int)a3 atIndex:(unsigned int)a4;
@end

@implementation PTPOperationRequestPacket

- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 dataPhaseInfo:(unsigned int)a5 numParameters:(unsigned int)a6 parameters:(unsigned int *)a7
{
  v16.receiver = self;
  v16.super_class = PTPOperationRequestPacket;
  result = [(PTPOperationRequestPacket *)&v16 init];
  if (result)
  {
    result->_operationCode = a3;
    result->_transactionID = a4;
    result->_numParameters = a6;
    result->_dataPhaseInfo = a5;
    if (a6)
    {
      parameters = result->_parameters;
      v14 = a6;
      do
      {
        v15 = *a7++;
        *parameters++ = v15;
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 dataPhaseInfo:(unsigned int)a5
{
  v9.receiver = self;
  v9.super_class = PTPOperationRequestPacket;
  result = [(PTPOperationRequestPacket *)&v9 init];
  if (result)
  {
    result->_operationCode = a3;
    result->_transactionID = a4;
    result->_numParameters = 0;
    result->_dataPhaseInfo = a5;
  }

  return result;
}

- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 dataPhaseInfo:(unsigned int)a5 parameter1:(unsigned int)a6
{
  v11.receiver = self;
  v11.super_class = PTPOperationRequestPacket;
  result = [(PTPOperationRequestPacket *)&v11 init];
  if (result)
  {
    result->_operationCode = a3;
    result->_transactionID = a4;
    result->_parameters[0] = a6;
    result->_numParameters = 1;
    result->_dataPhaseInfo = a5;
  }

  return result;
}

- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 dataPhaseInfo:(unsigned int)a5 parameter1:(unsigned int)a6 parameter2:(unsigned int)a7
{
  v13.receiver = self;
  v13.super_class = PTPOperationRequestPacket;
  result = [(PTPOperationRequestPacket *)&v13 init];
  if (result)
  {
    result->_operationCode = a3;
    result->_transactionID = a4;
    result->_parameters[0] = a6;
    result->_parameters[1] = a7;
    result->_numParameters = 2;
    result->_dataPhaseInfo = a5;
  }

  return result;
}

- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 dataPhaseInfo:(unsigned int)a5 parameter1:(unsigned int)a6 parameter2:(unsigned int)a7 parameter3:(unsigned int)a8
{
  v15.receiver = self;
  v15.super_class = PTPOperationRequestPacket;
  result = [(PTPOperationRequestPacket *)&v15 init];
  if (result)
  {
    result->_operationCode = a3;
    result->_transactionID = a4;
    result->_parameters[0] = a6;
    result->_parameters[1] = a7;
    result->_parameters[2] = a8;
    result->_numParameters = 3;
    result->_dataPhaseInfo = a5;
  }

  return result;
}

- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 dataPhaseInfo:(unsigned int)a5 parameter1:(unsigned int)a6 parameter2:(unsigned int)a7 parameter3:(unsigned int)a8 parameter4:(unsigned int)a9
{
  v16.receiver = self;
  v16.super_class = PTPOperationRequestPacket;
  result = [(PTPOperationRequestPacket *)&v16 init];
  if (result)
  {
    result->_operationCode = a3;
    result->_transactionID = a4;
    result->_parameters[0] = a6;
    result->_parameters[1] = a7;
    result->_parameters[2] = a8;
    result->_parameters[3] = a9;
    result->_numParameters = 4;
    result->_dataPhaseInfo = a5;
  }

  return result;
}

- (PTPOperationRequestPacket)initWithOperationCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 dataPhaseInfo:(unsigned int)a5 parameter1:(unsigned int)a6 parameter2:(unsigned int)a7 parameter3:(unsigned int)a8 parameter4:(unsigned int)a9 parameter5:(unsigned int)a10
{
  v17.receiver = self;
  v17.super_class = PTPOperationRequestPacket;
  result = [(PTPOperationRequestPacket *)&v17 init];
  if (result)
  {
    result->_operationCode = a3;
    result->_transactionID = a4;
    result->_parameters[0] = a6;
    result->_parameters[1] = a7;
    result->_parameters[2] = a8;
    result->_parameters[3] = a9;
    result->_parameters[4] = a10;
    result->_numParameters = 5;
    result->_dataPhaseInfo = a5;
  }

  return result;
}

- (PTPOperationRequestPacket)initWithTCPBuffer:(void *)a3
{
  v3 = *a3;
  if ((*a3 - 39) >= 0xFFFFFFEB && *(a3 + 1) == 6)
  {
    v11.receiver = self;
    v11.super_class = PTPOperationRequestPacket;
    v7 = [(PTPOperationRequestPacket *)&v11 init];
    if (v7)
    {
      v10 = a3 + 8;
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
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PTPOperationRequestPacket)initWithUSBBuffer:(void *)a3
{
  v3 = *a3;
  if ((*a3 - 33) >= 0xFFFFFFEB && *(a3 + 2) == 1)
  {
    v12.receiver = self;
    v12.super_class = PTPOperationRequestPacket;
    v7 = [(PTPOperationRequestPacket *)&v12 init];
    v8 = v7;
    if (v7)
    {
      v11 = a3 + 6;
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
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)contentForTCP
{
  v3 = (4 * self->_numParameters + 18);
  v4 = [PTPWrappedBytes wrappedBytesWithCapacity:v3];
  v7 = [v4 mutableBytes];
  WriteUInt32(&v7, v3);
  WriteUInt32(&v7, 6);
  WriteUInt32(&v7, self->_dataPhaseInfo);
  WriteUInt16(&v7, self->_operationCode);
  WriteUInt32(&v7, self->_transactionID);
  if (self->_numParameters >= 1)
  {
    v5 = 0;
    do
    {
      WriteUInt32(&v7, self->_parameters[v5++]);
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
  v7 = [v4 mutableBytes];
  WriteUInt32(&v7, v3);
  WriteUInt16(&v7, 1);
  WriteUInt16(&v7, self->_operationCode);
  WriteUInt32(&v7, self->_transactionID);
  if (self->_numParameters >= 1)
  {
    v5 = 0;
    do
    {
      WriteUInt32(&v7, self->_parameters[v5++]);
    }

    while (v5 < self->_numParameters);
  }

  [v4 setLength:v3];

  return v4;
}

- (id)contentForUSBUsingBuffer:(void *)a3 capacity:(unsigned int)a4
{
  v4 = (4 * self->_numParameters + 12);
  if (v4 <= a4)
  {
    v9 = a3;
    v5 = [PTPWrappedBytes wrappedBytesWithBytes:a3 capacity:a4];
    WriteUInt32(&v9, v4);
    WriteUInt16(&v9, 1);
    WriteUInt16(&v9, self->_operationCode);
    WriteUInt32(&v9, self->_transactionID);
    if (self->_numParameters >= 1)
    {
      v7 = 0;
      do
      {
        WriteUInt32(&v9, self->_parameters[v7++]);
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

- (unsigned)parameterAtIndex:(unsigned int)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return self->_parameters[a3];
  }
}

- (void)setPparameter:(unsigned int)a3 atIndex:(unsigned int)a4
{
  if (a4 <= 3)
  {
    self->_parameters[a4] = a3;
  }
}

@end