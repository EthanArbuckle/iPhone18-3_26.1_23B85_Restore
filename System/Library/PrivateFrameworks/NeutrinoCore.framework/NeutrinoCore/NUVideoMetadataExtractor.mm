@interface NUVideoMetadataExtractor
+ (BOOL)canProvideMetadataForAVAsset:(id)asset;
- (CGPoint)opticalCenterFromMetadata:(id *)metadata;
- (CGVector)centerMotionVectorFromMetadata:(const FigLivePhotoMetadata *)metadata;
- (CGVector)motionBlurVectorFromMetadata:(const FigLivePhotoMetadata *)metadata;
- (NUVideoMetadataExtractor)init;
- (NUVideoMetadataExtractor)initWithAVAsset:(id)asset;
- (double)trajectoryHomographyFromMetadata:(double)metadata;
- (id)extractMetadata;
@end

@implementation NUVideoMetadataExtractor

- (id)extractMetadata
{
  v63 = *MEMORY[0x1E69E9840];
  v53 = objc_autoreleasePoolPush();
  asset = self->_asset;
  v59 = 0;
  v56 = [MEMORY[0x1E6987E78] assetReaderWithAsset:asset error:&v59];
  v54 = v59;
  [v56 setPreparesMediaDataForRealTimeConsumption:1];
  if (!v54)
  {
    v50 = [objc_alloc(MEMORY[0x1E6987EA8]) initWithTrack:self->_mdataTrack outputSettings:0];
    if ([v56 canAddOutput:?])
    {
      [v56 addOutput:v50];
      v55 = [objc_alloc(MEMORY[0x1E6987E98]) initWithAssetReaderTrackOutput:v50];
      if ([v56 startReading])
      {
        v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:64];
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
        }

        v6 = _NULogger;
        if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.value) = 0;
          _os_log_impl(&dword_1C0184000, v6, OS_LOG_TYPE_DEFAULT, "Starting metadata extraction", &buf, 2u);
        }

        v52 = *MEMORY[0x1E6990A00];
        v51 = *MEMORY[0x1E69909F8];
        v47 = *MEMORY[0x1E695E480];
        v8 = 0.0;
        *&v7 = 138412290;
        v46 = v7;
        *&v7 = 67109120;
        v48 = v7;
        v9 = 0.0;
        while (1)
        {
          v10 = objc_autoreleasePoolPush();
          nextTimedMetadataGroup = [v55 nextTimedMetadataGroup];
          if (nextTimedMetadataGroup)
          {
            break;
          }

LABEL_51:

          objc_autoreleasePoolPop(v10);
          if (!nextTimedMetadataGroup)
          {
            if (_NULogOnceToken != -1)
            {
              dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
            }

            v43 = _NULogger;
            if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.value) = 0;
              _os_log_impl(&dword_1C0184000, v43, OS_LOG_TYPE_DEFAULT, "Finished metadata extraction", &buf, 2u);
            }

            v44 = v49;
            [v56 cancelReading];
            v5 = [v44 copy];

            goto LABEL_68;
          }
        }

        v12 = objc_alloc_init(NUVideoTimedMetadata);
        [(NUVideoTimedMetadata *)v12 setIsMetadataValid:1];
        items = [nextTimedMetadataGroup items];
        firstObject = [items firstObject];

        if (firstObject)
        {
          [firstObject time];
        }

        else
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
          }

          v15 = _NULogger;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            memset(&buf, 0, sizeof(buf));
            v40 = CMTimeCopyDescription(v47, &buf);
            *v60 = v46;
            v61 = v40;
            _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Missing mdata item for time %@", v60, 0xCu);
          }

          [(NUVideoTimedMetadata *)v12 setIsMetadataValid:0];
          memset(&v58, 0, sizeof(v58));
        }

        buf = v58;
        [(NUVideoTimedMetadata *)v12 setTime:&buf, v46];
        identifier = [firstObject identifier];
        v17 = [identifier isEqualToString:v52];

        if ((v17 & 1) == 0)
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
          }

          v18 = _NULogger;
          if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.value) = 0;
            _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "unexpected metadata identifier", &buf, 2u);
          }

          [(NUVideoTimedMetadata *)v12 setIsMetadataValid:0];
        }

        dataType = [firstObject dataType];
        v20 = [dataType isEqualToString:v51];

        if ((v20 & 1) == 0)
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
          }

          v21 = _NULogger;
          if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.value) = 0;
            _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "unexpected metadata data type", &buf, 2u);
          }

          [(NUVideoTimedMetadata *)v12 setIsMetadataValid:0];
        }

        v57 = 0;
        buf.value = 0;
        dataValue = [firstObject dataValue];
        v23 = dataValue;
        [dataValue bytes];
        dataValue2 = [firstObject dataValue];
        [dataValue2 length];
        v25 = FigLivePhotoMetadataComputeDeserializationSize();

        if (v25)
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
          }

          v26 = _NULogger;
          if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
          {
            *v60 = v48;
            LODWORD(v61) = v25;
            _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Failed to compute Live Photo metadata deserialization size (%i)", v60, 8u);
          }
        }

        else
        {
          MEMORY[0x1EEE9AC00]();
          v28 = (&v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
          bzero(v28, buf.value);
          dataValue3 = [firstObject dataValue];
          v30 = dataValue3;
          [dataValue3 bytes];
          dataValue4 = [firstObject dataValue];
          [dataValue4 length];
          v32 = FigLivePhotoMetadataDeserializeIntoBuffer();

          if (!v32)
          {
            if ([(NUVideoTimedMetadata *)v12 isMetadataValid])
            {
              [(NUVideoMetadataExtractor *)self centerMotionVectorFromMetadata:v28];
              v35 = v34;
              v37 = v36;
              [(NUVideoTimedMetadata *)v12 setEstimatedCenterMotion:v34 - v9, v36 - v8];
              [(NUVideoMetadataExtractor *)self motionBlurVectorFromMetadata:v28];
              [(NUVideoTimedMetadata *)v12 setEstimatedMotionBlur:?];
              v9 = v35;
              v8 = v37;
              if (*v28 >= 3)
              {
                v38 = &v28[8 * v28[11]];
                v39 = &v38[8 * v38[13] + 12 + 8 * v38[12] + 8 * v38[14] + 8 * v38[15]];
                [(NUVideoMetadataExtractor *)self trajectoryHomographyFromMetadata:v39 + 16];
                [(NUVideoTimedMetadata *)v12 setTrajectoryHomography:?];
                [(NUVideoTimedMetadata *)v12 setInterpolatedFrameValid:[(NUVideoMetadataExtractor *)self interpolatedFrameValidFromMetadata:v39 + 16]];
                [(NUVideoTimedMetadata *)v12 setInterpolatedFrame:[(NUVideoMetadataExtractor *)self interpolatedFrameFromMetadata:v39 + 16]];
              }
            }

            [v49 addObject:v12];
            goto LABEL_50;
          }

          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
          }

          v33 = _NULogger;
          if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
          {
            *v60 = v48;
            LODWORD(v61) = v32;
            _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Failed to deserialize Live Photo metadata (%i)", v60, 8u);
          }
        }

        [(NUVideoTimedMetadata *)v12 setIsMetadataValid:0];
LABEL_50:

        goto LABEL_51;
      }

      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
      }

      v42 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.value) = 0;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Failed to start reading asset", &buf, 2u);
      }

      v5 = 0;
LABEL_68:
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
      }

      v41 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.value) = 0;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Can't add metadata output for asset", &buf, 2u);
      }

      v5 = 0;
    }

    goto LABEL_70;
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
  }

  v4 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf.value) = 138412290;
    *(&buf.value + 4) = v54;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Error creating asset reader: %@", &buf, 0xCu);
  }

  v5 = 0;
LABEL_70:

  objc_autoreleasePoolPop(v53);

  return v5;
}

- (CGPoint)opticalCenterFromMetadata:(id *)metadata
{
  v3 = *&metadata->var7[1];
  v4 = *&metadata->var7[5];
  result.y = v4;
  result.x = v3;
  return result;
}

- (double)trajectoryHomographyFromMetadata:(double)metadata
{
  if (*a9)
  {
    v12.i64[0] = *(a9 + 4);
    a6.i64[0] = *(a9 + 28);
    v12.i64[1] = *(a9 + 16);
    *&result = vuzp1q_s32(v12, a6).u64[0];
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
    }

    v9 = _NULogger;
    v10 = os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR);
    *&result = 1065353216;
    if (v10)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Invalid trajectory homography, assuming 3x3(1)", buf, 2u);
      *&result = 1065353216;
    }
  }

  return result;
}

- (CGVector)motionBlurVectorFromMetadata:(const FigLivePhotoMetadata *)metadata
{
  if (metadata->var0)
  {
    v5 = vsubq_f64(vaddq_f64(*&self->pxlMetadataTransform.tx, vmlaq_n_f64(vmulq_n_f64(*&self->pxlMetadataTransform.c, metadata->var1.var3), *&self->pxlMetadataTransform.a, metadata->var1.var2)), vaddq_f64(*&self->pxlMetadataTransform.tx, vmlaq_n_f64(vmulq_n_f64(*&self->pxlMetadataTransform.c, *(MEMORY[0x1E695EFF8] + 8)), *&self->pxlMetadataTransform.a, *MEMORY[0x1E695EFF8])));
    v6 = v5.f64[1];
  }

  else
  {
    v10 = v3;
    v11 = v4;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
    }

    v7 = _NULogger;
    v8 = os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR);
    v5.f64[0] = 0.0;
    v6 = 0.0;
    if (v8)
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Could not get v1 metadata from metadata, assuming (0,0)", v9, 2u);
      v5.f64[0] = 0.0;
      v6 = 0.0;
    }
  }

  result.dx = v5.f64[0];
  result.dy = v6;
  return result;
}

- (CGVector)centerMotionVectorFromMetadata:(const FigLivePhotoMetadata *)metadata
{
  if (metadata->var0)
  {
    v5 = vsubq_f64(vaddq_f64(*&self->pxlMetadataTransform.tx, vmlaq_n_f64(vmulq_n_f64(*&self->pxlMetadataTransform.c, *(&metadata->var1.var1 + 1)), *&self->pxlMetadataTransform.a, *&metadata->var1.var1)), vaddq_f64(*&self->pxlMetadataTransform.tx, vmlaq_n_f64(vmulq_n_f64(*&self->pxlMetadataTransform.c, *(MEMORY[0x1E695EFF8] + 8)), *&self->pxlMetadataTransform.a, *MEMORY[0x1E695EFF8])));
    v6 = v5.f64[1];
  }

  else
  {
    v10 = v3;
    v11 = v4;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
    }

    v7 = _NULogger;
    v8 = os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR);
    v5.f64[0] = 0.0;
    v6 = 0.0;
    if (v8)
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Could not get v1 metadata from metadata, assuming (0,0)", v9, 2u);
      v5.f64[0] = 0.0;
      v6 = 0.0;
    }
  }

  result.dx = v5.f64[0];
  result.dy = v6;
  return result;
}

- (NUVideoMetadataExtractor)initWithAVAsset:(id)asset
{
  v35 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v31.receiver = self;
  v31.super_class = NUVideoMetadataExtractor;
  v6 = [(NUVideoMetadataExtractor *)&v31 init];
  objc_storeStrong(v6 + 1, asset);
  v7 = *(v6 + 1);
  v30 = 0;
  v8 = [NUVideoUtilities firstEnabledVideoTrackInAsset:v7 error:&v30];
  v9 = v30;
  v10 = *(v6 + 2);
  *(v6 + 2) = v8;

  if (!*(v6 + 2))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
    }

    v20 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 138412290;
    v34 = v9;
    v21 = "Can't find enabled video track in asset: %@";
    v22 = v20;
    v23 = 12;
    goto LABEL_28;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  tracks = [assetCopy tracks];
  v12 = [tracks countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v12)
  {
    v13 = *v27;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(tracks);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        if (isLivePhotoMetadataTrack(v15))
        {
          objc_storeStrong(v6 + 3, v15);
          goto LABEL_12;
        }
      }

      v12 = [tracks countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (!*(v6 + 3))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
    }

    v24 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v21 = "Asset does not contain Live Photo metadata track";
LABEL_27:
    v22 = v24;
    v23 = 2;
LABEL_28:
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
LABEL_29:
    v19 = 0;
    goto LABEL_30;
  }

  *(v6 + 5) = 0;
  *(v6 + 6) = 0;
  *(v6 + 4) = 0x3FF0000000000000;
  *(v6 + 56) = xmmword_1C03C28E0;
  *(v6 + 9) = 0x3FF0000000000000;
  [NUVideoUtilities encodedPixelSizeOfTrack:*(v6 + 2) oriented:0];
  *(v6 + 11) = 0;
  *(v6 + 12) = 0;
  *(v6 + 10) = 0x3FF0000000000000;
  *(v6 + 104) = xmmword_1C03C28E0;
  *(v6 + 15) = v16;
  extractMetadata = [v6 extractMetadata];
  v18 = *(v6 + 16);
  *(v6 + 16) = extractMetadata;

  if (![*(v6 + 16) count])
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_21199);
    }

    v24 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v21 = "Track does not contain V3 metadata";
    goto LABEL_27;
  }

  v19 = v6;
LABEL_30:

  return v19;
}

- (NUVideoMetadataExtractor)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init is not a valid initializer" userInfo:0];
  objc_exception_throw(v2);
}

+ (BOOL)canProvideMetadataForAVAsset:(id)asset
{
  assetCopy = asset;
  v4 = [[NUVideoMetadataExtractor alloc] initWithAVAsset:assetCopy];
  timedMetadataArray = [(NUVideoMetadataExtractor *)v4 timedMetadataArray];
  v6 = timedMetadataArray != 0;

  return v6;
}

@end