@interface MTLDebugSamplerState
- (MTLDebugSamplerState)initWithSamplerState:(id)state descriptor:(id)descriptor device:(id)device;
- (MTLResourceID)gpuResourceID;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation MTLDebugSamplerState

- (MTLDebugSamplerState)initWithSamplerState:(id)state descriptor:(id)descriptor device:(id)device
{
  v8.receiver = self;
  v8.super_class = MTLDebugSamplerState;
  v6 = [(MTLToolsSamplerState *)&v8 initWithSamplerState:state descriptor:descriptor device:device];
  if (v6)
  {
    v6->_descriptor = [descriptor copy];
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

- (id)formattedDescription:(unint64_t)description
{
  v4.receiver = self;
  v4.super_class = MTLDebugSamplerState;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", -[MTLToolsObject description](&v4, sel_description), -[MTLSamplerDescriptor formattedDescription:](self->_descriptor, "formattedDescription:", description)];
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