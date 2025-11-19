@interface _IOGPUMetalMTLEvent
- (NSString)label;
- (_IOGPUMetalMTLEvent)initWithDevice:(id)a3 options:(unint64_t)a4;
- (id)retainedLabel;
- (void)dealloc;
- (void)setLabel:(id)a3;
@end

@implementation _IOGPUMetalMTLEvent

- (_IOGPUMetalMTLEvent)initWithDevice:(id)a3 options:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = _IOGPUMetalMTLEvent;
  v5 = -[IOGPUMTLEvent initWithDeviceRef:options:](&v7, sel_initWithDeviceRef_options_, [a3 deviceRef], a4);
  if (v5)
  {
    v5->_device = a3;
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
  v2 = [(_IOGPUMetalMTLEvent *)self retainedLabel];

  return v2;
}

- (void)setLabel:(id)a3
{
  if (*__globalGPUCommPage)
  {
    globalTraceObjectID = self->super._globalTraceObjectID;
    labelTraceID = self->_labelTraceID;
    [a3 cStringUsingEncoding:1];
    self->_labelTraceID = IOGPUDeviceTraceObjectLabel(0, 8, 0, globalTraceObjectID, labelTraceID);
  }

  v7 = [a3 copy];
  os_unfair_lock_lock(&self->_labelLock);
  label = self->_label;
  self->_label = v7;
  os_unfair_lock_unlock(&self->_labelLock);
}

@end