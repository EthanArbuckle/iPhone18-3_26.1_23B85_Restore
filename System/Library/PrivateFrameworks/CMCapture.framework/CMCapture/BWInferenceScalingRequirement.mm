@interface BWInferenceScalingRequirement
- (BWInferenceScalingRequirement)initWithInputVideoRequirement:(id)a3 requestedOutputVideoRequirements:(id)a4 intermediatePixelBufferCompressionType:(int)a5 processingConfiguration:(id)a6;
- (BWInferenceVideoRequirement)_appendIntermediateRequirementsToList:(void *)a3 forSatisfyingOutputRequirement:(unsigned int)a4 intermediatePixelBufferCompressionType:(void *)a5 processingConfiguration:;
- (unint64_t)_processOrderedVideoRequirementsForLandscapeOriented:(void *)a3 withPrototypeRequirement:;
- (void)dealloc;
@end

@implementation BWInferenceScalingRequirement

- (BWInferenceScalingRequirement)initWithInputVideoRequirement:(id)a3 requestedOutputVideoRequirements:(id)a4 intermediatePixelBufferCompressionType:(int)a5 processingConfiguration:(id)a6
{
  v14.receiver = self;
  v14.super_class = BWInferenceScalingRequirement;
  v10 = [(BWInferenceScalingRequirement *)&v14 init];
  if (v10)
  {
    v12 = [a4 firstObject];
    v13 = [MEMORY[0x1E695DF70] arrayWithObject:a3];
    [(BWInferenceScalingRequirement *)v10 _appendIntermediateRequirementsToList:v13 forSatisfyingOutputRequirement:v12 intermediatePixelBufferCompressionType:a5 processingConfiguration:a6];
    [(BWInferenceScalingRequirement *)v10 _processOrderedVideoRequirementsForLandscapeOriented:v13 withPrototypeRequirement:v12];
    [v13 addObjectsFromArray:a4];
    v10->_orderedVideoRequirements = [v13 copy];
  }

  return v10;
}

- (BWInferenceVideoRequirement)_appendIntermediateRequirementsToList:(void *)a3 forSatisfyingOutputRequirement:(unsigned int)a4 intermediatePixelBufferCompressionType:(void *)a5 processingConfiguration:
{
  v85 = result;
  if (result)
  {
    v7 = [objc_msgSend(a2 "lastObject")];
    v8 = [a3 videoFormat];
    v9 = [v8 width];
    v10 = [v8 height];
    if ([v8 deviceOriented])
    {
      v11 = [v7 deviceOriented];
      v12 = v11 ^ 1;
      if ((v11 & 1) == 0 && v9 != v10)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Requesting deviceOriented video for a non-square output size is invalid" userInfo:0]);
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = [v8 rotationDegrees];
    v14 = (v13 - [v7 rotationDegrees] + 360) % 360;
    if (v14 == 180 || v14 == 0)
    {
      v20 = [v8 width];
      v82 = v20;
      v83 = [v8 height];
      v19 = v83;
    }

    else
    {
      v16 = [v8 width];
      v17 = [v8 height];
      v18 = [v8 height];
      v19 = [v8 width];
      v82 = v16;
      v83 = v17;
      v20 = v18;
    }

    if (![v8 cropDescriptor] || (v21 = objc_msgSend(objc_msgSend(v8, "cropDescriptor"), "maxCropForDimensions:", objc_msgSend(v7, "width") | (objc_msgSend(v7, "height") << 32)), (v22 = HIDWORD(v21)) == 0) || (v23 = v21, !v21))
    {
      v23 = [v7 extendedWidth];
      LODWORD(v22) = [v7 extendedHeight];
    }

    v84 = v20;
    v24 = v20;
    v25 = v20 / v23;
    v26 = v25 >= 0.25;
    v27 = v19 / v22;
    v28 = v27 >= 0.25;
    v88 = a3;
    v87 = v12;
    v81 = v22;
    if (v12)
    {
      v26 = v25 >= 0.25 && (v19 / [v7 width]) >= 0.25;
      v28 = v27 >= 0.25 && (v24 / [v7 height]) >= 0.25;
    }

    v89 = a2;
    v29 = [v8 videoContentMode] == 1 && (v26 || v28);
    v30 = [v7 pixelFormat];
    v31 = [v8 pixelFormat];
    v86 = v19;
    if (v30 == v31)
    {
      goto LABEL_34;
    }

    v32 = 0;
    if (v30 != 1380411457 && v30 != 1815162994)
    {
      v33 = *MEMORY[0x1E695E480];
      v34 = FigCaptureUncompressedPixelFormatForPixelFormat(v30);
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

    if (v31 == 1380411457 || v31 == 1815162994 || (v37 = *MEMORY[0x1E695E480], v38 = FigCaptureUncompressedPixelFormatForPixelFormat(v31), (v39 = CVPixelFormatDescriptionCreateWithPixelFormatType(v37, v38)) == 0))
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
        v43 = [a5 scalingStrategy];
        result = [a5 scalingStrategy];
        v44 = (result & 4) == 0 && v42;
        v45 = (v43 & 2) == 0 && v44;
        v46 = v29 || v26 && v28;
        v47 = 0x1E695D000uLL;
        if (v46)
        {
          v49 = v88;
          v48 = v89;
          if (!v45)
          {
            return result;
          }

          v50 = [[BWInferenceVideoFormatRequirements alloc] initWithFormat:v8];
          [(BWInferenceVideoFormatRequirements *)v50 setCropDescriptor:0];
          LossyCompressionLevel = FigCapturePixelFormatGetLossyCompressionLevel(v30);
          v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{FigCaptureCompressedPixelFormatForPixelFormat(v30, a4, LossyCompressionLevel)}];
          -[BWVideoFormatRequirements setSupportedPixelFormats:](v50, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1]);
          v97 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "colorSpaceProperties")}];
          -[BWVideoFormatRequirements setSupportedColorSpaceProperties:](v50, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1]);
          -[BWInferenceVideoFormatRequirements setCropDescriptor:](v50, "setCropDescriptor:", [v8 cropDescriptor]);
          -[BWInferenceVideoFormatRequirements setHistogramRequest:](v50, "setHistogramRequest:", [v8 histogramRequest]);
          -[BWInferenceVideoFormatRequirements setLandscapeOriented:](v50, "setLandscapeOriented:", [v8 landscapeOriented]);
          v96 = v50;
          v52 = &v96;
          goto LABEL_94;
        }

        v53 = vcvtpd_s64_f64(vcvtd_n_f64_u64([v7 extendedWidth], 2uLL) * 0.5);
        v54 = vcvtpd_s64_f64(vcvtd_n_f64_u64([v7 extendedHeight], 2uLL) * 0.5);
        v55 = [[BWInferenceVideoFormatRequirements alloc] initWithFormat:v8];
        v56 = FigCapturePixelFormatBytesPerPixel(v30);
        if (v56)
        {
          if (FigCapturePixelFormatBytesPerPixel(v31) > v56 || v45)
          {
LABEL_46:
            v57 = FigCapturePixelFormatGetLossyCompressionLevel(v30);
            v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{FigCaptureCompressedPixelFormatForPixelFormat(v30, a4, v57)}];
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
        if (!a4)
        {
          goto LABEL_54;
        }

        v61 = FigCapturePixelFormatGetLossyCompressionLevel(v31);
        v94 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{FigCaptureCompressedPixelFormatForPixelFormat(v31, a4, v61)}];
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
          if (v83 <= v63)
          {
            v65 = 2 * v54;
          }

          else
          {
            v65 = v83;
          }

          v64 = v65;
        }

        v49 = v88;
        [(BWVideoFormatRequirements *)v55 setHeight:v64];
        if ((v43 & 2) != 0 && vcvtd_n_f64_u64([(BWVideoFormatRequirements *)v55 width], 2uLL) < v84)
        {
          v48 = v89;
          if (vcvtd_n_f64_u64([(BWVideoFormatRequirements *)v55 height], 2uLL) >= v59)
          {
            v76 = 0;
            goto LABEL_85;
          }

          v66 = [(BWVideoFormatRequirements *)v55 width];
          v67 = [v8 width];
          v68 = 2 * v67;
          v69 = 3;
          while (v68 <= v66 || v68 >= v80)
          {
            v68 += v67;
            if (!--v69)
            {
              LODWORD(v68) = v66;
              break;
            }
          }

          v70 = [(BWVideoFormatRequirements *)v55 height];
          v71 = [v8 height];
          v72 = 2 * v71;
          v73 = 3;
          while (v72 <= v70 || v72 >= v81)
          {
            v72 += v71;
            if (!--v73)
            {
              LODWORD(v72) = v70;
              break;
            }
          }

          [(BWVideoFormatRequirements *)v55 setWidth:v68];
          [(BWVideoFormatRequirements *)v55 setHeight:v72];
          v74 = [v7 width];
          v76 = v74 < [v7 height] && v68 > v72;
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
        if (v77 == [objc_msgSend(v8 "cropDescriptor")])
        {
          v78 = [v7 cropDescriptor];
        }

        else
        {
          v78 = 0;
        }

        [(BWInferenceVideoFormatRequirements *)v55 setCropDescriptor:v78];
        if ([a5 scalingAppliesCropOnInputResolution])
        {
          -[BWInferenceVideoFormatRequirements setCropDescriptor:](v55, "setCropDescriptor:", [v8 cropDescriptor]);
        }

        -[BWInferenceVideoFormatRequirements setHistogramRequest:](v55, "setHistogramRequest:", [v8 histogramRequest]);
        -[BWInferenceVideoFormatRequirements setRotationDegrees:](v55, "setRotationDegrees:", [v7 rotationDegrees]);
        if (v76 && [v8 landscapeOriented])
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
          return [(BWInferenceScalingRequirement *)v85 _appendIntermediateRequirementsToList:v48 forSatisfyingOutputRequirement:v49 intermediatePixelBufferCompressionType:a4 processingConfiguration:a5];
        }

        return result;
      }
    }

    v60 = [v7 width];
    if (v60 <= [v8 width])
    {
      v79 = [v7 height];
      v42 = v79 > [v8 height];
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

- (unint64_t)_processOrderedVideoRequirementsForLandscapeOriented:(void *)a3 withPrototypeRequirement:
{
  if (result)
  {
    result = [a2 count];
    if (result == 1)
    {
      result = [objc_msgSend(a3 "videoFormat")];
      if (result)
      {
        v5 = [a3 videoFormat];
        v6 = [a2 lastObject];
        v7 = [objc_msgSend(a2 "lastObject")];
        v8 = [v7 width];
        result = [v7 height];
        if (v8 < result)
        {
          v9 = [v5 width];
          result = [v5 height];
          if (v9 > result)
          {
            v10 = -[BWInferenceVideoFormatRequirements initWithFormat:]([BWInferenceVideoFormatRequirements alloc], "initWithFormat:", [v6 videoFormat]);
            [(BWInferenceVideoFormatRequirements *)v10 setRotationDegrees:[(BWInferenceVideoFormatRequirements *)v10 rotationDegrees]- 90];
            v12 = v10;
            v11 = -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:count:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:count:", [v6 attachedMediaKey], +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v12, 1)), objc_msgSend(v6, "count"));
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