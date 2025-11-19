@interface _IOGPUMetalMTLLateEvalEvent
- (NSString)label;
- (_IOGPUMetalMTLLateEvalEvent)initWithDevice:(id)a3;
- (id)retainedLabel;
- (void)dealloc;
- (void)setLabel:(id)a3;
@end

@implementation _IOGPUMetalMTLLateEvalEvent

- (_IOGPUMetalMTLLateEvalEvent)initWithDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = _IOGPUMetalMTLLateEvalEvent;
  v4 = -[IOGPUMTLLateEvalEvent initWithDevice:](&v6, sel_initWithDevice_, [a3 deviceRef]);
  if (v4)
  {
    v4->_device = a3;
    v4->_labelLock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _IOGPUMetalMTLLateEvalEvent;
  [(IOGPUMTLLateEvalEvent *)&v3 dealloc];
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
  v2 = [(_IOGPUMetalMTLLateEvalEvent *)self retainedLabel];

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