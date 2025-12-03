@interface IDSUTunTimingLogger
+ (id)incomingEventWithTimestamp:(double)timestamp duration:(double)duration processTime:(double)time compressionTime:(double)compressionTime kernelTime:(double)kernelTime bytes:(int64_t)bytes;
+ (id)kernelTestEventWithTimestamp:(double)timestamp kernelTime:(double)time bytes:(int64_t)bytes;
+ (id)outgoingEventWithTimestamp:(double)timestamp duration:(double)duration processTime:(double)time compressionTime:(double)compressionTime sendTime:(double)sendTime bytes:(int64_t)bytes;
- (IDSUTunTimingLogger)init;
- (void)addEvent:(id)event;
- (void)printCurrent;
@end

@implementation IDSUTunTimingLogger

- (IDSUTunTimingLogger)init
{
  v9.receiver = self;
  v9.super_class = IDSUTunTimingLogger;
  v2 = [(IDSUTunTimingLogger *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ids.utuntiminglogger", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(NSMutableArray);
    timingEvents = v2->_timingEvents;
    v2->_timingEvents = v6;
  }

  return v2;
}

+ (id)outgoingEventWithTimestamp:(double)timestamp duration:(double)duration processTime:(double)time compressionTime:(double)compressionTime sendTime:(double)sendTime bytes:(int64_t)bytes
{
  v8 = [[IDSUTunTimingEventOutgoing alloc] initWithTimestamp:bytes duration:timestamp processTime:duration compressionTime:time sendTime:compressionTime bytes:sendTime];

  return v8;
}

+ (id)incomingEventWithTimestamp:(double)timestamp duration:(double)duration processTime:(double)time compressionTime:(double)compressionTime kernelTime:(double)kernelTime bytes:(int64_t)bytes
{
  v8 = [[IDSUTunTimingEventIncoming alloc] initWithTimestamp:bytes duration:timestamp processTime:duration compressionTime:time kernelTime:compressionTime bytes:kernelTime];

  return v8;
}

+ (id)kernelTestEventWithTimestamp:(double)timestamp kernelTime:(double)time bytes:(int64_t)bytes
{
  v5 = [[IDSUTunTimingEventKernelTest alloc] initWithTimestamp:bytes kernelTime:timestamp bytes:time];

  return v5;
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    if (![(NSMutableArray *)self->_timingEvents count])
    {
      if (qword_100CBF438 != -1)
      {
        sub_10092D900();
      }

      self->_lastPrintTime = *&qword_100CBF3C0 * mach_continuous_time();
    }

    [(NSMutableArray *)self->_timingEvents addObject:eventCopy];
    if (qword_100CBF438 != -1)
    {
      sub_10092D900();
    }

    v4 = *&qword_100CBF3C0 * mach_continuous_time();
    if (v4 - self->_lastPrintTime > 1.0)
    {
      self->_lastPrintTime = v4;
      [(IDSUTunTimingLogger *)self printCurrent];
    }
  }
}

- (void)printCurrent
{
  v3 = self->_timingEvents;
  v4 = objc_alloc_init(NSMutableArray);
  timingEvents = self->_timingEvents;
  self->_timingEvents = v4;

  v6 = mach_continuous_time();
  v7 = [[NSMutableString alloc] initWithCapacity:5000];
  [v7 appendFormat:@"                [  timestamp  ]        total-time   processing-time  compression-only            kernel             bytes \n"];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v3;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * v12) appendToString:{v7, v15}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v10);
  }

  v13 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = mach_continuous_time();
    *buf = 134218242;
    v20 = *&qword_100CBF3C0 * (v14 - v6);
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Timing events: (%0.9f to generate)\n%@", buf, 0x16u);
  }
}

@end