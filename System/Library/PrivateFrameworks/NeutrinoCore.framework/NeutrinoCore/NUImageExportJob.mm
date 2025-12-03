@interface NUImageExportJob
- (BOOL)render:(id *)render;
- (CGImage)copyCGImageWithIOSurface:(id)surface fromRect:(CGRect)rect colorSpace:(id)space error:(id *)error;
- (NUImageExportJob)initWithExportRequest:(id)request;
- (NUImageExportJob)initWithImageExportRequest:(id)request;
- (id)_filterProperties:(id)properties;
- (id)auxiliaryImageTypes;
- (id)auxiliaryImages;
- (id)evaluateRenderDependencies:(id *)dependencies;
- (id)imageDestinationOptions;
- (id)prepareNodeWithPipelineState:(id)state error:(id *)error;
- (id)result;
- (void)cleanUp;
@end

@implementation NUImageExportJob

- (void)cleanUp
{
  v4.receiver = self;
  v4.super_class = NUImageExportJob;
  [(NURenderJob *)&v4 cleanUp];
  destinationData = self->_destinationData;
  self->_destinationData = 0;
}

- (BOOL)render:(id *)render
{
  v131 = *MEMORY[0x1E69E9840];
  if (!render)
  {
    v91 = NUAssertLogger_14640();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v92;
      _os_log_error_impl(&dword_1C0184000, v91, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v94 = NUAssertLogger_14640();
    v95 = os_log_type_enabled(v94, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v95)
      {
        v98 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v99 = MEMORY[0x1E696AF00];
        v100 = v98;
        callStackSymbols = [v99 callStackSymbols];
        v102 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v98;
        *&buf[12] = 2114;
        *&buf[14] = v102;
        _os_log_error_impl(&dword_1C0184000, v94, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v95)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v97 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v97;
      _os_log_error_impl(&dword_1C0184000, v94, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageExportJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageExportJob.m", 342, @"Invalid parameter not satisfying: %s", v103, v104, v105, v106, "error != NULL");
  }

  v115 = [(NURenderJob *)self renderer:?];
  if (v115)
  {
    prepareNode = [(NURenderJob *)self prepareNode];
    v116 = [prepareNode imageProperties:render];

    if (!v116)
    {
      [NUError errorWithCode:1 reason:@"Failed to get image properties" object:0 underlyingError:*render];
      *render = v7 = 0;
LABEL_81:

      goto LABEL_82;
    }

    imageExportRequest = [(NUImageExportJob *)self imageExportRequest];
    colorSpace = [imageExportRequest colorSpace];
    v5 = colorSpace;
    if (colorSpace)
    {
      colorSpace2 = colorSpace;
    }

    else
    {
      colorSpace2 = [v116 colorSpace];
    }

    v8 = colorSpace2;

    if ([v8 isRGB])
    {
      v113 = v8;
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_124);
      }

      v9 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v8;
        _os_log_impl(&dword_1C0184000, v9, OS_LOG_TYPE_DEFAULT, "Destination color space is not RGB, falling back to sRGB: %{public}@", buf, 0xCu);
      }

      v10 = +[NUColorSpace sRGBColorSpace];

      v113 = v10;
    }

    imageSize = [(NURenderJob *)self imageSize];
    v13 = v12;
    format = [imageExportRequest format];
    pixelFormat = [format pixelFormat];
    context = [v115 context];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (![v113 isExtended] || (objc_msgSend(pixelFormat, "supportsExtendedRange") & 1) != 0)
    {
LABEL_32:
      if (![v113 isHDR] || objc_msgSend(pixelFormat, "bitsPerComponent") > 9)
      {
LABEL_48:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v128 = __Block_byref_object_copy__14664;
        v129 = __Block_byref_object_dispose__14665;
        v130 = 0;
        imageExportRequest2 = [(NUImageExportJob *)self imageExportRequest];
        renderWithIOSurface = [imageExportRequest2 renderWithIOSurface];

        if ((renderWithIOSurface & isKindOfClass) != 0)
        {
          outputImage = [(NURenderJob *)self outputImage];
          v52 = *&buf[8];
          obj = 0;
          image = [(NUImageExportJob *)self copyCGImageWithIOSurface:outputImage fromRect:v113 colorSpace:&obj error:0.0, 0.0, imageSize, v13];
          objc_storeStrong((v52 + 40), obj);
        }

        else if (objc_opt_respondsToSelector())
        {
          outputImage = [(NURenderJob *)self outputImage];
          cIFormat = [pixelFormat CIFormat];
          cGColorSpace = [v113 CGColorSpace];
          v124[0] = MEMORY[0x1E69E9820];
          v124[1] = 3221225472;
          v124[2] = __27__NUImageExportJob_render___block_invoke;
          v124[3] = &unk_1E810A498;
          v124[4] = buf;
          image = [context createCGImage:outputImage fromRect:cIFormat format:1 premultiplied:cGColorSpace colorSpace:1 deferred:v124 renderCallback:{0.0, 0.0, imageSize, v13}];
        }

        else
        {
          outputImage = [(NURenderJob *)self outputImage];
          image = [context createCGImage:outputImage fromRect:objc_msgSend(pixelFormat format:"CIFormat") colorSpace:objc_msgSend(v113 deferred:{"CGColorSpace"), 1, 0.0, 0.0, imageSize, v13}];
        }

        if (image)
        {
          if ([imageExportRequest renderToData])
          {
            v55 = objc_alloc_init(MEMORY[0x1E695DF88]);
            destinationData = self->_destinationData;
            self->_destinationData = v55;

            v57 = self->_destinationData;
            fileType = [format fileType];
            v59 = CGImageDestinationCreateWithData(v57, fileType, 1uLL, 0);
          }

          else
          {
            fileType = [imageExportRequest destinationURL];
            fileType2 = [format fileType];
            v59 = CGImageDestinationCreateWithURL(fileType, fileType2, 1uLL, 0);
          }

          if (v59)
          {
            imageDestinationOptions = [(NUImageExportJob *)self imageDestinationOptions];
            CGImageDestinationAddImage(v59, image, imageDestinationOptions);
            request3 = imageDestinationOptions;
            auxiliaryImages = [(NUImageExportJob *)self auxiliaryImages];
            v122 = 0u;
            v123 = 0u;
            v120 = 0u;
            v121 = 0u;
            auxiliaryImageTypes = [(NUImageExportJob *)self auxiliaryImageTypes];
            v66 = [auxiliaryImageTypes countByEnumeratingWithState:&v120 objects:v126 count:16];
            if (v66)
            {
              v67 = *v121;
LABEL_61:
              v68 = 0;
              while (1)
              {
                if (*v121 != v67)
                {
                  objc_enumerationMutation(auxiliaryImageTypes);
                }

                v69 = *(*(&v120 + 1) + 8 * v68);
                v70 = [auxiliaryImages objectForKeyedSubscript:v69];
                if (v70)
                {
                  goto LABEL_68;
                }

                v71 = NUAuxiliaryImageTypeFromString(v69);
                v72 = [v116 auxiliaryImagePropertiesForType:v71];
                v73 = v72 == 0;

                if (!v73)
                {
                  break;
                }

LABEL_69:
                if (v66 == ++v68)
                {
                  v66 = [auxiliaryImageTypes countByEnumeratingWithState:&v120 objects:v126 count:16];
                  if (v66)
                  {
                    goto LABEL_61;
                  }

                  goto LABEL_71;
                }
              }

              renderNode = [(NURenderJob *)self renderNode];
              v119 = 0;
              v70 = [renderNode originalAuxiliaryImageForType:v71 error:&v119];
              v75 = v119;

              if (!v70)
              {
                *render = [NUError errorWithCode:1 reason:@"Failed to get original aux image" object:v69 underlyingError:v75];

                v7 = 0;
                goto LABEL_74;
              }

LABEL_68:
              v118 = 0;
              v76 = [v70 dictionaryRepresentationForAuxiliaryDataType:&v118];
              v77 = v118;
              CGImageDestinationAddAuxiliaryDataInfo(v59, v77, v76);

              goto LABEL_69;
            }

LABEL_71:
            v7 = 1;
LABEL_74:

            if (!CGImageDestinationFinalize(v59))
            {
              request = [(NURenderJob *)self request];
              v79 = [request copy];
              *render = [NUError failureError:@"Failed to finalize CGImageDestination" object:v79];

              v7 = 0;
            }

            if (*(*&buf[8] + 40))
            {
              request2 = [(NURenderJob *)self request];
              v81 = [request2 copy];
              *render = [NUError errorWithCode:1 reason:@"Error during CGImageDestination finalize" object:v81 underlyingError:*(*&buf[8] + 40)];

              v7 = 0;
            }

            CFRelease(v59);
          }

          else
          {
            request3 = [(NURenderJob *)self request];
            auxiliaryImages = [request3 copy];
            [NUError failureError:@"Failed to create CGImageDestinationRef" object:auxiliaryImages];
            *render = v7 = 0;
          }

          CGImageRelease(image);
        }

        else
        {
          request4 = [(NURenderJob *)self request];
          v61 = [request4 copy];
          *render = [NUError errorWithCode:1 reason:@"Failed to create CGImageRef" object:v61 underlyingError:*(*&buf[8] + 40)];

          v7 = 0;
        }

        _Block_object_dispose(buf, 8);

        goto LABEL_81;
      }

      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_14655);
      }

      v32 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
      {
        v33 = MEMORY[0x1E696AEC0];
        v34 = v32;
        v110 = [v33 stringWithFormat:@"HDR colorspace (%@) is incompatible with format (%@)", v113, pixelFormat];
        *buf = 138543362;
        *&buf[4] = v110;
        _os_log_impl(&dword_1C0184000, v34, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

        v36 = _NULogOnceToken;
        if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
        {
          if (v36 != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_14655);
          }

          goto LABEL_41;
        }

        if (v36 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_14655);
        }
      }

      else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
LABEL_41:
        v37 = _NUAssertLogger;
        if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
        {
          v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v43 = MEMORY[0x1E696AF00];
          v44 = v42;
          v45 = v37;
          callStackSymbols3 = [v43 callStackSymbols];
          v47 = [callStackSymbols3 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          *&buf[4] = v42;
          *&buf[12] = 2114;
          *&buf[14] = v47;
          _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

LABEL_47:
        _NUAssertContinueHandler("[NUImageExportJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageExportJob.m", 379, @"HDR colorspace (%@) is incompatible with format (%@)", v38, v39, v40, v41, v113);
        goto LABEL_48;
      }

      v48 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        v87 = MEMORY[0x1E696AF00];
        v88 = v48;
        callStackSymbols4 = [v87 callStackSymbols];
        v90 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v90;
        _os_log_error_impl(&dword_1C0184000, v88, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_47;
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_14655);
    }

    v15 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = v15;
      v1102 = [v16 stringWithFormat:@"XDR colorspace (%@) is incompatible with format (%@)", v113, pixelFormat];
      *buf = 138543362;
      *&buf[4] = v1102;
      _os_log_impl(&dword_1C0184000, v17, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v19 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v19 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_14655);
        }

        goto LABEL_25;
      }

      if (v19 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_14655);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_25:
      v20 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        v28 = v20;
        callStackSymbols5 = [v26 callStackSymbols];
        v30 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v30;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_31:
      _NUAssertContinueHandler("[NUImageExportJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageExportJob.m", 378, @"XDR colorspace (%@) is incompatible with format (%@)", v21, v22, v23, v24, v113);
      goto LABEL_32;
    }

    v31 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v83 = MEMORY[0x1E696AF00];
      v84 = v31;
      callStackSymbols6 = [v83 callStackSymbols];
      v86 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v86;
      _os_log_error_impl(&dword_1C0184000, v84, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v7 = 0;
LABEL_82:

  return v7;
}

void __27__NUImageExportJob_render___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a2;
  if (v12)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_124);
    }

    v13 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696B098];
      *v20 = a3;
      *&v20[1] = a4;
      *&v20[2] = a5;
      *&v20[3] = a6;
      v18 = v13;
      v19 = [v17 valueWithBytes:v20 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      *buf = 138412546;
      v22 = v19;
      v23 = 2112;
      v24 = v12;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "createCGImage callback for rect: %@, error: %@", buf, 0x16u);
    }

    v14 = *(*(a1 + 32) + 8);
    v16 = *(v14 + 40);
    v15 = (v14 + 40);
    if (!v16)
    {
      objc_storeStrong(v15, a2);
    }
  }
}

- (CGImage)copyCGImageWithIOSurface:(id)surface fromRect:(CGRect)rect colorSpace:(id)space error:(id *)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v83 = *MEMORY[0x1E69E9840];
  surfaceCopy = surface;
  spaceCopy = space;
  if (!error)
  {
    v41 = NUAssertLogger_14640();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v80 = v42;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v44 = NUAssertLogger_14640();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v45)
      {
        v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v56 = MEMORY[0x1E696AF00];
        v57 = v55;
        callStackSymbols = [v56 callStackSymbols];
        v59 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v55;
        v81 = 2114;
        v82 = v59;
        _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v47;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageExportJob copyCGImageWithIOSurface:fromRect:colorSpace:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageExportJob.m", 281, @"Invalid parameter not satisfying: %s", v60, v61, v62, v63, "error != nil");
  }

  v15 = spaceCopy;
  if (!spaceCopy)
  {
    v48 = NUAssertLogger_14640();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "colorSpace != nil"];
      *buf = 138543362;
      v80 = v49;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v51 = NUAssertLogger_14640();
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
    if (v50)
    {
      if (v52)
      {
        v64 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v65 = MEMORY[0x1E696AF00];
        v66 = v64;
        callStackSymbols3 = [v65 callStackSymbols];
        v68 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v64;
        v81 = 2114;
        v82 = v68;
        _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v52)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v54 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v54;
      _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageExportJob copyCGImageWithIOSurface:fromRect:colorSpace:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageExportJob.m", 282, @"Invalid parameter not satisfying: %s", v69, v70, v71, v72, "colorSpace != nil");
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_124);
  }

  v16 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C0184000, v16, OS_LOG_TYPE_DEFAULT, "NUImageExportJob exporting with IOSurface", buf, 2u);
  }

  v17 = [(NURenderJob *)self renderer:error];
  if (v17)
  {
    [surfaceCopy extent];
    v19 = v18;
    v21 = v20;
    isHDR = [v15 isHDR];
    v23 = vcvtpd_s64_f64(v19);
    v24 = vcvtpd_s64_f64(v21);
    if (isHDR)
    {
      v25 = 2019963440;
    }

    else
    {
      v25 = 875704422;
    }

    v26 = [NUVideoUtilities newPixelBufferOfSize:v23 format:v24, v25];
    if (v26)
    {
      isHDR2 = [v15 isHDR];
      v28 = MEMORY[0x1E6965FB0];
      if (!isHDR2)
      {
        v28 = MEMORY[0x1E6965FC8];
      }

      v29 = *v28;
      v77 = *MEMORY[0x1E6965F98];
      v78 = v29;
      theAttachments = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      CVBufferSetAttachments([v26 CVPixelBuffer], theAttachments, kCVAttachmentMode_ShouldPropagate);
      buffer = CVPixelBufferGetIOSurface([v26 CVPixelBuffer]);
      v30 = [objc_alloc(MEMORY[0x1E695F678]) initWithIOSurface:buffer];
      [v30 setColorSpace:{objc_msgSend(v15, "CGColorSpace")}];
      request = [(NURenderJob *)self request];
      name = [request name];
      [v30 setLabel:name];

      context = [v17 context];
      v34 = [context startTaskToRender:surfaceCopy fromRect:v30 toDestination:error atPoint:x error:{y, width, height, 0.0, 0.0}];
      v35 = v34;
      if (v34)
      {
        v36 = [v34 waitUntilCompletedAndReturnError:error];
        if (v36)
        {
          v75 = *MEMORY[0x1E696DFC0];
          v76 = MEMORY[0x1E695E118];
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          v38 = CGColorSpaceCopyPropertyList([v15 CGColorSpace]);
          if (v38)
          {
            IOSurfaceSetValue(buffer, *MEMORY[0x1E696CEE0], v38);
            CFRelease(v38);
          }

          v39 = CGImageCreateFromIOSurface();
        }

        else
        {
          [NUError errorWithCode:1 reason:@"failed to waitUntilCompletedAndReturnError for image export" object:0 underlyingError:*error];
          *error = v39 = 0;
        }
      }

      else
      {
        [NUError errorWithCode:1 reason:@"failed to startTaskToRender for image export" object:0 underlyingError:*error];
        *error = v39 = 0;
      }
    }

    else
    {
      [NUError errorWithCode:1 reason:@"IOSurface path failed in image export" object:0];
      *error = v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (id)evaluateRenderDependencies:(id *)dependencies
{
  v64 = *MEMORY[0x1E69E9840];
  v61.receiver = self;
  v61.super_class = NUImageExportJob;
  v5 = [(NURenderJob *)&v61 evaluateRenderDependencies:?];
  if (v5)
  {
    prepareNode = [(NURenderJob *)self prepareNode];
    v60 = 0;
    v7 = [prepareNode imageProperties:&v60];
    v8 = v60;

    v45 = v7;
    if (v7)
    {
      v43 = v8;
      imageExportRequest = [(NUImageExportJob *)self imageExportRequest];
      auxImages = [imageExportRequest auxImages];
      v11 = [auxImages mutableCopy];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      prepareNode4 = v13;
      v44 = v5;

      obj = objc_alloc_init(MEMORY[0x1E695DF70]);
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      auxiliaryImageTypes = [(NUImageExportJob *)self auxiliaryImageTypes];
      v16 = [auxiliaryImageTypes countByEnumeratingWithState:&v56 objects:v63 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v57;
        do
        {
          v19 = 0;
          do
          {
            if (*v57 != v18)
            {
              objc_enumerationMutation(auxiliaryImageTypes);
            }

            v20 = *(*(&v56 + 1) + 8 * v19);
            v21 = [prepareNode4 objectForKeyedSubscript:v20];
            v22 = NUAuxiliaryImageTypeFromString(v20);
            if (!v21)
            {
              v23 = v22;
              v24 = [v45 auxiliaryImagePropertiesForType:v22];

              if (v24)
              {
                prepareNode2 = [(NURenderJob *)self prepareNode];
                v26 = [prepareNode2 canPropagateOriginalAuxiliaryData:v23];

                if ((v26 & 1) == 0)
                {
                  [obj addObject:v20];
                }
              }
            }

            ++v19;
          }

          while (v17 != v19);
          v27 = [auxiliaryImageTypes countByEnumeratingWithState:&v56 objects:v63 count:16];
          v17 = v27;
        }

        while (v27);
      }

      objc_storeStrong(&self->_auxImages, prepareNode4);
      v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v29 = dispatch_queue_create("NUExportImageJob.auxiliaryImages", v28);
      auxImageQueue = self->_auxImageQueue;
      self->_auxImageQueue = v29;

      v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v44];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      obja = obj;
      v31 = [obja countByEnumeratingWithState:&v52 objects:v62 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v53;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v53 != v33)
            {
              objc_enumerationMutation(obja);
            }

            v35 = *(*(&v52 + 1) + 8 * i);
            v36 = [NUAuxiliaryImageRenderRequest alloc];
            request = [(NURenderJob *)self request];
            v38 = [(NURenderRequest *)v36 initWithRequest:request];

            [(NUAuxiliaryImageRenderRequest *)v38 setAuxiliaryImageType:NUAuxiliaryImageTypeFromString(v35)];
            [(NUAuxiliaryImageRenderRequest *)v38 setSkipRenderIfNotRequired:1];
            [(NURenderRequest *)v38 setResponseQueue:self->_auxImageQueue];
            v49[0] = MEMORY[0x1E69E9820];
            v49[1] = 3221225472;
            v49[2] = __47__NUImageExportJob_evaluateRenderDependencies___block_invoke;
            v49[3] = &unk_1E810A470;
            v50 = prepareNode4;
            v51 = v35;
            [(NURenderRequest *)v38 setCompletionBlock:v49];
            newRenderJob = [(NUAuxiliaryImageRenderRequest *)v38 newRenderJob];
            prepareNode3 = [(NURenderJob *)self prepareNode];
            [newRenderJob setPrepareNode:prepareNode3];

            resolvedSpaceMap = [(NURenderJob *)self resolvedSpaceMap];
            [newRenderJob setResolvedSpaceMap:resolvedSpaceMap];

            [v48 addObject:newRenderJob];
          }

          v32 = [obja countByEnumeratingWithState:&v52 objects:v62 count:16];
        }

        while (v32);
      }

      v8 = v43;
      v5 = v44;
    }

    else
    {
      prepareNode4 = [(NURenderJob *)self prepareNode];
      [NUError errorWithCode:1 reason:@"Failed to get image properties" object:prepareNode4 underlyingError:v8];
      *dependencies = v48 = 0;
    }
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

void __47__NUImageExportJob_evaluateRenderDependencies___block_invoke(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = [a2 result:&v6];
  v4 = v6;
  if (v3)
  {
    v5 = [v3 auxiliaryImage];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:*(a1 + 40)];
  }
}

- (id)prepareNodeWithPipelineState:(id)state error:(id *)error
{
  stateCopy = state;
  v35.receiver = self;
  v35.super_class = NUImageExportJob;
  v7 = [(NURenderJob *)&v35 prepareNodeWithPipelineState:stateCopy error:error];
  if (v7)
  {
    imageExportRequest = [(NUImageExportJob *)self imageExportRequest];
    applyOrientationAsMetadata = [imageExportRequest applyOrientationAsMetadata];

    if (applyOrientationAsMetadata)
    {
      v10 = [v7 outputImageGeometry:error];
      if (!v10)
      {
        v16 = 0;
        goto LABEL_32;
      }

      v11 = v10;
      orientation = [v10 orientation];
      v13 = 6;
      if (orientation != 8)
      {
        v13 = orientation;
      }

      if (orientation == 6)
      {
        v14 = 8;
      }

      else
      {
        v14 = v13;
      }

      v15 = [(NUOrientationNode *)[NUResetOrientationNode alloc] initWithOrientation:v14 input:v7];

      v7 = v15;
    }
  }

  if ([stateCopy auxiliaryImageType] == 1)
  {
    v16 = [v7 imageProperties:error];
    if (!v16)
    {
      goto LABEL_32;
    }

    imageExportRequest2 = [(NUImageExportJob *)self imageExportRequest];
    colorSpace = [imageExportRequest2 colorSpace];
    v19 = colorSpace;
    if (colorSpace)
    {
      colorSpace2 = colorSpace;
    }

    else
    {
      colorSpace2 = [v16 colorSpace];
    }

    v21 = colorSpace2;

    if (+[NUGlobalSettings enableHDRSupport])
    {
      if ([v21 isHDR])
      {
        isExtended = 1;
      }

      else
      {
        isExtended = [v21 isExtended];
      }
    }

    else
    {
      isExtended = 0;
    }

    if ([v16 isHDR])
    {
      v23 = [NUHDRToneMapNode alloc];
      [v16 contentHeadroom];
      v25 = v24;
      v26 = 1.0;
      if (isExtended)
      {
        [v21 headroom];
        v26 = v27;
      }

      v28 = v23;
    }

    else
    {
      if (![v16 hasGainMap])
      {
        goto LABEL_30;
      }

      [v16 gainMapHeadroom];
      if (((v30 > 1.0) & isExtended) != 1 || !+[NUGlobalSettings renderMeteorPlusAsHDR])
      {
        goto LABEL_30;
      }

      v31 = [NUHDRGainMapNode alloc];
      [v16 gainMapHeadroom];
      v25 = v32;
      [v21 headroom];
      v26 = v33;
      v28 = v31;
    }

    v29 = [v28 initWithInput:v7 contentHeadroom:v25 displayHeadroom:v26];

    v7 = v29;
LABEL_30:
  }

  v7 = v7;
  v16 = v7;
LABEL_32:

  return v16;
}

- (id)result
{
  imageExportRequest = [(NUImageExportJob *)self imageExportRequest];
  v4 = objc_alloc_init(_NUImageExportResult);
  if ([imageExportRequest renderToData])
  {
    [(_NUImageExportResult *)v4 setDestinationData:self->_destinationData];
  }

  else
  {
    destinationURL = [imageExportRequest destinationURL];
    [(_NUExportResult *)v4 setDestinationURL:destinationURL];
  }

  outputGeometry = [(NURenderJob *)self outputGeometry];
  [(_NUExportResult *)v4 setGeometry:outputGeometry];

  return v4;
}

- (id)auxiliaryImages
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14664;
  v10 = __Block_byref_object_dispose__14665;
  v11 = 0;
  auxImageQueue = self->_auxImageQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__NUImageExportJob_auxiliaryImages__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(auxImageQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __35__NUImageExportJob_auxiliaryImages__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 248) copy];

  return MEMORY[0x1EEE66BB8]();
}

- (id)auxiliaryImageTypes
{
  imageExportRequest = [(NUImageExportJob *)self imageExportRequest];
  auxiliaryImageTypes = [imageExportRequest auxiliaryImageTypes];
  v4 = auxiliaryImageTypes;
  if (auxiliaryImageTypes)
  {
    v5 = auxiliaryImageTypes;
  }

  else
  {
    v5 = +[NUImageExportRequest defaultAuxiliaryImageTypes];
  }

  v6 = v5;

  return v6;
}

- (id)imageDestinationOptions
{
  v32 = *MEMORY[0x1E69E9840];
  imageExportRequest = [(NUImageExportJob *)self imageExportRequest];
  imageProperties = [imageExportRequest imageProperties];
  if (!imageProperties)
  {
    prepareNode = [(NURenderJob *)self prepareNode];

    if (!prepareNode)
    {
      v10 = NUAssertLogger_14640();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing prepare node"];
        *buf = 138543362;
        v29 = v11;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v13 = NUAssertLogger_14640();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v14)
        {
          v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v18 = MEMORY[0x1E696AF00];
          v19 = v17;
          callStackSymbols = [v18 callStackSymbols];
          v21 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = v17;
          v30 = 2114;
          v31 = v21;
          _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v14)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v29 = v16;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUImageExportJob imageDestinationOptions]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageExportJob.m", 122, @"Missing prepare node", v22, v23, v24, v25, v26);
    }

    prepareNode2 = [(NURenderJob *)self prepareNode];
    v27 = 0;
    v7 = [prepareNode2 imageProperties:&v27];

    if (v7)
    {
      imageProperties = [v7 metadata];
    }

    else
    {
      imageProperties = MEMORY[0x1E695E0F8];
    }
  }

  v8 = [(NUImageExportJob *)self _filterProperties:imageProperties];

  return v8;
}

- (id)_filterProperties:(id)properties
{
  propertiesCopy = properties;
  imageExportRequest = [(NUImageExportJob *)self imageExportRequest];
  v6 = [propertiesCopy mutableCopy];

  if ([imageExportRequest applyOrientationAsMetadata])
  {
    outputGeometry = [(NURenderJob *)self outputGeometry];
    orientation = [outputGeometry orientation];
  }

  else
  {
    orientation = 1;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
  [v6 setObject:v9 forKey:*MEMORY[0x1E696DE78]];

  v10 = *MEMORY[0x1E696DF28];
  v11 = [v6 objectForKey:*MEMORY[0x1E696DF28]];
  v12 = [v11 mutableCopy];

  if (v12)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
    [v12 setObject:v13 forKey:*MEMORY[0x1E696DF58]];

    [v6 setObject:v12 forKey:v10];
  }

  v14 = [v6 mutableCopy];
  v15 = [v14 objectForKey:@"{TIFF}"];
  v16 = [v15 objectForKey:@"Model"];

  if ([v16 isEqualToString:@"Apple Vision Pro"])
  {
    v17 = [v14 objectForKey:@"{HEIF}"];
    v18 = [v17 objectForKey:@"CameraExtrinsics"];

    v19 = [v14 objectForKey:@"{HEIF}"];
    v20 = [v19 objectForKey:@"CameraModel"];

    if (v18)
    {
      v21 = [v14 objectForKey:@"{HEIF}"];
      [v21 removeObjectForKey:@"CameraExtrinsics"];
    }

    if (v20)
    {
      v22 = [v14 objectForKey:@"{HEIF}"];
      [v22 removeObjectForKey:@"CameraModel"];
    }

    v23 = v14;

    v6 = v23;
  }

  format = [imageExportRequest format];
  [format addImageDestinationOptionsToImageProperties:v6];

  v25 = v6;
  return v6;
}

- (NUImageExportJob)initWithExportRequest:(id)request
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_14655);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
    *buf = 138543362;
    v32 = v11;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v12 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v12 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_14655);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_14655);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v13 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      callStackSymbols = [v14 callStackSymbols];
      v17 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v18 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = MEMORY[0x1E696AF00];
    v21 = specific;
    v22 = v18;
    callStackSymbols2 = [v20 callStackSymbols];
    v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v32 = specific;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUImageExportJob initWithExportRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageExportJob.m", 59, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUImageExportJob)initWithImageExportRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = NUImageExportJob;
  return [(NUExportJob *)&v4 initWithExportRequest:request];
}

@end