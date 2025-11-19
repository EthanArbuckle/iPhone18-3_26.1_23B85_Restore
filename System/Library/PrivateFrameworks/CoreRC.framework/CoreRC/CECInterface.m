@interface CECInterface
- (BOOL)deallocateCECAddress:(unsigned __int8)a3 error:(id *)a4;
- (BOOL)pingTo:(unsigned __int8)a3 acknowledged:(BOOL *)a4 error:(id *)a5;
- (BOOL)sendFrame:(CECFrame *)a3 error:(id *)a4;
- (BOOL)setSnoopingMode:(BOOL)a3 error:(id *)a4;
- (CECInterface)init;
- (NSDictionary)properties;
- (void)didChangeProperties;
- (void)receivedFrame:(CECFrame *)a3;
- (void)setLastReceivedFrame:(CECFrame *)a3;
@end

@implementation CECInterface

- (CECInterface)init
{
  v3.receiver = self;
  v3.super_class = CECInterface;
  result = [(CECInterface *)&v3 init];
  if (result)
  {
    result->_addressMask = 0x8000;
  }

  return result;
}

- (BOOL)setSnoopingMode:(BOOL)a3 error:(id *)a4
{
  self->_snoopingMode = a3;
  if (gLogCategory_CoreRCInterface <= 90)
  {
    if (gLogCategory_CoreRCInterface == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return 1;
      }

      snoopingMode = self->_snoopingMode;
    }

    LogPrintF();
  }

  return 1;
}

- (BOOL)sendFrame:(CECFrame *)a3 error:(id *)a4
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  result = [(CECInterface *)self sendFrame:&v6 withRetryCount:2 error:a4];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)receivedFrame:(CECFrame *)a3
{
  v6 = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__CECInterface_receivedFrame___block_invoke;
  v4[3] = &unk_278EA33C0;
  v4[4] = self;
  v5 = *a3;
  [(CoreRCInterface *)self dispatchAsyncHighPriority:v4];
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t __30__CECInterface_receivedFrame___block_invoke(uint64_t result)
{
  v1 = result;
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(result + 32);
  if (*(v2 + 32))
  {
    v3 = *(v2 + 40);
    v9 = *(v1 + 40);
    v4 = *(v1 + 56);
LABEL_6:
    LODWORD(v10) = v4;
    result = [v3 interface:v9 receivedFrame:{v10, v11}];
    goto LABEL_7;
  }

  v5 = (result + 40);
  v6 = *(result + 40) & 0xF;
  if (v6 == 15 || ((*(v2 + 34) >> v6) & 1) != 0)
  {
    v7 = *(result + 56);
    *(v2 + 48) = *v5;
    *(v2 + 64) = v7;
    v3 = *(*(result + 32) + 40);
    v9 = *v5;
    v4 = *(v1 + 56);
    goto LABEL_6;
  }

  if (gLogCategory_CoreRCInterface <= 90)
  {
    if (gLogCategory_CoreRCInterface != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __30__CECInterface_receivedFrame___block_invoke_cold_1(v1);
    }
  }

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSDictionary)properties
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"kCECInterfacePropertyIsValid";
  v4[1] = @"kCECInterfacePropertyHasLink";
  v5[0] = MEMORY[0x277CBEC38];
  v5[1] = MEMORY[0x277CBEC28];
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)didChangeProperties
{
  v3 = [(CECInterface *)self delegate];

  [(CECInterfaceDelegate *)v3 interfacePropertiesChanged:self];
}

- (BOOL)pingTo:(unsigned __int8)a3 acknowledged:(BOOL *)a4 error:(id *)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = 0;
  if (a4)
  {
    v13[0] = a3 | (16 * a3);
    memset(&v13[1], 0, 15);
    v8 = 1;
    v13[16] = 1;
    v14 = 0;
    v15 = 0;
    v9 = [(CECInterface *)self sendFrame:v13 withRetryCount:2 error:&v12];
    *a4 = v9;
    if (v9)
    {
      goto LABEL_6;
    }

    v8 = [(CECInterface *)self errorIsNack:v12];
    if (!a5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [CoreIRBusProvider addDeviceWithType:? matching:? learningSession:? error:?];
    v8 = 0;
    if (!a5)
    {
      goto LABEL_6;
    }
  }

  if (!v8)
  {
    v8 = 0;
    *a5 = v12;
  }

LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)setLastReceivedFrame:(CECFrame *)a3
{
  v3 = *(a3 + 4);
  *self->_lastReceivedFrame.blocks = *a3->blocks;
  *(&self->_lastReceivedFrame + 4) = v3;
}

- (BOOL)deallocateCECAddress:(unsigned __int8)a3 error:(id *)a4
{
  v5 = a3;
  v11 = 0;
  v7 = [(CECInterface *)self addressMask];
  if (v5 == 15 || ((1 << v5) & v7) == 0)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6705 userInfo:0];
    LOBYTE(v8) = 0;
    v11 = v9;
    if (a4)
    {
LABEL_10:
      *a4 = v11;
    }
  }

  else
  {
    v8 = [(CECInterface *)self setAddressMask:v7 & ~(1 << v5) error:&v11];
    if (v8)
    {
      if (gLogCategory_CoreRCInterface <= 10 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      LOBYTE(v8) = 1;
    }

    if (a4)
    {
      goto LABEL_10;
    }
  }

  return v8;
}

- (uint64_t)allocateCECAddress:(uint64_t)a3 forDeviceType:(uint64_t)a4 error:.cold.2(unsigned __int8 a1, void *a2, uint64_t a3, uint64_t a4)
{
  [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"Two devices with the same logical address addressMask: 0x%04x, *outCECAddress: 0x%04x, inDeviceType: %s, %@ bus: %@, devices on bus:%@", a3, a4, CECDeviceTypeString(a1), a2, objc_msgSend(a2, "delegate"), objc_msgSend(objc_msgSend(a2, "delegate"), "devices")), "UTF8String"];
  v4 = abort_with_reason();
  return [CECInterface allocateCECAddress:v4 forDeviceType:? error:?];
}

- (uint64_t)allocateCECAddress:(uint64_t)result forDeviceType:(uint64_t *)a2 error:(_BYTE *)a3 .cold.5(uint64_t result, uint64_t *a2, _BYTE *a3)
{
  v5 = result;
  if (gLogCategory_CoreRCInterface <= 90)
  {
    if (gLogCategory_CoreRCInterface != -1 || (result = _LogCategory_Initialize(), result))
    {
      v6 = *a2;
      result = LogPrintF();
    }
  }

  if (v5)
  {
    *v5 = *a2;
  }

  *a3 = 0;
  return result;
}

@end