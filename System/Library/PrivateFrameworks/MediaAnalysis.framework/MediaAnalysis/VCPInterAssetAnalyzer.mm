@interface VCPInterAssetAnalyzer
+ (BOOL)canUseLastFrameOfAsset:(id)a3 withResources:(id)a4;
+ (CGSize)thumbnailSizeForAsset:(id)a3 withResources:(id)a4;
- (VCPInterAssetAnalyzer)init;
- (__CVBuffer)_getThumbnailForAsset:(id)a3 withResouces:(id)a4 andPixelFormat:(int)a5;
- (int)_generateLastFrameDistanceDescriptor:(id *)a3 withDescriptorClass:(Class)a4 forAsset:(id)a5;
- (int)computeDistance:(float *)a3 fromArray:(id)a4 toArray:(id)a5;
- (int)computeDistance:(float *)a3 withDescriptorClass:(id)a4 fromAsset:(id)a5 toAsset:(id)a6;
- (int)generateDistanceDescriptor:(id *)a3 withDescriptorClass:(Class)a4 forAsset:(id)a5 withResources:(id)a6 lastFrame:(BOOL)a7;
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

+ (BOOL)canUseLastFrameOfAsset:(id)a3 withResources:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 mediaType] == 1)
  {
    LOBYTE(v7) = 1;
  }

  else if ([v5 mediaType] == 2 && objc_msgSend(v6, "vcp_hasLocalMovie:", objc_msgSend(v5, "hasAdjustments")))
  {
    v7 = [v5 vcp_isVideoSlowmo] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (CGSize)thumbnailSizeForAsset:(id)a3 withResources:(id)a4
{
  v5 = a3;
  v6 = [a4 vcp_thumbnailResource];
  [v6 vcp_size];
  if (v7.f64[0] == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8))
  {
    v10 = [v5 pixelWidth];
    v11 = [v5 pixelHeight];
    v12.f64[0] = v10;
    if (v11 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    v12.f64[1] = v11;
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

- (int)_generateLastFrameDistanceDescriptor:(id *)a3 withDescriptorClass:(Class)a4 forAsset:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a5;
  if ([v7 mediaType] == 2)
  {
    v8 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:v7];
    cf = 0;
    v9 = [v8 vcp_avAsset:{objc_msgSend(v7, "hasAdjustments")}];
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
      v13 = [v11 asset];
      v14 = [v12 assetImageGeneratorWithAsset:v13];

      [VCPInterAssetAnalyzer thumbnailSizeForAsset:v7 withResources:v8];
      [v14 setMaximumSize:?];
      [v14 setAppliesPreferredTrackTransform:1];
      buf[0] = **&MEMORY[0x1E6960C70];
      v22[0] = v25;
      v15 = [v14 copyCGImageAtTime:v22 actualTime:buf error:0];
      if (v15)
      {
        v16 = [[VCPImageConverter alloc] initWithPixelFormat:[(objc_class *)a4 preferredPixelFormat]];
        v17 = v16;
        if (v16)
        {
          v18 = [(VCPImageConverter *)v16 convertImage:v15 yuvFrame:&cf];
          if (!v18)
          {
            v20 = [(objc_class *)a4 descriptorWithImage:cf];
            *a3 = v20;
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
        v19 = [v7 localIdentifier];
        LODWORD(buf[0].value) = 138412290;
        *(&buf[0].value + 4) = v19;
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

- (__CVBuffer)_getThumbnailForAsset:(id)a3 withResouces:(id)a4 andPixelFormat:(int)a5
{
  v5 = *&a5;
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 vcp_thumbnailResource];
  if ([v9 vcp_isLocallyAvailable])
  {
    v10 = +[VCPImageManager sharedImageManager];
    v11 = [v10 imageForResource:v9 pixelFormat:v5];
  }

  else
  {
    v12 = [v8 vcp_localPhotoResourcesSorted:{objc_msgSend(v7, "hasAdjustments")}];
    if ([v12 count])
    {
      [VCPInterAssetAnalyzer thumbnailSizeForAsset:v7 withResources:v8];
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
              v27 = +[VCPImageManager sharedImageManager];
              v11 = [v27 imageForResource:v23 pixelFormat:v5 maxDimension:v17];
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
      v27 = [v18 lastObject];
      v11 = [v26 imageForResource:v27 pixelFormat:v5];
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

- (int)generateDistanceDescriptor:(id *)a3 withDescriptorClass:(Class)a4 forAsset:(id)a5 withResources:(id)a6 lastFrame:(BOOL)a7
{
  v7 = a7;
  v21 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = a6;
  if (v7 && [v12 mediaType] == 2 && +[VCPInterAssetAnalyzer canUseLastFrameOfAsset:withResources:](VCPInterAssetAnalyzer, "canUseLastFrameOfAsset:withResources:", v12, v13))
  {
    if (![(VCPInterAssetAnalyzer *)self _generateLastFrameDistanceDescriptor:a3 withDescriptorClass:a4 forAsset:v12])
    {
      v17 = 0;
      goto LABEL_14;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v14 = [v12 localIdentifier];
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "  [%@] Failed to decode last frame of video, fall back to thumbnail ", &v19, 0xCu);
    }
  }

  v15 = [(VCPInterAssetAnalyzer *)self _getThumbnailForAsset:v12 withResouces:v13 andPixelFormat:[(objc_class *)a4 preferredPixelFormat]];
  if (v15)
  {
    v16 = [(objc_class *)a4 descriptorWithImage:v15];
    *a3 = v16;
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

- (int)computeDistance:(float *)a3 withDescriptorClass:(id)a4 fromAsset:(id)a5 toAsset:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:v11];
  v14 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:v12];
  v20 = 0;
  v15 = [(VCPInterAssetAnalyzer *)self generateDistanceDescriptor:&v20 withDescriptorClass:v10 forAsset:v11 withResources:v13 lastFrame:1];
  v16 = v20;
  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v19 = 0;
    v15 = [(VCPInterAssetAnalyzer *)self generateDistanceDescriptor:&v19 withDescriptorClass:v10 forAsset:v12 withResources:v14 lastFrame:0];
    v17 = v19;
    if (!v15)
    {
      v15 = [v16 computeDistance:a3 toDescriptor:v17];
    }
  }

  return v15;
}

- (int)computeDistance:(float *)a3 fromArray:(id)a4 toArray:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  v10 = 0;
  v11 = -50;
  if (a3 && v7)
  {
    v12 = 0;
    if (v8)
    {
      if ([v7 count] && objc_msgSend(v9, "count"))
      {
        if ([v7 count] == 1 && objc_msgSend(v9, "count") == 1)
        {
          v13 = [v7 objectAtIndexedSubscript:0];
          v12 = [v13 objectForKeyedSubscript:@"attributes"];

          v14 = [v9 objectAtIndexedSubscript:0];
          v10 = [v14 objectForKeyedSubscript:@"attributes"];

          v11 = [v12 computeDistance:a3 toDescriptor:v10];
        }

        else
        {
          v15 = [v7 count];
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
            v30 = a3;
            v31 = v16;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0.0;
            v23 = 3.4028e38;
            while ([v7 count] > v18)
            {
              v24 = [v7 objectAtIndexedSubscript:v18];
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
            *v30 = ((v22 / v31) * 0.4) + (v23 * 0.6);
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