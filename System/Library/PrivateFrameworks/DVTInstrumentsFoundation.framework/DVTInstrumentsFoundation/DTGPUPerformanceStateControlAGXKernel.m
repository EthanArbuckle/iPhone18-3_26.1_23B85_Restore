@interface DTGPUPerformanceStateControlAGXKernel
- (BOOL)enable:(unint64_t)a3;
- (DTGPUPerformanceStateControlAGXKernel)initWithDevice:(id)a3;
- (id)currentState;
- (id)disable;
- (unsigned)getIOAccelerator;
- (void)close;
- (void)dealloc;
@end

@implementation DTGPUPerformanceStateControlAGXKernel

- (DTGPUPerformanceStateControlAGXKernel)initWithDevice:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DTGPUPerformanceStateControlAGXKernel;
  v5 = [(DTGPUPerformanceStateControlAGXKernel *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(DTGPUPerformanceStateControlAGXKernel *)v5 getIOAccelerator];
    if (!IOServiceOpen(v7, *MEMORY[0x277D85F48], 1u, &v6->_connection))
    {
      v12 = 258;
      connection = v6->_connection;
      if (!connection || ((outputStructCnt = 8, !IOConnectCallStructMethod(connection, 0x41u, &v12, 8uLL, &v12, &outputStructCnt)) ? (v11 = outputStructCnt == 8) : (v11 = 0), !v11))
      {
        [(DTGPUPerformanceStateControlAGXKernel *)v6 close];
        v8 = 0;
        goto LABEL_4;
      }

      v6->_acceleratorId = [v4 registryID];
    }
  }

  v8 = v6;
LABEL_4:

  return v8;
}

- (void)dealloc
{
  [(DTGPUPerformanceStateControlAGXKernel *)self close];
  v3.receiver = self;
  v3.super_class = DTGPUPerformanceStateControlAGXKernel;
  [(DTGPUPerformanceStateControlAGXKernel *)&v3 dealloc];
}

- (void)close
{
  if (self->_holdingLock)
  {
    v3 = [(DTGPUPerformanceStateControlAGXKernel *)self disable];
  }

  connection = self->_connection;
  if (connection)
  {
    IOServiceClose(connection);
  }

  self->_connection = 0;
}

- (unsigned)getIOAccelerator
{
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("IOAccelerator");
  result = IOServiceGetMatchingService(v2, v3);
  if (!result)
  {
    v5 = IOServiceMatching("IOAcceleratorES");

    return IOServiceGetMatchingService(v2, v5);
  }

  return result;
}

- (id)currentState
{
  v18[5] = *MEMORY[0x277D85DE8];
  if (self->_connection)
  {
    v3 = objc_opt_new();
    outputStruct = 258;
    connection = self->_connection;
    if (connection && (outputStructCnt = 8, !IOConnectCallStructMethod(connection, 0x41u, &outputStruct, 8uLL, &outputStruct, &outputStructCnt)) && outputStructCnt == 8)
    {
      v17[0] = @"accelerator-id";
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_acceleratorId];
      v18[0] = v5;
      v18[1] = MEMORY[0x277CBEC38];
      v17[1] = @"available";
      v17[2] = @"enabled";
      v6 = [MEMORY[0x277CCABB0] numberWithBool:BYTE2(outputStruct) == 1];
      v18[2] = v6;
      v17[3] = @"sustained";
      v7 = [MEMORY[0x277CCABB0] numberWithBool:BYTE3(outputStruct) == 1];
      v18[3] = v7;
      v17[4] = @"level";
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(outputStruct)];
      v18[4] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
      [v3 addEntriesFromDictionary:v9];

      outputStruct = 259;
      v10 = self->_connection;
      if (v10 && (outputStructCnt = 8, !IOConnectCallStructMethod(v10, 0x41u, &outputStruct, 8uLL, &outputStruct, &outputStructCnt)) && outputStructCnt == 8)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(BYTE1(outputStruct) << 24) | (BYTE2(outputStruct) << 16) | (BYTE3(outputStruct) << 8)];
        [v3 setObject:v11 forKeyedSubscript:@"mapping"];

        v12 = v3;
      }

      else
      {
        v12 = &unk_285A36F48;
      }
    }

    else
    {
      v12 = &unk_285A36F20;
    }
  }

  else
  {
    v12 = &unk_285A36EF8;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)enable:(unint64_t)a3
{
  connection = self->_connection;
  if (connection)
  {
    v5 = a3;
    v9 = 256;
    outputStructCnt = 8;
    if (IOConnectCallStructMethod(connection, 0x41u, &v9, 8uLL, &v9, &outputStructCnt))
    {
      v6 = 0;
    }

    else
    {
      v6 = outputStructCnt == 8;
    }

    if (v6)
    {
      v9 = 1;
      BYTE1(v9) = v5;
      connection = self->_connection;
      if (connection)
      {
        outputStructCnt = 8;
        if (IOConnectCallStructMethod(connection, 0x41u, &v9, 8uLL, &v9, &outputStructCnt))
        {
          v7 = 0;
        }

        else
        {
          v7 = outputStructCnt == 8;
        }

        LOBYTE(connection) = v7;
      }
    }

    else
    {
      LOBYTE(connection) = 0;
      self->_holdingLock = 1;
    }
  }

  return connection;
}

- (id)disable
{
  v3 = [(DTGPUPerformanceStateControlAGXKernel *)self currentState];
  connection = self->_connection;
  if (connection)
  {
    if (self->_holdingLock)
    {
      v6 = 0;
      outputStructCnt = 8;
      if (IOConnectCallStructMethod(connection, 0x41u, &v6, 8uLL, &v6, &outputStructCnt) || outputStructCnt != 8)
      {
        self->_holdingLock = 0;
      }
    }
  }

  return v3;
}

@end