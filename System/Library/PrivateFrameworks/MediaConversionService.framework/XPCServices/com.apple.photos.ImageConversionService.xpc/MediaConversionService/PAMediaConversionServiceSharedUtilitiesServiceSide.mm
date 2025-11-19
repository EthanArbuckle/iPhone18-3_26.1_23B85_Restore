@interface PAMediaConversionServiceSharedUtilitiesServiceSide
+ (BOOL)isOutputCorruptionLikelyComparingFileSizeOfInputURL:(id)a3 toOutputURL:(id)a4;
+ (BOOL)isOutputCorruptionLikelyUsingSSIMOfInputURL:(id)a3 toOutputURL:(id)a4;
+ (CGImage)newScaledImageForImageRef:(CGImage *)a3 inputSize:(PFIntSize_st)a4 outputSize:(PFIntSize_st)a5 sx:(double)a6 sy:(double)a7 orientation:(int64_t)a8 colorspace:(CGColorSpace *)space;
+ (CGImage)newScaledImageForImageRef:(CGImage *)a3 scaleFactor:(double)a4 orientation:(int64_t)a5 colorspace:(CGColorSpace *)a6;
+ (CGSize)imageSizeForImageData:(id)a3;
+ (id)adjustmentInformationForComposition:(id)a3 error:(id *)a4;
+ (id)compositionForConversionJob:(id)a3 error:(id *)a4;
+ (id)compositionForPhotosAdjustmentInformation:(id)a3 secondaryDataURL:(id)a4 error:(id *)a5;
+ (id)emptyGenericCompositionWithAdjustmentForOrientation:(int64_t)a3;
+ (id)exporterImageOptionsForScaleFactor:(double)a3 maximumPixelCount:(int64_t)a4 metadataPolicy:(id)a5 shouldApplyOrientationTransform:(BOOL)a6 outputFileType:(id)a7;
+ (id)exporterVideoOptionsForScaleFactor:(double)a3 maximumPixelCount:(int64_t)a4;
+ (id)imageDataForPhotosAdjustmentsComposition:(id)a3 source:(id)a4 exporterImageOptions:(id)a5 outOutputSize:(CGSize *)a6 job:(id)a7;
+ (id)loadCompositionFrom:(id)a3 formatIdentifier:(id)a4 formatVersion:(id)a5 secondaryDataURL:(id)a6 error:(id *)a7;
+ (id)scalePolicyForScaleFactor:(double)a3 maximumPixelCount:(int64_t)a4;
+ (id)temporaryDestinationURLCollectionForFinalDestinationURLCollection:(id)a3 inParentDirectoryURL:(id)a4;
+ (id)temporaryFilesDirectoryURLForConversionTaskIdentifier:(id)a3 error:(id *)a4;
+ (void)checkConversionResultForOutputCorruptionAndMarkJobAsFailed:(id)a3;
+ (void)configureSourcesForComposition:(id)a3 fromPhotosAdjustmentsJob:(id)a4;
+ (void)executeConversionJob:(id)a3;
+ (void)renderPhotosAdjustmentsComposition:(id)a3 forConversionJob:(id)a4;
@end

@implementation PAMediaConversionServiceSharedUtilitiesServiceSide

+ (id)temporaryFilesDirectoryURLForConversionTaskIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = NSTemporaryDirectory();
  v7 = +[PFMediaUtilities protectedTemporaryItemsSubdirectoryName];
  v8 = [v6 stringByAppendingPathComponent:v7];

  v9 = [NSString stringWithFormat:@"com.apple.photos.mediaconversion-%d-%@", getpid(), v5];

  v10 = [v8 stringByAppendingPathComponent:v9];

  v11 = [NSURL fileURLWithPath:v10 isDirectory:1];
  v12 = +[NSFileManager defaultManager];
  v13 = [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:a4];
  v14 = 0;
  if (v13)
  {
    v14 = v11;
  }

  return v14;
}

+ (id)temporaryDestinationURLCollectionForFinalDestinationURLCollection:(id)a3 inParentDirectoryURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:2091 description:{@"Invalid parameter not satisfying: %@", @"finalDestinationURLCollection"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:2092 description:{@"Invalid parameter not satisfying: %@", @"parentDirectoryURL"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100014724;
  v17[3] = &unk_10003DA08;
  v18 = v9;
  v10 = objc_opt_new();
  v19 = v10;
  v11 = v9;
  [v7 enumerateResourceURLs:v17];
  v12 = v19;
  v13 = v10;

  return v10;
}

+ (CGSize)imageSizeForImageData:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:2077 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v17 = kCGImageSourceShouldCache;
  v18 = &__kCFBooleanFalse;
  v6 = CGImageSourceCreateWithData(v5, [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1]);
  if (v6)
  {
    v7 = v6;
    v8 = CGImageSourceCopyPropertiesAtIndex(v6, 0, 0);
    v9 = [(__CFDictionary *)v8 objectForKeyedSubscript:kCGImagePropertyPixelWidth];
    width = [v9 integerValue];
    v11 = [(__CFDictionary *)v8 objectForKeyedSubscript:kCGImagePropertyPixelHeight];
    height = [v11 integerValue];

    CFRelease(v7);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create image source from output data", buf, 2u);
    }

    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

+ (CGImage)newScaledImageForImageRef:(CGImage *)a3 scaleFactor:(double)a4 orientation:(int64_t)a5 colorspace:(CGColorSpace *)a6
{
  if (!a3)
  {
    return 0;
  }

  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v13 = IPAOrientationTransformIntegralImageSize();
  v15 = v14;
  if (a4 < 1.0)
  {
    v16 = [IPAImageSizePolicy scalePolicyWithScale:a4];
    [v16 transformSize:{v13, v15}];
    v13 = llround(v17);
    v15 = llround(v18);
  }

  if (!v13 || !v15)
  {
    return 0;
  }

  v19 = 1.0;
  if (a4 <= 1.0)
  {
    v19 = a4;
  }

  return [a1 newScaledImageForImageRef:a3 inputSize:Width outputSize:Height sx:v13 sy:v15 orientation:a5 colorspace:{v19, v19, a6}];
}

+ (CGImage)newScaledImageForImageRef:(CGImage *)a3 inputSize:(PFIntSize_st)a4 outputSize:(PFIntSize_st)a5 sx:(double)a6 sy:(double)a7 orientation:(int64_t)a8 colorspace:(CGColorSpace *)space
{
  var1 = a4.var1;
  var0 = a4.var0;
  v15 = CGBitmapContextCreate(0, a5.var0, a5.var1, 8uLL, (4 * a5.var0 + 15) & 0xFFFFFFFFFFFFFFF0, space, 2u);
  if (v15)
  {
    v16 = v15;
    CGContextSetInterpolationQuality(v15, kCGInterpolationHigh);
    CGContextScaleCTM(v16, a6, a7);
    if (a8 == 1)
    {
      v17 = var0;
      v18 = var1;
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      *buf = 0u;
      v17 = var0;
      v18 = var1;
      IPAOrientationMakeTransformWithSize();
      memset(&v21, 0, sizeof(v21));
      CGContextConcatCTM(v16, &v21);
    }

    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = v17;
    v25.size.height = v18;
    CGContextDrawImage(v16, v25, a3);
    Image = CGBitmapContextCreateImage(v16);
    CGContextRelease(v16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create output bitmap context", buf, 2u);
    }

    return 0;
  }

  return Image;
}

+ (id)imageDataForPhotosAdjustmentsComposition:(id)a3 source:(id)a4 exporterImageOptions:(id)a5 outOutputSize:(CGSize *)a6 job:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if ([v11 mediaType] == 1)
  {
    v15 = v14;
    *buf = 0;
    v35 = buf;
    v36 = 0x3032000000;
    v37 = sub_10000F5EC;
    v38 = sub_10000F5FC;
    v39 = 0;
    v16 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &stru_10003D9E0);
    v17 = objc_alloc_init(PICompositionExporter);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100014F7C;
    v31[3] = &unk_10003D998;
    v33 = buf;
    v18 = v16;
    v32 = v18;
    [v17 exportImageToDataWithComposition:v11 options:v13 completion:v31];
    v29 = v17;
    dispatch_block_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    v19 = *(v35 + 5);
    v30 = 0;
    v20 = [v19 result:&v30];
    v21 = v30;
    if (v20)
    {
      if (a6)
      {
        v28 = v12;
        v22 = [v20 geometry];
        v23 = [v22 scaledSize];
        v24 = [v20 geometry];
        [v24 scaledSize];
        a6->width = v23;
        a6->height = v25;

        v12 = v28;
        v14 = v15;
      }

      v26 = [v20 data];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *v40 = 138543362;
        v41 = v21;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to render adjustments to data destination: %{public}@", v40, 0xCu);
      }

      v26 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Multi-output adjustments conversions can only be rendered to URL collections, not data", buf, 2u);
    }

    v26 = 0;
  }

  return v26;
}

+ (id)exporterVideoOptionsForScaleFactor:(double)a3 maximumPixelCount:(int64_t)a4
{
  v6 = objc_alloc_init(PICompositionExporterVideoOptions);
  if (a4)
  {
    v7 = [[NUPixelCountScalePolicy alloc] initWithTargetPixelCount:a4];
  }

  else
  {
    if (a3 == 1.0)
    {
      goto LABEL_6;
    }

    v8 = [NUFixedScalePolicy alloc];
    v9 = NUScaleFromDouble();
    v7 = [v8 initWithScale:{v9, v10}];
  }

  v11 = v7;
  [v6 setScalePolicy:v7];

LABEL_6:
  [v6 setApplyVideoOrientationAsMetadata:1];

  return v6;
}

+ (id)scalePolicyForScaleFactor:(double)a3 maximumPixelCount:(int64_t)a4
{
  if (a4)
  {
    v4 = [[NUPixelCountScalePolicy alloc] initWithTargetPixelCount:a4];
  }

  else if (a3 == 1.0)
  {
    v4 = 0;
  }

  else
  {
    v5 = [NUFixedScalePolicy alloc];
    v6 = NUScaleFromDouble();
    v4 = [v5 initWithScale:{v6, v7}];
  }

  return v4;
}

+ (id)exporterImageOptionsForScaleFactor:(double)a3 maximumPixelCount:(int64_t)a4 metadataPolicy:(id)a5 shouldApplyOrientationTransform:(BOOL)a6 outputFileType:(id)a7
{
  v8 = a6;
  v13 = a5;
  v14 = a7;
  if (!v14)
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1922 description:{@"Invalid parameter not satisfying: %@", @"outputFileType"}];
  }

  v15 = objc_alloc_init(PICompositionExporterImageOptions);
  v16 = [PFUniformTypeUtilities typeWithIdentifier:v14];
  if ([v16 conformsToType:UTTypeJPEG])
  {
    v17 = objc_alloc_init(NUImageExportFormatJPEG);
    [v17 setCompressionQuality:0.800000012];
LABEL_7:
    [v15 setImageExportFormat:v17];

    v18 = [a1 scalePolicyForScaleFactor:a4 maximumPixelCount:a3];
    if (v18)
    {
      [v15 setScalePolicy:v18];
    }

    if (v13)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000153EC;
      v22[3] = &unk_10003D9C0;
      v23 = v13;
      [v15 setMetadataProcessor:v22];
    }

    [v15 setApplyImageOrientationAsMetadata:!v8];
    [v15 setOptimizeForBackgroundProcessing:1];
    [v15 setEnableHDR:1];
    v19 = v15;

    goto LABEL_15;
  }

  if ([v16 conformsToType:UTTypeHEIC])
  {
    v17 = objc_alloc_init(NUImageExportFormatHEIF);
    goto LABEL_7;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v25 = v14;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unexpected output file type: %@", buf, 0xCu);
  }

  v19 = 0;
LABEL_15:

  return v19;
}

+ (void)renderPhotosAdjustmentsComposition:(id)a3 forConversionJob:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v59 = +[NSAssertionHandler currentHandler];
    [v59 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1795 description:{@"Invalid parameter not satisfying: %@", @"job"}];
  }

  v9 = [v8 outputFileType];

  if (!v9)
  {
    v60 = +[NSAssertionHandler currentHandler];
    [v60 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1796 description:{@"Invalid parameter not satisfying: %@", @"job.outputFileType"}];
  }

  [a1 registerPhotosAdjustmentsSubsystems];
  [v8 scaleFactor];
  v11 = v10;
  v12 = [v8 requestedMaximumPixelCount];
  v13 = [v8 metadataPolicy];
  v14 = [v8 applySourceOrientationTransform];
  v15 = [v8 outputFileType];
  v16 = [a1 exporterImageOptionsForScaleFactor:v12 maximumPixelCount:v13 metadataPolicy:v14 shouldApplyOrientationTransform:v15 outputFileType:v11];

  if (!v16)
  {
    [v8 setStatus:2];
    v82 = NSLocalizedDescriptionKey;
    v83 = @"Unable to determine image options";
    v69 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v28 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v69];
    [v8 setError:v28];
    goto LABEL_70;
  }

  v69 = [[NUPriority alloc] initWithLevel:1];
  [v16 setPriority:?];
  v17 = [v7 mediaType];
  v70 = +[PIPhotoEditHelper validatedCompositionCopyForComposition:mediaType:](PIPhotoEditHelper, "validatedCompositionCopyForComposition:mediaType:", v7, [v7 mediaType]);

  v18 = [v70 mediaType];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    *&buf[4] = v17;
    *&buf[12] = 2048;
    *&buf[14] = v18;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Render photos adjustment composition: input/output media types %ld/%ld", buf, 0x16u);
  }

  v20 = v17 == 3 && v18 == 2;
  if ((v17 | 2) != 3 || (v17 == v18 ? (v21 = 1) : (v21 = v20), (v21 & 1) == 0))
  {
    v22 = +[NSAssertionHandler currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1821 description:{@"Unexpected input/output media type combination %ld/%ld", v17, v18}];
  }

  v23 = os_signpost_id_make_with_pointer(&_os_log_default, a1);
  v24 = &_os_log_default;
  spid = v23;
  v25 = v23 - 1;
  if (v25 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
  {
    v26 = [v8 requestIdentifier];
    *buf = 138543362;
    *&buf[4] = v26;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_BEGIN, spid, "com.apple.photos.mediaconversion.service.neutrino", "Media conversion request %{public}@", buf, 0xCu);
  }

  v27 = [v8 destinationResourceURLCollection];
  v28 = v27;
  if (v27)
  {
    v68 = [v27 resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];
    if (!v68)
    {
      v61 = +[NSAssertionHandler currentHandler];
      [v61 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1830 description:@"Missing destination image URL"];
    }

    if ((v18 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v67 = [v28 resourceURLForRole:@"PAMediaConversionResourceRoleVideoComplement"];
      if (v67)
      {
        v29 = 0;
      }

      else
      {
        v29 = v20;
      }

      if (!v29)
      {
LABEL_33:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v79 = sub_10000F5EC;
        v80 = sub_10000F5FC;
        v81 = 0;
        v73[0] = _NSConcreteStackBlock;
        v73[1] = 3221225472;
        v73[2] = sub_100015F4C;
        v73[3] = &unk_10003D998;
        v75 = buf;
        block = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &stru_10003D970);
        v74 = block;
        v65 = objc_retainBlock(v73);
        v66 = objc_alloc_init(PICompositionExporter);
        if (v18 == 3)
        {
          v31 = objc_opt_new();
          [v31 setPrimaryURL:v68];
          [v31 setVideoComplementURL:v67];
          [v31 setPriority:v69];
          [v31 setOptimizeForBackgroundProcessing:1];
          [v31 setApplyImageOrientationAsMetadata:{objc_msgSend(v8, "applySourceOrientationTransform") ^ 1}];
          [v31 setApplyVideoOrientationAsMetadata:1];
          [v8 scaleFactor];
          v33 = [a1 scalePolicyForScaleFactor:objc_msgSend(v8 maximumPixelCount:{"requestedMaximumPixelCount"), v32}];
          if (v33)
          {
            [v31 setScalePolicy:v33];
          }

          v34 = dispatch_get_global_queue(0, 0);
          v35 = [v66 exportComposition:v70 options:v31 completionQueue:v34 completion:v65];
        }

        else
        {
          if (!v20)
          {
            [v66 exportImageToURL:v68 composition:v70 options:v16 completion:v65];
LABEL_44:
            dispatch_block_wait(block, 0xFFFFFFFFFFFFFFFFLL);
            v39 = &_os_log_default;
            if (v25 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
            {
              *v76 = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_BEGIN, spid, "com.apple.photos.mediaconversion.service.neutrino.postprocessing", "", v76, 2u);
            }

            v40 = *(*&buf[8] + 40);
            v72 = 0;
            v41 = [v40 result:&v72];
            v42 = v72;
            if (v41)
            {
              if (v20)
              {
                v43 = [v41 geometry];
                v44 = [v43 scaledSize];
                v45 = [v41 geometry];
                [v45 scaledSize];
                v62 = v46;

                v47 = [v8 outputFileType];
                width = CGSizeZero.width;
                height = CGSizeZero.height;
                v71 = v42;
                LOBYTE(v45) = [PAMediaConversionServiceImagingUtilities generatePosterFrameExportForVideoURL:v67 destinationURL:v68 maximumSize:v47 outputFileType:&v71 error:CGSizeZero.width, height];
                v50 = v71;

                if (v45)
                {
                  width = v44;
                  height = v62;
                  v51 = 1;
                }

                else
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *v76 = 138543362;
                    v77 = v50;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to render separate still image output for live photo -> video transformation: %{public}@", v76, 0xCu);
                  }

                  v51 = 2;
                }

                v42 = v50;
              }

              else
              {
                v52 = [v41 geometry];
                v53 = [v52 scaledSize];
                v54 = [v41 geometry];
                [v54 scaledSize];
                v56 = v55;

                width = v53;
                height = v56;
                v51 = 1;
              }

              [v8 setStatus:v51];
              [v8 setOutputImageSize:{width, height}];
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *v76 = 138543362;
                v77 = v42;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to render adjustments to URL destination: %{public}@", v76, 0xCu);
              }

              [v8 setStatus:2];
              [v8 setError:v42];
            }

            v57 = &_os_log_default;
            if (v25 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
            {
              *v76 = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_END, spid, "com.apple.photos.mediaconversion.service.neutrino.postprocessing", "", v76, 2u);
            }

            _Block_object_dispose(buf, 8);
            goto LABEL_66;
          }

          [v8 scaleFactor];
          v31 = [a1 exporterVideoOptionsForScaleFactor:objc_msgSend(v8 maximumPixelCount:{"requestedMaximumPixelCount"), v37}];
          v38 = [v66 exportVideoToURL:v67 composition:v70 options:v31 completion:v65];
        }

        goto LABEL_44;
      }

      v30 = +[NSAssertionHandler currentHandler];
      [v30 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1836 description:@"Live Photo conversion producing video output must provide image and video output URLs"];
    }

    v67 = 0;
    goto LABEL_33;
  }

  v68 = [v70 objectForKeyedSubscript:@"source"];
  *buf = CGSizeZero;
  v36 = [a1 imageDataForPhotosAdjustmentsComposition:v70 source:v68 exporterImageOptions:v16 outOutputSize:buf job:v8];
  if (v36)
  {
    [v8 setStatus:1];
    [v8 setDestinationData:v36];
    [v8 setOutputImageSize:{*buf, *&buf[8]}];
  }

  else
  {
    [v8 setStatus:2];
  }

LABEL_66:
  v58 = &_os_log_default;
  if (v25 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(&_os_log_default))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_END, spid, "com.apple.photos.mediaconversion.service.neutrino", "", buf, 2u);
  }

  v7 = v70;
LABEL_70:
}

+ (void)configureSourcesForComposition:(id)a3 fromPhotosAdjustmentsJob:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 sourceResourceURLCollection];
  v8 = [v7 typeIdentifierForResourceURLWithRole:@"PAMediaConversionResourceRoleMainResource"];
  if (!v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v16 = [v7 logMessageSummary];
      *buf = 138412290;
      v23 = v16;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to determine type identifier of main resource: %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v21[0] = @"PAMediaConversionResourceRoleMainResource";
  v21[1] = @"PAMediaConversionResourceRoleVideoComplement";
  v9 = [NSArray arrayWithObjects:v21 count:2];
  v10 = [v7 containsAllRoles:v9];

  if (v10)
  {
    v11 = [v6 mainSourceResourceURL];
    v12 = [PIPhotoEditHelper imageSourceWithURL:v11 type:v8 useEmbeddedPreview:0];

    v13 = [v7 resourceURLForRole:@"PAMediaConversionResourceRoleVideoComplement"];
    v14 = [PIPhotoEditHelper videoSourceWithURL:v13];

    v15 = [PIPhotoEditHelper livePhotoSourceWithPhotoSource:v12 videoSource:v14];
  }

  else
  {
    v20 = @"PAMediaConversionResourceRoleMainResource";
    v17 = [NSArray arrayWithObjects:&v20 count:1];
    v18 = [v7 containsAllRoles:v17];

    if (!v18)
    {
      goto LABEL_13;
    }

    v12 = [v6 mainSourceResourceURL];
    v15 = [PIPhotoEditHelper imageSourceWithURL:v12 type:v8 useEmbeddedPreview:0];
  }

  if (!v15)
  {
LABEL_13:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to determine photos adjustments request main source configuration", buf, 2u);
    }

LABEL_15:
    [v6 setStatus:2];
    goto LABEL_16;
  }

  [v5 setObject:v15 forKeyedSubscript:@"source"];
  if ([v6 hasLivePhotoSourceURLs])
  {
    v19 = 3;
  }

  else
  {
    v19 = 1;
  }

  [v5 setMediaType:v19];

LABEL_16:
}

+ (id)loadCompositionFrom:(id)a3 formatIdentifier:(id)a4 formatVersion:(id)a5 secondaryDataURL:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (!a7)
  {
    v53 = +[NSAssertionHandler currentHandler];
    [v53 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1688 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
  }

  if (([PIPhotoEditHelper canInterpretDataWithFormatIdentifier:v14 formatVersion:v15]& 1) == 0)
  {
    v48 = [NSError alloc];
    v79 = NSLocalizedFailureReasonErrorKey;
    v49 = [NSString stringWithFormat:@"Cannot interpret data with identifier (%@) and format version (%@)", v14, v15];
    v80 = v49;
    v50 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    *a7 = [v48 initWithDomain:@"PICompositionSerializerDomain" code:0 userInfo:v50];

LABEL_29:
    v47 = 0;
    goto LABEL_30;
  }

  if (([v14 isEqualToString:PIPhotoEditFormatIdentifierVideoSloMo] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", PIPhotoEditFormatIdentifierVideo))
  {
    v56 = v16;
    v17 = objc_opt_new();
    v58 = v13;
    v59 = v14;
    v57 = v15;
    v55 = a7;
    [IPASerializationManager deserialize:v13 originator:IPAAdjustmentOriginator_Unknown format:v14 formatVersion:v15 error:a7];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v54 = v67 = 0u;
    v18 = [v54 adjustmentStack];
    v19 = [v18 adjustments];

    v20 = v19;
    v21 = [v19 countByEnumeratingWithState:&v64 objects:v78 count:16];
    if (!v21)
    {
      goto LABEL_27;
    }

    v22 = v21;
    v23 = *v65;
    v24 = IPAPhotoAdjustment_SloMo_Identifier;
    v62 = IPAPhotoAdjustment_PosterFrame_Identifier;
    v63 = IPAVideoAdjustment_Trim_Identifier;
    v60 = IPAVideoAdjustment_PosterFrame_Key_Time_Legacy;
    v61 = IPAPhotoAdjustment_PosterFrame_Key_Time;
    while (1)
    {
      v25 = 0;
      do
      {
        if (*v65 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v64 + 1) + 8 * v25);
        v27 = [v26 identifier];
        v28 = [v27 isEqualToString:v24];

        if (v28)
        {
          v29 = objc_opt_new();
          [v29 setObject:@"SlowMotion" forKeyedSubscript:@"identifier"];
LABEL_15:
          v33 = [v26 settings];
          [v29 setObject:v33 forKeyedSubscript:@"settings"];

          [v29 setObject:&__kCFBooleanTrue forKeyedSubscript:@"enabled"];
          [v17 addObject:v29];

          goto LABEL_16;
        }

        v30 = [v26 identifier];
        v31 = [v30 isEqualToString:v63];

        if (v31)
        {
          v29 = objc_opt_new();
          v32 = [v26 identifier];
          [v29 setObject:v32 forKeyedSubscript:@"identifier"];

          goto LABEL_15;
        }

        v34 = [v26 identifier];
        v35 = [v34 isEqualToString:v62];

        if (v35)
        {
          v36 = v20;
          v37 = [v26 settings];
          v38 = [v37 objectForKeyedSubscript:v61];
          if (v38)
          {
            v39 = v38;

LABEL_22:
            v41 = objc_opt_new();
            [v41 setObject:@"VideoPosterFrame" forKeyedSubscript:@"identifier"];
            v76 = @"time";
            v77 = v39;
            v42 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
            [v41 setObject:v42 forKeyedSubscript:@"settings"];

            [v41 setObject:&__kCFBooleanTrue forKeyedSubscript:@"enabled"];
            [v17 addObject:v41];

LABEL_23:
            v20 = v36;
            goto LABEL_16;
          }

          v40 = [v26 settings];
          v39 = [v40 objectForKeyedSubscript:v60];

          if (v39)
          {
            goto LABEL_22;
          }

          v20 = v36;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v43 = [v26 identifier];
            v44 = [v26 version];
            v45 = [v26 settings];
            *buf = 138413058;
            v69 = v59;
            v70 = 2112;
            v71 = v43;
            v72 = 2112;
            v73 = v44;
            v74 = 2112;
            v75 = v45;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "PosterFrame adjustment has unexpected format, will not migrate: %@, %@, %@, %@", buf, 0x2Au);

            goto LABEL_23;
          }
        }

LABEL_16:
        v25 = v25 + 1;
      }

      while (v22 != v25);
      v46 = [v20 countByEnumeratingWithState:&v64 objects:v78 count:16];
      v22 = v46;
      if (!v46)
      {
LABEL_27:

        v14 = v59;
        v15 = v57;
        v47 = [PICompositionSerializer deserializeCompositionFromAdjustments:v17 metadata:&__NSDictionary0__struct formatIdentifier:v59 formatVersion:v57 error:v55];

        v13 = v58;
        v16 = v56;
        goto LABEL_30;
      }
    }
  }

  if (v16)
  {
    v52 = [PICompositionSidecarData loadFromURL:v16 error:a7];
    if (!v52)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v52 = 0;
  }

  v47 = [PICompositionSerializer deserializeCompositionFromData:v13 formatIdentifier:v14 formatVersion:v15 sidecarData:v52 error:a7];

LABEL_30:

  return v47;
}

+ (id)compositionForConversionJob:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1667 description:{@"Invalid parameter not satisfying: %@", @"job != nil"}];
  }

  v8 = [v7 adjustmentInformation];
  v9 = [v7 adjustmentSidecarDataResourceURL];
  v10 = [a1 compositionForPhotosAdjustmentInformation:v8 secondaryDataURL:v9 error:a4];

  return v10;
}

+ (id)compositionForPhotosAdjustmentInformation:(id)a3 secondaryDataURL:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [v9 objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentDataKey"];
  if (!v11)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1648 description:{@"Invalid parameter not satisfying: %@", @"adjustmentData"}];
  }

  v12 = [v9 objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentFormatIdentifierKey"];
  if (!v12)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1650 description:{@"Invalid parameter not satisfying: %@", @"formatIdentifier"}];
  }

  v13 = [v9 objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentFormatVersionKey"];
  if (!v13)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1652 description:{@"Invalid parameter not satisfying: %@", @"formatVersion"}];
  }

  v21 = 0;
  v14 = [a1 loadCompositionFrom:v11 formatIdentifier:v12 formatVersion:v13 secondaryDataURL:v10 error:&v21];
  v15 = v21;
  if (!v14)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      if (!a5)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    *buf = 138543362;
    v23 = v15;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create photos adjustment composition: %{public}@", buf, 0xCu);
    if (a5)
    {
LABEL_10:
      v16 = v15;
      *a5 = v15;
    }
  }

LABEL_11:

  return v14;
}

+ (id)adjustmentInformationForComposition:(id)a3 error:(id *)a4
{
  v4 = [PICompositionSerializer adjustmentInformationForComposition:a3 error:a4];
  v5 = [v4 mutableCopy];

  v6 = [v5 objectForKeyedSubscript:PIAssetAdjustmentsDataBlobKey];
  [v5 setObject:v6 forKeyedSubscript:@"PAMediaConversionServiceAdjustmentDataKey"];

  v7 = [v5 objectForKeyedSubscript:PIAssetAdjustmentsFormatIdentifierKey];
  [v5 setObject:v7 forKeyedSubscript:@"PAMediaConversionServiceAdjustmentFormatIdentifierKey"];

  v8 = [v5 objectForKeyedSubscript:PIAssetAdjustmentsFormatVersionKey];
  [v5 setObject:v8 forKeyedSubscript:@"PAMediaConversionServiceAdjustmentFormatVersionKey"];

  return v5;
}

+ (id)emptyGenericCompositionWithAdjustmentForOrientation:(int64_t)a3
{
  if ((IPAOrientationIsValid() & 1) == 0)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1566 description:{@"Invalid parameter not satisfying: %@", @"IPAOrientationIsValid(orientation)"}];
  }

  v6 = +[PISchema registeredPhotosSchemaIdentifier];
  v7 = [[NUGenericComposition alloc] initWithIdentifier:v6];
  v8 = [NUGenericAdjustment alloc];
  v9 = [[NUIdentifier alloc] initWithName:@"Orientation"];
  v10 = [v8 initWithIdentifier:v9];

  v11 = [NSNumber numberWithInteger:a3];
  [v10 setObject:v11 forKeyedSubscript:@"value"];

  [v7 setObject:v10 forKeyedSubscript:@"orientation"];

  return v7;
}

+ (BOOL)isOutputCorruptionLikelyUsingSSIMOfInputURL:(id)a3 toOutputURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [CIImage imageWithContentsOfURL:v5 options:0];
  v8 = [CIImage imageWithContentsOfURL:v6 options:0];
  PFImageMetricComputeSSIMForCIImage();
  if (NAN >= 94.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 path];
      v10 = [v6 path];
      *buf = 134218754;
      v13 = 0x7FF8000000000000;
      v14 = 2048;
      v15 = 0x4057800000000000;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "SSIM %f >= %f for conversion of %@ to %@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v13 = 0x7FF8000000000000;
    v14 = 2048;
    v15 = 0x4057800000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Conversion output corruption likely based on SSIM: %f < %f", buf, 0x16u);
  }

  return NAN < 94.0;
}

+ (BOOL)isOutputCorruptionLikelyComparingFileSizeOfInputURL:(id)a3 toOutputURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v40[0] = NSURLFileSizeKey;
  v40[1] = NSURLTypeIdentifierKey;
  v7 = [NSArray arrayWithObjects:v40 count:2];
  [v5 removeCachedResourceValueForKey:NSURLFileSizeKey];
  v31 = 0;
  v8 = [v5 resourceValuesForKeys:v7 error:&v31];
  v9 = v31;
  if (v8)
  {
    v28 = v5;
    v10 = [v8 objectForKeyedSubscript:NSURLFileSizeKey];
    v26 = [v10 unsignedLongLongValue];

    v11 = [v8 objectForKeyedSubscript:NSURLTypeIdentifierKey];
    v12 = [PFUniformTypeUtilities typeWithIdentifier:v11];

    [v6 removeCachedResourceValueForKey:NSURLFileSizeKey];
    v29 = v7;
    v30 = v9;
    v13 = [v6 resourceValuesForKeys:v7 error:&v30];
    v27 = v30;

    if (!v13)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v25 = [v6 path];
        *buf = 138412546;
        v33 = *&v25;
        v34 = 2112;
        v9 = v27;
        v35 = v27;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to read output image file attributes for %@: %@", buf, 0x16u);

        v20 = 0;
        v18 = v12;
        v5 = v28;
        goto LABEL_21;
      }

      v20 = 0;
      v18 = v12;
      v5 = v28;
LABEL_20:
      v9 = v27;
LABEL_21:

      v7 = v29;
      goto LABEL_22;
    }

    v14 = [v13 objectForKeyedSubscript:NSURLFileSizeKey];
    v15 = [v14 unsignedLongLongValue];

    v16 = [v13 objectForKeyedSubscript:NSURLTypeIdentifierKey];
    v17 = [PFUniformTypeUtilities typeWithIdentifier:v16];

    v18 = v12;
    if ([v12 isEqual:v17])
    {
      v19 = (v15 - v26) / v26 * 100.0;
      v5 = v28;
      if (fabs(v19) > 10.0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218752;
          v33 = (v15 - v26) / v26 * 100.0;
          v34 = 2048;
          v35 = 0x4024000000000000;
          v36 = 2048;
          v37 = v26;
          v38 = 2048;
          v39 = v15;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Conversion output corruption possible based on input/output file size comparison: abs(%f) > %f, %llu/%llu", buf, 0x2Au);
        }

        v20 = 1;
        goto LABEL_19;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v21 = [v28 path];
        v22 = [v6 path];
        *buf = 134218754;
        v33 = v19;
        v34 = 2048;
        v35 = 0x4024000000000000;
        v36 = 2112;
        v37 = v21;
        v38 = 2112;
        v39 = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "File size percentage change abs(%f) < %f for conversion of %@ to %@", buf, 0x2Au);
        goto LABEL_17;
      }
    }

    else
    {
      v5 = v28;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v21 = [v28 path];
        v22 = [v6 path];
        *buf = 138413058;
        v33 = *&v21;
        v34 = 2112;
        v35 = v18;
        v36 = 2112;
        v37 = v22;
        v38 = 2112;
        v39 = v17;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to check for output corruption based on file size because the file types are different: %@ (%@) / %@ (%@)", buf, 0x2Au);
LABEL_17:
      }
    }

    v20 = 0;
LABEL_19:

    goto LABEL_20;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v24 = [v5 path];
    *buf = 138412546;
    v33 = *&v24;
    v34 = 2112;
    v35 = v9;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to read input image file attributes for %@: %@", buf, 0x16u);
  }

  v20 = 0;
LABEL_22:

  return v20;
}

+ (void)checkConversionResultForOutputCorruptionAndMarkJobAsFailed:(id)a3
{
  v5 = a3;
  v6 = [v5 mainSourceResourceURL];
  if (v6)
  {
    v7 = [v5 destinationResourceURLCollection];
    v8 = [v7 resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];

    if (!v8)
    {
      v15 = +[NSAssertionHandler currentHandler];
      [v15 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1452 description:{@"Unexpected nil output url: %@/%@", v6, 0}];
    }

    v9 = [a1 isOutputCorruptionLikelyComparingFileSizeOfInputURL:v6 toOutputURL:v8];
    v10 = +[NSUserDefaults standardUserDefaults];
    v11 = [v10 objectForKey:@"MediaConversionServiceUseSSIMOutputCorruptionCheck"];

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_9;
    }

    v12 = [v11 BOOLValue];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *v17 = 0;
      *&v17[4] = 1024;
      *&v17[6] = v12;
      *v18 = 2112;
      *&v18[2] = @"MediaConversionServiceUseSSIMOutputCorruptionCheck";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Overriding enabled state of output corruption SSIM check from %d to %d because %@ user default key is set", buf, 0x18u);
    }

    if (v12)
    {
      v13 = [a1 isOutputCorruptionLikelyUsingSSIMOfInputURL:v6 toOutputURL:v8];
      v14 = v13;
    }

    else
    {
LABEL_9:
      v13 = 0;
      v14 = v9;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      *v17 = v13;
      *&v17[4] = 1024;
      *&v17[6] = v9;
      *v18 = 1024;
      *&v18[2] = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Output corruption checks: %d/%d (%d)", buf, 0x14u);
    }

    if (v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      *v17 = v6;
      *&v17[8] = 2112;
      *v18 = v8;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Possible conversion output corruption detected for %@/%@", buf, 0x16u);
    }
  }
}

+ (void)executeConversionJob:(id)a3
{
  v5 = a3;
  v6 = [v5 sourceResourceURLCollection];

  if (!v6)
  {
    v89 = +[NSAssertionHandler currentHandler];
    [v89 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1267 description:{@"Invalid parameter not satisfying: %@", @"job.sourceResourceURLCollection"}];
  }

  if ([v5 validateSourceAndOptions])
  {
    if ([v5 isRAWSourceUTI] && (objc_msgSend(v5, "sourceImageSize"), v9 = (v7 * v8), v10 = +[PFMediaUtilities rawSourceMaximumPixelCountForBackgroundProcessing](PFMediaUtilities, "rawSourceMaximumPixelCountForBackgroundProcessing"), v10 < v9))
    {
      v11 = v10;
      v12 = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v9;
        *&buf[12] = 2048;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unable to process full size RAW source with pixel count %zd (exceeds limit of %zd), falling back to embedded preview", buf, 0x16u);
        v12 = 0;
      }
    }

    else
    {
      v12 = 1;
    }

    v13 = [PFImageIOOptionsBuilder alloc];
    v14 = [v5 destinationImageProperties];
    v15 = [v13 initWithOptions:v14];

    if ([v5 colorspaceMode] == 2)
    {
      v16 = 1;
    }

    else
    {
      if ([v5 colorspaceMode])
      {
        goto LABEL_15;
      }

      v16 = 2;
    }

    [v15 setColorBehavior:v16];
LABEL_15:
    v17 = [v5 orientationTransformBehavior];
    v18 = [v5 formatConversionOnly];
    if (v17 == 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 1;
    }

    if (v19 == 1)
    {
      v20 = [v5 sourceRequiresRasterization];
    }

    else
    {
      v20 = 1;
    }

    v21 = [v5 hasPhotosAdjustments];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v22 = [v5 sourceUTI];
      [v5 sourceImageSize];
      v24 = v23;
      [v5 sourceImageSize];
      *buf = 67110914;
      *&buf[4] = v21;
      *&buf[8] = 2048;
      *&buf[10] = v17;
      *&buf[18] = 1024;
      *&buf[20] = v21;
      v102 = 1024;
      v103 = v20;
      v104 = 2114;
      v105 = v22;
      v106 = 1024;
      v107 = v12;
      v108 = 1024;
      v109 = v24;
      v110 = 1024;
      v111 = v25;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Image conversion: requiresCustomOrientationTransform %d, orientationBehavior %lu, requiresPhotosAdjustmentRendering %d, requiresDrawing %d, source UTI %{public}@, canProcessFullSizeRaw %d, inputImageSize %dx%d", buf, 0x3Au);
    }

    if (v21)
    {
      v26 = os_signpost_id_make_with_pointer(&_os_log_default, v5);
      v27 = &_os_log_default;
      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
      {
        v28 = [v5 requestIdentifier];
        *buf = 138543362;
        *&buf[4] = v28;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_BEGIN, v26, "com.apple.photos.mediaconversion.service.adjusted", "Media conversion request %{public}@", buf, 0xCu);
      }

      [a1 registerPhotosAdjustmentsSubsystems];
      if ([v5 hasPhotosAdjustments])
      {
        v92 = 0;
        v29 = [a1 compositionForConversionJob:v5 error:&v92];
        v30 = v92;
        if (v29)
        {
          v31 = [v29 objectForKeyedSubscript:@"orientation"];
          v32 = v31 == 0;

          if (v32)
          {
            v33 = [NUGenericAdjustment alloc];
            v34 = [[NUIdentifier alloc] initWithName:@"Orientation"];
            v35 = [v33 initWithIdentifier:v34];

            v36 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 sourceOrientation]);
            [v35 setObject:v36 forKeyedSubscript:@"value"];

            [v29 setObject:v35 forKeyedSubscript:@"orientation"];
          }

          [a1 configureSourcesForComposition:v29 fromPhotosAdjustmentsJob:v5];
          [a1 renderPhotosAdjustmentsComposition:v29 forConversionJob:v5];
          if ([v5 shouldCheckForOutputCorruption])
          {
            [a1 checkConversionResultForOutputCorruptionAndMarkJobAsFailed:v5];
          }

          v37 = &_os_log_default;
          if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_END, v26, "com.apple.photos.mediaconversion.service.adjusted", "", buf, 2u);
          }
        }

        else
        {
          [v5 setStatus:2];
          [v5 setError:v30];
        }
      }

      else
      {
        v46 = +[NSAssertionHandler currentHandler];
        [v46 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1328 description:@"Unknown photos adjustments rendering request"];

        [v5 setStatus:2];
      }

      goto LABEL_84;
    }

    v38 = [v5 imageSource];
    v39 = [v5 imageDestination];
    v40 = [v5 sourceUTI];
    v41 = [PFUniformTypeUtilities typeWithIdentifier:v40];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v102) = 0;
    if (!v20)
    {
      if (v12 && (([v5 isRAWSourceUTI] & 1) != 0 || objc_msgSend(v41, "isEqual:", UTTypeTIFF)) && (objc_msgSend(v5, "shouldUseEmbeddedImageAsSource") & 1) == 0)
      {
        v99[0] = kCIContextCacheIntermediates;
        v99[1] = kCIContextName;
        v100[0] = &__kCFBooleanFalse;
        v100[1] = @"PAMediaConversionSeriveSharedUtilitiesServerSide-executeConversionJob";
        v99[2] = kCIContextIntermediateMemoryTarget;
        v100[2] = &off_10003F9B0;
        v60 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:3];
        v61 = [CIContext contextWithOptions:v60];

        v62 = +[NSMutableDictionary dictionary];
        [v5 scaleFactor];
        if (v63 != 1.0)
        {
          [v5 scaleFactor];
          v64 = [NSNumber numberWithDouble:?];
          [v62 setObject:v64 forKeyedSubscript:kCIInputScaleFactorKey];
        }

        v65 = [v5 mainSourceResourceURL];
        v66 = [CIFilter filterWithImageURL:v65 options:v62];

        v67 = [v66 outputImage];
        v68 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
        v69 = CFAutorelease(v68);
        [v67 extent];
        v91[0] = _NSConcreteStackBlock;
        v91[1] = 3221225472;
        v91[2] = sub_100018F2C;
        v91[3] = &unk_10003D8B8;
        v91[4] = buf;
        v74 = [v61 createCGImage:v67 fromRect:kCIFormatRGBX8 format:1 premultiplied:sub_100018EC8(objc_msgSend(v5 colorSpace:"colorspaceMode") deferred:v69) renderCallback:{1, v91, v70, v71, v72, v73}];
        if (v74)
        {
          [v15 setOrientation:1];
          [v15 setColorBehavior:0];
          v75 = [v15 options];
          CGImageDestinationAddImage(v39, v74, v75);

          CFRelease(v74);
        }

        else
        {
          v76 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v86 = [v5 sourceResourceURLCollection];
            v87 = [v86 logMessageSummary];
            v90 = v86;
            *v93 = 138412290;
            v94 = v87;
            v88 = v87;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to generate image using CIRawFilter for %@", v93, 0xCu);
          }

          [v5 setStatus:2];
        }

        if (!v74)
        {
          goto LABEL_83;
        }
      }

      else
      {
        [v15 setApplyTransform:v17 == 1];
        if (v17)
        {
          v47 = 0;
        }

        else
        {
          v47 = [v5 shouldUseEmbeddedImageAsSource];
        }

        [v5 scaleFactor];
        if ((v17 == 1) | v47 & 1 || v51 != 1.0)
        {
          [v15 setMaximumLongSideLength:{objc_msgSend(v5, "requestedOrCalculatedMaximumLongSideLength")}];
        }

        [v15 setIncludeHDRGainMaps:1];
        PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v38);
        v53 = [v15 options];
        CGImageDestinationAddImageFromSource(v39, v38, PrimaryImageIndex, v53);
      }

LABEL_78:
      v77 = CGImageDestinationFinalize(v39);
      if (v77 && *(*&buf[8] + 24) != 1)
      {
        v79 = [v5 imageDestinationData];
        [v5 setDestinationData:v79];

        v80 = [v5 imageDestinationData];
        [PAMediaConversionServiceSharedUtilitiesServiceSide imageSizeForImageData:v80];
        [v5 setOutputImageSize:?];

        [v5 setStatus:1];
        _Block_object_dispose(buf, 8);

        goto LABEL_84;
      }

      v78 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v81 = [v5 sourceResourceURLCollection];
        v82 = [v81 logMessageSummary];
        v83 = *(*&buf[8] + 24);
        *v93 = 138412802;
        v94 = v82;
        v95 = 1024;
        v96 = v77;
        v97 = 1024;
        v98 = v83;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to finalize output image for image conversion of %@: %d/%d", v93, 0x18u);
      }

      [v5 setStatus:2];
LABEL_83:
      _Block_object_dispose(buf, 8);

LABEL_84:
      goto LABEL_85;
    }

    v42 = [v5 sourceImageRef];
    if (!v42)
    {
      [v5 setStatus:2];
      goto LABEL_83;
    }

    v43 = [v5 colorspaceMode];
    if ([v41 conformsToType:UTTypeRAWImage])
    {
      v44 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
      ColorSpace = CFAutorelease(v44);
    }

    else
    {
      ColorSpace = CGImageGetColorSpace(v42);
    }

    v48 = ColorSpace;
    if (ColorSpace)
    {
      if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
      {
        v49 = v43;
      }

      else
      {
        v49 = 0;
      }

      v50 = sub_100018EC8(v49, v48);
    }

    else
    {
      v54 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
      if (!v54)
      {
        v55 = 0;
        goto LABEL_64;
      }

      v50 = CFAutorelease(v54);
    }

    v55 = v50;
LABEL_64:
    [v5 scaleFactor];
    v57 = [a1 newScaledImageForImageRef:v42 scaleFactor:objc_msgSend(v5 orientation:"orientation") colorspace:{v55, v56}];
    if (!v57)
    {
      v59 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v84 = [v5 sourceResourceURLCollection];
        v85 = [v84 logMessageSummary];
        *v93 = 138412290;
        v94 = v85;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create output image for %@", v93, 0xCu);
      }

      [v5 setStatus:2];
      goto LABEL_83;
    }

    v58 = [v15 options];
    CGImageDestinationAddImage(v39, v57, v58);

    CGImageRelease(v57);
    goto LABEL_78;
  }

  [v5 setStatus:2];
LABEL_85:
}

@end