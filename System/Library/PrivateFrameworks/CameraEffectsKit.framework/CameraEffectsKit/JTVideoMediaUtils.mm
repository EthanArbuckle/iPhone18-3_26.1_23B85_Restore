@interface JTVideoMediaUtils
- (BOOL)hasAudibleCharacteristicWithIsMissing:(BOOL)a3;
- (BOOL)isOriginalHEVC4k;
- (CGAffineTransform)cachedTransform;
- (CGAffineTransform)transform;
- (CGSize)cachedNaturalSize;
- (CGSize)naturalSizeWithIsMissing:(BOOL)a3 asset:(id)a4;
- (float)frameRate;
- (id)colorSpace;
- (int)durationAt30fpsWithAssetDuration:(double)a3;
- (void)cacheTrackInformationWithAVAsset:(id)a3;
- (void)requestAVAssetAsyncWithAsset:(id)a3 needsDerivativeMedia:(BOOL)a4 frameRate:(float)a5 completion:(id)a6;
- (void)setCachedPreciseAssetDuration:(id *)a3;
- (void)setCachedTransform:(CGAffineTransform *)a3;
@end

@implementation JTVideoMediaUtils

- (void)cacheTrackInformationWithAVAsset:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && ![(JTVideoMediaUtils *)self cachedAssetInformationValid])
  {
    v5 = [v4 tracks];
    if ([v5 count])
    {
      [v4 duration];

      if (location[1] >= 1)
      {
        [(JTVideoMediaUtils *)self setCachedAssetInformationValid:1];
        [(JTVideoMediaUtils *)self setCachedVideoTrackCount:0];
        [(JTVideoMediaUtils *)self setCachedNaturalSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
        [(JTVideoMediaUtils *)self setCachedFrameRate:0.0];
        v6 = *(MEMORY[0x277CBF2C0] + 16);
        *buf = *MEMORY[0x277CBF2C0];
        *&buf[16] = v6;
        v26 = *(MEMORY[0x277CBF2C0] + 32);
        [(JTVideoMediaUtils *)self setCachedTransform:buf];
        v7 = JFXLog_DebugDataModel();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = v4;
          *&buf[12] = 2112;
          *&buf[14] = v4;
          _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "Movie (Video): tracksWithMediaCharacteristic assetToInsert=%p %@", buf, 0x16u);
        }

        objc_initWeak(location, self);
        v8 = dispatch_semaphore_create(0);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __54__JTVideoMediaUtils_cacheTrackInformationWithAVAsset___block_invoke;
        v21[3] = &unk_278D7A4D0;
        objc_copyWeak(&v23, location);
        v9 = *MEMORY[0x277CE5E40];
        v10 = v8;
        v22 = v10;
        [v4 loadTracksWithMediaCharacteristic:v9 completionHandler:v21];
        dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
        [v4 duration];
        *buf = v19;
        *&buf[16] = v20;
        [(JTVideoMediaUtils *)self setCachedPreciseAssetDuration:buf];
        [(JTVideoMediaUtils *)self cachedPreciseAssetDuration];
        CMTimeConvertScale(buf, &time, 30, kCMTimeRoundingMethod_QuickTime);
        [(JTVideoMediaUtils *)self setCachedDurationAt30fps:*buf];
        [(JTVideoMediaUtils *)self setCachedAudioTrackCount:0];
        v11 = dispatch_semaphore_create(0);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __54__JTVideoMediaUtils_cacheTrackInformationWithAVAsset___block_invoke_2;
        v14[3] = &unk_278D7A4F8;
        objc_copyWeak(&v17, location);
        v12 = *MEMORY[0x277CE5DE0];
        v15 = v4;
        v13 = v11;
        v16 = v13;
        [v15 loadTracksWithMediaCharacteristic:v12 completionHandler:v14];
        dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);

        objc_destroyWeak(&v17);
        objc_destroyWeak(&v23);

        objc_destroyWeak(location);
      }
    }

    else
    {
    }
  }
}

void __54__JTVideoMediaUtils_cacheTrackInformationWithAVAsset___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        if (v10 && [*(*(&v27 + 1) + 8 * i) isEnabled])
        {
          [WeakRetained setCachedVideoTrackCount:{objc_msgSend(WeakRetained, "cachedVideoTrackCount") + 1}];
          [v10 naturalSize];
          [WeakRetained setCachedNaturalSize:?];
          [v10 nominalFrameRate];
          [WeakRetained setCachedFrameRate:?];
          [v10 preferredTransform];
          *lhs = *&v26[0].value;
          *&lhs[16] = *&v26[0].epoch;
          v24 = 0;
          v25 = 0;
          [WeakRetained setCachedTransform:lhs];
          memset(v26, 0, 24);
          [v10 timeRange];
          *lhs = v21;
          *&lhs[16] = v22;
          [v10 timeRange];
          rhs = v19;
          CMTimeAdd(v26, lhs, &rhs);
          if (WeakRetained)
          {
            [WeakRetained cachedPreciseAssetDuration];
          }

          else
          {
            memset(lhs, 0, 24);
          }

          rhs = v26[0];
          if (CMTimeCompare(&rhs, lhs) < 0)
          {
            *lhs = v26[0];
            [WeakRetained setCachedPreciseAssetDuration:lhs];
          }

          v11 = [v10 formatDescriptions];
          v12 = v11;
          if (v11 && [v11 count])
          {
            v13 = [v12 objectAtIndex:0];
            [WeakRetained setCachedCodec4cc:CMFormatDescriptionGetMediaSubType(v13)];
            Extension = CMFormatDescriptionGetExtension(v13, *MEMORY[0x277CC4C00]);
            v15 = CMFormatDescriptionGetExtension(v13, *MEMORY[0x277CC4CC0]);
            v16 = CMFormatDescriptionGetExtension(v13, *MEMORY[0x277CC4D10]);
            if (Extension && v15)
            {
              v17 = [MEMORY[0x277D415E0] jfx_getColorSpaceFromColorPrimaries:Extension transferFunction:v15 matrix:v16];
            }

            else
            {
              v17 = [MEMORY[0x277D415E0] rec709GammaColorSpace];
            }

            v18 = v17;
            [WeakRetained setCachedColorSpace:v17];
          }

          goto LABEL_24;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

  dispatch_semaphore_signal(*(a1 + 32));
}

void __54__JTVideoMediaUtils_cacheTrackInformationWithAVAsset___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    [WeakRetained setCachedAudioTrackCount:{objc_msgSend(v3, "count")}];
    if ([WeakRetained cachedAudioTrackCount])
    {
      if (![WeakRetained cachedVideoTrackCount])
      {
        if (WeakRetained)
        {
          [WeakRetained cachedPreciseAssetDuration];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        if (CMTimeGetSeconds(&time) > 2700.0)
        {
          v5 = [v3 objectAtIndex:0];
          v6 = v5;
          if (v5)
          {
            v7 = [v5 formatDescriptions];
            if ([v7 count])
            {
              v8 = [v7 objectAtIndex:0];
              if (v8)
              {
                [WeakRetained setCacheWillDieDuringLoad:CMAudioFormatDescriptionGetStreamBasicDescription(v8)->mFormatID == 778924083];
                if ([WeakRetained cacheWillDieDuringLoad])
                {
                  v9 = JFXLog_model();
                  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
                  {
                    __54__JTVideoMediaUtils_cacheTrackInformationWithAVAsset___block_invoke_2_cold_1(a1, v9);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)requestAVAssetAsyncWithAsset:(id)a3 needsDerivativeMedia:(BOOL)a4 frameRate:(float)a5 completion:(id)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a6;
  if (a5 <= 105.0)
  {
    v11 = ([v9 mediaSubtypes] >> 17) & 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = objc_alloc_init(MEMORY[0x277CD9A00]);
  [v12 setVersion:v11];
  [v12 setNetworkAccessAllowed:0];
  [v12 setStreamingAllowed:0];
  if (v8)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [v12 setDeliveryMode:v13];
  v14 = [MEMORY[0x277CD9898] defaultManager];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__JTVideoMediaUtils_requestAVAssetAsyncWithAsset_needsDerivativeMedia_frameRate_completion___block_invoke;
  v18[3] = &unk_278D7A548;
  v22 = v8;
  v19 = v9;
  v20 = v12;
  v21 = v10;
  v15 = v10;
  v16 = v12;
  v17 = v9;
  [v14 requestAVAssetForVideo:v17 options:v16 resultHandler:v18];
}

void __92__JTVideoMediaUtils_requestAVAssetAsyncWithAsset_needsDerivativeMedia_frameRate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CFXVideoSettings canDecodeHEVC2160P];
  if (v3 || (*(a1 + 56) & 1) != 0)
  {
    goto LABEL_3;
  }

  v5 = v4;
  if ([*(a1 + 32) pixelHeight] <= 0x86F)
  {
    if ([*(a1 + 32) pixelWidth] >= 0x870 && !v5)
    {
LABEL_9:
      [*(a1 + 40) setDeliveryMode:2];
      v6 = [MEMORY[0x277CD9898] defaultManager];
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __92__JTVideoMediaUtils_requestAVAssetAsyncWithAsset_needsDerivativeMedia_frameRate_completion___block_invoke_2;
      v9[3] = &unk_278D7A520;
      v10 = *(a1 + 48);
      [v6 requestAVAssetForVideo:v7 options:v8 resultHandler:v9];

      goto LABEL_4;
    }
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

LABEL_3:
  (*(*(a1 + 48) + 16))();
LABEL_4:
}

- (float)frameRate
{
  if (![(JTVideoMediaUtils *)self cachedAssetInformationValid])
  {
    return +[JFXMediaSettings frameRate];
  }

  [(JTVideoMediaUtils *)self cachedFrameRate];
  return result;
}

- (int)durationAt30fpsWithAssetDuration:(double)a3
{
  if ([(JTVideoMediaUtils *)self cachedAssetInformationValid])
  {

    return [(JTVideoMediaUtils *)self cachedDurationAt30fps];
  }

  else
  {
    v6 = JFXLog_model();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [JTVideoMediaUtils durationAt30fpsWithAssetDuration:v6];
    }

    CMTimeMakeWithSeconds(&v7, a3, 30);
    return v7.value;
  }
}

- (BOOL)isOriginalHEVC4k
{
  result = 0;
  if ([(JTVideoMediaUtils *)self cachedCodec4cc]== 1752589105)
  {
    [(JTVideoMediaUtils *)self cachedNaturalSize];
    if (v3 >= 2160.0)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)hasAudibleCharacteristicWithIsMissing:(BOOL)a3
{
  v4 = [(JTVideoMediaUtils *)self cachedAudioTrackCount];
  if (v4)
  {
    LOBYTE(v4) = ![(JTVideoMediaUtils *)self isUnsupportedAudio];
  }

  return v4;
}

- (CGSize)naturalSizeWithIsMissing:(BOOL)a3 asset:(id)a4
{
  v6 = a4;
  if ([(JTVideoMediaUtils *)self cachedAssetInformationValid])
  {
    [(JTVideoMediaUtils *)self cachedNaturalSize];
    v8 = v7;
    v10 = v9;
  }

  else if (v6)
  {
    v8 = [v6 pixelWidth];
    v10 = [v6 pixelHeight];
  }

  else
  {
    v10 = 1080.0;
    if (!a3)
    {
      v11 = JFXLog_model();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [JTVideoMediaUtils naturalSizeWithIsMissing:v11 asset:?];
      }
    }

    v8 = 1920.0;
  }

  v12 = v8;
  v13 = v10;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGAffineTransform)transform
{
  result = [(JTVideoMediaUtils *)self cachedAssetInformationValid];
  if (result)
  {

    return [(JTVideoMediaUtils *)self cachedTransform];
  }

  else
  {
    v6 = MEMORY[0x277CBF2C0];
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v7;
    *&retstr->tx = *(v6 + 32);
  }

  return result;
}

- (id)colorSpace
{
  if ([(JTVideoMediaUtils *)self cachedAssetInformationValid])
  {
    v3 = [(JTVideoMediaUtils *)self cachedColorSpace];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGSize)cachedNaturalSize
{
  width = self->_cachedNaturalSize.width;
  height = self->_cachedNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)cachedTransform
{
  v3 = *&self[2].b;
  *&retstr->a = *&self[1].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].d;
  return self;
}

- (void)setCachedTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_cachedTransform.tx = *&a3->tx;
  *&self->_cachedTransform.c = v4;
  *&self->_cachedTransform.a = v3;
}

- (void)setCachedPreciseAssetDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_cachedPreciseAssetDuration.epoch = a3->var3;
  *&self->_cachedPreciseAssetDuration.value = v3;
}

void __54__JTVideoMediaUtils_cacheTrackInformationWithAVAsset___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "disable too long mp3 audio file: %@", &v3, 0xCu);
}

@end