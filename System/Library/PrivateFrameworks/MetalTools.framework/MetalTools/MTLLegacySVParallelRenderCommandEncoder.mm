@interface MTLLegacySVParallelRenderCommandEncoder
- (MTLLegacySVParallelRenderCommandEncoder)initWithParallelRenderCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor encoderID:(unsigned int)d;
- (id)renderCommandEncoder;
@end

@implementation MTLLegacySVParallelRenderCommandEncoder

- (MTLLegacySVParallelRenderCommandEncoder)initWithParallelRenderCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor encoderID:(unsigned int)d
{
  v8.receiver = self;
  v8.super_class = MTLLegacySVParallelRenderCommandEncoder;
  result = [(MTLToolsParallelRenderCommandEncoder *)&v8 initWithParallelRenderCommandEncoder:encoder parent:parent descriptor:descriptor];
  if (result)
  {
    result->_encoderID = d;
  }

  return result;
}

- (id)renderCommandEncoder
{
  v3 = [[MTLLegacySVRenderCommandEncoder alloc] initWithRenderCommandEncoder:[(MTLToolsObject *)self->super.super.super._baseObject renderCommandEncoder] parallelEncoder:self encoderID:self->_encoderID];
  [(MTLToolsObject *)self->super.super.super._parent beginingEncoder:v3 type:3];
  ++self->_encoderID;

  return v3;
}

@end