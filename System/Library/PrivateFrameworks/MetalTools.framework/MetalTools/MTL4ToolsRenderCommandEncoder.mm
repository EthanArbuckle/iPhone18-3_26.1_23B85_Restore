@interface MTL4ToolsRenderCommandEncoder
- (BOOL)isMemorylessRender;
- (unint64_t)tileHeight;
- (unint64_t)tileWidth;
- (void)dispatchThreadsPerTile:(id *)a3;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(unint64_t)a5 indexBufferLength:(unint64_t)a6 indirectBuffer:(unint64_t)a7;
- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(unint64_t)a4;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(unint64_t)a4;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)setArgumentTable:(id)a3 atStages:(unint64_t)a4;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (void)setColorAttachmentMap:(id)a3;
- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setCommandDataCorruptModeSPI:(unint64_t)a3;
- (void)setCullMode:(unint64_t)a3;
- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5;
- (void)setDepthClipMode:(unint64_t)a3;
- (void)setDepthClipModeSPI:(unint64_t)a3;
- (void)setDepthStencilState:(id)a3;
- (void)setDepthStoreAction:(unint64_t)a3;
- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4;
- (void)setFrontFacingWinding:(unint64_t)a3;
- (void)setLineWidth:(float)a3;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setScissorRects:(id *)a3 count:(unint64_t)a4;
- (void)setStencilStoreAction:(unint64_t)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4 stages:(unint64_t)a5;
- (void)setTriangleFillMode:(unint64_t)a3;
- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4;
- (void)setVertexAmplificationMode:(unint64_t)a3 value:(unint64_t)a4;
- (void)setViewport:(id *)a3;
- (void)setViewports:(id *)a3 count:(unint64_t)a4;
- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4;
- (void)writeTimestampWithGranularity:(int64_t)a3 afterStage:(unint64_t)a4 intoHeap:(id)a5 atIndex:(unint64_t)a6;
@end

@implementation MTL4ToolsRenderCommandEncoder

- (unint64_t)tileWidth
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 tileWidth];
}

- (unint64_t)tileHeight
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 tileHeight];
}

- (void)setColorAttachmentMap:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setColorAttachmentMap:a3];
}

- (void)setRenderPipelineState:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 setRenderPipelineState:v5];
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

- (void)setViewports:(id *)a3 count:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setViewports:a3 count:a4];
}

- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setVertexAmplificationCount:a3 viewMappings:a4];
}

- (void)setCullMode:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setCullMode:a3];
}

- (void)setDepthClipMode:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setDepthClipMode:a3];
}

- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  *&v9 = a3;
  *&v10 = a4;
  *&v11 = a5;

  [v8 setDepthBias:v9 slopeScale:v10 clamp:v11];
}

- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  *&v7 = a3;
  *&v8 = a4;

  [v6 setDepthTestMinBound:v7 maxBound:v8];
}

- (void)setScissorRect:(id *)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = *&a3->var2;
  v6[0] = *&a3->var0;
  v6[1] = v5;
  [v4 setScissorRect:v6];
}

- (void)setScissorRects:(id *)a3 count:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setScissorRects:a3 count:a4];
}

- (void)setTriangleFillMode:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setTriangleFillMode:a3];
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

- (void)setDepthStencilState:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 setDepthStencilState:v5];
}

- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setVisibilityResultMode:a3 offset:a4];
}

- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setColorStoreAction:a3 atIndex:a4];
}

- (void)setDepthStoreAction:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setDepthStoreAction:a3];
}

- (void)setStencilStoreAction:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setStencilStoreAction:a3];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 drawPrimitives:a3 vertexStart:a4 vertexCount:a5];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  [v10 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];

  [v12 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6 baseInstance:a7];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];

  [v12 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferLength:a7];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8
{
  v14 = [(MTLToolsObject *)self baseObject];

  [v14 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferLength:a7 instanceCount:a8];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  v16 = [(MTLToolsObject *)self baseObject];

  [v16 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferLength:a7 instanceCount:a8 baseVertex:? baseInstance:?];
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 drawPrimitives:a3 indirectBuffer:a4];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(unint64_t)a5 indexBufferLength:(unint64_t)a6 indirectBuffer:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];

  [v12 drawIndexedPrimitives:a3 indexType:a4 indexBuffer:a5 indexBufferLength:a6 indirectBuffer:a7];
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 executeCommandsInBuffer:v8 withRange:{location, length}];
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 executeCommandsInBuffer:v7 indirectBuffer:a4];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setObjectThreadgroupMemoryLength:a3 atIndex:a4];
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

- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v10 = *a4;
  v9 = *a5;
  [v8 drawMeshThreadgroupsWithIndirectBuffer:a3 threadsPerObjectThreadgroup:&v10 threadsPerMeshThreadgroup:&v9];
}

- (void)dispatchThreadsPerTile:(id *)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = *a3;
  [v4 dispatchThreadsPerTile:&v5];
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setThreadgroupMemoryLength:a3 offset:a4 atIndex:a5];
}

- (void)setArgumentTable:(id)a3 atStages:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setArgumentTable:v7 atStages:a4];
}

- (void)setLineWidth:(float)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  *&v5 = a3;

  [v4 setLineWidth:v5];
}

- (void)setDepthClipModeSPI:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setDepthClipModeSPI:a3];
}

- (void)setCommandDataCorruptModeSPI:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setCommandDataCorruptModeSPI:a3];
}

- (BOOL)isMemorylessRender
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isMemorylessRender];
}

- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = *&a3->var0;
  var2 = a3->var2;
  v8 = *&a4->var0.var2;
  v9[0] = *&a4->var0.var0;
  v9[1] = v8;
  v9[2] = *&a4->var1.var1;
  v10 = v7;
  [v6 dispatchThreadsPerTile:&v10 inRegion:v9];
}

- (void)setVertexAmplificationMode:(unint64_t)a3 value:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setVertexAmplificationMode:a3 value:a4];
}

- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4 stages:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setToolsDispatchBufferSPI:a3 atIndex:a4 stages:a5];
}

- (void)setFrontFacingWinding:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setFrontFacingWinding:a3];
}

- (void)writeTimestampWithGranularity:(int64_t)a3 afterStage:(unint64_t)a4 intoHeap:(id)a5 atIndex:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a5 baseObject];

  [v10 writeTimestampWithGranularity:a3 afterStage:a4 intoHeap:v11 atIndex:a6];
}

@end