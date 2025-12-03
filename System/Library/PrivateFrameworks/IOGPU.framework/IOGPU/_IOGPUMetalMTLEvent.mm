@interface _IOGPUMetalMTLEvent
- (NSString)label;
- (_IOGPUMetalMTLEvent)initWithDevice:(id)device options:(unint64_t)options;
- (id)retainedLabel;
- (void)dealloc;
- (void)setLabel:(id)label;
@end

@implementation _IOGPUMetalMTLEvent

- (_IOGPUMetalMTLEvent)initWithDevice:(id)device options:(unint64_t)options
{
  v7.receiver = self;
  v7.super_class = _IOGPUMetalMTLEvent;
  v5 = -[IOGPUMTLEvent initWithDeviceRef:options:](&v7, sel_initWithDeviceRef_options_, [device deviceRef], options);
  if (v5)
  {
    v5->_device = device;
    v5->_labelLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _IOGPUMetalMTLEvent;
  [(IOGPUMTLEvent *)&v3 dealloc];
}

- (id)retainedLabel
{
  os_unfair_lock_lock(&self->_labelLock);
  v3 = self->_label;
  os_unfair_lock_unlock(&self->_labelLock);
  return v3;
}

- (NSString)label
{
  retainedLabel = [(_IOGPUMetalMTLEvent *)self retainedLabel];

  return retainedLabel;
}

- (void)setLabel:(id)label
{
  if (*__globalGPUCommPage)
  {
    globalTraceObjectID = self->super._globalTraceObjectID;
    labelTraceID = self->_labelTraceID;
    [label cStringUsingEncoding:1];
    self->_labelTraceID = IOGPUDeviceTraceObjectLabel(0, 8, 0, globalTraceObjectID, labelTraceID);
  }

  v7 = [label copy];
  os_unfair_lock_lock(&self->_labelLock);
  label = self->_label;
  self->_label = v7;
  os_unfair_lock_unlock(&self->_labelLock);
}

@end