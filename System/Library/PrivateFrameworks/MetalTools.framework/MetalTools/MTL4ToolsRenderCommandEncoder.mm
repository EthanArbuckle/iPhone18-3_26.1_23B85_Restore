@interface MTL4ToolsRenderCommandEncoder
- (BOOL)isMemorylessRender;
- (unint64_t)tileHeight;
- (unint64_t)tileWidth;
- (void)dispatchThreadsPerTile:(id *)tile;
- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length indirectBuffer:(unint64_t)indirectBuffer;
- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(unint64_t)buffer;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)setArgumentTable:(id)table atStages:(unint64_t)stages;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setColorAttachmentMap:(id)map;
- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index;
- (void)setCommandDataCorruptModeSPI:(unint64_t)i;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setDepthClipMode:(unint64_t)mode;
- (void)setDepthClipModeSPI:(unint64_t)i;
- (void)setDepthStencilState:(id)state;
- (void)setDepthStoreAction:(unint64_t)action;
- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setLineWidth:(float)width;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setStencilStoreAction:(unint64_t)action;
- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setToolsDispatchBufferSPI:(unint64_t)i atIndex:(unint64_t)index stages:(unint64_t)stages;
- (void)setTriangleFillMode:(unint64_t)mode;
- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings;
- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset;
- (void)writeTimestampWithGranularity:(int64_t)granularity afterStage:(unint64_t)stage intoHeap:(id)heap atIndex:(unint64_t)index;
@end

@implementation MTL4ToolsRenderCommandEncoder

- (unint64_t)tileWidth
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject tileWidth];
}

- (unint64_t)tileHeight
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject tileHeight];
}

- (void)setColorAttachmentMap:(id)map
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setColorAttachmentMap:map];
}

- (void)setRenderPipelineState:(id)state
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setRenderPipelineState:baseObject2];
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

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setViewports:viewports count:count];
}

- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setVertexAmplificationCount:count viewMappings:mappings];
}

- (void)setCullMode:(unint64_t)mode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setCullMode:mode];
}

- (void)setDepthClipMode:(unint64_t)mode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthClipMode:mode];
}

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v9 = bias;
  *&v10 = scale;
  *&v11 = clamp;

  [baseObject setDepthBias:v9 slopeScale:v10 clamp:v11];
}

- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v7 = bound;
  *&v8 = maxBound;

  [baseObject setDepthTestMinBound:v7 maxBound:v8];
}

- (void)setScissorRect:(id *)rect
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v5 = *&rect->var2;
  v6[0] = *&rect->var0;
  v6[1] = v5;
  [baseObject setScissorRect:v6];
}

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setScissorRects:rects count:count];
}

- (void)setTriangleFillMode:(unint64_t)mode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setTriangleFillMode:mode];
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

- (void)setDepthStencilState:(id)state
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setDepthStencilState:baseObject2];
}

- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setVisibilityResultMode:mode offset:offset];
}

- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setColorStoreAction:action atIndex:index];
}

- (void)setDepthStoreAction:(unint64_t)action
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthStoreAction:action];
}

- (void)setStencilStoreAction:(unint64_t)action
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setStencilStoreAction:action];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawPrimitives:primitives vertexStart:start vertexCount:count];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferLength:length];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferLength:length instanceCount:instanceCount];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferLength:length instanceCount:instanceCount baseVertex:? baseInstance:?];
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(unint64_t)buffer
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawPrimitives:primitives indirectBuffer:buffer];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length indirectBuffer:(unint64_t)indirectBuffer
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawIndexedPrimitives:primitives indexType:type indexBuffer:buffer indexBufferLength:length indirectBuffer:indirectBuffer];
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject executeCommandsInBuffer:baseObject2 withRange:{location, length}];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject executeCommandsInBuffer:baseObject2 indirectBuffer:indirectBuffer];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setObjectThreadgroupMemoryLength:length atIndex:index];
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

- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v10 = *threadgroup;
  v9 = *meshThreadgroup;
  [baseObject drawMeshThreadgroupsWithIndirectBuffer:buffer threadsPerObjectThreadgroup:&v10 threadsPerMeshThreadgroup:&v9];
}

- (void)dispatchThreadsPerTile:(id *)tile
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v5 = *tile;
  [baseObject dispatchThreadsPerTile:&v5];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setThreadgroupMemoryLength:length offset:offset atIndex:index];
}

- (void)setArgumentTable:(id)table atStages:(unint64_t)stages
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setArgumentTable:baseObject2 atStages:stages];
}

- (void)setLineWidth:(float)width
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v5 = width;

  [baseObject setLineWidth:v5];
}

- (void)setDepthClipModeSPI:(unint64_t)i
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthClipModeSPI:i];
}

- (void)setCommandDataCorruptModeSPI:(unint64_t)i
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setCommandDataCorruptModeSPI:i];
}

- (BOOL)isMemorylessRender
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isMemorylessRender];
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v7 = *&tile->var0;
  var2 = tile->var2;
  v8 = *&region->var0.var2;
  v9[0] = *&region->var0.var0;
  v9[1] = v8;
  v9[2] = *&region->var1.var1;
  v10 = v7;
  [baseObject dispatchThreadsPerTile:&v10 inRegion:v9];
}

- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setVertexAmplificationMode:mode value:value];
}

- (void)setToolsDispatchBufferSPI:(unint64_t)i atIndex:(unint64_t)index stages:(unint64_t)stages
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setToolsDispatchBufferSPI:i atIndex:index stages:stages];
}

- (void)setFrontFacingWinding:(unint64_t)winding
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setFrontFacingWinding:winding];
}

- (void)writeTimestampWithGranularity:(int64_t)granularity afterStage:(unint64_t)stage intoHeap:(id)heap atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [heap baseObject];

  [baseObject writeTimestampWithGranularity:granularity afterStage:stage intoHeap:baseObject2 atIndex:index];
}

@end