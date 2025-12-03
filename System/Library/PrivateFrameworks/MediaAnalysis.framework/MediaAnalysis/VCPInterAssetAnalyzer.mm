@interface VCPInterAssetAnalyzer
+ (BOOL)canUseLastFrameOfAsset:(id)asset withResources:(id)resources;
+ (CGSize)thumbnailSizeForAsset:(id)asset withResources:(id)resources;
- (VCPInterAssetAnalyzer)init;
- (__CVBuffer)_getThumbnailForAsset:(id)asset withResouces:(id)resouces andPixelFormat:(int)format;
- (int)_generateLastFrameDistanceDescriptor:(id *)descriptor withDescriptorClass:(Class)class forAsset:(id)asset;
- (int)computeDistance:(float *)distance fromArray:(id)array toArray:(id)toArray;
- (int)computeDistance:(float *)distance withDescriptorClass:(id)class fromAsset:(id)asset toAsset:(id)toAsset;
- (int)generateDistanceDescriptor:(id *)descriptor withDescriptorClass:(Class)class forAsset:(id)asset withResources:(id)resources lastFrame:(BOOL)frame;
@end

@implementation VCPInterAssetAnalyzer

- (VCPInterAssetAnalyzer)init
{
  v6.receiver = self;
  v6.super_class = VCPInterAssetAnalyzer;
  v2 = [(VCPInterAssetAnalyzer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (BOOL)canUseLastFrameOfAsset:(id)asset withResources:(id)resources
{
  assetCopy = asset;
  resourcesCopy = resources;
  if ([assetCopy mediaType] == 1)
  {
    LOBYTE(v7) = 1;
  }

  else if ([assetCopy mediaType] == 2 && objc_msgSend(resourcesCopy, "vcp_hasLocalMovie:", objc_msgSend(assetCopy, "hasAdjustments")))
  {
    v7 = [assetCopy vcp_isVideoSlowmo] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (CGSize)thumbnailSizeForAsset:(id)asset withResources:(id)resources
{
  assetCopy = asset;
  vcp_thumbnailResource = [resources vcp_thumbnailResource];
  [vcp_thumbnailResource vcp_size];
  if (v7.f64[0] == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8))
  {
    pixelWidth = [assetCopy pixelWidth];
    pixelHeight = [assetCopy pixelHeight];
    v12.f64[0] = pixelWidth;
    if (pixelHeight >= pixelWidth)
    {
      v13 = pixelWidth;
    }

    else
    {
      v13 = pixelHeight;
    }

    v12.f64[1] = pixelHeight;
    if (v13 <= 256.0)
    {
      v18 = v12;
      goto LABEL_13;
    }

    v14 = vadd_s32(vcvt_s32_f32(vrndp_f32(vcvt_f32_f64(vdivq_f64(vmulq_f64(v12, vdupq_n_s64(0x4070000000000000uLL)), vdupq_lane_s64(*&v13, 0))))), 0x100000001);
    v15.i64[0] = (v14.i32[0] & 0xFFFFFFFE);
    v15.i64[1] = (v14.i32[1] & 0xFFFFFFFE);
    v7 = vcvtq_f64_s64(v15);
  }

  else
  {
    v7.f64[1] = v8;
  }

  v18 = v7;
LABEL_13:

  v17 = v18.f64[1];
  v16 = v18.f64[0];
  result.height = v17;
  result.width = v16;
  return result;
}

- (int)_generateLastFrameDistanceDescriptor:(id *)descriptor withDescriptorClass:(Class)class forAsset:(id)asset
{
  v28 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if ([assetCopy mediaType] == 2)
  {
    v8 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:assetCopy];
    cf = 0;
    v9 = [v8 vcp_avAsset:{objc_msgSend(assetCopy, "hasAdjustments")}];
    v10 = [v9 vcp_firstEnabledTrackWithMediaType:*MEMORY[0x1E6987608]];
    v11 = v10;
    if (v10)
    {
      memset(&v25, 0, sizeof(v25));
      [v10 timeRange];
      lhs = buf[0];
      [v11 timeRange];
      rhs = v22[1];
      CMTimeAdd(&v25, &lhs, &rhs);
      v12 = MEMORY[0x1E6987E68];
      asset = [v11 asset];
      v14 = [v12 assetImageGeneratorWithAsset:asset];

      [VCPInterAssetAnalyzer thumbnailSizeForAsset:assetCopy withResources:v8];
      [v14 setMaximumSize:?];
      [v14 setAppliesPreferredTrackTransform:1];
      buf[0] = **&MEMORY[0x1E6960C70];
      v22[0] = v25;
      v15 = [v14 copyCGImageAtTime:v22 actualTime:buf error:0];
      if (v15)
      {
        v16 = [[VCPImageConverter alloc] initWithPixelFormat:[(objc_class *)class preferredPixelFormat]];
        v17 = v16;
        if (v16)
        {
          v18 = [(VCPImageConverter *)v16 convertImage:v15 yuvFrame:&cf];
          if (!v18)
          {
            v20 = [(objc_class *)class descriptorWithImage:cf];
            *descriptor = v20;
            if (v20)
            {
              v18 = 0;
            }

            else
            {
              v18 = -108;
            }
          }
        }

        else
        {
          v18 = -50;
        }
      }

      else
      {

        v15 = 0;
        v18 = -108;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier = [assetCopy localIdentifier];
        LODWORD(buf[0].value) = 138412290;
        *(&buf[0].value + 4) = localIdentifier;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  [%@] Invalid videoTrack", buf, 0xCu);
      }

      v15 = 0;
      v18 = -18;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    v18 = -50;
  }

  return v18;
}

- (__CVBuffer)_getThumbnailForAsset:(id)asset withResouces:(id)resouces andPixelFormat:(int)format
{
  v5 = *&format;
  v34 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  resoucesCopy = resouces;
  vcp_thumbnailResource = [resoucesCopy vcp_thumbnailResource];
  if ([vcp_thumbnailResource vcp_isLocallyAvailable])
  {
    v10 = +[VCPImageManager sharedImageManager];
    v11 = [v10 imageForResource:vcp_thumbnailResource pixelFormat:v5];
  }

  else
  {
    v12 = [resoucesCopy vcp_localPhotoResourcesSorted:{objc_msgSend(assetCopy, "hasAdjustments")}];
    if ([v12 count])
    {
      [VCPInterAssetAnalyzer thumbnailSizeForAsset:assetCopy withResources:resoucesCopy];
      v15 = v13;
      v16 = v14;
      if (v13 >= v14)
      {
        v17 = v13;
      }

      else
      {
        v17 = v14;
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = v12;
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v19)
      {
        v20 = *v30;
        v21 = v15 * v16;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v30 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v29 + 1) + 8 * i);
            [v23 vcp_size];
            if (v24 * v25 >= v21)
            {
              lastObject = +[VCPImageManager sharedImageManager];
              v11 = [lastObject imageForResource:v23 pixelFormat:v5 maxDimension:v17];
              goto LABEL_17;
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v26 = +[VCPImageManager sharedImageManager];
      lastObject = [v18 lastObject];
      v11 = [v26 imageForResource:lastObject pixelFormat:v5];
      v18 = v26;
LABEL_17:
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (int)generateDistanceDescriptor:(id *)descriptor withDescriptorClass:(Class)class forAsset:(id)asset withResources:(id)resources lastFrame:(BOOL)frame
{
  frameCopy = frame;
  v21 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  resourcesCopy = resources;
  if (frameCopy && [assetCopy mediaType] == 2 && +[VCPInterAssetAnalyzer canUseLastFrameOfAsset:withResources:](VCPInterAssetAnalyzer, "canUseLastFrameOfAsset:withResources:", assetCopy, resourcesCopy))
  {
    if (![(VCPInterAssetAnalyzer *)self _generateLastFrameDistanceDescriptor:descriptor withDescriptorClass:class forAsset:assetCopy])
    {
      v17 = 0;
      goto LABEL_14;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier = [assetCopy localIdentifier];
      v19 = 138412290;
      v20 = localIdentifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "  [%@] Failed to decode last frame of video, fall back to thumbnail ", &v19, 0xCu);
    }
  }

  v15 = [(VCPInterAssetAnalyzer *)self _getThumbnailForAsset:assetCopy withResouces:resourcesCopy andPixelFormat:[(objc_class *)class preferredPixelFormat]];
  if (v15)
  {
    v16 = [(objc_class *)class descriptorWithImage:v15];
    *descriptor = v16;
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = -108;
    }

    CFRelease(v15);
  }

  else
  {
    v17 = -18;
  }

LABEL_14:

  return v17;
}

- (int)computeDistance:(float *)distance withDescriptorClass:(id)class fromAsset:(id)asset toAsset:(id)toAsset
{
  classCopy = class;
  assetCopy = asset;
  toAssetCopy = toAsset;
  v13 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:assetCopy];
  v14 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:toAssetCopy];
  v20 = 0;
  v15 = [(VCPInterAssetAnalyzer *)self generateDistanceDescriptor:&v20 withDescriptorClass:classCopy forAsset:assetCopy withResources:v13 lastFrame:1];
  v16 = v20;
  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v19 = 0;
    v15 = [(VCPInterAssetAnalyzer *)self generateDistanceDescriptor:&v19 withDescriptorClass:classCopy forAsset:toAssetCopy withResources:v14 lastFrame:0];
    v17 = v19;
    if (!v15)
    {
      v15 = [v16 computeDistance:distance toDescriptor:v17];
    }
  }

  return v15;
}

- (int)computeDistance:(float *)distance fromArray:(id)array toArray:(id)toArray
{
  arrayCopy = array;
  toArrayCopy = toArray;
  v9 = toArrayCopy;
  v10 = 0;
  v11 = -50;
  if (distance && arrayCopy)
  {
    v12 = 0;
    if (toArrayCopy)
    {
      if ([arrayCopy count] && objc_msgSend(v9, "count"))
      {
        if ([arrayCopy count] == 1 && objc_msgSend(v9, "count") == 1)
        {
          v13 = [arrayCopy objectAtIndexedSubscript:0];
          v12 = [v13 objectForKeyedSubscript:@"attributes"];

          v14 = [v9 objectAtIndexedSubscript:0];
          v10 = [v14 objectForKeyedSubscript:@"attributes"];

          v11 = [v12 computeDistance:distance toDescriptor:v10];
        }

        else
        {
          v15 = [arrayCopy count];
          v16 = [v9 count] * v15;
          if (v16 < 0)
          {
            v17 = -1;
          }

          else
          {
            v17 = 4 * v16;
          }

          v33 = operator new[](v17, MEMORY[0x1E69E5398]);
          if (v33)
          {
            distanceCopy = distance;
            v31 = v16;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0.0;
            v23 = 3.4028e38;
            while ([arrayCopy count] > v18)
            {
              v24 = [arrayCopy objectAtIndexedSubscript:v18];
              v12 = [v24 objectForKeyedSubscript:@"attributes"];

              v25 = 0;
              v32 = v21;
              v26 = &v33[4 * v21];
              while ([v9 count] > v25)
              {
                v34 = 0.0;
                v27 = [v9 objectAtIndexedSubscript:v25];
                v10 = [v27 objectForKeyedSubscript:@"attributes"];

                v11 = [v12 computeDistance:&v34 toDescriptor:v10];
                if (v11)
                {
                  goto LABEL_26;
                }

                v28 = v34;
                *&v26[4 * v25] = v34;
                v22 = v22 + v28;
                if (v28 < v23)
                {
                  v23 = v28;
                }

                ++v25;
                v19 = v10;
              }

              ++v18;
              v21 = v32 + v25;
              v20 = v12;
            }

            v11 = 0;
            *distanceCopy = ((v22 / v31) * 0.4) + (v23 * 0.6);
            v10 = v19;
            v12 = v20;
LABEL_26:
            MEMORY[0x1CCA95C10](v33, 0x1000C8052888210);
          }

          else
          {
            v10 = 0;
            v12 = 0;
            v11 = -108;
          }
        }
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v11;
}

@end