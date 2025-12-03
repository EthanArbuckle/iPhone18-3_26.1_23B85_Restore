@interface CECIOCECInterface
+ (id)interfaceWithIOCECInterface:(__IOCECInterface *)interface listener:(id)listener;
- ($D1819ED0CAECE69E625AEC8AD7BCEE3A)attributes;
- (BOOL)errorIsNack:(id)nack;
- (BOOL)sendFrame:(CECFrame *)frame withRetryCount:(unsigned __int8)count error:(id *)error;
- (BOOL)setHardwareAddressMask:(unsigned __int16)mask error:(id *)error;
- (CECIOCECInterface)initWithIOCECInterface:(__IOCECInterface *)interface listener:(id)listener;
- (id)properties;
- (void)_close;
- (void)_interfaceTerminated:(__IOCECInterface *)terminated;
- (void)_open;
- (void)dealloc;
- (void)scheduleWithDispatchQueue:(id)queue;
- (void)setAttributes:(id *)attributes;
- (void)unscheduleFromDispatchQueue:(id)queue;
@end

@implementation CECIOCECInterface

+ (id)interfaceWithIOCECInterface:(__IOCECInterface *)interface listener:(id)listener
{
  v4 = [[CECIOCECInterface alloc] initWithIOCECInterface:interface listener:listener];

  return v4;
}

- (CECIOCECInterface)initWithIOCECInterface:(__IOCECInterface *)interface listener:(id)listener
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
    listenerCopy = listener;
    v7->_listener = listenerCopy;
    if (listenerCopy && (v7->_iocecInterface = interface) != 0)
    {
      CFRetain(interface);
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
  serialQueue = [(CECIOCECInterface *)self serialQueue];
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    sub_1FD4(self);
  }

  if (!self->_isOpen && self->_iocecInterface && serialQueue != 0)
  {
    v5 = IOCECInterfaceOpenReceiveQueue();
    if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
    {
      v13 = "[CECIOCECInterface _open]";
      v14 = v5;
      selfCopy = self;
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
    [(CECIOCECInterface *)self dispatchAsyncHighPriority:selfCopy, v13, v14];
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

- (BOOL)errorIsNack:(id)nack
{
  if (nack)
  {
    v4 = [objc_msgSend(nack "domain")];
    if (v4)
    {
      LOBYTE(v4) = [nack code] == -535724032;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)sendFrame:(CECFrame *)frame withRetryCount:(unsigned __int8)count error:(id *)error
{
  v7 = -536870206;
  __dst = 0uLL;
  v13 = 0;
  if (self->_isOpen)
  {
    v8 = *(frame + 16);
    if ((v8 & 0x1Fu) - 17 >= 0xFFFFFFF0)
    {
      memcpy(&__dst, frame, v8 & 0x1F);
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

  if (!error)
  {
    return 0;
  }

  v11 = [NSError errorWithDomain:NSMachErrorDomain code:v7 userInfo:0];
  result = 0;
  *error = v11;
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

- (void)setAttributes:(id *)attributes
{
  *&self->_attributes.address = *&attributes->var0;
  v3 = *&attributes->var6[22];
  v5 = *&attributes->var5[6];
  v4 = *&attributes->var5[22];
  *&self->_attributes.uuid[6] = *&attributes->var6[6];
  *&self->_attributes.uuid[22] = v3;
  *&self->_attributes.modelName[6] = v5;
  *&self->_attributes.modelName[22] = v4;
}

- (BOOL)setHardwareAddressMask:(unsigned __int16)mask error:(id *)error
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

  if (v6 && error)
  {
    *error = [NSError errorWithDomain:NSMachErrorDomain code:v6 userInfo:0];
  }

  return v6 == 0;
}

- (void)_interfaceTerminated:(__IOCECInterface *)terminated
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (self->_iocecInterface == terminated)
  {
    listener = self->_listener;

    [(CoreRCInterfaceListener *)listener removeInterface:self];
  }
}

- (void)scheduleWithDispatchQueue:(id)queue
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    v6 = "[CECIOCECInterface scheduleWithDispatchQueue:]";
    queueCopy = queue;
    selfCopy = self;
    LogPrintF();
  }

  if (![(CECIOCECInterface *)self serialQueue:selfCopy])
  {
    [(CECIOCECInterface *)self setSerialQueue:queue];

    [(CECIOCECInterface *)self _open];
  }
}

- (void)unscheduleFromDispatchQueue:(id)queue
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    v6 = "[CECIOCECInterface unscheduleFromDispatchQueue:]";
    queueCopy = queue;
    selfCopy = self;
    LogPrintF();
  }

  if ([(CECIOCECInterface *)self serialQueue:selfCopy]== queue)
  {
    [(CECIOCECInterface *)self _close];

    [(CECIOCECInterface *)self setSerialQueue:0];
  }
}

@end