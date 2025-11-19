@interface DYMTLPixelHistoryTextureSupport
+ (id)pixelValueFromTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 depthPlane:(unint64_t)a6 atX:(unint64_t)a7 y:(unint64_t)a8 inCommandBuffer:(id)a9 overHarvestForDepthStencil:(BOOL)a10;
+ (void)pixelValueFromTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 depthPlane:(unint64_t)a6 atX:(unint64_t)a7 y:(unint64_t)a8 inCommandBuffer:(id)a9 overHarvestForDepthStencil:(BOOL)a10 completion:(id)a11;
+ (void)pixelValueToTexture:(id)a3 buffer:(id)a4 level:(unint64_t)a5 slice:(unint64_t)a6 depthPlane:(unint64_t)a7 atX:(unint64_t)a8 y:(unint64_t)a9 inCommandBuffer:(id)a10;
@end

@implementation DYMTLPixelHistoryTextureSupport

+ (void)pixelValueFromTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 depthPlane:(unint64_t)a6 atX:(unint64_t)a7 y:(unint64_t)a8 inCommandBuffer:(id)a9 overHarvestForDepthStencil:(BOOL)a10 completion:(id)a11
{
  v17 = a3;
  v18 = a9;
  v19 = a11;
  if ([v17 width] && objc_msgSend(v17, "height"))
  {
    LOBYTE(v22) = a10;
    v20 = [a1 pixelValueFromTexture:v17 level:a4 slice:a5 depthPlane:a6 atX:a7 y:a8 inCommandBuffer:v18 overHarvestForDepthStencil:v22];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __140__DYMTLPixelHistoryTextureSupport_pixelValueFromTexture_level_slice_depthPlane_atX_y_inCommandBuffer_overHarvestForDepthStencil_completion___block_invoke;
    v23[3] = &unk_27984F1F8;
    v24 = v20;
    v26 = v19;
    v25 = v17;
    v21 = v20;
    [v18 addCompletedHandler:v23];
  }
}

void __140__DYMTLPixelHistoryTextureSupport_pixelValueFromTexture_level_slice_depthPlane_atX_y_inCommandBuffer_overHarvestForDepthStencil_completion___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:objc_msgSend(*(a1 + 32) length:{"contents"), objc_msgSend(*(a1 + 32), "length")}];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v2, [*(a1 + 40) pixelFormat]);
}

+ (id)pixelValueFromTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 depthPlane:(unint64_t)a6 atX:(unint64_t)a7 y:(unint64_t)a8 inCommandBuffer:(id)a9 overHarvestForDepthStencil:(BOOL)a10
{
  v15 = a3;
  v16 = a9;
  if ([v15 width] && objc_msgSend(v15, "height"))
  {
    v21 = a8;
    v22 = a4;
    v17 = [v16 device];
    [v15 pixelFormat];
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    MTLPixelFormatGetInfoForDevice();
    v18 = [v16 blitCommandEncoder];
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    MTLGetTextureLevelInfoForDeviceWithOptions();
    v19 = [v17 newBufferWithLength:0 options:0];
    v25[0] = a7;
    v25[1] = v21;
    v25[2] = a6;
    v23 = vdupq_n_s64(1uLL);
    *&v24 = 1;
    [v18 copyFromTexture:v15 sourceSlice:a5 sourceLevel:v22 sourceOrigin:v25 sourceSize:&v23 toBuffer:v19 destinationOffset:0 destinationBytesPerRow:0 destinationBytesPerImage:0 options:0];
    [v18 endEncoding];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (void)pixelValueToTexture:(id)a3 buffer:(id)a4 level:(unint64_t)a5 slice:(unint64_t)a6 depthPlane:(unint64_t)a7 atX:(unint64_t)a8 y:(unint64_t)a9 inCommandBuffer:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a10;
  if ([v15 width] && objc_msgSend(v15, "height"))
  {
    v18 = [v17 device];
    [v15 pixelFormat];
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    MTLPixelFormatGetInfoForDevice();
    v19 = [v17 blitCommandEncoder];
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
    v20[0] = a8;
    v20[1] = a9;
    v20[2] = a7;
    [v19 copyFromBuffer:v16 sourceOffset:0 sourceBytesPerRow:0 sourceBytesPerImage:0 sourceSize:&v21 toTexture:v15 destinationSlice:a6 destinationLevel:a5 destinationOrigin:v20 options:0];
    [v19 endEncoding];
  }
}

@end