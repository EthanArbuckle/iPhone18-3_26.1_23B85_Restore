@interface DYMTLPixelHistoryTextureSupport
+ (id)pixelValueFromTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice depthPlane:(unint64_t)plane atX:(unint64_t)x y:(unint64_t)y inCommandBuffer:(id)buffer overHarvestForDepthStencil:(BOOL)self0;
+ (void)pixelValueFromTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice depthPlane:(unint64_t)plane atX:(unint64_t)x y:(unint64_t)y inCommandBuffer:(id)buffer overHarvestForDepthStencil:(BOOL)self0 completion:(id)self1;
+ (void)pixelValueToTexture:(id)texture buffer:(id)buffer level:(unint64_t)level slice:(unint64_t)slice depthPlane:(unint64_t)plane atX:(unint64_t)x y:(unint64_t)y inCommandBuffer:(id)self0;
@end

@implementation DYMTLPixelHistoryTextureSupport

+ (void)pixelValueFromTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice depthPlane:(unint64_t)plane atX:(unint64_t)x y:(unint64_t)y inCommandBuffer:(id)buffer overHarvestForDepthStencil:(BOOL)self0 completion:(id)self1
{
  textureCopy = texture;
  bufferCopy = buffer;
  completionCopy = completion;
  if ([textureCopy width] && objc_msgSend(textureCopy, "height"))
  {
    LOBYTE(v22) = stencil;
    v20 = [self pixelValueFromTexture:textureCopy level:level slice:slice depthPlane:plane atX:x y:y inCommandBuffer:bufferCopy overHarvestForDepthStencil:v22];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __140__DYMTLPixelHistoryTextureSupport_pixelValueFromTexture_level_slice_depthPlane_atX_y_inCommandBuffer_overHarvestForDepthStencil_completion___block_invoke;
    v23[3] = &unk_27984F1F8;
    v24 = v20;
    v26 = completionCopy;
    v25 = textureCopy;
    v21 = v20;
    [bufferCopy addCompletedHandler:v23];
  }
}

void __140__DYMTLPixelHistoryTextureSupport_pixelValueFromTexture_level_slice_depthPlane_atX_y_inCommandBuffer_overHarvestForDepthStencil_completion___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:objc_msgSend(*(a1 + 32) length:{"contents"), objc_msgSend(*(a1 + 32), "length")}];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v2, [*(a1 + 40) pixelFormat]);
}

+ (id)pixelValueFromTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice depthPlane:(unint64_t)plane atX:(unint64_t)x y:(unint64_t)y inCommandBuffer:(id)buffer overHarvestForDepthStencil:(BOOL)self0
{
  textureCopy = texture;
  bufferCopy = buffer;
  if ([textureCopy width] && objc_msgSend(textureCopy, "height"))
  {
    yCopy = y;
    levelCopy = level;
    device = [bufferCopy device];
    [textureCopy pixelFormat];
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    MTLPixelFormatGetInfoForDevice();
    blitCommandEncoder = [bufferCopy blitCommandEncoder];
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    MTLGetTextureLevelInfoForDeviceWithOptions();
    v19 = [device newBufferWithLength:0 options:0];
    v25[0] = x;
    v25[1] = yCopy;
    v25[2] = plane;
    v23 = vdupq_n_s64(1uLL);
    *&v24 = 1;
    [blitCommandEncoder copyFromTexture:textureCopy sourceSlice:slice sourceLevel:levelCopy sourceOrigin:v25 sourceSize:&v23 toBuffer:v19 destinationOffset:0 destinationBytesPerRow:0 destinationBytesPerImage:0 options:0];
    [blitCommandEncoder endEncoding];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (void)pixelValueToTexture:(id)texture buffer:(id)buffer level:(unint64_t)level slice:(unint64_t)slice depthPlane:(unint64_t)plane atX:(unint64_t)x y:(unint64_t)y inCommandBuffer:(id)self0
{
  textureCopy = texture;
  bufferCopy = buffer;
  commandBufferCopy = commandBuffer;
  if ([textureCopy width] && objc_msgSend(textureCopy, "height"))
  {
    device = [commandBufferCopy device];
    [textureCopy pixelFormat];
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    MTLPixelFormatGetInfoForDevice();
    blitCommandEncoder = [commandBufferCopy blitCommandEncoder];
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    MTLGetTextureLevelInfoForDeviceWithOptions();
    v21 = vdupq_n_s64(1uLL);
    *&v22 = 1;
    v20[0] = x;
    v20[1] = y;
    v20[2] = plane;
    [blitCommandEncoder copyFromBuffer:bufferCopy sourceOffset:0 sourceBytesPerRow:0 sourceBytesPerImage:0 sourceSize:&v21 toTexture:textureCopy destinationSlice:slice destinationLevel:level destinationOrigin:v20 options:0];
    [blitCommandEncoder endEncoding];
  }
}

@end