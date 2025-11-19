@interface PTPOperationResponsePacket
- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)a3 transactionID:(unsigned int)a4;
- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 numParameters:(unsigned int)a5 parameters:(unsigned int *)a6;
- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 parameter1:(unsigned int)a5;
- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 parameter1:(unsigned int)a5 parameter2:(unsigned int)a6;
- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 parameter1:(unsigned int)a5 parameter2:(unsigned int)a6 parameter3:(unsigned int)a7;
- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 parameter1:(unsigned int)a5 parameter2:(unsigned int)a6 parameter3:(unsigned int)a7 parameter4:(unsigned int)a8;
- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 parameter1:(unsigned int)a5 parameter2:(unsigned int)a6 parameter3:(unsigned int)a7 parameter4:(unsigned int)a8 parameter5:(unsigned int)a9;
- (PTPOperationResponsePacket)initWithTCPBuffer:(void *)a3;
- (PTPOperationResponsePacket)initWithUSBBuffer:(void *)a3;
- (id)contentForTCP;
- (id)contentForUSB;
- (id)contentForUSBUsingBuffer:(void *)a3 capacity:(unsigned int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unsigned)parameterAtIndex:(unsigned int)a3;
- (void)setNumParameters:(unsigned int)a3;
- (void)setPparameter:(unsigned int)a3 atIndex:(unsigned int)a4;
@end

@implementation PTPOperationResponsePacket

- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 numParameters:(unsigned int)a5 parameters:(unsigned int *)a6
{
  v14.receiver = self;
  v14.super_class = PTPOperationResponsePacket;
  result = [(PTPOperationResponsePacket *)&v14 init];
  if (result)
  {
    result->_responseCode = a3;
    result->_transactionID = a4;
    result->_numParameters = a5;
    if (a5)
    {
      parameters = result->_parameters;
      v12 = a5;
      do
      {
        v13 = *a6++;
        *parameters++ = v13;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)a3 transactionID:(unsigned int)a4
{
  v7.receiver = self;
  v7.super_class = PTPOperationResponsePacket;
  result = [(PTPOperationResponsePacket *)&v7 init];
  if (result)
  {
    result->_responseCode = a3;
    result->_transactionID = a4;
    result->_numParameters = 0;
  }

  return result;
}

- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 parameter1:(unsigned int)a5
{
  v9.receiver = self;
  v9.super_class = PTPOperationResponsePacket;
  result = [(PTPOperationResponsePacket *)&v9 init];
  if (result)
  {
    result->_responseCode = a3;
    result->_transactionID = a4;
    result->_parameters[0] = a5;
    result->_numParameters = 1;
  }

  return result;
}

- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 parameter1:(unsigned int)a5 parameter2:(unsigned int)a6
{
  v11.receiver = self;
  v11.super_class = PTPOperationResponsePacket;
  result = [(PTPOperationResponsePacket *)&v11 init];
  if (result)
  {
    result->_responseCode = a3;
    result->_transactionID = a4;
    result->_parameters[0] = a5;
    result->_parameters[1] = a6;
    result->_numParameters = 2;
  }

  return result;
}

- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 parameter1:(unsigned int)a5 parameter2:(unsigned int)a6 parameter3:(unsigned int)a7
{
  v13.receiver = self;
  v13.super_class = PTPOperationResponsePacket;
  result = [(PTPOperationResponsePacket *)&v13 init];
  if (result)
  {
    result->_responseCode = a3;
    result->_transactionID = a4;
    result->_parameters[0] = a5;
    result->_parameters[1] = a6;
    result->_parameters[2] = a7;
    result->_numParameters = 3;
  }

  return result;
}

- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 parameter1:(unsigned int)a5 parameter2:(unsigned int)a6 parameter3:(unsigned int)a7 parameter4:(unsigned int)a8
{
  v15.receiver = self;
  v15.super_class = PTPOperationResponsePacket;
  result = [(PTPOperationResponsePacket *)&v15 init];
  if (result)
  {
    result->_responseCode = a3;
    result->_transactionID = a4;
    result->_parameters[0] = a5;
    result->_parameters[1] = a6;
    result->_parameters[2] = a7;
    result->_parameters[3] = a8;
    result->_numParameters = 4;
  }

  return result;
}

- (PTPOperationResponsePacket)initWithResponseCode:(unsigned __int16)a3 transactionID:(unsigned int)a4 parameter1:(unsigned int)a5 parameter2:(unsigned int)a6 parameter3:(unsigned int)a7 parameter4:(unsigned int)a8 parameter5:(unsigned int)a9
{
  v16.receiver = self;
  v16.super_class = PTPOperationResponsePacket;
  result = [(PTPOperationResponsePacket *)&v16 init];
  if (result)
  {
    result->_responseCode = a3;
    result->_transactionID = a4;
    result->_parameters[0] = a5;
    result->_parameters[1] = a6;
    result->_parameters[2] = a7;
    result->_parameters[3] = a8;
    result->_parameters[4] = a9;
    result->_numParameters = 5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(PTPOperationResponsePacket *)self responseCode];
  v6 = [(PTPOperationResponsePacket *)self transactionID];
  v7 = [(PTPOperationResponsePacket *)self parameter1];
  v8 = [(PTPOperationResponsePacket *)self parameter2];
  v9 = [(PTPOperationResponsePacket *)self parameter3];
  v10 = [(PTPOperationResponsePacket *)self parameter4];
  LODWORD(v13) = [(PTPOperationResponsePacket *)self parameter5];
  v11 = [v4 initWithResponseCode:v5 transactionID:v6 parameter1:v7 parameter2:v8 parameter3:v9 parameter4:v10 parameter5:v13];
  [v11 setNumParameters:{-[PTPOperationResponsePacket numParameters](self, "numParameters")}];
  return v11;
}

- (PTPOperationResponsePacket)initWithTCPBuffer:(void *)a3
{
  v3 = *a3;
  if ((*a3 - 35) >= 0xFFFFFFEB && *(a3 + 1) == 7)
  {
    v11.receiver = self;
    v11.super_class = PTPOperationResponsePacket;
    v7 = [(PTPOperationResponsePacket *)&v11 init];
    if (v7)
    {
      v10 = a3 + 8;
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
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PTPOperationResponsePacket)initWithUSBBuffer:(void *)a3
{
  v3 = *a3;
  if ((*a3 - 33) >= 0xFFFFFFEB && *(a3 + 2) == 3)
  {
    v11.receiver = self;
    v11.super_class = PTPOperationResponsePacket;
    v7 = [(PTPOperationResponsePacket *)&v11 init];
    if (v7)
    {
      v10 = a3 + 6;
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
  v3 = (4 * self->_numParameters + 14);
  v4 = [PTPWrappedBytes wrappedBytesWithCapacity:v3];
  v7 = [v4 mutableBytes];
  WriteUInt32(&v7, v3);
  WriteUInt32(&v7, 7);
  WriteUInt16(&v7, self->_responseCode);
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
  WriteUInt16(&v7, 3);
  WriteUInt16(&v7, self->_responseCode);
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
    WriteUInt16(&v9, 3);
    WriteUInt16(&v9, self->_responseCode);
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
  v4 = stringForResponseCode(self->_responseCode);
  v5 = [v2 stringWithFormat:@" <-[%lu] %@\n", transactionID, v4];

  return v5;
}

- (void)setNumParameters:(unsigned int)a3
{
  if (a3 <= 4)
  {
    self->_numParameters = a3;
  }
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