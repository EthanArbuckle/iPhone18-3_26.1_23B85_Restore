@interface VideoStillImageExtractionTask
- (double)posterFrameScaleFactorForCGImage:(CGImage *)image;
- (void)extractStillImage;
- (void)performConversion;
- (void)storeImage;
@end

@implementation VideoStillImageExtractionTask

- (void)storeImage
{
  imageData = [(VideoStillImageExtractionTask *)self imageData];

  if (imageData)
  {
    if ([(VideoConversionTask *)self wantsResultAsData])
    {
      imageData2 = [(VideoStillImageExtractionTask *)self imageData];
      resultInformation = [(VideoConversionTask *)self resultInformation];
      [resultInformation setObject:imageData2 forKeyedSubscript:@"PAMediaConversionServiceResultDataKey"];

LABEL_6:
      imageData3 = [(VideoStillImageExtractionTask *)self imageData];
      v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [imageData3 length]);
      resultInformation2 = [(VideoConversionTask *)self resultInformation];
      [resultInformation2 setObject:v11 forKeyedSubscript:@"PAMediaConversionServiceFileSizeKey"];

      [(VideoConversionTask *)self setStatus:1];
      return;
    }

    outputMainResourceURL = [(VideoConversionTask *)self outputMainResourceURL];

    if (outputMainResourceURL)
    {
      imageData4 = [(VideoStillImageExtractionTask *)self imageData];
      outputMainResourceURL2 = [(VideoConversionTask *)self outputMainResourceURL];
      v17 = 0;
      v9 = [imageData4 writeToURL:outputMainResourceURL2 options:1 error:&v17];
      imageData2 = v17;

      if (v9)
      {
        goto LABEL_6;
      }

      v20[0] = NSLocalizedDescriptionKey;
      v20[1] = NSUnderlyingErrorKey;
      v21[0] = @"Unable to write output data";
      v21[1] = imageData2;
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

- (double)posterFrameScaleFactorForCGImage:(CGImage *)image
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  options = [(VideoConversionTask *)self options];
  v8 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionBoundingBoxKey"];

  options2 = [(VideoConversionTask *)self options];
  v10 = options2;
  if (v8)
  {
    v11 = [options2 objectForKeyedSubscript:@"PAMediaConversionServiceOptionBoundingBoxKey"];

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

  v21 = [options2 objectForKeyedSubscript:@"PAMediaConversionServiceOptionMaximumPixelCountKey"];

  if (!v21)
  {
    return 1.0;
  }

  options3 = [(VideoConversionTask *)self options];
  v23 = [options3 objectForKeyedSubscript:@"PAMediaConversionServiceOptionMaximumPixelCountKey"];
  [v23 integerValue];

  PFScaleFactorForMaximumPixelCount();
  return result;
}

- (void)extractStillImage
{
  asset = [(VideoConversionTask *)self asset];
  if (asset)
  {
    v4 = [[AVAssetImageGenerator alloc] initWithAsset:asset];
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
      options = [(VideoConversionTask *)self options];
      v10 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionColorSpaceKey"];

      if (!v10 || (-[VideoConversionTask options](self, "options"), v11 = objc_claimAutoreleasedReturnValue(), [v11 objectForKeyedSubscript:@"PAMediaConversionServiceOptionColorSpaceKey"], v12 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v12, "integerValue"), v12, v11, v10 < 3))
      {
        options2 = [(VideoConversionTask *)self options];
        v14 = [options2 objectForKeyedSubscript:@"PAMediaConversionServiceOptionOutputFileTypeKey"];

        if (!v14)
        {
          outputURLCollection = [(VideoConversionTask *)self outputURLCollection];
          v16 = [outputURLCollection typeIdentifierForResourceURLWithRole:@"PAMediaConversionResourceRoleMainResource"];
          v17 = v16;
          if (v16)
          {
            identifier = v16;
          }

          else
          {
            identifier = [UTTypeJPEG identifier];
          }

          v14 = identifier;
        }

        if ([(VideoConversionTask *)self requiresPhotosAdjustmentRendering])
        {
          +[PAMediaConversionServiceSharedUtilitiesServiceSide registerPhotosAdjustmentsSubsystems];
          options3 = [(VideoConversionTask *)self options];
          v22 = [options3 objectForKeyedSubscript:@"PAMediaConversionServiceOptionAdjustmentInformationKey"];

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
              resultInformation = [(VideoConversionTask *)self resultInformation];
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
              [resultInformation addEntriesFromDictionary:v37];

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
              resultInformation = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1, width];
              v49 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:resultInformation];
              selfCopy = self;
              v38 = v49;
              [(VideoConversionTask *)selfCopy setError:v49];
            }
          }

          else
          {
            [(VideoConversionTask *)self setError:v25];
          }

          resultInformation2 = v54;
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
            resultInformation2 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v22];
            [(VideoConversionTask *)self setError:resultInformation2];
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
            resultInformation2 = [(VideoConversionTask *)self resultInformation];
            v61[0] = @"PAMediaConversionServicePixelWidthKey";
            v45 = [NSNumber numberWithUnsignedLong:CGImageGetWidth(arg)];
            v61[1] = @"PAMediaConversionServicePixelHeightKey";
            v62[0] = v45;
            v46 = [NSNumber numberWithUnsignedLong:CGImageGetHeight(arg)];
            v62[1] = v46;
            v47 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:2];
            [resultInformation2 addEntriesFromDictionary:v47];
          }

          else
          {
            v63 = NSLocalizedDescriptionKey;
            v64 = @"Unable to finalize image";
            resultInformation2 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
            v45 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:resultInformation2];
            [(VideoConversionTask *)self setError:v45];
          }
        }

        else
        {
          v65 = NSLocalizedDescriptionKey;
          v66 = @"Unable to create image destination";
          resultInformation2 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
          v48 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:resultInformation2];
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