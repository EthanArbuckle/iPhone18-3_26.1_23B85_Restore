@interface MTL4ToolsArgumentTable
- (MTL4ToolsArgumentTable)initWithBaseObject:(id)a3 parent:(id)a4;
- (NSString)label;
- (unint64_t)bufferBindingCount;
- (unint64_t)samplerBindingCount;
- (unint64_t)textureBindingCount;
- (void)dealloc;
- (void)getBufferBindings:(MTLResourceID *)a3 bindingCount:(unint64_t)a4;
- (void)getTextureBindings:(MTLResourceID *)a3 bindingCount:(unint64_t)a4;
- (void)setAddress:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setAddress:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setResource:(MTLResourceID)a3 atBufferIndex:(unint64_t)a4;
- (void)setSamplerState:(MTLResourceID)a3 atIndex:(unint64_t)a4;
- (void)setTexture:(MTLResourceID)a3 atIndex:(unint64_t)a4;
@end

@implementation MTL4ToolsArgumentTable

- (MTL4ToolsArgumentTable)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsArgumentTable;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTL4ToolsArgumentTable;
  [(MTLToolsObject *)&v2 dealloc];
}

- (void)setAddress:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setAddress:a3 atIndex:a4];
}

- (void)setAddress:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setAddress:a3 attributeStride:a4 atIndex:a5];
}

- (void)setResource:(MTLResourceID)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setResource:a3._impl atBufferIndex:a4];
}

- (void)setTexture:(MTLResourceID)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setTexture:a3._impl atIndex:a4];
}

- (void)setSamplerState:(MTLResourceID)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setSamplerState:a3._impl atIndex:a4];
}

- (unint64_t)bufferBindingCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 bufferBindingCount];
}

- (unint64_t)textureBindingCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 textureBindingCount];
}

- (unint64_t)samplerBindingCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 samplerBindingCount];
}

- (void)getBufferBindings:(MTLResourceID *)a3 bindingCount:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 getBufferBindings:a3 bindingCount:a4];
}

- (void)getTextureBindings:(MTLResourceID *)a3 bindingCount:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 getTextureBindings:a3 bindingCount:a4];
}

- (NSString)label
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
}

@end