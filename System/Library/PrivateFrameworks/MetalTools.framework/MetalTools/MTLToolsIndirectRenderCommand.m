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
- (unint64_t)getFragmentBufferAddressAtIndex:(unint64_t)a3;
- (unint64_t)getFrontFacingWinding;
- (unint64_t)getMeshBufferAddressAtIndex:(unint64_t)a3;
- (unint64_t)getObjectBufferAddressAtIndex:(unint64_t)a3;
- (unint64_t)getObjectThreadgroupMemoryLengthAtIndex:(unint64_t)a3;
- (unint64_t)getOptimizedStatus;
- (unint64_t)getPipelineStateUniqueIdentifier;
- (unint64_t)getTriangleFillMode;
- (unint64_t)getVertexAttributeStrideAtIndex:(unint64_t)a3;
- (unint64_t)getVertexBufferAddressAtIndex:(unint64_t)a3;
- (void)clearBarrier;
- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11 tessellationFactorBuffer:(id)a12 tessellationFactorBufferOffset:(unint64_t)a13 tessellationFactorBufferInstanceStride:(unint64_t)a14;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10;
- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9 tessellationFactorBuffer:(id)a10 tessellationFactorBufferOffset:(unint64_t)a11 tessellationFactorBufferInstanceStride:(unint64_t)a12;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7;
- (void)getFragmentBufferAtIndex:(unint64_t)a3;
- (void)getVertexBufferAtIndex:(unint64_t)a3;
- (void)reset;
- (void)setBarrier;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (void)setCullMode:(unint64_t)a3;
- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5;
- (void)setDepthClipMode:(unint64_t)a3;
- (void)setDepthStencilState:(id)a3;
- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4;
- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFrontFacingWinding:(unint64_t)a3;
- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setScissorRects:(id *)a3 count:(unint64_t)a4;
- (void)setTriangleFillMode:(unint64_t)a3;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setViewport:(id *)a3;
- (void)setViewports:(id *)a3 count:(unint64_t)a4;
@end

@implementation MTLToolsIndirectRenderCommand

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];

  [v12 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6 baseInstance:a7];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  v16 = [(MTLToolsObject *)self baseObject];
  v17 = [a6 baseObject];

  [v16 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:v17 indexBufferOffset:a7 instanceCount:a8 baseVertex:? baseInstance:?];
}

- (void)setRenderPipelineState:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 setRenderPipelineState:v5];
}

- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9 tessellationFactorBuffer:(id)a10 tessellationFactorBufferOffset:(unint64_t)a11 tessellationFactorBufferInstanceStride:(unint64_t)a12
{
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a6 baseObject];
  [a10 baseObject];

  [v17 drawPatches:a3 patchStart:a4 patchCount:a5 patchIndexBuffer:v18 patchIndexBufferOffset:a7 instanceCount:a8 baseInstance:? tessellationFactorBuffer:? tessellationFactorBufferOffset:? tessellationFactorBufferInstanceStride:?];
}

- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11 tessellationFactorBuffer:(id)a12 tessellationFactorBufferOffset:(unint64_t)a13 tessellationFactorBufferInstanceStride:(unint64_t)a14
{
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a6 baseObject];
  v19 = [a8 baseObject];
  [a12 baseObject];

  [v17 drawIndexedPatches:a3 patchStart:a4 patchCount:a5 patchIndexBuffer:v18 patchIndexBufferOffset:a7 controlPointIndexBuffer:v19 controlPointIndexBufferOffset:? instanceCount:? baseInstance:? tessellationFactorBuffer:? tessellationFactorBufferOffset:? tessellationFactorBufferInstanceStride:?];
}

- (void)reset
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 reset];
}

- (unint64_t)getPipelineStateUniqueIdentifier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getPipelineStateUniqueIdentifier];
}

- (id)drawArguments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 drawArguments];
}

- (id)drawIndexedArguments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 drawIndexedArguments];
}

- (id)drawIndexedPatchesArguments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 drawIndexedPatchesArguments];
}

- (id)drawPatchesArguments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 drawPatchesArguments];
}

- (id)drawMeshThreadgroupsArguments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 drawMeshThreadgroupsArguments];
}

- (id)drawMeshThreadsArguments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 drawMeshThreadsArguments];
}

- (id)getTessellationFactorArguments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getTessellationFactorArguments];
}

- (unint64_t)getCommandType
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getCommandType];
}

- (void)getFragmentBufferAtIndex:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 getFragmentBufferAtIndex:a3];
}

- (void)getVertexBufferAtIndex:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 getVertexBufferAtIndex:a3];
}

- (unint64_t)getFragmentBufferAddressAtIndex:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 getFragmentBufferAddressAtIndex:a3];
}

- (unint64_t)getVertexBufferAddressAtIndex:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 getVertexBufferAddressAtIndex:a3];
}

- (unint64_t)getObjectBufferAddressAtIndex:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 getObjectBufferAddressAtIndex:a3];
}

- (unint64_t)getMeshBufferAddressAtIndex:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 getMeshBufferAddressAtIndex:a3];
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setVertexBuffer:a3 offset:a4 atIndex:a5];
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  [v10 setVertexBuffer:a3 offset:a4 attributeStride:a5 atIndex:a6];
}

- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setFragmentBuffer:a3 offset:a4 atIndex:a5];
}

- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setObjectBuffer:a3 offset:a4 atIndex:a5];
}

- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setMeshBuffer:a3 offset:a4 atIndex:a5];
}

- (void)setBarrier
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 setBarrier];
}

- (void)clearBarrier
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 clearBarrier];
}

- (BOOL)hasBarrier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 hasBarrier];
}

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v11 = *a3;
  v10 = *a4;
  v9 = *a5;
  [v8 drawMeshThreadgroups:&v11 threadsPerObjectThreadgroup:&v10 threadsPerMeshThreadgroup:&v9];
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v11 = *a3;
  v10 = *a4;
  v9 = *a5;
  [v8 drawMeshThreads:&v11 threadsPerObjectThreadgroup:&v10 threadsPerMeshThreadgroup:&v9];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setObjectThreadgroupMemoryLength:a3 atIndex:a4];
}

- (unint64_t)getObjectThreadgroupMemoryLengthAtIndex:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 getObjectThreadgroupMemoryLengthAtIndex:a3];
}

- (unint64_t)getOptimizedStatus
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getOptimizedStatus];
}

- (unint64_t)getVertexAttributeStrideAtIndex:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 getVertexAttributeStrideAtIndex:a3];
}

- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  *&v9 = a3;
  *&v10 = a4;
  *&v11 = a5;

  [v8 setDepthBias:v9 slopeScale:v10 clamp:v11];
}

- (void)setDepthClipMode:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setDepthClipMode:a3];
}

- (void)setCullMode:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setCullMode:a3];
}

- (void)setFrontFacingWinding:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setFrontFacingWinding:a3];
}

- (void)setTriangleFillMode:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setTriangleFillMode:a3];
}

- (void)setScissorRect:(id *)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = *&a3->var2;
  v6[0] = *&a3->var0;
  v6[1] = v5;
  [v4 setScissorRect:v6];
}

- (void)setViewport:(id *)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = *&a3->var2;
  v6[0] = *&a3->var0;
  v6[1] = v5;
  v6[2] = *&a3->var4;
  [v4 setViewport:v6];
}

- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  *&v11 = a3;
  *&v12 = a4;
  *&v13 = a5;
  *&v14 = a6;

  [v10 setBlendColorRed:v11 green:v12 blue:v13 alpha:v14];
}

- (void)setScissorRects:(id *)a3 count:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setScissorRects:a3 count:a4];
}

- (void)setViewports:(id *)a3 count:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setViewports:a3 count:a4];
}

- (void)setDepthStencilState:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 setDepthStencilState:v5];
}

- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  *&v7 = a3;
  *&v8 = a4;

  [v6 setDepthTestMinBound:v7 maxBound:v8];
}

- (id)getDepthTestBounds
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getDepthTestBounds];
}

- (unint64_t)getDepthStencilStateUniqueIdentifier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getDepthStencilStateUniqueIdentifier];
}

- (id)getDepthBiasInfo
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getDepthBiasInfo];
}

- (id)getStencilReferenceValues
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getStencilReferenceValues];
}

- (id)getDepthStencilState
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getDepthStencilState];
}

- (unint64_t)getDepthClipMode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getDepthClipMode];
}

- (unint64_t)getCullMode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getCullMode];
}

- (unint64_t)getFrontFacingWinding
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getFrontFacingWinding];
}

- (unint64_t)getTriangleFillMode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getTriangleFillMode];
}

- (id)getScissorRects
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getScissorRects];
}

- (id)getViewports
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getViewports];
}

- (id)getBlendColor
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getBlendColor];
}

@end