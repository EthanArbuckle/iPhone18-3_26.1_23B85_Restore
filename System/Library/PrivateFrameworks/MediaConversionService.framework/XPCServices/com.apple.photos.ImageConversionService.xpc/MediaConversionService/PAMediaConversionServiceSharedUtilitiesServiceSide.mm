@interface PAMediaConversionServiceSharedUtilitiesServiceSide
+ (BOOL)isOutputCorruptionLikelyComparingFileSizeOfInputURL:(id)l toOutputURL:(id)rL;
+ (BOOL)isOutputCorruptionLikelyUsingSSIMOfInputURL:(id)l toOutputURL:(id)rL;
+ (CGImage)newScaledImageForImageRef:(CGImage *)ref inputSize:(PFIntSize_st)size outputSize:(PFIntSize_st)outputSize sx:(double)sx sy:(double)sy orientation:(int64_t)orientation colorspace:(CGColorSpace *)space;
+ (CGImage)newScaledImageForImageRef:(CGImage *)ref scaleFactor:(double)factor orientation:(int64_t)orientation colorspace:(CGColorSpace *)colorspace;
+ (CGSize)imageSizeForImageData:(id)data;
+ (id)adjustmentInformationForComposition:(id)composition error:(id *)error;
+ (id)compositionForConversionJob:(id)job error:(id *)error;
+ (id)compositionForPhotosAdjustmentInformation:(id)information secondaryDataURL:(id)l error:(id *)error;
+ (id)emptyGenericCompositionWithAdjustmentForOrientation:(int64_t)orientation;
+ (id)exporterImageOptionsForScaleFactor:(double)factor maximumPixelCount:(int64_t)count metadataPolicy:(id)policy shouldApplyOrientationTransform:(BOOL)transform outputFileType:(id)type;
+ (id)exporterVideoOptionsForScaleFactor:(double)factor maximumPixelCount:(int64_t)count;
+ (id)imageDataForPhotosAdjustmentsComposition:(id)composition source:(id)source exporterImageOptions:(id)options outOutputSize:(CGSize *)size job:(id)job;
+ (id)loadCompositionFrom:(id)from formatIdentifier:(id)identifier formatVersion:(id)version secondaryDataURL:(id)l error:(id *)error;
+ (id)scalePolicyForScaleFactor:(double)factor maximumPixelCount:(int64_t)count;
+ (id)temporaryDestinationURLCollectionForFinalDestinationURLCollection:(id)collection inParentDirectoryURL:(id)l;
+ (id)temporaryFilesDirectoryURLForConversionTaskIdentifier:(id)identifier error:(id *)error;
+ (void)checkConversionResultForOutputCorruptionAndMarkJobAsFailed:(id)failed;
+ (void)configureSourcesForComposition:(id)composition fromPhotosAdjustmentsJob:(id)job;
+ (void)executeConversionJob:(id)job;
+ (void)renderPhotosAdjustmentsComposition:(id)composition forConversionJob:(id)job;
@end

@implementation PAMediaConversionServiceSharedUtilitiesServiceSide

+ (id)temporaryFilesDirectoryURLForConversionTaskIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v6 = NSTemporaryDirectory();
  v7 = +[PFMediaUtilities protectedTemporaryItemsSubdirectoryName];
  v8 = [v6 stringByAppendingPathComponent:v7];

  identifierCopy = [NSString stringWithFormat:@"com.apple.photos.mediaconversion-%d-%@", getpid(), identifierCopy];

  v10 = [v8 stringByAppendingPathComponent:identifierCopy];

  v11 = [NSURL fileURLWithPath:v10 isDirectory:1];
  v12 = +[NSFileManager defaultManager];
  v13 = [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:error];
  v14 = 0;
  if (v13)
  {
    v14 = v11;
  }

  return v14;
}

+ (id)temporaryDestinationURLCollectionForFinalDestinationURLCollection:(id)collection inParentDirectoryURL:(id)l
{
  collectionCopy = collection;
  lCopy = l;
  v9 = lCopy;
  if (!collectionCopy)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:2091 description:{@"Invalid parameter not satisfying: %@", @"finalDestinationURLCollection"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:2092 description:{@"Invalid parameter not satisfying: %@", @"parentDirectoryURL"}];

    goto LABEL_3;
  }

  if (!lCopy)
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
  [collectionCopy enumerateResourceURLs:v17];
  v12 = v19;
  v13 = v10;

  return v10;
}

+ (CGSize)imageSizeForImageData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:2077 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v17 = kCGImageSourceShouldCache;
  v18 = &__kCFBooleanFalse;
  v6 = CGImageSourceCreateWithData(dataCopy, [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1]);
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

+ (CGImage)newScaledImageForImageRef:(CGImage *)ref scaleFactor:(double)factor orientation:(int64_t)orientation colorspace:(CGColorSpace *)colorspace
{
  if (!ref)
  {
    return 0;
  }

  Width = CGImageGetWidth(ref);
  Height = CGImageGetHeight(ref);
  v13 = IPAOrientationTransformIntegralImageSize();
  v15 = v14;
  if (factor < 1.0)
  {
    v16 = [IPAImageSizePolicy scalePolicyWithScale:factor];
    [v16 transformSize:{v13, v15}];
    v13 = llround(v17);
    v15 = llround(v18);
  }

  if (!v13 || !v15)
  {
    return 0;
  }

  factorCopy = 1.0;
  if (factor <= 1.0)
  {
    factorCopy = factor;
  }

  return [self newScaledImageForImageRef:ref inputSize:Width outputSize:Height sx:v13 sy:v15 orientation:orientation colorspace:{factorCopy, factorCopy, colorspace}];
}

+ (CGImage)newScaledImageForImageRef:(CGImage *)ref inputSize:(PFIntSize_st)size outputSize:(PFIntSize_st)outputSize sx:(double)sx sy:(double)sy orientation:(int64_t)orientation colorspace:(CGColorSpace *)space
{
  var1 = size.var1;
  var0 = size.var0;
  v15 = CGBitmapContextCreate(0, outputSize.var0, outputSize.var1, 8uLL, (4 * outputSize.var0 + 15) & 0xFFFFFFFFFFFFFFF0, space, 2u);
  if (v15)
  {
    v16 = v15;
    CGContextSetInterpolationQuality(v15, kCGInterpolationHigh);
    CGContextScaleCTM(v16, sx, sy);
    if (orientation == 1)
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
    CGContextDrawImage(v16, v25, ref);
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

+ (id)imageDataForPhotosAdjustmentsComposition:(id)composition source:(id)source exporterImageOptions:(id)options outOutputSize:(CGSize *)size job:(id)job
{
  compositionCopy = composition;
  sourceCopy = source;
  optionsCopy = options;
  jobCopy = job;
  if ([compositionCopy mediaType] == 1)
  {
    v15 = jobCopy;
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
    [v17 exportImageToDataWithComposition:compositionCopy options:optionsCopy completion:v31];
    v29 = v17;
    dispatch_block_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    v19 = *(v35 + 5);
    v30 = 0;
    v20 = [v19 result:&v30];
    v21 = v30;
    if (v20)
    {
      if (size)
      {
        v28 = sourceCopy;
        geometry = [v20 geometry];
        scaledSize = [geometry scaledSize];
        geometry2 = [v20 geometry];
        [geometry2 scaledSize];
        size->width = scaledSize;
        size->height = v25;

        sourceCopy = v28;
        jobCopy = v15;
      }

      data = [v20 data];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *v40 = 138543362;
        v41 = v21;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to render adjustments to data destination: %{public}@", v40, 0xCu);
      }

      data = 0;
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

    data = 0;
  }

  return data;
}

+ (id)exporterVideoOptionsForScaleFactor:(double)factor maximumPixelCount:(int64_t)count
{
  v6 = objc_alloc_init(PICompositionExporterVideoOptions);
  if (count)
  {
    v7 = [[NUPixelCountScalePolicy alloc] initWithTargetPixelCount:count];
  }

  else
  {
    if (factor == 1.0)
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

+ (id)scalePolicyForScaleFactor:(double)factor maximumPixelCount:(int64_t)count
{
  if (count)
  {
    v4 = [[NUPixelCountScalePolicy alloc] initWithTargetPixelCount:count];
  }

  else if (factor == 1.0)
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

+ (id)exporterImageOptionsForScaleFactor:(double)factor maximumPixelCount:(int64_t)count metadataPolicy:(id)policy shouldApplyOrientationTransform:(BOOL)transform outputFileType:(id)type
{
  transformCopy = transform;
  policyCopy = policy;
  typeCopy = type;
  if (!typeCopy)
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1922 description:{@"Invalid parameter not satisfying: %@", @"outputFileType"}];
  }

  v15 = objc_alloc_init(PICompositionExporterImageOptions);
  v16 = [PFUniformTypeUtilities typeWithIdentifier:typeCopy];
  if ([v16 conformsToType:UTTypeJPEG])
  {
    v17 = objc_alloc_init(NUImageExportFormatJPEG);
    [v17 setCompressionQuality:0.800000012];
LABEL_7:
    [v15 setImageExportFormat:v17];

    v18 = [self scalePolicyForScaleFactor:count maximumPixelCount:factor];
    if (v18)
    {
      [v15 setScalePolicy:v18];
    }

    if (policyCopy)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000153EC;
      v22[3] = &unk_10003D9C0;
      v23 = policyCopy;
      [v15 setMetadataProcessor:v22];
    }

    [v15 setApplyImageOrientationAsMetadata:!transformCopy];
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
    v25 = typeCopy;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unexpected output file type: %@", buf, 0xCu);
  }

  v19 = 0;
LABEL_15:

  return v19;
}

+ (void)renderPhotosAdjustmentsComposition:(id)composition forConversionJob:(id)job
{
  compositionCopy = composition;
  jobCopy = job;
  if (!jobCopy)
  {
    v59 = +[NSAssertionHandler currentHandler];
    [v59 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1795 description:{@"Invalid parameter not satisfying: %@", @"job"}];
  }

  outputFileType = [jobCopy outputFileType];

  if (!outputFileType)
  {
    v60 = +[NSAssertionHandler currentHandler];
    [v60 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1796 description:{@"Invalid parameter not satisfying: %@", @"job.outputFileType"}];
  }

  [self registerPhotosAdjustmentsSubsystems];
  [jobCopy scaleFactor];
  v11 = v10;
  requestedMaximumPixelCount = [jobCopy requestedMaximumPixelCount];
  metadataPolicy = [jobCopy metadataPolicy];
  applySourceOrientationTransform = [jobCopy applySourceOrientationTransform];
  outputFileType2 = [jobCopy outputFileType];
  v16 = [self exporterImageOptionsForScaleFactor:requestedMaximumPixelCount maximumPixelCount:metadataPolicy metadataPolicy:applySourceOrientationTransform shouldApplyOrientationTransform:outputFileType2 outputFileType:v11];

  if (!v16)
  {
    [jobCopy setStatus:2];
    v82 = NSLocalizedDescriptionKey;
    v83 = @"Unable to determine image options";
    v69 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v28 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v69];
    [jobCopy setError:v28];
    goto LABEL_70;
  }

  v69 = [[NUPriority alloc] initWithLevel:1];
  [v16 setPriority:?];
  mediaType = [compositionCopy mediaType];
  v70 = +[PIPhotoEditHelper validatedCompositionCopyForComposition:mediaType:](PIPhotoEditHelper, "validatedCompositionCopyForComposition:mediaType:", compositionCopy, [compositionCopy mediaType]);

  mediaType2 = [v70 mediaType];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    *&buf[4] = mediaType;
    *&buf[12] = 2048;
    *&buf[14] = mediaType2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Render photos adjustment composition: input/output media types %ld/%ld", buf, 0x16u);
  }

  v20 = mediaType == 3 && mediaType2 == 2;
  if ((mediaType | 2) != 3 || (mediaType == mediaType2 ? (v21 = 1) : (v21 = v20), (v21 & 1) == 0))
  {
    v22 = +[NSAssertionHandler currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1821 description:{@"Unexpected input/output media type combination %ld/%ld", mediaType, mediaType2}];
  }

  v23 = os_signpost_id_make_with_pointer(&_os_log_default, self);
  v24 = &_os_log_default;
  spid = v23;
  v25 = v23 - 1;
  if (v25 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
  {
    requestIdentifier = [jobCopy requestIdentifier];
    *buf = 138543362;
    *&buf[4] = requestIdentifier;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_BEGIN, spid, "com.apple.photos.mediaconversion.service.neutrino", "Media conversion request %{public}@", buf, 0xCu);
  }

  destinationResourceURLCollection = [jobCopy destinationResourceURLCollection];
  v28 = destinationResourceURLCollection;
  if (destinationResourceURLCollection)
  {
    v68 = [destinationResourceURLCollection resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];
    if (!v68)
    {
      v61 = +[NSAssertionHandler currentHandler];
      [v61 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1830 description:@"Missing destination image URL"];
    }

    if ((mediaType2 & 0xFFFFFFFFFFFFFFFELL) == 2)
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
        if (mediaType2 == 3)
        {
          v31 = objc_opt_new();
          [v31 setPrimaryURL:v68];
          [v31 setVideoComplementURL:v67];
          [v31 setPriority:v69];
          [v31 setOptimizeForBackgroundProcessing:1];
          [v31 setApplyImageOrientationAsMetadata:{objc_msgSend(jobCopy, "applySourceOrientationTransform") ^ 1}];
          [v31 setApplyVideoOrientationAsMetadata:1];
          [jobCopy scaleFactor];
          v33 = [self scalePolicyForScaleFactor:objc_msgSend(jobCopy maximumPixelCount:{"requestedMaximumPixelCount"), v32}];
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
                geometry = [v41 geometry];
                scaledSize = [geometry scaledSize];
                geometry2 = [v41 geometry];
                [geometry2 scaledSize];
                v62 = v46;

                outputFileType3 = [jobCopy outputFileType];
                width = CGSizeZero.width;
                height = CGSizeZero.height;
                v71 = v42;
                LOBYTE(geometry2) = [PAMediaConversionServiceImagingUtilities generatePosterFrameExportForVideoURL:v67 destinationURL:v68 maximumSize:outputFileType3 outputFileType:&v71 error:CGSizeZero.width, height];
                v50 = v71;

                if (geometry2)
                {
                  width = scaledSize;
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
                geometry3 = [v41 geometry];
                scaledSize2 = [geometry3 scaledSize];
                geometry4 = [v41 geometry];
                [geometry4 scaledSize];
                v56 = v55;

                width = scaledSize2;
                height = v56;
                v51 = 1;
              }

              [jobCopy setStatus:v51];
              [jobCopy setOutputImageSize:{width, height}];
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *v76 = 138543362;
                v77 = v42;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to render adjustments to URL destination: %{public}@", v76, 0xCu);
              }

              [jobCopy setStatus:2];
              [jobCopy setError:v42];
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

          [jobCopy scaleFactor];
          v31 = [self exporterVideoOptionsForScaleFactor:objc_msgSend(jobCopy maximumPixelCount:{"requestedMaximumPixelCount"), v37}];
          v38 = [v66 exportVideoToURL:v67 composition:v70 options:v31 completion:v65];
        }

        goto LABEL_44;
      }

      v30 = +[NSAssertionHandler currentHandler];
      [v30 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1836 description:@"Live Photo conversion producing video output must provide image and video output URLs"];
    }

    v67 = 0;
    goto LABEL_33;
  }

  v68 = [v70 objectForKeyedSubscript:@"source"];
  *buf = CGSizeZero;
  v36 = [self imageDataForPhotosAdjustmentsComposition:v70 source:v68 exporterImageOptions:v16 outOutputSize:buf job:jobCopy];
  if (v36)
  {
    [jobCopy setStatus:1];
    [jobCopy setDestinationData:v36];
    [jobCopy setOutputImageSize:{*buf, *&buf[8]}];
  }

  else
  {
    [jobCopy setStatus:2];
  }

LABEL_66:
  v58 = &_os_log_default;
  if (v25 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(&_os_log_default))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_END, spid, "com.apple.photos.mediaconversion.service.neutrino", "", buf, 2u);
  }

  compositionCopy = v70;
LABEL_70:
}

+ (void)configureSourcesForComposition:(id)composition fromPhotosAdjustmentsJob:(id)job
{
  compositionCopy = composition;
  jobCopy = job;
  sourceResourceURLCollection = [jobCopy sourceResourceURLCollection];
  v8 = [sourceResourceURLCollection typeIdentifierForResourceURLWithRole:@"PAMediaConversionResourceRoleMainResource"];
  if (!v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logMessageSummary = [sourceResourceURLCollection logMessageSummary];
      *buf = 138412290;
      v23 = logMessageSummary;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to determine type identifier of main resource: %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v21[0] = @"PAMediaConversionResourceRoleMainResource";
  v21[1] = @"PAMediaConversionResourceRoleVideoComplement";
  v9 = [NSArray arrayWithObjects:v21 count:2];
  v10 = [sourceResourceURLCollection containsAllRoles:v9];

  if (v10)
  {
    mainSourceResourceURL = [jobCopy mainSourceResourceURL];
    mainSourceResourceURL2 = [PIPhotoEditHelper imageSourceWithURL:mainSourceResourceURL type:v8 useEmbeddedPreview:0];

    v13 = [sourceResourceURLCollection resourceURLForRole:@"PAMediaConversionResourceRoleVideoComplement"];
    v14 = [PIPhotoEditHelper videoSourceWithURL:v13];

    v15 = [PIPhotoEditHelper livePhotoSourceWithPhotoSource:mainSourceResourceURL2 videoSource:v14];
  }

  else
  {
    v20 = @"PAMediaConversionResourceRoleMainResource";
    v17 = [NSArray arrayWithObjects:&v20 count:1];
    v18 = [sourceResourceURLCollection containsAllRoles:v17];

    if (!v18)
    {
      goto LABEL_13;
    }

    mainSourceResourceURL2 = [jobCopy mainSourceResourceURL];
    v15 = [PIPhotoEditHelper imageSourceWithURL:mainSourceResourceURL2 type:v8 useEmbeddedPreview:0];
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
    [jobCopy setStatus:2];
    goto LABEL_16;
  }

  [compositionCopy setObject:v15 forKeyedSubscript:@"source"];
  if ([jobCopy hasLivePhotoSourceURLs])
  {
    v19 = 3;
  }

  else
  {
    v19 = 1;
  }

  [compositionCopy setMediaType:v19];

LABEL_16:
}

+ (id)loadCompositionFrom:(id)from formatIdentifier:(id)identifier formatVersion:(id)version secondaryDataURL:(id)l error:(id *)error
{
  fromCopy = from;
  identifierCopy = identifier;
  versionCopy = version;
  lCopy = l;
  if (!error)
  {
    v53 = +[NSAssertionHandler currentHandler];
    [v53 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1688 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
  }

  if (([PIPhotoEditHelper canInterpretDataWithFormatIdentifier:identifierCopy formatVersion:versionCopy]& 1) == 0)
  {
    v48 = [NSError alloc];
    v79 = NSLocalizedFailureReasonErrorKey;
    versionCopy = [NSString stringWithFormat:@"Cannot interpret data with identifier (%@) and format version (%@)", identifierCopy, versionCopy];
    v80 = versionCopy;
    v50 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    *error = [v48 initWithDomain:@"PICompositionSerializerDomain" code:0 userInfo:v50];

LABEL_29:
    v47 = 0;
    goto LABEL_30;
  }

  if (([identifierCopy isEqualToString:PIPhotoEditFormatIdentifierVideoSloMo] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", PIPhotoEditFormatIdentifierVideo))
  {
    v56 = lCopy;
    v17 = objc_opt_new();
    v58 = fromCopy;
    v59 = identifierCopy;
    v57 = versionCopy;
    errorCopy = error;
    [IPASerializationManager deserialize:fromCopy originator:IPAAdjustmentOriginator_Unknown format:identifierCopy formatVersion:versionCopy error:error];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v54 = v67 = 0u;
    adjustmentStack = [v54 adjustmentStack];
    adjustments = [adjustmentStack adjustments];

    v20 = adjustments;
    v21 = [adjustments countByEnumeratingWithState:&v64 objects:v78 count:16];
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
        identifier = [v26 identifier];
        v28 = [identifier isEqualToString:v24];

        if (v28)
        {
          v29 = objc_opt_new();
          [v29 setObject:@"SlowMotion" forKeyedSubscript:@"identifier"];
LABEL_15:
          settings = [v26 settings];
          [v29 setObject:settings forKeyedSubscript:@"settings"];

          [v29 setObject:&__kCFBooleanTrue forKeyedSubscript:@"enabled"];
          [v17 addObject:v29];

          goto LABEL_16;
        }

        identifier2 = [v26 identifier];
        v31 = [identifier2 isEqualToString:v63];

        if (v31)
        {
          v29 = objc_opt_new();
          identifier3 = [v26 identifier];
          [v29 setObject:identifier3 forKeyedSubscript:@"identifier"];

          goto LABEL_15;
        }

        identifier4 = [v26 identifier];
        v35 = [identifier4 isEqualToString:v62];

        if (v35)
        {
          v36 = v20;
          settings2 = [v26 settings];
          v38 = [settings2 objectForKeyedSubscript:v61];
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

          settings3 = [v26 settings];
          v39 = [settings3 objectForKeyedSubscript:v60];

          if (v39)
          {
            goto LABEL_22;
          }

          v20 = v36;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            identifier5 = [v26 identifier];
            version = [v26 version];
            settings4 = [v26 settings];
            *buf = 138413058;
            v69 = v59;
            v70 = 2112;
            v71 = identifier5;
            v72 = 2112;
            v73 = version;
            v74 = 2112;
            v75 = settings4;
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

        identifierCopy = v59;
        versionCopy = v57;
        v47 = [PICompositionSerializer deserializeCompositionFromAdjustments:v17 metadata:&__NSDictionary0__struct formatIdentifier:v59 formatVersion:v57 error:errorCopy];

        fromCopy = v58;
        lCopy = v56;
        goto LABEL_30;
      }
    }
  }

  if (lCopy)
  {
    v52 = [PICompositionSidecarData loadFromURL:lCopy error:error];
    if (!v52)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v52 = 0;
  }

  v47 = [PICompositionSerializer deserializeCompositionFromData:fromCopy formatIdentifier:identifierCopy formatVersion:versionCopy sidecarData:v52 error:error];

LABEL_30:

  return v47;
}

+ (id)compositionForConversionJob:(id)job error:(id *)error
{
  jobCopy = job;
  if (!jobCopy)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1667 description:{@"Invalid parameter not satisfying: %@", @"job != nil"}];
  }

  adjustmentInformation = [jobCopy adjustmentInformation];
  adjustmentSidecarDataResourceURL = [jobCopy adjustmentSidecarDataResourceURL];
  v10 = [self compositionForPhotosAdjustmentInformation:adjustmentInformation secondaryDataURL:adjustmentSidecarDataResourceURL error:error];

  return v10;
}

+ (id)compositionForPhotosAdjustmentInformation:(id)information secondaryDataURL:(id)l error:(id *)error
{
  informationCopy = information;
  lCopy = l;
  v11 = [informationCopy objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentDataKey"];
  if (!v11)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1648 description:{@"Invalid parameter not satisfying: %@", @"adjustmentData"}];
  }

  v12 = [informationCopy objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentFormatIdentifierKey"];
  if (!v12)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1650 description:{@"Invalid parameter not satisfying: %@", @"formatIdentifier"}];
  }

  v13 = [informationCopy objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentFormatVersionKey"];
  if (!v13)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1652 description:{@"Invalid parameter not satisfying: %@", @"formatVersion"}];
  }

  v21 = 0;
  v14 = [self loadCompositionFrom:v11 formatIdentifier:v12 formatVersion:v13 secondaryDataURL:lCopy error:&v21];
  v15 = v21;
  if (!v14)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      if (!error)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    *buf = 138543362;
    v23 = v15;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create photos adjustment composition: %{public}@", buf, 0xCu);
    if (error)
    {
LABEL_10:
      v16 = v15;
      *error = v15;
    }
  }

LABEL_11:

  return v14;
}

+ (id)adjustmentInformationForComposition:(id)composition error:(id *)error
{
  v4 = [PICompositionSerializer adjustmentInformationForComposition:composition error:error];
  v5 = [v4 mutableCopy];

  v6 = [v5 objectForKeyedSubscript:PIAssetAdjustmentsDataBlobKey];
  [v5 setObject:v6 forKeyedSubscript:@"PAMediaConversionServiceAdjustmentDataKey"];

  v7 = [v5 objectForKeyedSubscript:PIAssetAdjustmentsFormatIdentifierKey];
  [v5 setObject:v7 forKeyedSubscript:@"PAMediaConversionServiceAdjustmentFormatIdentifierKey"];

  v8 = [v5 objectForKeyedSubscript:PIAssetAdjustmentsFormatVersionKey];
  [v5 setObject:v8 forKeyedSubscript:@"PAMediaConversionServiceAdjustmentFormatVersionKey"];

  return v5;
}

+ (id)emptyGenericCompositionWithAdjustmentForOrientation:(int64_t)orientation
{
  if ((IPAOrientationIsValid() & 1) == 0)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1566 description:{@"Invalid parameter not satisfying: %@", @"IPAOrientationIsValid(orientation)"}];
  }

  v6 = +[PISchema registeredPhotosSchemaIdentifier];
  v7 = [[NUGenericComposition alloc] initWithIdentifier:v6];
  v8 = [NUGenericAdjustment alloc];
  v9 = [[NUIdentifier alloc] initWithName:@"Orientation"];
  v10 = [v8 initWithIdentifier:v9];

  v11 = [NSNumber numberWithInteger:orientation];
  [v10 setObject:v11 forKeyedSubscript:@"value"];

  [v7 setObject:v10 forKeyedSubscript:@"orientation"];

  return v7;
}

+ (BOOL)isOutputCorruptionLikelyUsingSSIMOfInputURL:(id)l toOutputURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v7 = [CIImage imageWithContentsOfURL:lCopy options:0];
  v8 = [CIImage imageWithContentsOfURL:rLCopy options:0];
  PFImageMetricComputeSSIMForCIImage();
  if (NAN >= 94.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      path = [lCopy path];
      path2 = [rLCopy path];
      *buf = 134218754;
      v13 = 0x7FF8000000000000;
      v14 = 2048;
      v15 = 0x4057800000000000;
      v16 = 2112;
      v17 = path;
      v18 = 2112;
      v19 = path2;
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

+ (BOOL)isOutputCorruptionLikelyComparingFileSizeOfInputURL:(id)l toOutputURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v40[0] = NSURLFileSizeKey;
  v40[1] = NSURLTypeIdentifierKey;
  v7 = [NSArray arrayWithObjects:v40 count:2];
  [lCopy removeCachedResourceValueForKey:NSURLFileSizeKey];
  v31 = 0;
  v8 = [lCopy resourceValuesForKeys:v7 error:&v31];
  v9 = v31;
  if (v8)
  {
    v28 = lCopy;
    v10 = [v8 objectForKeyedSubscript:NSURLFileSizeKey];
    unsignedLongLongValue = [v10 unsignedLongLongValue];

    v11 = [v8 objectForKeyedSubscript:NSURLTypeIdentifierKey];
    v12 = [PFUniformTypeUtilities typeWithIdentifier:v11];

    [rLCopy removeCachedResourceValueForKey:NSURLFileSizeKey];
    v29 = v7;
    v30 = v9;
    v13 = [rLCopy resourceValuesForKeys:v7 error:&v30];
    v27 = v30;

    if (!v13)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        path = [rLCopy path];
        *buf = 138412546;
        v33 = *&path;
        v34 = 2112;
        v9 = v27;
        v35 = v27;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to read output image file attributes for %@: %@", buf, 0x16u);

        v20 = 0;
        v18 = v12;
        lCopy = v28;
        goto LABEL_21;
      }

      v20 = 0;
      v18 = v12;
      lCopy = v28;
LABEL_20:
      v9 = v27;
LABEL_21:

      v7 = v29;
      goto LABEL_22;
    }

    v14 = [v13 objectForKeyedSubscript:NSURLFileSizeKey];
    unsignedLongLongValue2 = [v14 unsignedLongLongValue];

    v16 = [v13 objectForKeyedSubscript:NSURLTypeIdentifierKey];
    v17 = [PFUniformTypeUtilities typeWithIdentifier:v16];

    v18 = v12;
    if ([v12 isEqual:v17])
    {
      v19 = (unsignedLongLongValue2 - unsignedLongLongValue) / unsignedLongLongValue * 100.0;
      lCopy = v28;
      if (fabs(v19) > 10.0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218752;
          v33 = (unsignedLongLongValue2 - unsignedLongLongValue) / unsignedLongLongValue * 100.0;
          v34 = 2048;
          v35 = 0x4024000000000000;
          v36 = 2048;
          v37 = unsignedLongLongValue;
          v38 = 2048;
          v39 = unsignedLongLongValue2;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Conversion output corruption possible based on input/output file size comparison: abs(%f) > %f, %llu/%llu", buf, 0x2Au);
        }

        v20 = 1;
        goto LABEL_19;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        path2 = [v28 path];
        path3 = [rLCopy path];
        *buf = 134218754;
        v33 = v19;
        v34 = 2048;
        v35 = 0x4024000000000000;
        v36 = 2112;
        v37 = path2;
        v38 = 2112;
        v39 = path3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "File size percentage change abs(%f) < %f for conversion of %@ to %@", buf, 0x2Au);
        goto LABEL_17;
      }
    }

    else
    {
      lCopy = v28;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        path2 = [v28 path];
        path3 = [rLCopy path];
        *buf = 138413058;
        v33 = *&path2;
        v34 = 2112;
        v35 = v18;
        v36 = 2112;
        v37 = path3;
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
    path4 = [lCopy path];
    *buf = 138412546;
    v33 = *&path4;
    v34 = 2112;
    v35 = v9;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to read input image file attributes for %@: %@", buf, 0x16u);
  }

  v20 = 0;
LABEL_22:

  return v20;
}

+ (void)checkConversionResultForOutputCorruptionAndMarkJobAsFailed:(id)failed
{
  failedCopy = failed;
  mainSourceResourceURL = [failedCopy mainSourceResourceURL];
  if (mainSourceResourceURL)
  {
    destinationResourceURLCollection = [failedCopy destinationResourceURLCollection];
    v8 = [destinationResourceURLCollection resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];

    if (!v8)
    {
      v15 = +[NSAssertionHandler currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1452 description:{@"Unexpected nil output url: %@/%@", mainSourceResourceURL, 0}];
    }

    v9 = [self isOutputCorruptionLikelyComparingFileSizeOfInputURL:mainSourceResourceURL toOutputURL:v8];
    v10 = +[NSUserDefaults standardUserDefaults];
    v11 = [v10 objectForKey:@"MediaConversionServiceUseSSIMOutputCorruptionCheck"];

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_9;
    }

    bOOLValue = [v11 BOOLValue];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *v17 = 0;
      *&v17[4] = 1024;
      *&v17[6] = bOOLValue;
      *v18 = 2112;
      *&v18[2] = @"MediaConversionServiceUseSSIMOutputCorruptionCheck";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Overriding enabled state of output corruption SSIM check from %d to %d because %@ user default key is set", buf, 0x18u);
    }

    if (bOOLValue)
    {
      v13 = [self isOutputCorruptionLikelyUsingSSIMOfInputURL:mainSourceResourceURL toOutputURL:v8];
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
      *v17 = mainSourceResourceURL;
      *&v17[8] = 2112;
      *v18 = v8;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Possible conversion output corruption detected for %@/%@", buf, 0x16u);
    }
  }
}

+ (void)executeConversionJob:(id)job
{
  jobCopy = job;
  sourceResourceURLCollection = [jobCopy sourceResourceURLCollection];

  if (!sourceResourceURLCollection)
  {
    v89 = +[NSAssertionHandler currentHandler];
    [v89 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1267 description:{@"Invalid parameter not satisfying: %@", @"job.sourceResourceURLCollection"}];
  }

  if ([jobCopy validateSourceAndOptions])
  {
    if ([jobCopy isRAWSourceUTI] && (objc_msgSend(jobCopy, "sourceImageSize"), v9 = (v7 * v8), v10 = +[PFMediaUtilities rawSourceMaximumPixelCountForBackgroundProcessing](PFMediaUtilities, "rawSourceMaximumPixelCountForBackgroundProcessing"), v10 < v9))
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
    destinationImageProperties = [jobCopy destinationImageProperties];
    v15 = [v13 initWithOptions:destinationImageProperties];

    if ([jobCopy colorspaceMode] == 2)
    {
      v16 = 1;
    }

    else
    {
      if ([jobCopy colorspaceMode])
      {
        goto LABEL_15;
      }

      v16 = 2;
    }

    [v15 setColorBehavior:v16];
LABEL_15:
    orientationTransformBehavior = [jobCopy orientationTransformBehavior];
    formatConversionOnly = [jobCopy formatConversionOnly];
    if (orientationTransformBehavior == 2)
    {
      v19 = formatConversionOnly;
    }

    else
    {
      v19 = 1;
    }

    if (v19 == 1)
    {
      sourceRequiresRasterization = [jobCopy sourceRequiresRasterization];
    }

    else
    {
      sourceRequiresRasterization = 1;
    }

    hasPhotosAdjustments = [jobCopy hasPhotosAdjustments];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      sourceUTI = [jobCopy sourceUTI];
      [jobCopy sourceImageSize];
      v24 = v23;
      [jobCopy sourceImageSize];
      *buf = 67110914;
      *&buf[4] = hasPhotosAdjustments;
      *&buf[8] = 2048;
      *&buf[10] = orientationTransformBehavior;
      *&buf[18] = 1024;
      *&buf[20] = hasPhotosAdjustments;
      v102 = 1024;
      v103 = sourceRequiresRasterization;
      v104 = 2114;
      v105 = sourceUTI;
      v106 = 1024;
      v107 = v12;
      v108 = 1024;
      v109 = v24;
      v110 = 1024;
      v111 = v25;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Image conversion: requiresCustomOrientationTransform %d, orientationBehavior %lu, requiresPhotosAdjustmentRendering %d, requiresDrawing %d, source UTI %{public}@, canProcessFullSizeRaw %d, inputImageSize %dx%d", buf, 0x3Au);
    }

    if (hasPhotosAdjustments)
    {
      v26 = os_signpost_id_make_with_pointer(&_os_log_default, jobCopy);
      v27 = &_os_log_default;
      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
      {
        requestIdentifier = [jobCopy requestIdentifier];
        *buf = 138543362;
        *&buf[4] = requestIdentifier;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_BEGIN, v26, "com.apple.photos.mediaconversion.service.adjusted", "Media conversion request %{public}@", buf, 0xCu);
      }

      [self registerPhotosAdjustmentsSubsystems];
      if ([jobCopy hasPhotosAdjustments])
      {
        v92 = 0;
        v29 = [self compositionForConversionJob:jobCopy error:&v92];
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

            v36 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [jobCopy sourceOrientation]);
            [v35 setObject:v36 forKeyedSubscript:@"value"];

            [v29 setObject:v35 forKeyedSubscript:@"orientation"];
          }

          [self configureSourcesForComposition:v29 fromPhotosAdjustmentsJob:jobCopy];
          [self renderPhotosAdjustmentsComposition:v29 forConversionJob:jobCopy];
          if ([jobCopy shouldCheckForOutputCorruption])
          {
            [self checkConversionResultForOutputCorruptionAndMarkJobAsFailed:jobCopy];
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
          [jobCopy setStatus:2];
          [jobCopy setError:v30];
        }
      }

      else
      {
        v46 = +[NSAssertionHandler currentHandler];
        [v46 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1328 description:@"Unknown photos adjustments rendering request"];

        [jobCopy setStatus:2];
      }

      goto LABEL_84;
    }

    imageSource = [jobCopy imageSource];
    imageDestination = [jobCopy imageDestination];
    sourceUTI2 = [jobCopy sourceUTI];
    v41 = [PFUniformTypeUtilities typeWithIdentifier:sourceUTI2];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v102) = 0;
    if (!sourceRequiresRasterization)
    {
      if (v12 && (([jobCopy isRAWSourceUTI] & 1) != 0 || objc_msgSend(v41, "isEqual:", UTTypeTIFF)) && (objc_msgSend(jobCopy, "shouldUseEmbeddedImageAsSource") & 1) == 0)
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
        [jobCopy scaleFactor];
        if (v63 != 1.0)
        {
          [jobCopy scaleFactor];
          v64 = [NSNumber numberWithDouble:?];
          [v62 setObject:v64 forKeyedSubscript:kCIInputScaleFactorKey];
        }

        mainSourceResourceURL = [jobCopy mainSourceResourceURL];
        v66 = [CIFilter filterWithImageURL:mainSourceResourceURL options:v62];

        outputImage = [v66 outputImage];
        v68 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
        v69 = CFAutorelease(v68);
        [outputImage extent];
        v91[0] = _NSConcreteStackBlock;
        v91[1] = 3221225472;
        v91[2] = sub_100018F2C;
        v91[3] = &unk_10003D8B8;
        v91[4] = buf;
        v74 = [v61 createCGImage:outputImage fromRect:kCIFormatRGBX8 format:1 premultiplied:sub_100018EC8(objc_msgSend(jobCopy colorSpace:"colorspaceMode") deferred:v69) renderCallback:{1, v91, v70, v71, v72, v73}];
        if (v74)
        {
          [v15 setOrientation:1];
          [v15 setColorBehavior:0];
          options = [v15 options];
          CGImageDestinationAddImage(imageDestination, v74, options);

          CFRelease(v74);
        }

        else
        {
          v76 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sourceResourceURLCollection2 = [jobCopy sourceResourceURLCollection];
            logMessageSummary = [sourceResourceURLCollection2 logMessageSummary];
            v90 = sourceResourceURLCollection2;
            *v93 = 138412290;
            v94 = logMessageSummary;
            v88 = logMessageSummary;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to generate image using CIRawFilter for %@", v93, 0xCu);
          }

          [jobCopy setStatus:2];
        }

        if (!v74)
        {
          goto LABEL_83;
        }
      }

      else
      {
        [v15 setApplyTransform:orientationTransformBehavior == 1];
        if (orientationTransformBehavior)
        {
          shouldUseEmbeddedImageAsSource = 0;
        }

        else
        {
          shouldUseEmbeddedImageAsSource = [jobCopy shouldUseEmbeddedImageAsSource];
        }

        [jobCopy scaleFactor];
        if ((orientationTransformBehavior == 1) | shouldUseEmbeddedImageAsSource & 1 || v51 != 1.0)
        {
          [v15 setMaximumLongSideLength:{objc_msgSend(jobCopy, "requestedOrCalculatedMaximumLongSideLength")}];
        }

        [v15 setIncludeHDRGainMaps:1];
        PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(imageSource);
        options2 = [v15 options];
        CGImageDestinationAddImageFromSource(imageDestination, imageSource, PrimaryImageIndex, options2);
      }

LABEL_78:
      v77 = CGImageDestinationFinalize(imageDestination);
      if (v77 && *(*&buf[8] + 24) != 1)
      {
        imageDestinationData = [jobCopy imageDestinationData];
        [jobCopy setDestinationData:imageDestinationData];

        imageDestinationData2 = [jobCopy imageDestinationData];
        [PAMediaConversionServiceSharedUtilitiesServiceSide imageSizeForImageData:imageDestinationData2];
        [jobCopy setOutputImageSize:?];

        [jobCopy setStatus:1];
        _Block_object_dispose(buf, 8);

        goto LABEL_84;
      }

      v78 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sourceResourceURLCollection3 = [jobCopy sourceResourceURLCollection];
        logMessageSummary2 = [sourceResourceURLCollection3 logMessageSummary];
        v83 = *(*&buf[8] + 24);
        *v93 = 138412802;
        v94 = logMessageSummary2;
        v95 = 1024;
        v96 = v77;
        v97 = 1024;
        v98 = v83;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to finalize output image for image conversion of %@: %d/%d", v93, 0x18u);
      }

      [jobCopy setStatus:2];
LABEL_83:
      _Block_object_dispose(buf, 8);

LABEL_84:
      goto LABEL_85;
    }

    sourceImageRef = [jobCopy sourceImageRef];
    if (!sourceImageRef)
    {
      [jobCopy setStatus:2];
      goto LABEL_83;
    }

    colorspaceMode = [jobCopy colorspaceMode];
    if ([v41 conformsToType:UTTypeRAWImage])
    {
      v44 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
      ColorSpace = CFAutorelease(v44);
    }

    else
    {
      ColorSpace = CGImageGetColorSpace(sourceImageRef);
    }

    v48 = ColorSpace;
    if (ColorSpace)
    {
      if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
      {
        v49 = colorspaceMode;
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
    [jobCopy scaleFactor];
    v57 = [self newScaledImageForImageRef:sourceImageRef scaleFactor:objc_msgSend(jobCopy orientation:"orientation") colorspace:{v55, v56}];
    if (!v57)
    {
      v59 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sourceResourceURLCollection4 = [jobCopy sourceResourceURLCollection];
        logMessageSummary3 = [sourceResourceURLCollection4 logMessageSummary];
        *v93 = 138412290;
        v94 = logMessageSummary3;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create output image for %@", v93, 0xCu);
      }

      [jobCopy setStatus:2];
      goto LABEL_83;
    }

    options3 = [v15 options];
    CGImageDestinationAddImage(imageDestination, v57, options3);

    CGImageRelease(v57);
    goto LABEL_78;
  }

  [jobCopy setStatus:2];
LABEL_85:
}

@end