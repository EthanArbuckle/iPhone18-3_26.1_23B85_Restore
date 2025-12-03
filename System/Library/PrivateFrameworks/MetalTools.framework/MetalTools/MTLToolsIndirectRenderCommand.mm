@interface MTLToolsIndirectRenderCommand
- (BOOL)hasBarrier;
- (id)drawArguments;
- (id)drawIndexedArguments;
- (id)drawIndexedPatchesArguments;
- (id)drawMeshThreadgroupsArguments;
- (id)drawMeshThreadsArguments;
- (id)drawPatchesArguments;
- (id)getBlendColor;
- (id)getDepthBiasInfo;
- (id)getDepthStencilState;
- (id)getDepthTestBounds;
- (id)getScissorRects;
- (id)getStencilReferenceValues;
- (id)getTessellationFactorArguments;
- (id)getViewports;
- (unint64_t)getCommandType;
- (unint64_t)getCullMode;
- (unint64_t)getDepthClipMode;
- (unint64_t)getDepthStencilStateUniqueIdentifier;
- (unint64_t)getFragmentBufferAddressAtIndex:(unint64_t)index;
- (unint64_t)getFrontFacingWinding;
- (unint64_t)getMeshBufferAddressAtIndex:(unint64_t)index;
- (unint64_t)getObjectBufferAddressAtIndex:(unint64_t)index;
- (unint64_t)getObjectThreadgroupMemoryLengthAtIndex:(unint64_t)index;
- (unint64_t)getOptimizedStatus;
- (unint64_t)getPipelineStateUniqueIdentifier;
- (unint64_t)getTriangleFillMode;
- (unint64_t)getVertexAttributeStrideAtIndex:(unint64_t)index;
- (unint64_t)getVertexBufferAddressAtIndex:(unint64_t)index;
- (void)clearBarrier;
- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1 tessellationFactorBuffer:(id)self2 tessellationFactorBufferOffset:(unint64_t)self3 tessellationFactorBufferInstanceStride:(unint64_t)self4;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance tessellationFactorBuffer:(id)self0 tessellationFactorBufferOffset:(unint64_t)self1 tessellationFactorBufferInstanceStride:(unint64_t)self2;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)getFragmentBufferAtIndex:(unint64_t)index;
- (void)getVertexBufferAtIndex:(unint64_t)index;
- (void)reset;
- (void)setBarrier;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setDepthClipMode:(unint64_t)mode;
- (void)setDepthStencilState:(id)state;
- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound;
- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setTriangleFillMode:(unint64_t)mode;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
@end

@implementation MTLToolsIndirectRenderCommand

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject2 indexBufferOffset:offset instanceCount:instanceCount baseVertex:? baseInstance:?];
}

- (void)setRenderPipelineState:(id)state
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setRenderPipelineState:baseObject2];
}

- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance tessellationFactorBuffer:(id)self0 tessellationFactorBufferOffset:(unint64_t)self1 tessellationFactorBufferInstanceStride:(unint64_t)self2
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  [factorBuffer baseObject];

  [baseObject drawPatches:patches patchStart:start patchCount:count patchIndexBuffer:baseObject2 patchIndexBufferOffset:offset instanceCount:instanceCount baseInstance:? tessellationFactorBuffer:? tessellationFactorBufferOffset:? tessellationFactorBufferInstanceStride:?];
}

- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1 tessellationFactorBuffer:(id)self2 tessellationFactorBufferOffset:(unint64_t)self3 tessellationFactorBufferInstanceStride:(unint64_t)self4
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [indexBuffer baseObject];
  [factorBuffer baseObject];

  [baseObject drawIndexedPatches:patches patchStart:start patchCount:count patchIndexBuffer:baseObject2 patchIndexBufferOffset:offset controlPointIndexBuffer:baseObject3 controlPointIndexBufferOffset:? instanceCount:? baseInstance:? tessellationFactorBuffer:? tessellationFactorBufferOffset:? tessellationFactorBufferInstanceStride:?];
}

- (void)reset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject reset];
}

- (unint64_t)getPipelineStateUniqueIdentifier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getPipelineStateUniqueIdentifier];
}

- (id)drawArguments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject drawArguments];
}

- (id)drawIndexedArguments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject drawIndexedArguments];
}

- (id)drawIndexedPatchesArguments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject drawIndexedPatchesArguments];
}

- (id)drawPatchesArguments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject drawPatchesArguments];
}

- (id)drawMeshThreadgroupsArguments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject drawMeshThreadgroupsArguments];
}

- (id)drawMeshThreadsArguments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject drawMeshThreadsArguments];
}

- (id)getTessellationFactorArguments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getTessellationFactorArguments];
}

- (unint64_t)getCommandType
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getCommandType];
}

- (void)getFragmentBufferAtIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getFragmentBufferAtIndex:index];
}

- (void)getVertexBufferAtIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getVertexBufferAtIndex:index];
}

- (unint64_t)getFragmentBufferAddressAtIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getFragmentBufferAddressAtIndex:index];
}

- (unint64_t)getVertexBufferAddressAtIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getVertexBufferAddressAtIndex:index];
}

- (unint64_t)getObjectBufferAddressAtIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getObjectBufferAddressAtIndex:index];
}

- (unint64_t)getMeshBufferAddressAtIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getMeshBufferAddressAtIndex:index];
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setVertexBuffer:buffer offset:offset atIndex:index];
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setVertexBuffer:buffer offset:offset attributeStride:stride atIndex:index];
}

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setFragmentBuffer:buffer offset:offset atIndex:index];
}

- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setObjectBuffer:buffer offset:offset atIndex:index];
}

- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setMeshBuffer:buffer offset:offset atIndex:index];
}

- (void)setBarrier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setBarrier];
}

- (void)clearBarrier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject clearBarrier];
}

- (BOOL)hasBarrier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject hasBarrier];
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v11 = *threadgroups;
  v10 = *threadgroup;
  v9 = *meshThreadgroup;
  [baseObject drawMeshThreadgroups:&v11 threadsPerObjectThreadgroup:&v10 threadsPerMeshThreadgroup:&v9];
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v11 = *threads;
  v10 = *threadgroup;
  v9 = *meshThreadgroup;
  [baseObject drawMeshThreads:&v11 threadsPerObjectThreadgroup:&v10 threadsPerMeshThreadgroup:&v9];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setObjectThreadgroupMemoryLength:length atIndex:index];
}

- (unint64_t)getObjectThreadgroupMemoryLengthAtIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getObjectThreadgroupMemoryLengthAtIndex:index];
}

- (unint64_t)getOptimizedStatus
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getOptimizedStatus];
}

- (unint64_t)getVertexAttributeStrideAtIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getVertexAttributeStrideAtIndex:index];
}

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v9 = bias;
  *&v10 = scale;
  *&v11 = clamp;

  [baseObject setDepthBias:v9 slopeScale:v10 clamp:v11];
}

- (void)setDepthClipMode:(unint64_t)mode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthClipMode:mode];
}

- (void)setCullMode:(unint64_t)mode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setCullMode:mode];
}

- (void)setFrontFacingWinding:(unint64_t)winding
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setFrontFacingWinding:winding];
}

- (void)setTriangleFillMode:(unint64_t)mode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setTriangleFillMode:mode];
}

- (void)setScissorRect:(id *)rect
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v5 = *&rect->var2;
  v6[0] = *&rect->var0;
  v6[1] = v5;
  [baseObject setScissorRect:v6];
}

- (void)setViewport:(id *)viewport
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v5 = *&viewport->var2;
  v6[0] = *&viewport->var0;
  v6[1] = v5;
  v6[2] = *&viewport->var4;
  [baseObject setViewport:v6];
}

- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v11 = red;
  *&v12 = green;
  *&v13 = blue;
  *&v14 = alpha;

  [baseObject setBlendColorRed:v11 green:v12 blue:v13 alpha:v14];
}

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setScissorRects:rects count:count];
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setViewports:viewports count:count];
}

- (void)setDepthStencilState:(id)state
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setDepthStencilState:baseObject2];
}

- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v7 = bound;
  *&v8 = maxBound;

  [baseObject setDepthTestMinBound:v7 maxBound:v8];
}

- (id)getDepthTestBounds
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getDepthTestBounds];
}

- (unint64_t)getDepthStencilStateUniqueIdentifier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getDepthStencilStateUniqueIdentifier];
}

- (id)getDepthBiasInfo
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getDepthBiasInfo];
}

- (id)getStencilReferenceValues
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getStencilReferenceValues];
}

- (id)getDepthStencilState
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getDepthStencilState];
}

- (unint64_t)getDepthClipMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getDepthClipMode];
}

- (unint64_t)getCullMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getCullMode];
}

- (unint64_t)getFrontFacingWinding
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getFrontFacingWinding];
}

- (unint64_t)getTriangleFillMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getTriangleFillMode];
}

- (id)getScissorRects
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getScissorRects];
}

- (id)getViewports
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getViewports];
}

- (id)getBlendColor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getBlendColor];
}

@end