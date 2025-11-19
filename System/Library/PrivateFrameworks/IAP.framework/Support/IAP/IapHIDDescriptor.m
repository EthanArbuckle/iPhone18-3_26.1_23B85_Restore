@interface IapHIDDescriptor
- (BOOL)areOutReportsAvailable;
- (BOOL)handleInReport:(char *)a3 withLength:(unsigned int)a4;
- (BOOL)handleOutReport:(char *)a3 withLength:(int64_t)a4;
- (id)dequeueOutReport;
- (void)dealloc;
- (void)queueOutReport:(id)a3;
@end

@implementation IapHIDDescriptor

- (void)dealloc
{
  p_deviceRef = &self->_deviceRef;
  if ((&self->_deviceRef & 7) != 0)
  {
    goto LABEL_11;
  }

  if (*p_deviceRef)
  {
    CFRunLoopGetMain();
    IOHIDUserDeviceUnscheduleFromRunLoop();
    CFRelease(*p_deviceRef);
    *p_deviceRef = 0;
  }

  p_outReportsLock = &self->_outReportsLock;
  if ((&self->_outReportsLock & 7) != 0 || ([(NSLock *)self->_outReportsLock lock], p_outReports = &self->_outReports, (&self->_outReports & 7) != 0))
  {
LABEL_11:
    __break(0x5516u);
  }

  else
  {
    if (*p_outReports)
    {

      *p_outReports = 0;
    }

    [(NSLock *)*p_outReportsLock unlock];
    if (*p_outReportsLock)
    {

      *p_outReportsLock = 0;
    }

    v6.receiver = self;
    v6.super_class = IapHIDDescriptor;
    [(IapHIDDescriptor *)&v6 dealloc];
  }
}

- (BOOL)handleInReport:(char *)a3 withLength:(unsigned int)a4
{
  if ((&self->_deviceRef & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    deviceRef = self->_deviceRef;
    v5 = IOHIDUserDeviceHandleReport();
    v6 = v5;
    if (v5)
    {
      NSLog(@"ERROR - %s:%s - %d handling HID report failed 0x%x.", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IapHIDDescriptor.mm", "[IapHIDDescriptor handleInReport:withLength:]", 133, v5);
    }

    LOBYTE(self) = v6 == 0;
  }

  return self;
}

- (BOOL)handleOutReport:(char *)a3 withLength:(int64_t)a4
{
  if (a4 < 0)
  {
    NSLog(@"ERROR - %s:%s - %d HID report length is less than 0, not sending report", a2, a3, "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IapHIDDescriptor.mm", "[IapHIDDescriptor handleOutReport:withLength:]", 143);
  }

  else
  {
    v5 = [[NSData alloc] initWithBytes:a3 length:a4];
    [(IapHIDDescriptor *)self queueOutReport:v5];
  }

  return 1;
}

- (BOOL)areOutReportsAvailable
{
  p_outReportsLock = &self->_outReportsLock;
  if ((&self->_outReportsLock & 7) != 0 || (v3 = self, LOBYTE(self) = [(NSLock *)self->_outReportsLock lock], v3->_outReportsReadSinceLastEvent = 1, p_outReports = &v3->_outReports, (&v3->_outReports & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    if (*p_outReports)
    {
      v5 = [*p_outReports count] != 0;
    }

    else
    {
      v5 = 0;
    }

    [(NSLock *)*p_outReportsLock unlock];
    LOBYTE(self) = v5;
  }

  return self;
}

- (void)queueOutReport:(id)a3
{
  p_outReportsLock = &self->_outReportsLock;
  if ((&self->_outReportsLock & 7) != 0)
  {
    goto LABEL_14;
  }

  [(NSLock *)self->_outReportsLock lock];
  outReportsReadSinceLastEvent = self->_outReportsReadSinceLastEvent;
  if (outReportsReadSinceLastEvent >= 2)
  {
LABEL_15:
    __break(0x550Au);
    return;
  }

  self->_outReportsReadSinceLastEvent = 0;
  p_outReports = &self->_outReports;
  if ((&self->_outReports & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  v8 = *p_outReports;
  if (!*p_outReports)
  {
    v8 = objc_alloc_init(NSMutableArray);
    *p_outReports = v8;
  }

  [(NSMutableArray *)v8 addObject:a3];
  [(NSLock *)*p_outReportsLock unlock];
  if (outReportsReadSinceLastEvent)
  {
    v9 = sub_100026440();
    if (v9 && (v9 & 7) == 0 && ((self + 16) & 7) == 0)
    {
      transport = self->_transport;
      reportIndex = self->_reportIndex;

      sub_100026D2C(v9, transport, reportIndex);
      return;
    }

    goto LABEL_14;
  }
}

- (id)dequeueOutReport
{
  v2 = (self + 32);
  if (((self + 32) & 7) != 0 || (v3 = self, self = [*(self + 4) lock], v3[48] = 1, v4 = (v3 + 40), ((v3 + 40) & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v5 = [*v4 objectAtIndex:0];
    [*v4 removeObjectAtIndex:0];
    if (![*v4 count])
    {

      *v4 = 0;
    }

    [*v2 unlock];
    return v5;
  }

  return self;
}

@end