@interface MRDProcessHIDEventManager
- (MRDProcessHIDEventManager)initWithBundleID:(id)d processID:(int)iD;
- (void)dispatchHIDEvent:(__IOHIDEvent *)event;
@end

@implementation MRDProcessHIDEventManager

- (MRDProcessHIDEventManager)initWithBundleID:(id)d processID:(int)iD
{
  dCopy = d;
  v16.receiver = self;
  v16.super_class = MRDProcessHIDEventManager;
  v7 = [(MRDProcessHIDEventManager *)&v16 init];
  if (v7)
  {
    v8 = [dCopy copy];
    bundleID = v7->_bundleID;
    v7->_bundleID = v8;

    v7->_processID = iD;
    v10 = objc_opt_class();
    Name = class_getName(v10);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(Name, v12);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v13;
  }

  return v7;
}

- (void)dispatchHIDEvent:(__IOHIDEvent *)event
{
  CFRetain(event);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006B968;
  block[3] = &unk_1004B82A0;
  block[4] = event;
  dispatch_async(serialQueue, block);
}

@end