@interface CECIOCECInterface
+ (id)interfaceWithIOCECInterface:(__IOCECInterface *)a3 listener:(id)a4;
- ($D1819ED0CAECE69E625AEC8AD7BCEE3A)attributes;
- (BOOL)errorIsNack:(id)a3;
- (BOOL)sendFrame:(CECFrame *)a3 withRetryCount:(unsigned __int8)a4 error:(id *)a5;
- (BOOL)setHardwareAddressMask:(unsigned __int16)a3 error:(id *)a4;
- (CECIOCECInterface)initWithIOCECInterface:(__IOCECInterface *)a3 listener:(id)a4;
- (id)properties;
- (void)_close;
- (void)_interfaceTerminated:(__IOCECInterface *)a3;
- (void)_open;
- (void)dealloc;
- (void)scheduleWithDispatchQueue:(id)a3;
- (void)setAttributes:(id *)a3;
- (void)unscheduleFromDispatchQueue:(id)a3;
@end

@implementation CECIOCECInterface

+ (id)interfaceWithIOCECInterface:(__IOCECInterface *)a3 listener:(id)a4
{
  v4 = [[CECIOCECInterface alloc] initWithIOCECInterface:a3 listener:a4];

  return v4;
}

- (CECIOCECInterface)initWithIOCECInterface:(__IOCECInterface *)a3 listener:(id)a4
{
  if (gLogCategory_CoreRCInterface <= 50 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    sub_1F54();
  }

  v10.receiver = self;
  v10.super_class = CECIOCECInterface;
  v7 = [(CECIOCECInterface *)&v10 init];
  if (v7)
  {
    v8 = a4;
    v7->_listener = v8;
    if (v8 && (v7->_iocecInterface = a3) != 0)
    {
      CFRetain(a3);
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  if (gLogCategory_CoreRCInterface <= 50 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    sub_1F94();
  }

  [(CECIOCECInterface *)self setDelegate:0];
  if (self->_iocecInterface)
  {
    [(CECIOCECInterface *)self _close];
    CFRelease(self->_iocecInterface);
    self->_iocecInterface = 0;
  }

  self->_listener = 0;
  v3.receiver = self;
  v3.super_class = CECIOCECInterface;
  [(CECIOCECInterface *)&v3 dealloc];
}

- (void)_open
{
  v3 = [(CECIOCECInterface *)self serialQueue];
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    sub_1FD4(self);
  }

  if (!self->_isOpen && self->_iocecInterface && v3 != 0)
  {
    v5 = IOCECInterfaceOpenReceiveQueue();
    if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
    {
      v13 = "[CECIOCECInterface _open]";
      v14 = v5;
      v12 = self;
      LogPrintF();
    }

    if (!v5)
    {
      iocecInterface = self->_iocecInterface;
      IOCECInterfaceRegisterTerminatedCallback();
      v9 = self->_iocecInterface;
      IOCECInterfaceRegisterReceiveCallback();
      v10 = self->_iocecInterface;
      IOCECInterfaceRegisterStatusCallback();
      [(CECIOCECInterface *)self setReceiveWorkloop:dispatch_workloop_create_inactive("IOCECInterface - Receive Workloop")];
      if ([(CECIOCECInterface *)self receiveWorkloop])
      {
        [(CECIOCECInterface *)self receiveWorkloop];
        dispatch_workloop_set_scheduler_priority();
        dispatch_activate([(CECIOCECInterface *)self receiveWorkloop]);
        v11 = self->_iocecInterface;
        [(CECIOCECInterface *)self receiveWorkloop];
        IOCECInterfaceScheduleWithDispatchQueue();
        self->_isOpen = 1;
        v6 = v16;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v7 = sub_11A4;
        goto LABEL_17;
      }

      sub_2034();
    }

    v6 = v15;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v7 = sub_12C4;
LABEL_17:
    v6[2] = v7;
    v6[3] = &unk_41A8;
    v6[4] = self;
    [(CECIOCECInterface *)self dispatchAsyncHighPriority:v12, v13, v14];
  }
}

- (void)_close
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    sub_2144(self);
  }

  if (self->_isOpen)
  {
    if ([(CECIOCECInterface *)self receiveWorkloop])
    {
      iocecInterface = self->_iocecInterface;
      [(CECIOCECInterface *)self receiveWorkloop];
      IOCECInterfaceUnscheduleFromDispatchQueue();
      v4 = self->_iocecInterface;
      IOCECInterfaceRegisterStatusCallback();
      v5 = self->_iocecInterface;
      IOCECInterfaceRegisterReceiveCallback();
      v6 = self->_iocecInterface;
      IOCECInterfaceRegisterTerminatedCallback();
    }

    v7 = self->_iocecInterface;
    IOCECInterfaceCloseReceiveQueue();
    v8.receiver = self;
    v8.super_class = CECIOCECInterface;
    [(CECIOCECInterface *)&v8 setAddressMask:0 error:0];
    self->_isOpen = 0;

    [(CECIOCECInterface *)self setReceiveWorkloop:0];
  }
}

- (BOOL)errorIsNack:(id)a3
{
  if (a3)
  {
    v4 = [objc_msgSend(a3 "domain")];
    if (v4)
    {
      LOBYTE(v4) = [a3 code] == -535724032;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)sendFrame:(CECFrame *)a3 withRetryCount:(unsigned __int8)a4 error:(id *)a5
{
  v7 = -536870206;
  __dst = 0uLL;
  v13 = 0;
  if (self->_isOpen)
  {
    v8 = *(a3 + 16);
    if ((v8 & 0x1Fu) - 17 >= 0xFFFFFFF0)
    {
      memcpy(&__dst, a3, v8 & 0x1F);
      v13 = v13 & 0xF0 | (v8 - 1) & 0xF;
      iocecInterface = self->_iocecInterface;
      v7 = IOCECInterfaceSendFrame();
      if (!v7)
      {
        return 1;
      }
    }
  }

  else
  {
    v7 = -536870195;
  }

  if (!a5)
  {
    return 0;
  }

  v11 = [NSError errorWithDomain:NSMachErrorDomain code:v7 userInfo:0];
  result = 0;
  *a5 = v11;
  return result;
}

- (id)properties
{
  v3 = objc_alloc_init(CECEDIDAttributes);
  [v3 setAddress:self->_attributes.address];
  [v3 setVendorID:self->_attributes.vendorID];
  [v3 setProductID:self->_attributes.productID];
  [v3 setWeek:self->_attributes.week];
  [v3 setYear:self->_attributes.year];
  [v3 setModelName:{+[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", self->_attributes.modelName, 1)}];
  [v3 setUuid:{+[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", self->_attributes.uuid, 1)}];
  hpd = self->_hpd;
  v8[0] = kCECInterfacePropertyIsValid;
  v8[1] = kCECInterfacePropertyHasLink;
  if (hpd)
  {
    v5 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  v9[0] = &__kCFBooleanTrue;
  v9[1] = v5;
  v8[2] = kCECInterfacePropertyPhysicalAddress;
  v6 = [NSNumber numberWithUnsignedInteger:self->_attributes.address];
  v8[3] = kCECInterfacePropertyEDIDAttributes;
  v9[2] = v6;
  v9[3] = v3;
  return [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];
}

- ($D1819ED0CAECE69E625AEC8AD7BCEE3A)attributes
{
  v3 = *&self[1].var4;
  *&retstr->var5[22] = *&self->var6[30];
  *&retstr->var6[6] = v3;
  *&retstr->var6[22] = *&self[1].var5[14];
  v4 = *&self->var6[14];
  *&retstr->var0 = *&self->var5[30];
  *&retstr->var5[6] = v4;
  return self;
}

- (void)setAttributes:(id *)a3
{
  *&self->_attributes.address = *&a3->var0;
  v3 = *&a3->var6[22];
  v5 = *&a3->var5[6];
  v4 = *&a3->var5[22];
  *&self->_attributes.uuid[6] = *&a3->var6[6];
  *&self->_attributes.uuid[22] = v3;
  *&self->_attributes.modelName[6] = v5;
  *&self->_attributes.modelName[22] = v4;
}

- (BOOL)setHardwareAddressMask:(unsigned __int16)a3 error:(id *)a4
{
  if (self->_isOpen)
  {
    iocecInterface = self->_iocecInterface;
    v6 = IOCECInterfaceSetLogicalAddressMask();
  }

  else
  {
    v6 = -536870195;
  }

  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v6 && a4)
  {
    *a4 = [NSError errorWithDomain:NSMachErrorDomain code:v6 userInfo:0];
  }

  return v6 == 0;
}

- (void)_interfaceTerminated:(__IOCECInterface *)a3
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (self->_iocecInterface == a3)
  {
    listener = self->_listener;

    [(CoreRCInterfaceListener *)listener removeInterface:self];
  }
}

- (void)scheduleWithDispatchQueue:(id)a3
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    v6 = "[CECIOCECInterface scheduleWithDispatchQueue:]";
    v7 = a3;
    v5 = self;
    LogPrintF();
  }

  if (![(CECIOCECInterface *)self serialQueue:v5])
  {
    [(CECIOCECInterface *)self setSerialQueue:a3];

    [(CECIOCECInterface *)self _open];
  }
}

- (void)unscheduleFromDispatchQueue:(id)a3
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    v6 = "[CECIOCECInterface unscheduleFromDispatchQueue:]";
    v7 = a3;
    v5 = self;
    LogPrintF();
  }

  if ([(CECIOCECInterface *)self serialQueue:v5]== a3)
  {
    [(CECIOCECInterface *)self _close];

    [(CECIOCECInterface *)self setSerialQueue:0];
  }
}

@end