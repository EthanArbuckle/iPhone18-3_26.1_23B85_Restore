@interface MADAlchemistAnalzyer
+ (id)sharedProcessingQueue;
- (MADAlchemistAnalzyer)initWithOptions:(id)options;
- (__CVBuffer)loadImageFromURL:(id)l;
- (float)getFocalLengthPX:(id)x width:(int)width height:(int)height;
- (id)convertHeadroom:(id)headroom forImage:(id)image;
- (int)performAlchemistForPixelBuffer:(__CVBuffer *)buffer options:(id)options results:(id *)results cancel:(id)cancel;
- (int)performAlchemistForURL:(id)l options:(id)options results:(id *)results cancel:(id)cancel;
@end

@implementation MADAlchemistAnalzyer

- (MADAlchemistAnalzyer)initWithOptions:(id)options
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = MADAlchemistAnalzyer;
  v6 = [(MADAlchemistAnalzyer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
    v8 = v7;
  }

  return v7;
}

+ (id)sharedProcessingQueue
{
  if (qword_100014A08 != -1)
  {
    sub_100008F3C();
  }

  v3 = qword_100014A00;

  return v3;
}

- (int)performAlchemistForPixelBuffer:(__CVBuffer *)buffer options:(id)options results:(id *)results cancel:(id)cancel
{
  optionsCopy = options;
  cancelCopy = cancel;
  v11 = cancelCopy;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_100002CD4;
  v56 = sub_100002CE4;
  v57 = 0;
  if (!cancelCopy || ((*(cancelCopy + 2))(cancelCopy) & 1) == 0)
  {
    resultsCopy = results;
    v13 = +[NSFileManager defaultManager];
    if (([v13 fileExistsAtPath:@"/tmp/com.apple.mediaanalysisd/"] & 1) == 0)
    {
      v14 = (v53 + 5);
      obj = v53[5];
      v15 = [v13 createDirectoryAtPath:@"/tmp/com.apple.mediaanalysisd/" withIntermediateDirectories:1 attributes:0 error:&obj];
      objc_storeStrong(v14, obj);
      if ((v15 & 1) == 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [v53[5] description];
          objc_claimAutoreleasedReturnValue();
          sub_100008F50();
        }

        v12 = -36;
        goto LABEL_24;
      }
    }

    v16 = +[NSUUID UUID];
    uUIDString = [v16 UUIDString];
    v41 = [NSString stringWithFormat:@"%@al-%@.mxi", @"/tmp/com.apple.mediaanalysisd/", uUIDString];

    v18 = [[NSURL alloc] initFileURLWithPath:v41];
    v19 = [optionsCopy objectForKeyedSubscript:@"AlchemistFocalLengthPX"];
    v20 = v19;
    if (v19)
    {
      [v19 floatValue];
      Width = v21;
    }

    else
    {
      Width = CVPixelBufferGetWidth(buffer);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[MADAlchemistAnalyzer] Use default FocalLenghtPX", buf, 2u);
      }
    }

    v38 = [optionsCopy objectForKeyedSubscript:@"AlchemistPreset"];
    v40 = [optionsCopy objectForKeyedSubscript:@"AlchemistResolutionCustomSize"];
    v23 = [optionsCopy objectForKeyedSubscript:@"AlchemistClient"];
    *buf = 0;
    v67 = buf;
    v68 = 0x3032000000;
    v69 = sub_100002CD4;
    v70 = sub_100002CE4;
    v71 = 0;
    sharedProcessingQueue = [objc_opt_class() sharedProcessingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002CEC;
    block[3] = &unk_1000108A0;
    bufferCopy = buffer;
    v50 = Width;
    v25 = v38;
    v44 = v25;
    v26 = v40;
    v45 = v26;
    v27 = v23;
    v46 = v27;
    v47 = &v52;
    v48 = buf;
    dispatch_sync(sharedProcessingQueue, block);

    if (v53[5] || !*(v67 + 5))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [v53[5] description];
        objc_claimAutoreleasedReturnValue();
        sub_100008FE8();
      }
    }

    else
    {
      v28 = [optionsCopy objectForKeyedSubscript:@"UserInitiated"];
      if (v28)
      {

LABEL_21:
        v64 = @"AlchemistResults";
        v31 = *(v67 + 5);
        v62 = @"alchemistMXIScene";
        v63 = v31;
        v32 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v65 = v32;
        *resultsCopy = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];

LABEL_22:
        v12 = 0;
        goto LABEL_23;
      }

      v29 = [optionsCopy objectForKeyedSubscript:@"InProcess"];
      v30 = v29 == 0;

      if (!v30)
      {
        goto LABEL_21;
      }

      v34 = *(v67 + 5);
      v35 = (v53 + 5);
      v42 = v53[5];
      v37 = [v34 writeToURL:v18 error:&v42];
      objc_storeStrong(v35, v42);
      if (v37)
      {
        v60 = @"AlchemistResults";
        v58 = @"alchemistPath";
        v59 = v41;
        v36 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v61 = v36;
        *resultsCopy = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];

        goto LABEL_22;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [v53[5] description];
        objc_claimAutoreleasedReturnValue();
        sub_100008F9C();
      }
    }

    v12 = -18;
LABEL_23:

    _Block_object_dispose(buf, 8);
LABEL_24:

    goto LABEL_25;
  }

  v12 = -128;
LABEL_25:
  _Block_object_dispose(&v52, 8);

  return v12;
}

- (int)performAlchemistForURL:(id)l options:(id)options results:(id *)results cancel:(id)cancel
{
  lCopy = l;
  optionsCopy = options;
  cancelCopy = cancel;
  v13 = [(MADAlchemistAnalzyer *)self loadImageFromURL:lCopy];
  pixelBuffer = v13;
  if (v13)
  {
    Width = CVPixelBufferGetWidth(v13);
    [(MADAlchemistAnalzyer *)self getFocalLengthPX:lCopy width:Width height:CVPixelBufferGetHeight(pixelBuffer)];
    v16 = v15;
    v17 = [optionsCopy mutableCopy];
    LODWORD(v18) = v16;
    v19 = [NSNumber numberWithFloat:v18];
    [v17 setObject:v19 forKeyedSubscript:@"AlchemistFocalLengthPX"];

    v20 = [v17 copy];
    v21 = [(MADAlchemistAnalzyer *)self performAlchemistForPixelBuffer:pixelBuffer options:v20 results:results cancel:cancelCopy];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100009080();
    }

    v21 = -18;
  }

  sub_1000020D0(&pixelBuffer);

  return v21;
}

- (__CVBuffer)loadImageFromURL:(id)l
{
  lCopy = l;
  pixelBufferOut = 0;
  v27 = kCIImageApplyOrientationProperty;
  v28 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v6 = [CIImage imageWithContentsOfURL:lCopy options:v5];

  if (v6)
  {
    v7 = [(MADAlchemistAnalzyer *)self convertHeadroom:0 forImage:v6];
    if (v7)
    {
      v25 = kCVPixelBufferIOSurfacePropertiesKey;
      v26 = &__NSDictionary0__struct;
      v8 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [v7 extent];
      v10 = v9;
      [v7 extent];
      if (CVPixelBufferCreate(0, v10, v11, 0x42475241u, v8, &pixelBufferOut))
      {
        v12 = 0;
      }

      else
      {
        CVBufferSetAttachment(pixelBufferOut, kCVImageBufferCGColorSpaceKey, kCGColorSpaceDisplayP3, kCVAttachmentMode_ShouldPropagate);
        v13 = [CIRenderDestination alloc];
        v14 = [v13 initWithPixelBuffer:pixelBufferOut];
        v15 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
        [v14 setColorSpace:v15];
        CGColorSpaceRelease(v15);
        v16 = +[CIContext context];
        [v7 extent];
        v23 = 0;
        v17 = [v16 startTaskToRender:v7 fromRect:v14 toDestination:&v23 atPoint:? error:?];
        v18 = v23;

        if (!v17 || v18)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [v18 description];
            objc_claimAutoreleasedReturnValue();
            sub_1000090C8();
          }

          v12 = 0;
        }

        else
        {
          v22 = 0;
          v19 = [v17 waitUntilCompletedAndReturnError:&v22];
          v20 = v22;
          v18 = v20;
          if (!v19 || v20)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [v18 description];
              objc_claimAutoreleasedReturnValue();
              sub_1000090C8();
            }

            v12 = 0;
          }

          else
          {
            v12 = pixelBufferOut;
          }
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (float)getFocalLengthPX:(id)x width:(int)width height:(int)height
{
  xCopy = x;
  widthCopy = width;
  isrc = CGImageSourceCreateWithURL(xCopy, 0);
  if (isrc)
  {
    v22 = kCGImageSourceShouldCache;
    v23 = &__kCFBooleanFalse;
    v9 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v10 = CGImageSourceCopyPropertiesAtIndex(isrc, 0, v9);
    v11 = v10;
    if (v10)
    {
      v12 = [(__CFDictionary *)v10 objectForKeyedSubscript:kCGImagePropertyExifDictionary];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 objectForKeyedSubscript:kCGImagePropertyExifFocalLenIn35mmFilm];
        v15 = v14 == 0;

        if (!v15)
        {
          v16 = [v13 objectForKeyedSubscript:kCGImagePropertyExifFocalLenIn35mmFilm];
          [v16 floatValue];
          v18 = v17;

          v19 = sqrtf((height * height) + (widthCopy * widthCopy)) / 43.27;
          widthCopy = v18 * v19;
        }
      }
    }
  }

  sub_1000020D0(&isrc);

  return widthCopy;
}

- (id)convertHeadroom:(id)headroom forImage:(id)image
{
  headroomCopy = headroom;
  imageCopy = image;
  v7 = imageCopy;
  if (headroomCopy)
  {
    v8 = headroomCopy;
  }

  else
  {
    v8 = &off_100010D60;
  }

  [imageCopy contentHeadroom];
  v10 = v9;
  [v8 floatValue];
  if (vabds_f32(v10, v11) <= 0.00000011921)
  {
    outputImage = v7;
  }

  else
  {
    v12 = [CIFilter filterWithName:@"CIToneMapHeadroom"];
    [v12 setValue:v7 forKey:kCIInputImageKey];
    [v8 floatValue];
    v13 = [NSNumber numberWithFloat:?];
    [v12 setValue:v13 forKey:@"inputTargetHeadroom"];

    outputImage = [v12 outputImage];
    [v12 setValue:0 forKey:kCIInputImageKey];
  }

  return outputImage;
}

@end