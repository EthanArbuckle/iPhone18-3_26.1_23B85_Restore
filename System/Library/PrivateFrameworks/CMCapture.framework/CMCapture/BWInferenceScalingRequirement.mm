@interface BWInferenceScalingRequirement
- (BWInferenceScalingRequirement)initWithInputVideoRequirement:(id)requirement requestedOutputVideoRequirements:(id)requirements intermediatePixelBufferCompressionType:(int)type processingConfiguration:(id)configuration;
- (BWInferenceVideoRequirement)_appendIntermediateRequirementsToList:(void *)list forSatisfyingOutputRequirement:(unsigned int)requirement intermediatePixelBufferCompressionType:(void *)type processingConfiguration:;
- (unint64_t)_processOrderedVideoRequirementsForLandscapeOriented:(void *)oriented withPrototypeRequirement:;
- (void)dealloc;
@end

@implementation BWInferenceScalingRequirement

- (BWInferenceScalingRequirement)initWithInputVideoRequirement:(id)requirement requestedOutputVideoRequirements:(id)requirements intermediatePixelBufferCompressionType:(int)type processingConfiguration:(id)configuration
{
  v14.receiver = self;
  v14.super_class = BWInferenceScalingRequirement;
  v10 = [(BWInferenceScalingRequirement *)&v14 init];
  if (v10)
  {
    firstObject = [requirements firstObject];
    v13 = [MEMORY[0x1E695DF70] arrayWithObject:requirement];
    [(BWInferenceScalingRequirement *)v10 _appendIntermediateRequirementsToList:v13 forSatisfyingOutputRequirement:firstObject intermediatePixelBufferCompressionType:type processingConfiguration:configuration];
    [(BWInferenceScalingRequirement *)v10 _processOrderedVideoRequirementsForLandscapeOriented:v13 withPrototypeRequirement:firstObject];
    [v13 addObjectsFromArray:requirements];
    v10->_orderedVideoRequirements = [v13 copy];
  }

  return v10;
}

- (BWInferenceVideoRequirement)_appendIntermediateRequirementsToList:(void *)list forSatisfyingOutputRequirement:(unsigned int)requirement intermediatePixelBufferCompressionType:(void *)type processingConfiguration:
{
  v85 = result;
  if (result)
  {
    v7 = [objc_msgSend(a2 "lastObject")];
    videoFormat = [list videoFormat];
    width = [videoFormat width];
    height = [videoFormat height];
    if ([videoFormat deviceOriented])
    {
      deviceOriented = [v7 deviceOriented];
      v12 = deviceOriented ^ 1;
      if ((deviceOriented & 1) == 0 && width != height)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Requesting deviceOriented video for a non-square output size is invalid" userInfo:0]);
      }
    }

    else
    {
      v12 = 0;
    }

    rotationDegrees = [videoFormat rotationDegrees];
    v14 = (rotationDegrees - [v7 rotationDegrees] + 360) % 360;
    if (v14 == 180 || v14 == 0)
    {
      width2 = [videoFormat width];
      v82 = width2;
      height2 = [videoFormat height];
      width4 = height2;
    }

    else
    {
      width3 = [videoFormat width];
      height3 = [videoFormat height];
      height4 = [videoFormat height];
      width4 = [videoFormat width];
      v82 = width3;
      height2 = height3;
      width2 = height4;
    }

    if (![videoFormat cropDescriptor] || (v21 = objc_msgSend(objc_msgSend(videoFormat, "cropDescriptor"), "maxCropForDimensions:", objc_msgSend(v7, "width") | (objc_msgSend(v7, "height") << 32)), (v22 = HIDWORD(v21)) == 0) || (extendedWidth = v21, !v21))
    {
      extendedWidth = [v7 extendedWidth];
      LODWORD(v22) = [v7 extendedHeight];
    }

    v84 = width2;
    v24 = width2;
    v25 = width2 / extendedWidth;
    v26 = v25 >= 0.25;
    v27 = width4 / v22;
    v28 = v27 >= 0.25;
    listCopy = list;
    v87 = v12;
    v81 = v22;
    if (v12)
    {
      v26 = v25 >= 0.25 && (width4 / [v7 width]) >= 0.25;
      v28 = v27 >= 0.25 && (v24 / [v7 height]) >= 0.25;
    }

    v89 = a2;
    v29 = [videoFormat videoContentMode] == 1 && (v26 || v28);
    pixelFormat = [v7 pixelFormat];
    pixelFormat2 = [videoFormat pixelFormat];
    v86 = width4;
    if (pixelFormat == pixelFormat2)
    {
      goto LABEL_34;
    }

    v32 = 0;
    if (pixelFormat != 1380411457 && pixelFormat != 1815162994)
    {
      v33 = *MEMORY[0x1E695E480];
      v34 = FigCaptureUncompressedPixelFormatForPixelFormat(pixelFormat);
      v35 = CVPixelFormatDescriptionCreateWithPixelFormatType(v33, v34);
      if (v35)
      {
        v36 = v35;
        v32 = CFDictionaryGetValue(v35, *MEMORY[0x1E69662D8]) != 0;
        CFRelease(v36);
      }

      else
      {
        v32 = 0;
      }
    }

    if (pixelFormat2 == 1380411457 || pixelFormat2 == 1815162994 || (v37 = *MEMORY[0x1E695E480], v38 = FigCaptureUncompressedPixelFormatForPixelFormat(pixelFormat2), (v39 = CVPixelFormatDescriptionCreateWithPixelFormatType(v37, v38)) == 0))
    {
      if ((v32 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v40 = v39;
      v41 = CFDictionaryGetValue(v39, *MEMORY[0x1E69662D8]) != 0;
      CFRelease(v40);
      if (v32 == v41)
      {
LABEL_34:
        v42 = 0;
LABEL_35:
        scalingStrategy = [type scalingStrategy];
        result = [type scalingStrategy];
        v44 = (result & 4) == 0 && v42;
        v45 = (scalingStrategy & 2) == 0 && v44;
        v46 = v29 || v26 && v28;
        v47 = 0x1E695D000uLL;
        if (v46)
        {
          v49 = listCopy;
          v48 = v89;
          if (!v45)
          {
            return result;
          }

          v50 = [[BWInferenceVideoFormatRequirements alloc] initWithFormat:videoFormat];
          [(BWInferenceVideoFormatRequirements *)v50 setCropDescriptor:0];
          LossyCompressionLevel = FigCapturePixelFormatGetLossyCompressionLevel(pixelFormat);
          v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{FigCaptureCompressedPixelFormatForPixelFormat(pixelFormat, requirement, LossyCompressionLevel)}];
          -[BWVideoFormatRequirements setSupportedPixelFormats:](v50, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1]);
          v97 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "colorSpaceProperties")}];
          -[BWVideoFormatRequirements setSupportedColorSpaceProperties:](v50, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1]);
          -[BWInferenceVideoFormatRequirements setCropDescriptor:](v50, "setCropDescriptor:", [videoFormat cropDescriptor]);
          -[BWInferenceVideoFormatRequirements setHistogramRequest:](v50, "setHistogramRequest:", [videoFormat histogramRequest]);
          -[BWInferenceVideoFormatRequirements setLandscapeOriented:](v50, "setLandscapeOriented:", [videoFormat landscapeOriented]);
          v96 = v50;
          v52 = &v96;
          goto LABEL_94;
        }

        v53 = vcvtpd_s64_f64(vcvtd_n_f64_u64([v7 extendedWidth], 2uLL) * 0.5);
        v54 = vcvtpd_s64_f64(vcvtd_n_f64_u64([v7 extendedHeight], 2uLL) * 0.5);
        v55 = [[BWInferenceVideoFormatRequirements alloc] initWithFormat:videoFormat];
        v56 = FigCapturePixelFormatBytesPerPixel(pixelFormat);
        if (v56)
        {
          if (FigCapturePixelFormatBytesPerPixel(pixelFormat2) > v56 || v45)
          {
LABEL_46:
            v57 = FigCapturePixelFormatGetLossyCompressionLevel(pixelFormat);
            v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{FigCaptureCompressedPixelFormatForPixelFormat(pixelFormat, requirement, v57)}];
            v58 = &v95;
            v59 = v86;
            v47 = 0x1E695D000;
            goto LABEL_53;
          }
        }

        else if (v45)
        {
          goto LABEL_46;
        }

        v59 = v86;
        v47 = 0x1E695D000uLL;
        if (!requirement)
        {
          goto LABEL_54;
        }

        v61 = FigCapturePixelFormatGetLossyCompressionLevel(pixelFormat2);
        v94 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{FigCaptureCompressedPixelFormatForPixelFormat(pixelFormat2, requirement, v61)}];
        v58 = &v94;
LABEL_53:
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v55, "setSupportedPixelFormats:", [*(v47 + 3784) arrayWithObjects:v58 count:1]);
LABEL_54:
        v62 = 2 * v53;
        v63 = 2 * v54;
        if (v87)
        {
          if (v62 <= v63)
          {
            v62 = 2 * v54;
          }

          v64 = v62;
          [(BWVideoFormatRequirements *)v55 setWidth:v62];
        }

        else
        {
          if (v82 > v62)
          {
            v62 = v82;
          }

          [(BWVideoFormatRequirements *)v55 setWidth:v62];
          if (height2 <= v63)
          {
            v65 = 2 * v54;
          }

          else
          {
            v65 = height2;
          }

          v64 = v65;
        }

        v49 = listCopy;
        [(BWVideoFormatRequirements *)v55 setHeight:v64];
        if ((scalingStrategy & 2) != 0 && vcvtd_n_f64_u64([(BWVideoFormatRequirements *)v55 width], 2uLL) < v84)
        {
          v48 = v89;
          if (vcvtd_n_f64_u64([(BWVideoFormatRequirements *)v55 height], 2uLL) >= v59)
          {
            v76 = 0;
            goto LABEL_85;
          }

          width5 = [(BWVideoFormatRequirements *)v55 width];
          width6 = [videoFormat width];
          v68 = 2 * width6;
          v69 = 3;
          while (v68 <= width5 || v68 >= v80)
          {
            v68 += width6;
            if (!--v69)
            {
              LODWORD(v68) = width5;
              break;
            }
          }

          height5 = [(BWVideoFormatRequirements *)v55 height];
          height6 = [videoFormat height];
          v72 = 2 * height6;
          v73 = 3;
          while (v72 <= height5 || v72 >= v81)
          {
            v72 += height6;
            if (!--v73)
            {
              LODWORD(v72) = height5;
              break;
            }
          }

          [(BWVideoFormatRequirements *)v55 setWidth:v68];
          [(BWVideoFormatRequirements *)v55 setHeight:v72];
          width7 = [v7 width];
          v76 = width7 < [v7 height] && v68 > v72;
        }

        else
        {
          v76 = 0;
        }

        v48 = v89;
LABEL_85:
        v93 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "colorSpaceProperties")}];
        -[BWVideoFormatRequirements setSupportedColorSpaceProperties:](v55, "setSupportedColorSpaceProperties:", [*(v47 + 3784) arrayWithObjects:&v93 count:1]);
        v77 = [objc_msgSend(v7 "cropDescriptor")];
        if (v77 == [objc_msgSend(videoFormat "cropDescriptor")])
        {
          cropDescriptor = [v7 cropDescriptor];
        }

        else
        {
          cropDescriptor = 0;
        }

        [(BWInferenceVideoFormatRequirements *)v55 setCropDescriptor:cropDescriptor];
        if ([type scalingAppliesCropOnInputResolution])
        {
          -[BWInferenceVideoFormatRequirements setCropDescriptor:](v55, "setCropDescriptor:", [videoFormat cropDescriptor]);
        }

        -[BWInferenceVideoFormatRequirements setHistogramRequest:](v55, "setHistogramRequest:", [videoFormat histogramRequest]);
        -[BWInferenceVideoFormatRequirements setRotationDegrees:](v55, "setRotationDegrees:", [v7 rotationDegrees]);
        if (v76 && [videoFormat landscapeOriented])
        {
          [(BWInferenceVideoFormatRequirements *)v55 setRotationDegrees:[(BWInferenceVideoFormatRequirements *)v55 rotationDegrees]- 90];
        }

        -[BWInferenceVideoFormatRequirements setLandscapeOriented:](v55, "setLandscapeOriented:", [v7 landscapeOriented]);
        -[BWInferenceVideoFormatRequirements setApplyHorizontalFlip:](v55, "setApplyHorizontalFlip:", [v7 applyHorizontalFlip]);
        v92 = v55;
        v52 = &v92;
LABEL_94:
        result = -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:count:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:count:", [v49 attachedMediaKey], +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", objc_msgSend(*(v47 + 3784), "arrayWithObjects:count:", v52, 1)), objc_msgSend(v49, "count"));
        if (result)
        {
          [v48 addObject:result];
          return [(BWInferenceScalingRequirement *)v85 _appendIntermediateRequirementsToList:v48 forSatisfyingOutputRequirement:v49 intermediatePixelBufferCompressionType:requirement processingConfiguration:type];
        }

        return result;
      }
    }

    width8 = [v7 width];
    if (width8 <= [videoFormat width])
    {
      height7 = [v7 height];
      v42 = height7 > [videoFormat height];
    }

    else
    {
      v42 = 1;
    }

    goto LABEL_35;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceScalingRequirement;
  [(BWInferenceScalingRequirement *)&v3 dealloc];
}

- (unint64_t)_processOrderedVideoRequirementsForLandscapeOriented:(void *)oriented withPrototypeRequirement:
{
  if (result)
  {
    result = [a2 count];
    if (result == 1)
    {
      result = [objc_msgSend(oriented "videoFormat")];
      if (result)
      {
        videoFormat = [oriented videoFormat];
        lastObject = [a2 lastObject];
        v7 = [objc_msgSend(a2 "lastObject")];
        width = [v7 width];
        result = [v7 height];
        if (width < result)
        {
          width2 = [videoFormat width];
          result = [videoFormat height];
          if (width2 > result)
          {
            v10 = -[BWInferenceVideoFormatRequirements initWithFormat:]([BWInferenceVideoFormatRequirements alloc], "initWithFormat:", [lastObject videoFormat]);
            [(BWInferenceVideoFormatRequirements *)v10 setRotationDegrees:[(BWInferenceVideoFormatRequirements *)v10 rotationDegrees]- 90];
            v12 = v10;
            v11 = -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:count:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:count:", [lastObject attachedMediaKey], +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v12, 1)), objc_msgSend(lastObject, "count"));
            [a2 removeLastObject];
            return [a2 addObject:v11];
          }
        }
      }
    }
  }

  return result;
}

@end