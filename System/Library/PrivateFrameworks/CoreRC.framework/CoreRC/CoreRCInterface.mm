@interface CoreRCInterface
- (BOOL)doesNotImplement:(SEL)implement error:(id *)error;
- (BOOL)setProperty:(id)property forKey:(id)key error:(id *)error;
- (id)propertyForKey:(id)key error:(id *)error;
- (void)dealloc;
- (void)dispatchAsyncHighPriority:(id)priority;
@end

@implementation CoreRCInterface

- (void)dealloc
{
  [(CoreRCInterface *)self setSerialQueue:0];
  v3.receiver = self;
  v3.super_class = CoreRCInterface;
  [(CoreRCInterface *)&v3 dealloc];
}

- (BOOL)doesNotImplement:(SEL)implement error:(id *)error
{
  if (gLogCategory_CoreRCInterface <= 60 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    [CoreRCInterface doesNotImplement:implement error:?];
    if (!error)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (error)
  {
LABEL_5:
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6735 userInfo:0];
  }

  return 0;
}

- (BOOL)setProperty:(id)property forKey:(id)key error:(id *)error
{
  if (gLogCategory_CoreRCInterface <= 10 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    keyCopy = key;
    propertyCopy = property;
    LogPrintF();
  }

  v9 = [key isEqualToString:{@"CoreRCInterfaceTest", keyCopy, propertyCopy}];
  if (v9)
  {
    [(CoreRCInterface *)self setTestProperty:property];
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
  }

  return v9;
}

- (id)propertyForKey:(id)key error:(id *)error
{
  if (gLogCategory_CoreRCInterface <= 10 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    [CoreRCInterface propertyForKey:error:];
  }

  if ([key isEqualToString:@"CoreRCInterfaceTest"])
  {
    result = [(CoreRCInterface *)self testProperty];
    if (!result)
    {
      v8 = MEMORY[0x277CBEB68];

      return [v8 null];
    }
  }

  else if (error)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
    result = 0;
    *error = v9;
  }

  else
  {
    return 0;
  }

  return result;
}

- (void)dispatchAsyncHighPriority:(id)priority
{
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, priority);
  dispatch_async([(CoreRCInterface *)self serialQueue], v4);

  _Block_release(v4);
}

@end