@interface MTLToolsDepthStencilState
- (BOOL)readsDepth;
- (BOOL)readsStencil;
- (BOOL)writesDepth;
- (BOOL)writesStencil;
- (MTLResourceID)gpuResourceID;
- (MTLToolsDepthStencilState)initWithDepthStencilState:(id)a3 descriptor:(id)a4 device:(id)a5;
- (NSString)label;
- (unint64_t)resourceIndex;
- (unint64_t)uniqueIdentifier;
- (void)dealloc;
@end

@implementation MTLToolsDepthStencilState

- (MTLToolsDepthStencilState)initWithDepthStencilState:(id)a3 descriptor:(id)a4 device:(id)a5
{
  v6.receiver = self;
  v6.super_class = MTLToolsDepthStencilState;
  return [(MTLToolsObject *)&v6 initWithBaseObject:a3 parent:a5];
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
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
}

- (BOOL)readsDepth
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 readsDepth];
}

- (BOOL)writesDepth
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 writesDepth];
}

- (BOOL)readsStencil
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 readsStencil];
}

- (BOOL)writesStencil
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 writesStencil];
}

- (unint64_t)uniqueIdentifier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 uniqueIdentifier];
}

- (MTLResourceID)gpuResourceID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuResourceID];
}

- (unint64_t)resourceIndex
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 resourceIndex];
}

@end