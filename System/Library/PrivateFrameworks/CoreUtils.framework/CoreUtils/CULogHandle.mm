@interface CULogHandle
- (CULogHandle)initWithSubsystem:(id)subsystem category:(id)category logLevel:(int)level logFlags:(unsigned int)flags;
- (void)dealloc;
- (void)setLabel:(id)label;
- (void)ulog:(int)ulog message:(id)message;
- (void)ulogf:(int)ulogf format:(id)format;
- (void)ulogv:(int)ulogv format:(id)format args:(char *)args;
@end

@implementation CULogHandle

- (void)dealloc
{
  ucatPtr = self->_ucatPtr;
  self->_ucatPtr = 0;
  LogCategory_Remove(ucatPtr);
  v4.receiver = self;
  v4.super_class = CULogHandle;
  [(CULogHandle *)&v4 dealloc];
}

- (void)ulogv:(int)ulogv format:(id)format args:(char *)args
{
  formatCopy = format;
  v9 = formatCopy;
  ucatPtr = self->_ucatPtr;
  if (ucatPtr->var0 <= ulogv)
  {
    v12 = formatCopy;
    if (ucatPtr->var0 != -1)
    {
LABEL_3:
      v11 = v9;
      formatCopy = LogPrintV(ucatPtr, "", ulogv, [v12 UTF8String], args);
      v9 = v12;
      goto LABEL_5;
    }

    formatCopy = _LogCategory_Initialize(ucatPtr, ulogv);
    v9 = v12;
    if (formatCopy)
    {
      ucatPtr = self->_ucatPtr;
      goto LABEL_3;
    }
  }

LABEL_5:

  MEMORY[0x1EEE66BB8](formatCopy, v9);
}

- (void)ulogf:(int)ulogf format:(id)format
{
  formatCopy = format;
  ucatPtr = self->_ucatPtr;
  if (ucatPtr->var0 <= ulogf && (ucatPtr->var0 != -1 || _LogCategory_Initialize(ucatPtr, ulogf)))
  {
    LogPrintV(self->_ucatPtr, "", ulogf, [formatCopy UTF8String], &v8);
  }
}

- (void)ulog:(int)ulog message:(id)message
{
  messageCopy = message;
  v7 = messageCopy;
  ucatPtr = self->_ucatPtr;
  if (ucatPtr->var0 <= ulog)
  {
    v15 = messageCopy;
    if (ucatPtr->var0 != -1)
    {
LABEL_3:
      v9 = v7;
      uTF8String = [v15 UTF8String];
      messageCopy = LogPrintF(ucatPtr, ", ulog, "%s"", v11, v12, v13, v14, uTF8String);
      v7 = v15;
      goto LABEL_5;
    }

    messageCopy = _LogCategory_Initialize(ucatPtr, ulog);
    v7 = v15;
    if (messageCopy)
    {
      ucatPtr = self->_ucatPtr;
      goto LABEL_3;
    }
  }

LABEL_5:

  MEMORY[0x1EEE66BB8](messageCopy, v7);
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  uTF8String = [(NSString *)self->_categoryName UTF8String];
  [labelCopy UTF8String];

  LogCategoryReplaceF(&self->_ucatPtr, "%s-%s", v7, v8, v9, v10, v11, v12, uTF8String);
}

- (CULogHandle)initWithSubsystem:(id)subsystem category:(id)category logLevel:(int)level logFlags:(unsigned int)flags
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  v24.receiver = self;
  v24.super_class = CULogHandle;
  v12 = [(CULogHandle *)&v24 init];
  if (v12)
  {
    v23 = 0;
    v13 = LogCategoryCreateEx([subsystemCopy UTF8String], objc_msgSend(categoryCopy, "UTF8String"), level, flags, 0, &v23);
    v12->_ucatPtr = v13;
    if (!v13)
    {
      FatalErrorF("CULogHandle LogCategoryCreateEx failed: %#m", v14, v15, v16, v17, v18, v19, v20, v23);
    }

    objc_storeStrong(&v12->_categoryName, category);
    v21 = v12;
  }

  return v12;
}

@end