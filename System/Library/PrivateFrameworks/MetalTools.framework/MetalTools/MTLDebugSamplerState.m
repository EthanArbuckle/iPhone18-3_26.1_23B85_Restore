@interface MTLDebugSamplerState
- (MTLDebugSamplerState)initWithSamplerState:(id)a3 descriptor:(id)a4 device:(id)a5;
- (MTLResourceID)gpuResourceID;
- (id)formattedDescription:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MTLDebugSamplerState

- (MTLDebugSamplerState)initWithSamplerState:(id)a3 descriptor:(id)a4 device:(id)a5
{
  v8.receiver = self;
  v8.super_class = MTLDebugSamplerState;
  v6 = [(MTLToolsSamplerState *)&v8 initWithSamplerState:a3 descriptor:a4 device:a5];
  if (v6)
  {
    v6->_descriptor = [a4 copy];
  }

  return v6;
}

- (void)dealloc
{
  [(MTLToolsObject *)self->super.super._parent notifySamplerStateDeallocated:self];

  v3.receiver = self;
  v3.super_class = MTLDebugSamplerState;
  [(MTLToolsSamplerState *)&v3 dealloc];
}

- (id)formattedDescription:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = MTLDebugSamplerState;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", -[MTLToolsObject description](&v4, sel_description), -[MTLSamplerDescriptor formattedDescription:](self->_descriptor, "formattedDescription:", a3)];
}

- (MTLResourceID)gpuResourceID
{
  [(MTLToolsSamplerState *)self device:0];
  _MTLMessageContextBegin_();
  if (([(MTLDevice *)[(MTLToolsSamplerState *)self device] supportsFamily:5002]& 1) == 0 && ![(MTLSamplerDescriptor *)self->_descriptor supportArgumentBuffers])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  return [-[MTLToolsObject baseObject](self "baseObject")];
}

@end