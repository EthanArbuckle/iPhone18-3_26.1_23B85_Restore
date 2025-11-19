@interface IRInterface
- (BOOL)processTimings:(const unsigned int *)a3 range:(_NSRange)a4 timestamp:(unint64_t)a5;
- (void)receivedCommand:(id)a3;
- (void)receivedFrame:(id)a3;
@end

@implementation IRInterface

- (void)receivedCommand:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__IRInterface_receivedCommand___block_invoke;
  v3[3] = &unk_278EA29D8;
  v3[4] = self;
  v3[5] = a3;
  [(CoreRCInterface *)self dispatchAsyncHighPriority:v3];
}

uint64_t __31__IRInterface_receivedCommand___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 interface:v3 receivedCommand:v4];
}

- (void)receivedFrame:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [a3 count];
  v6 = [a3 timestamp];
  if (gLogCategory_CoreRCInterface <= 10 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    v11 = v5;
    LogPrintF();
  }

  [a3 getTimings:v13 range:{0, v5, v11}];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
      {
        v12 = v13[i];
        LogPrintF();
      }
    }
  }

  if (gLogCategory_CoreRCInterface < 41 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v5 < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    for (j = 1; j < v5; j += 2)
    {
      if (v13[j] >= 0x1D4Du)
      {
        if (![(IRInterface *)self processTimings:v13 range:v8 timestamp:j - v8, v6])
        {
          goto LABEL_26;
        }

        v8 = j + 1;
      }
    }
  }

  if (v5 > v8)
  {
    [IRInterface processTimings:"processTimings:range:timestamp:" range:v13 timestamp:?];
  }

LABEL_26:
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)processTimings:(const unsigned int *)a3 range:(_NSRange)a4 timestamp:(unint64_t)a5
{
  length = a4.length;
  location = a4.location;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  if (gLogCategory_CoreRCInterface <= 10 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    v13 = location;
    v14 = length;
    LogPrintF();
  }

  if (IRDecoder_Decode(&a3[location], length, &v18, &v17, &v16, &v15))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = [IRProtocol protocolWithID:v18 options:v17];
    if (v10)
    {
      v10 = [IRCommand commandWithProtocol:v10 payload:v16 repeat:v15 != 0, v13, v14];
      if (v10)
      {
        v11 = v10;
        [(IRProtocol *)v10 setTimestamp:a5];
        [(IRInterface *)self receivedCommand:v11];
        LOBYTE(v10) = 1;
      }
    }
  }

  return v10;
}

@end