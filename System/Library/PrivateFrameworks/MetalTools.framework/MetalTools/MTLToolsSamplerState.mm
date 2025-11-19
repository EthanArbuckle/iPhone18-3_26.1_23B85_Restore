@interface MTLToolsSamplerState
- (MTLResourceID)gpuResourceID;
- (MTLToolsSamplerState)initWithSamplerState:(id)a3 descriptor:(id)a4 device:(id)a5;
- (NSString)label;
- (unint64_t)gpuAddress;
- (unint64_t)gpuHandle;
- (unint64_t)pixelFormat;
- (unint64_t)resourceIndex;
- (unint64_t)uniqueIdentifier;
- (void)dealloc;
@end

@implementation MTLToolsSamplerState

- (MTLToolsSamplerState)initWithSamplerState:(id)a3 descriptor:(id)a4 device:(id)a5
{
  v6.receiver = self;
  v6.super_class = MTLToolsSamplerState;
  return [(MTLToolsObject *)&v6 initWithBaseObject:a3 parent:a5];
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
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
}

- (unint64_t)resourceIndex
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 resourceIndex];
}

- (unint64_t)gpuAddress
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuAddress];
}

- (unint64_t)uniqueIdentifier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 uniqueIdentifier];
}

- (unint64_t)pixelFormat
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 pixelFormat];
}

- (unint64_t)gpuHandle
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuHandle];
}

- (MTLResourceID)gpuResourceID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuResourceID];
}

@end