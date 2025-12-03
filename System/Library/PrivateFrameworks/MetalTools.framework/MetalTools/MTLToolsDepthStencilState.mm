@interface MTLToolsDepthStencilState
- (BOOL)readsDepth;
- (BOOL)readsStencil;
- (BOOL)writesDepth;
- (BOOL)writesStencil;
- (MTLResourceID)gpuResourceID;
- (MTLToolsDepthStencilState)initWithDepthStencilState:(id)state descriptor:(id)descriptor device:(id)device;
- (NSString)label;
- (unint64_t)resourceIndex;
- (unint64_t)uniqueIdentifier;
- (void)dealloc;
@end

@implementation MTLToolsDepthStencilState

- (MTLToolsDepthStencilState)initWithDepthStencilState:(id)state descriptor:(id)descriptor device:(id)device
{
  v6.receiver = self;
  v6.super_class = MTLToolsDepthStencilState;
  return [(MTLToolsObject *)&v6 initWithBaseObject:state parent:device];
}

- (void)dealloc
{
  [(MTLToolsObjectCache *)self->super._device->depthStencilObjectCache removeKey:self->super._baseObject];
  v3.receiver = self;
  v3.super_class = MTLToolsDepthStencilState;
  [(MTLToolsObject *)&v3 dealloc];
}

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (BOOL)readsDepth
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject readsDepth];
}

- (BOOL)writesDepth
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject writesDepth];
}

- (BOOL)readsStencil
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject readsStencil];
}

- (BOOL)writesStencil
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject writesStencil];
}

- (unint64_t)uniqueIdentifier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject uniqueIdentifier];
}

- (MTLResourceID)gpuResourceID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuResourceID];
}

- (unint64_t)resourceIndex
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourceIndex];
}

@end