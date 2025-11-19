@interface VideoStillImageExtractionTask
- (double)posterFrameScaleFactorForCGImage:(CGImage *)a3;
- (void)extractStillImage;
- (void)performConversion;
- (void)storeImage;
@end

@implementation VideoStillImageExtractionTask

- (void)storeImage
{
  v3 = [(VideoStillImageExtractionTask *)self imageData];

  if (v3)
  {
    if ([(VideoConversionTask *)self wantsResultAsData])
    {
      v4 = [(VideoStillImageExtractionTask *)self imageData];
      v5 = [(VideoConversionTask *)self resultInformation];
      [v5 setObject:v4 forKeyedSubscript:@"PAMediaConversionServiceResultDataKey"];

LABEL_6:
      v10 = [(VideoStillImageExtractionTask *)self imageData];
      v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 length]);
      v12 = [(VideoConversionTask *)self resultInformation];
      [v12 setObject:v11 forKeyedSubscript:@"PAMediaConversionServiceFileSizeKey"];

      [(VideoConversionTask *)self setStatus:1];
      return;
    }

    v6 = [(VideoConversionTask *)self outputMainResourceURL];

    if (v6)
    {
      v7 = [(VideoStillImageExtractionTask *)self imageData];
      v8 = [(VideoConversionTask *)self outputMainResourceURL];
      v17 = 0;
      v9 = [v7 writeToURL:v8 options:1 error:&v17];
      v4 = v17;

      if (v9)
      {
        goto LABEL_6;
      }

      v20[0] = NSLocalizedDescriptionKey;
      v20[1] = NSUnderlyingErrorKey;
      v21[0] = @"Unable to write output data";
      v21[1] = v4;
      v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
      v16 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v15];
      [(VideoConversionTask *)self setError:v16];
    }

    else
    {
      v18 = NSDebugDescriptionErrorKey;
      v19 = @"Caller wants result to URL but no URL is provided";
      v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v14 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:v13];
      [(VideoConversionTask *)self setError:v14];
    }
  }
}

- (double)posterFrameScaleFactorForCGImage:(CGImage *)a3
{
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v7 = [(VideoConversionTask *)self options];
  v8 = [v7 objectForKeyedSubscript:@"PAMediaConversionServiceOptionBoundingBoxKey"];

  v9 = [(VideoConversionTask *)self options];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 objectForKeyedSubscript:@"PAMediaConversionServiceOptionBoundingBoxKey"];

    v13 = NSSizeFromString(v11);
    v12 = v13.width;
    if (v13.width >= v13.height)
    {
      v14 = v13.height;
    }

    else
    {
      v14 = v13.width;
    }

    if (v13.width < v13.height)
    {
      v12 = v13.height;
    }

    if (Width >= Height)
    {
      v15 = Height;
    }

    else
    {
      v15 = Width;
    }

    v16 = v14 / v15;
    if (Width >= Height)
    {
      v17 = Width;
    }

    else
    {
      v17 = Height;
    }

    v18 = v12 / v17;
    if (v16 < v18)
    {
      v18 = v16;
    }

    v19 = fmin(v18, 1.0);

    return v19;
  }

  v21 = [v9 objectForKeyedSubscript:@"PAMediaConversionServiceOptionMaximumPixelCountKey"];

  if (!v21)
  {
    return 1.0;
  }

  v22 = [(VideoConversionTask *)self options];
  v23 = [v22 objectForKeyedSubscript:@"PAMediaConversionServiceOptionMaximumPixelCountKey"];
  [v23 integerValue];

  PFScaleFactorForMaximumPixelCount();
  return result;
}

- (void)extractStillImage
{
  v3 = [(VideoConversionTask *)self asset];
  if (v3)
  {
    v4 = [[AVAssetImageGenerator alloc] initWithAsset:v3];
    [v4 setAppliesPreferredTrackTransform:1];
    memset(v60, 0, sizeof(v60));
    v56 = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    v58 = 0;
    v5 = [PFMediaUtilities copyCGImageFromImageGenerator:v4 atTime:&v56 actualTime:v60 error:&v58];
    v6 = v58;
    arg = v5;
    if (v5)
    {
      PFCGImageApplyTemporaryAVAssetImageGeneratorColorSpaceWorkaround();
      CFAutorelease(arg);
      [(VideoStillImageExtractionTask *)self posterFrameScaleFactorForCGImage:arg];
      v8 = v7;
      v9 = [(VideoConversionTask *)self options];
      v10 = [v9 objectForKeyedSubscript:@"PAMediaConversionServiceOptionColorSpaceKey"];

      if (!v10 || (-[VideoConversionTask options](self, "options"), v11 = objc_claimAutoreleasedReturnValue(), [v11 objectForKeyedSubscript:@"PAMediaConversionServiceOptionColorSpaceKey"], v12 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v12, "integerValue"), v12, v11, v10 < 3))
      {
        v13 = [(VideoConversionTask *)self options];
        v14 = [v13 objectForKeyedSubscript:@"PAMediaConversionServiceOptionOutputFileTypeKey"];

        if (!v14)
        {
          v15 = [(VideoConversionTask *)self outputURLCollection];
          v16 = [v15 typeIdentifierForResourceURLWithRole:@"PAMediaConversionResourceRoleMainResource"];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = [UTTypeJPEG identifier];
          }

          v14 = v18;
        }

        if ([(VideoConversionTask *)self requiresPhotosAdjustmentRendering])
        {
          +[PAMediaConversionServiceSharedUtilitiesServiceSide registerPhotosAdjustmentsSubsystems];
          v21 = [(VideoConversionTask *)self options];
          v22 = [v21 objectForKeyedSubscript:@"PAMediaConversionServiceOptionAdjustmentInformationKey"];

          v54 = [CIImage imageWithCGImage:arg];
          v23 = [PIPhotoEditHelper imageSourceWithCIImage:"imageSourceWithCIImage:orientation:" orientation:?];
          v55 = v6;
          v24 = [PAMediaConversionServiceSharedUtilitiesServiceSide compositionForPhotosAdjustmentInformation:v22 error:&v55];
          v25 = v55;

          if (v24)
          {
            [v24 setObject:v23 forKeyedSubscript:@"source"];
            [v24 setMediaType:1];
            v26 = [PAMediaConversionServiceSharedUtilitiesServiceSide exporterImageOptionsForScaleFactor:0 maximumPixelCount:0 metadataPolicy:1 shouldApplyOrientationTransform:v14 outputFileType:v8];
            v56 = CGSizeZero;
            v53 = v23;
            v27 = [PAMediaConversionServiceSharedUtilitiesServiceSide imageDataForPhotosAdjustmentsComposition:"imageDataForPhotosAdjustmentsComposition:source:exporterImageOptions:outOutputSize:job:" source:v24 exporterImageOptions:? outOutputSize:? job:?];
            if (v27 || (width = v56.width, v56.width == CGSizeZero.width) && (width = v56.height, v56.height == CGSizeZero.height))
            {
              [(VideoStillImageExtractionTask *)self setImageData:v27];
              v29 = [(VideoConversionTask *)self resultInformation];
              v69[0] = @"PAMediaConversionServicePixelWidthKey";
              v51 = [NSNumber numberWithInteger:v56.width];
              v69[1] = @"PAMediaConversionServicePixelHeightKey";
              v70[0] = v51;
              v30 = [NSNumber numberWithInteger:v56.height];
              v70[1] = v30;
              [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];
              v52 = v4;
              v31 = v24;
              v32 = v27;
              v33 = v25;
              v34 = v26;
              v35 = v22;
              v37 = v36 = v14;
              [v29 addEntriesFromDictionary:v37];

              v14 = v36;
              v22 = v35;
              v26 = v34;
              v25 = v33;
              v27 = v32;
              v24 = v31;
              v4 = v52;

              v38 = v51;
            }

            else
            {
              v71 = NSLocalizedDescriptionKey;
              v72 = @"Unable to render video still frame or determine output size";
              v29 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1, width];
              v49 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v29];
              v50 = self;
              v38 = v49;
              [(VideoConversionTask *)v50 setError:v49];
            }
          }

          else
          {
            [(VideoConversionTask *)self setError:v25];
          }

          v44 = v54;
          goto LABEL_32;
        }

        if (fabs(v8 + -1.0) > 2.22044605e-16)
        {
          v39 = [PAMediaConversionServiceSharedUtilitiesServiceSide newScaledImageForImageRef:arg scaleFactor:1 orientation:sub_100012B84(arg colorspace:0, v10), v8];
          if (!v39)
          {
            v67 = NSLocalizedDescriptionKey;
            v68 = @"Unable to rotate image to preferred orientation";
            v22 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
            v44 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v22];
            [(VideoConversionTask *)self setError:v44];
LABEL_31:
            v25 = v6;
LABEL_32:

            v6 = v25;
            goto LABEL_33;
          }

          v40 = v39;
          CFAutorelease(v39);
          arg = v40;
        }

        v22 = +[NSMutableData data];
        v41 = CGImageDestinationCreateWithData(v22, v14, 1uLL, 0);
        if (v41)
        {
          v42 = v41;
          CGImageDestinationAddImage(v41, arg, &__NSDictionary0__struct);
          v43 = CGImageDestinationFinalize(v42);
          CFRelease(v42);
          if (v43)
          {
            [(VideoStillImageExtractionTask *)self setImageData:v22];
            v44 = [(VideoConversionTask *)self resultInformation];
            v61[0] = @"PAMediaConversionServicePixelWidthKey";
            v45 = [NSNumber numberWithUnsignedLong:CGImageGetWidth(arg)];
            v61[1] = @"PAMediaConversionServicePixelHeightKey";
            v62[0] = v45;
            v46 = [NSNumber numberWithUnsignedLong:CGImageGetHeight(arg)];
            v62[1] = v46;
            v47 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:2];
            [v44 addEntriesFromDictionary:v47];
          }

          else
          {
            v63 = NSLocalizedDescriptionKey;
            v64 = @"Unable to finalize image";
            v44 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
            v45 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v44];
            [(VideoConversionTask *)self setError:v45];
          }
        }

        else
        {
          v65 = NSLocalizedDescriptionKey;
          v66 = @"Unable to create image destination";
          v44 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
          v48 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v44];
          [(VideoConversionTask *)self setError:v48];
        }

        goto LABEL_31;
      }

      v73 = NSLocalizedDescriptionKey;
      v74 = @"Illegal ColorSpace option";
      v19 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      v20 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v19];
      [(VideoConversionTask *)self setError:v20];
    }

    else
    {
      [(VideoConversionTask *)self setError:v6];
    }

LABEL_33:
  }
}

- (void)performConversion
{
  v3.receiver = self;
  v3.super_class = VideoStillImageExtractionTask;
  [(VideoConversionTask *)&v3 performConversion];
  [(VideoConversionTask *)self loadAsset];
  [(VideoStillImageExtractionTask *)self extractStillImage];
  [(VideoStillImageExtractionTask *)self storeImage];
  [(VideoConversionTask *)self callCompletionHandler];
}

@end