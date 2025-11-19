@interface CoreRCInterface
- (BOOL)doesNotImplement:(SEL)a3 error:(id *)a4;
- (BOOL)setProperty:(id)a3 forKey:(id)a4 error:(id *)a5;
- (id)propertyForKey:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)dispatchAsyncHighPriority:(id)a3;
@end

@implementation CoreRCInterface

- (void)dealloc
{
  [(CoreRCInterface *)self setSerialQueue:0];
  v3.receiver = self;
  v3.super_class = CoreRCInterface;
  [(CoreRCInterface *)&v3 dealloc];
}

- (BOOL)doesNotImplement:(SEL)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCInterface <= 60 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    [CoreRCInterface doesNotImplement:a3 error:?];
    if (!a4)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6735 userInfo:0];
  }

  return 0;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4 error:(id *)a5
{
  if (gLogCategory_CoreRCInterface <= 10 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    v11 = a4;
    v12 = a3;
    LogPrintF();
  }

  v9 = [a4 isEqualToString:{@"CoreRCInterfaceTest", v11, v12}];
  if (v9)
  {
    [(CoreRCInterface *)self setTestProperty:a3];
  }

  else if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
  }

  return v9;
}

- (id)propertyForKey:(id)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCInterface <= 10 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    [CoreRCInterface propertyForKey:error:];
  }

  if ([a3 isEqualToString:@"CoreRCInterfaceTest"])
  {
    result = [(CoreRCInterface *)self testProperty];
    if (!result)
    {
      v8 = MEMORY[0x277CBEB68];

      return [v8 null];
    }
  }

  else if (a4)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
    result = 0;
    *a4 = v9;
  }

  else
  {
    return 0;
  }

  return result;
}

- (void)dispatchAsyncHighPriority:(id)a3
{
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, a3);
  dispatch_async([(CoreRCInterface *)self serialQueue], v4);

  _Block_release(v4);
}

@end