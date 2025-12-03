@interface CECFakeInterfaceListener
- (BOOL)interface:(id)interface sendFrame:(CECFrame *)frame withRetryCount:(unsigned __int8)count error:(id *)error;
- (id)fakeAddInterfaceWithProperties:(id)properties;
- (void)scheduleWithDispatchQueue:(id)queue;
- (void)unscheduleFromDispatchQueue:(id)queue;
@end

@implementation CECFakeInterfaceListener

- (id)fakeAddInterfaceWithProperties:(id)properties
{
  v4 = [[CECFakeInterface alloc] initWithInterfaceListener:self properties:properties];
  if (v4)
  {
    [(CoreRCInterfaceListener *)self addInterface:v4];
  }

  return v4;
}

- (void)scheduleWithDispatchQueue:(id)queue
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)unscheduleFromDispatchQueue:(id)queue
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (BOOL)interface:(id)interface sendFrame:(CECFrame *)frame withRetryCount:(unsigned __int8)count error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = frame->blocks[0];
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
        snoopingMode = [v15 snoopingMode];
        addressMask = [v15 addressMask];
        if (v15 != interface)
        {
          v18 = addressMask & v12;
          if ((addressMask & v12) != 0)
          {
            v19 = 1;
          }

          else
          {
            v19 = snoopingMode;
          }

          if (v19 == 1)
          {
            v28 = *frame->blocks;
            v29 = *(frame + 4);
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

  if (error && !v11)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.private.CoreCEC.ErrorDomain" code:2 userInfo:0];
  }

  result = v11 != 0;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

@end