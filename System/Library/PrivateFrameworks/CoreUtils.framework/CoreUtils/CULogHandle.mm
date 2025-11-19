@interface CULogHandle
- (CULogHandle)initWithSubsystem:(id)a3 category:(id)a4 logLevel:(int)a5 logFlags:(unsigned int)a6;
- (void)dealloc;
- (void)setLabel:(id)a3;
- (void)ulog:(int)a3 message:(id)a4;
- (void)ulogf:(int)a3 format:(id)a4;
- (void)ulogv:(int)a3 format:(id)a4 args:(char *)a5;
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

- (void)ulogv:(int)a3 format:(id)a4 args:(char *)a5
{
  v8 = a4;
  v9 = v8;
  ucatPtr = self->_ucatPtr;
  if (ucatPtr->var0 <= a3)
  {
    v12 = v8;
    if (ucatPtr->var0 != -1)
    {
LABEL_3:
      v11 = v9;
      v8 = LogPrintV(ucatPtr, "", a3, [v12 UTF8String], a5);
      v9 = v12;
      goto LABEL_5;
    }

    v8 = _LogCategory_Initialize(ucatPtr, a3);
    v9 = v12;
    if (v8)
    {
      ucatPtr = self->_ucatPtr;
      goto LABEL_3;
    }
  }

LABEL_5:

  MEMORY[0x1EEE66BB8](v8, v9);
}

- (void)ulogf:(int)a3 format:(id)a4
{
  v6 = a4;
  ucatPtr = self->_ucatPtr;
  if (ucatPtr->var0 <= a3 && (ucatPtr->var0 != -1 || _LogCategory_Initialize(ucatPtr, a3)))
  {
    LogPrintV(self->_ucatPtr, "", a3, [v6 UTF8String], &v8);
  }
}

- (void)ulog:(int)a3 message:(id)a4
{
  v6 = a4;
  v7 = v6;
  ucatPtr = self->_ucatPtr;
  if (ucatPtr->var0 <= a3)
  {
    v15 = v6;
    if (ucatPtr->var0 != -1)
    {
LABEL_3:
      v9 = v7;
      v10 = [v15 UTF8String];
      v6 = LogPrintF(ucatPtr, ", a3, "%s"", v11, v12, v13, v14, v10);
      v7 = v15;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize(ucatPtr, a3);
    v7 = v15;
    if (v6)
    {
      ucatPtr = self->_ucatPtr;
      goto LABEL_3;
    }
  }

LABEL_5:

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v5 = a3;
  v6 = [(NSString *)self->_categoryName UTF8String];
  [v5 UTF8String];

  LogCategoryReplaceF(&self->_ucatPtr, "%s-%s", v7, v8, v9, v10, v11, v12, v6);
}

- (CULogHandle)initWithSubsystem:(id)a3 category:(id)a4 logLevel:(int)a5 logFlags:(unsigned int)a6
{
  v10 = a3;
  v11 = a4;
  v24.receiver = self;
  v24.super_class = CULogHandle;
  v12 = [(CULogHandle *)&v24 init];
  if (v12)
  {
    v23 = 0;
    v13 = LogCategoryCreateEx([v10 UTF8String], objc_msgSend(v11, "UTF8String"), a5, a6, 0, &v23);
    v12->_ucatPtr = v13;
    if (!v13)
    {
      FatalErrorF("CULogHandle LogCategoryCreateEx failed: %#m", v14, v15, v16, v17, v18, v19, v20, v23);
    }

    objc_storeStrong(&v12->_categoryName, a4);
    v21 = v12;
  }

  return v12;
}

@end