@interface MTLToolsSamplerState
- (MTLResourceID)gpuResourceID;
- (MTLToolsSamplerState)initWithSamplerState:(id)state descriptor:(id)descriptor device:(id)device;
- (NSString)label;
- (unint64_t)gpuAddress;
- (unint64_t)gpuHandle;
- (unint64_t)pixelFormat;
- (unint64_t)resourceIndex;
- (unint64_t)uniqueIdentifier;
- (void)dealloc;
@end

@implementation MTLToolsSamplerState

- (MTLToolsSamplerState)initWithSamplerState:(id)state descriptor:(id)descriptor device:(id)device
{
  v6.receiver = self;
  v6.super_class = MTLToolsSamplerState;
  return [(MTLToolsObject *)&v6 initWithBaseObject:state parent:device];
}

- (void)dealloc
{
  [(MTLToolsObjectCache *)self->super._device->samplerObjectCache removeKey:self->super._baseObject];
  v3.receiver = self;
  v3.super_class = MTLToolsSamplerState;
  [(MTLToolsObject *)&v3 dealloc];
}

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (unint64_t)resourceIndex
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourceIndex];
}

- (unint64_t)gpuAddress
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuAddress];
}

- (unint64_t)uniqueIdentifier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject uniqueIdentifier];
}

- (unint64_t)pixelFormat
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject pixelFormat];
}

- (unint64_t)gpuHandle
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuHandle];
}

- (MTLResourceID)gpuResourceID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuResourceID];
}

@end