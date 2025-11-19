@interface MTLGPUDebugParallelRenderCommandEncoder
- (MTLGPUDebugParallelRenderCommandEncoder)initWithParallelRenderCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5 encoderID:(unsigned int)a6;
- (id)renderCommandEncoder;
@end

@implementation MTLGPUDebugParallelRenderCommandEncoder

- (MTLGPUDebugParallelRenderCommandEncoder)initWithParallelRenderCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5 encoderID:(unsigned int)a6
{
  v8.receiver = self;
  v8.super_class = MTLGPUDebugParallelRenderCommandEncoder;
  result = [(MTLToolsParallelRenderCommandEncoder *)&v8 initWithParallelRenderCommandEncoder:a3 parent:a4 descriptor:a5];
  if (result)
  {
    result->_encoderID = a6;
  }

  return result;
}

- (id)renderCommandEncoder
{
  v3 = [[MTLGPUDebugRenderCommandEncoder alloc] initWithRenderCommandEncoder:[(MTLToolsObject *)self->super.super.super._baseObject renderCommandEncoder] parallelEncoder:self encoderID:self->_encoderID];
  [(MTLToolsObject *)self->super.super.super._parent beginingEncoder:v3 type:3];
  ++self->_encoderID;

  return v3;
}

@end