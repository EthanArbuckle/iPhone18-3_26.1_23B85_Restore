@interface MTL4ToolsArgumentTable
- (MTL4ToolsArgumentTable)initWithBaseObject:(id)object parent:(id)parent;
- (NSString)label;
- (unint64_t)bufferBindingCount;
- (unint64_t)samplerBindingCount;
- (unint64_t)textureBindingCount;
- (void)dealloc;
- (void)getBufferBindings:(MTLResourceID *)bindings bindingCount:(unint64_t)count;
- (void)getTextureBindings:(MTLResourceID *)bindings bindingCount:(unint64_t)count;
- (void)setAddress:(unint64_t)address atIndex:(unint64_t)index;
- (void)setAddress:(unint64_t)address attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setResource:(MTLResourceID)resource atBufferIndex:(unint64_t)index;
- (void)setSamplerState:(MTLResourceID)state atIndex:(unint64_t)index;
- (void)setTexture:(MTLResourceID)texture atIndex:(unint64_t)index;
@end

@implementation MTL4ToolsArgumentTable

- (MTL4ToolsArgumentTable)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsArgumentTable;
  return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTL4ToolsArgumentTable;
  [(MTLToolsObject *)&v2 dealloc];
}

- (void)setAddress:(unint64_t)address atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setAddress:address atIndex:index];
}

- (void)setAddress:(unint64_t)address attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setAddress:address attributeStride:stride atIndex:index];
}

- (void)setResource:(MTLResourceID)resource atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setResource:resource._impl atBufferIndex:index];
}

- (void)setTexture:(MTLResourceID)texture atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setTexture:texture._impl atIndex:index];
}

- (void)setSamplerState:(MTLResourceID)state atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setSamplerState:state._impl atIndex:index];
}

- (unint64_t)bufferBindingCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject bufferBindingCount];
}

- (unint64_t)textureBindingCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject textureBindingCount];
}

- (unint64_t)samplerBindingCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject samplerBindingCount];
}

- (void)getBufferBindings:(MTLResourceID *)bindings bindingCount:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject getBufferBindings:bindings bindingCount:count];
}

- (void)getTextureBindings:(MTLResourceID *)bindings bindingCount:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject getTextureBindings:bindings bindingCount:count];
}

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

@end