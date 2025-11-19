@interface CECFakeInterfaceListener
- (BOOL)interface:(id)a3 sendFrame:(CECFrame *)a4 withRetryCount:(unsigned __int8)a5 error:(id *)a6;
- (id)fakeAddInterfaceWithProperties:(id)a3;
- (void)scheduleWithDispatchQueue:(id)a3;
- (void)unscheduleFromDispatchQueue:(id)a3;
@end

@implementation CECFakeInterfaceListener

- (id)fakeAddInterfaceWithProperties:(id)a3
{
  v4 = [[CECFakeInterface alloc] initWithInterfaceListener:self properties:a3];
  if (v4)
  {
    [(CoreRCInterfaceListener *)self addInterface:v4];
  }

  return v4;
}

- (void)scheduleWithDispatchQueue:(id)a3
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)unscheduleFromDispatchQueue:(id)a3
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (BOOL)interface:(id)a3 sendFrame:(CECFrame *)a4 withRetryCount:(unsigned __int8)a5 error:(id *)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a4->blocks[0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(CoreRCInterfaceListener *)self interfaces];
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 1 << (v8 & 0xF);
    v13 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v15 snoopingMode];
        v17 = [v15 addressMask];
        if (v15 != a3)
        {
          v18 = v17 & v12;
          if ((v17 & v12) != 0)
          {
            v19 = 1;
          }

          else
          {
            v19 = v16;
          }

          if (v19 == 1)
          {
            v28 = *a4->blocks;
            v29 = *(a4 + 4);
            [v15 receivedFrame:&v28];
          }

          if (v18)
          {
            ++v11;
          }
        }
      }

      v10 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if (a6 && !v11)
  {
    *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.private.CoreCEC.ErrorDomain" code:2 userInfo:0];
  }

  result = v11 != 0;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

@end