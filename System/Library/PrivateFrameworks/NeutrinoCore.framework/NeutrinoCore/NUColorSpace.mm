@interface NUColorSpace
+ (BOOL)shouldTagAsDisplayP3:(__CVBuffer *)p3;
+ (NUColorSpace)displayP3_HLG;
+ (NUColorSpace)displayP3_PQ;
+ (id)_loadICCProfileDataWithIdentifier:(id)identifier;
+ (id)adobeRGBColorSpace;
+ (id)colorSpaceFromColorPrimaries:(id)primaries transferFunction:(id)function yccMatrix:(id)matrix;
+ (id)colorSpaceFromVideoColorProperties:(id)properties;
+ (id)displayP3ColorSpace;
+ (id)displayP3LinearColorSpace;
+ (id)extendedLinearGrayColorSpace;
+ (id)extendedSRGBColorSpace;
+ (id)extendedSRGBLinearColorSpace;
+ (id)genericGrayColorSpace;
+ (id)genericGrayGamma2_2ColorSpace;
+ (id)genericRGBColorSpace;
+ (id)genericRGBLinearColorSpace;
+ (id)itur2100HLGColorSpace;
+ (id)itur2100PQColorSpace;
+ (id)linearGrayColorSpace;
+ (id)rec709ColorSpace;
+ (id)sRGBColorSpace;
+ (id)sRGBLinearColorSpace;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExtended;
- (BOOL)isHDR;
- (BOOL)isWideGamut;
- (NSDictionary)cvPixelBufferAttachments;
- (NSString)name;
- (NUColorSpace)init;
- (NUColorSpace)initWithCGColorSpace:(CGColorSpace *)space descriptionName:(id)name;
- (NUColorSpace)initWithColorSpaceName:(id)name;
- (NUColorSpace)initWithICCProfileData:(id)data descriptionName:(id)name;
- (id)description;
- (id)extended;
- (id)linearized;
- (void)applyAttachmentsToCVPixelBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
- (void)nu_updateDigest:(id)digest;
@end

@implementation NUColorSpace

- (id)extended
{
  if ([(NUColorSpace *)self isExtended])
  {
    selfCopy = self;
  }

  else
  {
    Extended = CGColorSpaceCreateExtended(self->_CGColorSpace);
    if (Extended)
    {
      v5 = Extended;
      selfCopy = [[NUColorSpace alloc] initWithCGColorSpace:Extended];
      CFRelease(v5);
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)linearized
{
  v13 = *MEMORY[0x1E69E9840];
  BaseColorSpace = CGColorSpaceGetBaseColorSpace([(NUColorSpace *)self CGColorSpace]);
  if (BaseColorSpace)
  {
    v4 = CGColorSpaceRetain(BaseColorSpace);
    goto LABEL_3;
  }

  [(NUColorSpace *)self CGColorSpace];
  if (CGColorSpaceContainsFlexGTCInfo())
  {
    *v12 = 0;
    [(NUColorSpace *)self CGColorSpace];
    if (!CGColorSpaceGetCICPInfo())
    {
      v5 = 0;
LABEL_4:
      cGColorSpace = v5;
      if (v5)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v4 = CGColorSpaceCreateFromCICP();
LABEL_3:
    v5 = v4;
    goto LABEL_4;
  }

LABEL_9:
  cGColorSpace = [(NUColorSpace *)self CGColorSpace];
  v5 = 0;
LABEL_10:
  Linearized = CGColorSpaceCreateLinearized(cGColorSpace);
  if (Linearized)
  {
    v8 = Linearized;
    v9 = [[NUColorSpace alloc] initWithCGColorSpace:Linearized];
    CFRelease(v8);
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_239);
    }

    v10 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *v12 = 138412290;
      *&v12[4] = self;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Failed to linearize colorspace: %@", v12, 0xCu);
    }

    v9 = 0;
  }

  CGColorSpaceRelease(v5);

  return v9;
}

- (void)applyAttachmentsToCVPixelBuffer:(__CVBuffer *)buffer
{
  v18 = *MEMORY[0x1E69E9840];
  CVBufferRemoveAttachment(buffer, *MEMORY[0x1E6965CE8]);
  CVBufferRemoveAttachment(buffer, *MEMORY[0x1E6965F98]);
  CVBufferRemoveAttachment(buffer, *MEMORY[0x1E6965F30]);
  CVBufferRemoveAttachment(buffer, *MEMORY[0x1E6965D88]);
  CVBufferRemoveAttachment(buffer, *MEMORY[0x1E6965E80]);
  cvPixelBufferAttachments = [(NUColorSpace *)self cvPixelBufferAttachments];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  keyEnumerator = [cvPixelBufferAttachments keyEnumerator];
  v7 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [cvPixelBufferAttachments objectForKeyedSubscript:v11];
        CVBufferSetAttachment(buffer, v11, v12, kCVAttachmentMode_ShouldPropagate);
      }

      v8 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (NSDictionary)cvPixelBufferAttachments
{
  v31[3] = *MEMORY[0x1E69E9840];
  v3 = +[NUColorSpace rec709ColorSpace];
  v4 = [(NUColorSpace *)self isEqual:v3];

  if (v4)
  {
    v5 = *MEMORY[0x1E6965DB8];
    v6 = *MEMORY[0x1E6965F30];
    v30[0] = *MEMORY[0x1E6965D88];
    v30[1] = v6;
    v7 = *MEMORY[0x1E6965F50];
    v31[0] = v5;
    v31[1] = v7;
    v30[2] = *MEMORY[0x1E6965F98];
    v31[2] = *MEMORY[0x1E6965FD0];
    v8 = MEMORY[0x1E695DF20];
    v9 = v31;
    v10 = v30;
LABEL_7:
    v21 = 3;
    goto LABEL_8;
  }

  v11 = +[NUColorSpace displayP3ColorSpace];
  v12 = [(NUColorSpace *)self isEqual:v11];

  if (v12)
  {
    v13 = *MEMORY[0x1E6965DD0];
    v14 = *MEMORY[0x1E6965F30];
    v28[0] = *MEMORY[0x1E6965D88];
    v28[1] = v14;
    v15 = *MEMORY[0x1E6965F50];
    v29[0] = v13;
    v29[1] = v15;
    v28[2] = *MEMORY[0x1E6965F98];
    v29[2] = *MEMORY[0x1E6965FC8];
    v8 = MEMORY[0x1E695DF20];
    v9 = v29;
    v10 = v28;
    goto LABEL_7;
  }

  v16 = +[NUColorSpace itur2100HLGColorSpace];
  v17 = [(NUColorSpace *)self isEqual:v16];

  if (v17)
  {
    v18 = *MEMORY[0x1E6965DB0];
    v19 = *MEMORY[0x1E6965F30];
    v26[0] = *MEMORY[0x1E6965D88];
    v26[1] = v19;
    v20 = *MEMORY[0x1E6965F48];
    v27[0] = v18;
    v27[1] = v20;
    v26[2] = *MEMORY[0x1E6965F98];
    v27[2] = *MEMORY[0x1E6965FB0];
    v8 = MEMORY[0x1E695DF20];
    v9 = v27;
    v10 = v26;
    goto LABEL_7;
  }

  v24 = *MEMORY[0x1E6965CE8];
  cGColorSpace = [(NUColorSpace *)self CGColorSpace];
  v8 = MEMORY[0x1E695DF20];
  v9 = &cGColorSpace;
  v10 = &v24;
  v21 = 1;
LABEL_8:
  v22 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:v21];

  return v22;
}

- (void)nu_updateDigest:(id)digest
{
  digestCopy = digest;
  MD5Digest = CGColorSpaceGetMD5Digest();
  [digestCopy addString:@"NUColorSpace<"];
  [digestCopy addBytes:MD5Digest length:16];
  [digestCopy addString:@">"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (CGColorSpaceEqualToColorSpace())
      {
        v6 = 1;
      }

      else
      {
        v16 = 0;
        v17 = &v16;
        v18 = 0x2020000000;
        v19 = 0;
        v12 = 0;
        v13 = &v12;
        v14 = 0x2020000000;
        v15 = 0;
        v8 = 0;
        v9 = &v8;
        v10 = 0x2020000000;
        v11 = 0;
        v6 = CGColorConversionInfoIterateColorSpaceFunctionsWithCallbacks() && !*(v9 + 6) && !*(v17 + 6) && *(v13 + 6) == 0;
        _Block_object_dispose(&v8, 8);
        _Block_object_dispose(&v12, 8);
        _Block_object_dispose(&v16, 8);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSString)name
{
  v2 = CGColorSpaceCopyICCProfileDescription();

  return v2;
}

- (id)description
{
  descriptionName = [(NUColorSpace *)self descriptionName];
  if (descriptionName)
  {
    descriptionName2 = [(NUColorSpace *)self descriptionName];
    v5 = [descriptionName2 stringByAppendingString:@": "];
  }

  else
  {
    v5 = &stru_1F3F4BA98;
  }

  v6 = CFCopyDescription(self->_CGColorSpace);
  v7 = [(__CFString *)v5 stringByAppendingString:v6];

  return v7;
}

- (void)dealloc
{
  CFRelease(self->_CGColorSpace);
  v3.receiver = self;
  v3.super_class = NUColorSpace;
  [(NUColorSpace *)&v3 dealloc];
}

- (BOOL)isWideGamut
{
  cGColorSpace = [(NUColorSpace *)self CGColorSpace];

  return CGColorSpaceIsWideGamutRGB(cGColorSpace);
}

- (BOOL)isExtended
{
  cGColorSpace = [(NUColorSpace *)self CGColorSpace];

  return CGColorSpaceUsesExtendedRange(cGColorSpace);
}

- (BOOL)isHDR
{
  cGColorSpace = [(NUColorSpace *)self CGColorSpace];

  return CGColorSpaceUsesITUR_2100TF(cGColorSpace);
}

- (NUColorSpace)initWithICCProfileData:(id)data descriptionName:(id)name
{
  v32 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  nameCopy = name;
  if (!dataCopy || (v8 = nameCopy, ![dataCopy length]))
  {
    v12 = NUAssertLogger_4789();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil && data.length > 0"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_4789();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v19;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUColorSpace initWithICCProfileData:descriptionName:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 105, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "data != nil && data.length > 0");
  }

  v9 = CGColorSpaceCreateWithICCData(dataCopy);
  v10 = [(NUColorSpace *)self initWithCGColorSpace:v9 descriptionName:v8];
  CGColorSpaceRelease(v9);

  return v10;
}

- (NUColorSpace)initWithCGColorSpace:(CGColorSpace *)space descriptionName:(id)name
{
  v32 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!space)
  {
    v11 = NUAssertLogger_4789();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "colorSpace != NULL"];
      *buf = 138543362;
      v29 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_4789();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v18;
        v30 = 2114;
        v31 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUColorSpace initWithCGColorSpace:descriptionName:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 92, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "colorSpace != NULL");
  }

  v8 = nameCopy;
  v27.receiver = self;
  v27.super_class = NUColorSpace;
  v9 = [(NUColorSpace *)&v27 init];
  if (v9)
  {
    v9->_CGColorSpace = CGColorSpaceRetain(space);
    objc_storeStrong(&v9->_descriptionName, name);
  }

  return v9;
}

- (NUColorSpace)initWithColorSpaceName:(id)name
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
  {
    v9 = NUAssertLogger_4789();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_4789();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        callStackSymbols = [v17 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v16;
        v27 = 2114;
        v28 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUColorSpace initWithColorSpaceName:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 75, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "name != nil");
  }

  v5 = nameCopy;
  selfCopy = CGColorSpaceCreateWithName(nameCopy);
  if (selfCopy)
  {
    v7 = [(NUColorSpace *)self initWithCGColorSpace:selfCopy];
    CFRelease(selfCopy);
    self = v7;
    selfCopy = self;
  }

  return selfCopy;
}

- (NUColorSpace)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_4803);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v7, v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_4803);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_4803);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUColorSpace init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 71, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (BOOL)shouldTagAsDisplayP3:(__CVBuffer *)p3
{
  v4 = CVBufferCopyAttachment(p3, *MEMORY[0x1E6965D88], 0);
  v5 = CVBufferCopyAttachment(p3, *MEMORY[0x1E6965F30], 0);
  v6 = [v4 isEqualToString:*MEMORY[0x1E6965DD0]] && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6965F50]) & 1) != 0;

  return v6;
}

+ (id)colorSpaceFromColorPrimaries:(id)primaries transferFunction:(id)function yccMatrix:(id)matrix
{
  v72 = *MEMORY[0x1E69E9840];
  primariesCopy = primaries;
  functionCopy = function;
  matrixCopy = matrix;
  if (!primariesCopy)
  {
    v18 = NUAssertLogger_4789();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "colorPrimaries != nil"];
      *buf = 138543362;
      v69 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_4789();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        callStackSymbols = [v40 callStackSymbols];
        v43 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v69 = v39;
        v70 = 2114;
        v71 = v43;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v69 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace colorSpaceFromColorPrimaries:transferFunction:yccMatrix:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 444, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "colorPrimaries != nil");
  }

  if (!functionCopy)
  {
    v25 = NUAssertLogger_4789();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "transferFunction != nil"];
      *buf = 138543362;
      v69 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_4789();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        callStackSymbols3 = [v49 callStackSymbols];
        v52 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v69 = v48;
        v70 = 2114;
        v71 = v52;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v69 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace colorSpaceFromColorPrimaries:transferFunction:yccMatrix:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 445, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "transferFunction != nil");
  }

  v11 = matrixCopy;
  if (!matrixCopy)
  {
    v32 = NUAssertLogger_4789();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "yccMatrix != nil"];
      *buf = 138543362;
      v69 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_4789();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      if (v36)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v58 = MEMORY[0x1E696AF00];
        v59 = v57;
        callStackSymbols5 = [v58 callStackSymbols];
        v61 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v69 = v57;
        v70 = 2114;
        v71 = v61;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v69 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace colorSpaceFromColorPrimaries:transferFunction:yccMatrix:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 446, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, "yccMatrix != nil");
  }

  v12 = *MEMORY[0x1E6965F30];
  v66[0] = *MEMORY[0x1E6965D88];
  v66[1] = v12;
  v67[0] = primariesCopy;
  v67[1] = functionCopy;
  v66[2] = *MEMORY[0x1E6965F98];
  v67[2] = matrixCopy;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:3];
  ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v13);
  if (ColorSpaceFromAttachments)
  {
    v15 = ColorSpaceFromAttachments;
    v16 = [[self alloc] initWithCGColorSpace:ColorSpaceFromAttachments descriptionName:@"custom"];
    CFRelease(v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)colorSpaceFromVideoColorProperties:(id)properties
{
  v34 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (!propertiesCopy)
  {
    v14 = NUAssertLogger_4789();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "colorProperties != nil"];
      *buf = 138543362;
      v31 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_4789();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v21;
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace colorSpaceFromVideoColorProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 429, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "colorProperties != nil");
  }

  v5 = propertiesCopy;
  v6 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E6987D08]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6987DE8]];
  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6987E10]];
  v9 = v8;
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v8 == 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = [self colorSpaceFromColorPrimaries:v6 transferFunction:v7 yccMatrix:v8];
  }

  return v12;
}

+ (NUColorSpace)displayP3_HLG
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__NUColorSpace_displayP3_HLG__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (displayP3_HLG_onceToken != -1)
  {
    dispatch_once(&displayP3_HLG_onceToken, block);
  }

  v2 = displayP3_HLG_result;

  return v2;
}

void __29__NUColorSpace_displayP3_HLG__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0C0]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceDisplayP3_HLG"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace displayP3_HLG]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 415, @"Failed to load kCGColorSpaceDisplayP3_HLG", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:@"DisplayP3+HLG"];
  v5 = displayP3_HLG_result;
  displayP3_HLG_result = v4;

  CGColorSpaceRelease(v3);
}

+ (NUColorSpace)displayP3_PQ
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__NUColorSpace_displayP3_PQ__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (displayP3_PQ_onceToken != -1)
  {
    dispatch_once(&displayP3_PQ_onceToken, block);
  }

  v2 = displayP3_PQ_result;

  return v2;
}

void __28__NUColorSpace_displayP3_PQ__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0C8]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceDisplayP3_PQ"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace displayP3_PQ]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 402, @"Failed to load kCGColorSpaceDisplayP3_PQ", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:@"DisplayP3+PQ"];
  v5 = displayP3_PQ_result;
  displayP3_PQ_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)rec709ColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__NUColorSpace_rec709ColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (rec709ColorSpace_onceToken != -1)
  {
    dispatch_once(&rec709ColorSpace_onceToken, block);
  }

  v2 = rec709ColorSpace_result;

  return v2;
}

void __32__NUColorSpace_rec709ColorSpace__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) colorSpaceFromColorPrimaries:*MEMORY[0x1E6965DB8] transferFunction:*MEMORY[0x1E6965F50] yccMatrix:*MEMORY[0x1E6965FD0]];
  v2 = rec709ColorSpace_result;
  rec709ColorSpace_result = v1;

  if (!rec709ColorSpace_result)
  {
    v3 = NUAssertLogger_4789();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load HDTV colorspace"];
      *v19 = 138543362;
      *&v19[4] = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v19, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger_4789();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = MEMORY[0x1E696AF00];
        v12 = v10;
        v13 = [v11 callStackSymbols];
        v14 = [v13 componentsJoinedByString:@"\n"];
        *v19 = 138543618;
        *&v19[4] = v10;
        v20 = 2114;
        v21 = v14;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v19, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *v19 = 138543362;
      *&v19[4] = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v19, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace rec709ColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 391, @"Failed to load HDTV colorspace", v15, v16, v17, v18, *v19);
  }
}

+ (id)displayP3LinearColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__NUColorSpace_displayP3LinearColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (displayP3LinearColorSpace_onceToken != -1)
  {
    dispatch_once(&displayP3LinearColorSpace_onceToken, block);
  }

  v2 = displayP3LinearColorSpace_result;

  return v2;
}

void __41__NUColorSpace_displayP3LinearColorSpace__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F198]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceLinearDisplayP3"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace displayP3LinearColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 370, @"Failed to load kCGColorSpaceLinearDisplayP3", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:@"DisplayP3 (linear)"];
  v5 = displayP3LinearColorSpace_result;
  displayP3LinearColorSpace_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)displayP3ColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__NUColorSpace_displayP3ColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (displayP3ColorSpace_onceToken != -1)
  {
    dispatch_once(&displayP3ColorSpace_onceToken, block);
  }

  v2 = displayP3ColorSpace_result;

  return v2;
}

void __35__NUColorSpace_displayP3ColorSpace__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceDisplayP3"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace displayP3ColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 357, @"Failed to load kCGColorSpaceDisplayP3", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:@"DisplayP3"];
  v5 = displayP3ColorSpace_result;
  displayP3ColorSpace_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)genericGrayColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__NUColorSpace_genericGrayColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (genericGrayColorSpace_onceToken != -1)
  {
    dispatch_once(&genericGrayColorSpace_onceToken, block);
  }

  v2 = genericGrayColorSpace_result;

  return v2;
}

void __37__NUColorSpace_genericGrayColorSpace__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F120]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceGenericGray"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace genericGrayColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 344, @"Failed to load kCGColorSpaceGenericGray", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:@"Generic Gray"];
  v5 = genericGrayColorSpace_result;
  genericGrayColorSpace_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)genericRGBLinearColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__NUColorSpace_genericRGBLinearColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (genericRGBLinearColorSpace_onceToken != -1)
  {
    dispatch_once(&genericRGBLinearColorSpace_onceToken, block);
  }

  v2 = genericRGBLinearColorSpace_result;

  return v2;
}

void __42__NUColorSpace_genericRGBLinearColorSpace__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F140]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceGenericRGBLinear"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace genericRGBLinearColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 331, @"Failed to load kCGColorSpaceGenericRGBLinear", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:@"Generic RGB (linear)"];
  v5 = genericRGBLinearColorSpace_result;
  genericRGBLinearColorSpace_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)genericRGBColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__NUColorSpace_genericRGBColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (genericRGBColorSpace_onceToken != -1)
  {
    dispatch_once(&genericRGBColorSpace_onceToken, block);
  }

  v2 = genericRGBColorSpace_result;

  return v2;
}

void __36__NUColorSpace_genericRGBColorSpace__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F138]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceGenericRGB"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace genericRGBColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 318, @"Failed to load kCGColorSpaceGenericRGB", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:@"Generic RGB"];
  v5 = genericRGBColorSpace_result;
  genericRGBColorSpace_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)adobeRGBColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__NUColorSpace_adobeRGBColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (adobeRGBColorSpace_onceToken != -1)
  {
    dispatch_once(&adobeRGBColorSpace_onceToken, block);
  }

  v2 = adobeRGBColorSpace_result;

  return v2;
}

void __34__NUColorSpace_adobeRGBColorSpace__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0A0]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceAdobeRGB1998"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace adobeRGBColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 305, @"Failed to load kCGColorSpaceAdobeRGB1998", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:@"Adobe RGB 1998"];
  v5 = adobeRGBColorSpace_result;
  adobeRGBColorSpace_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)extendedSRGBLinearColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__NUColorSpace_extendedSRGBLinearColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (extendedSRGBLinearColorSpace_onceToken != -1)
  {
    dispatch_once(&extendedSRGBLinearColorSpace_onceToken, block);
  }

  v2 = extendedSRGBLinearColorSpace_result;

  return v2;
}

void __44__NUColorSpace_extendedSRGBLinearColorSpace__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceExtendedLinearSRGB"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace extendedSRGBLinearColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 292, @"Failed to load kCGColorSpaceExtendedLinearSRGB", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:{@"sRGB (linear, extended)"}];
  v5 = extendedSRGBLinearColorSpace_result;
  extendedSRGBLinearColorSpace_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)sRGBLinearColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__NUColorSpace_sRGBLinearColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sRGBLinearColorSpace_onceToken != -1)
  {
    dispatch_once(&sRGBLinearColorSpace_onceToken, block);
  }

  v2 = sRGBLinearColorSpace_result;

  return v2;
}

void __36__NUColorSpace_sRGBLinearColorSpace__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceLinearSRGB"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace sRGBLinearColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 279, @"Failed to load kCGColorSpaceLinearSRGB", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:@"sRGB (linear)"];
  v5 = sRGBLinearColorSpace_result;
  sRGBLinearColorSpace_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)extendedSRGBColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__NUColorSpace_extendedSRGBColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (extendedSRGBColorSpace_onceToken != -1)
  {
    dispatch_once(&extendedSRGBColorSpace_onceToken, block);
  }

  v2 = extendedSRGBColorSpace_result;

  return v2;
}

void __38__NUColorSpace_extendedSRGBColorSpace__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceExtendedSRGB"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace extendedSRGBColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 266, @"Failed to load kCGColorSpaceExtendedSRGB", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:@"sRGB (extended)"];
  v5 = extendedSRGBColorSpace_result;
  extendedSRGBColorSpace_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)itur2100PQColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__NUColorSpace_itur2100PQColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (itur2100PQColorSpace_onceToken != -1)
  {
    dispatch_once(&itur2100PQColorSpace_onceToken, block);
  }

  v2 = itur2100PQColorSpace_result;

  return v2;
}

void __36__NUColorSpace_itur2100PQColorSpace__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F178]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceITUR_2100_PQ"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace itur2100PQColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 254, @"Failed to load kCGColorSpaceITUR_2100_PQ", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:@"ITU Rec2100 PQ"];
  v5 = itur2100PQColorSpace_result;
  itur2100PQColorSpace_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)itur2100HLGColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__NUColorSpace_itur2100HLGColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (itur2100HLGColorSpace_onceToken != -1)
  {
    dispatch_once(&itur2100HLGColorSpace_onceToken, block);
  }

  v2 = itur2100HLGColorSpace_result;

  return v2;
}

void __37__NUColorSpace_itur2100HLGColorSpace__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F170]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceITUR_2100_HLG"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace itur2100HLGColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 241, @"Failed to load kCGColorSpaceITUR_2100_HLG", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:@"ITU Rec2100 HLG"];
  v5 = itur2100HLGColorSpace_result;
  itur2100HLGColorSpace_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)extendedLinearGrayColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__NUColorSpace_extendedLinearGrayColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (extendedLinearGrayColorSpace_onceToken != -1)
  {
    dispatch_once(&extendedLinearGrayColorSpace_onceToken, block);
  }

  v2 = extendedLinearGrayColorSpace_result;

  return v2;
}

void __44__NUColorSpace_extendedLinearGrayColorSpace__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0F8]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceExtendedLinearGray"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace extendedLinearGrayColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 228, @"Failed to load kCGColorSpaceExtendedLinearGray", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:{@"gray (linear, extended)"}];
  v5 = extendedLinearGrayColorSpace_result;
  extendedLinearGrayColorSpace_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)linearGrayColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__NUColorSpace_linearGrayColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (linearGrayColorSpace_onceToken != -1)
  {
    dispatch_once(&linearGrayColorSpace_onceToken, block);
  }

  v2 = linearGrayColorSpace_result;

  return v2;
}

void __36__NUColorSpace_linearGrayColorSpace__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1A0]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load linear gray color space"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace linearGrayColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 215, @"Failed to load linear gray color space", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:@"Linear Gray"];
  v5 = linearGrayColorSpace_result;
  linearGrayColorSpace_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)genericGrayGamma2_2ColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__NUColorSpace_genericGrayGamma2_2ColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (genericGrayGamma2_2ColorSpace_onceToken != -1)
  {
    dispatch_once(&genericGrayGamma2_2ColorSpace_onceToken, block);
  }

  v2 = genericGrayGamma2_2ColorSpace_result;

  return v2;
}

void __45__NUColorSpace_genericGrayGamma2_2ColorSpace__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceGenericGrayGamma2_2"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace genericGrayGamma2_2ColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 202, @"Failed to load kCGColorSpaceGenericGrayGamma2_2", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:@"Generic Gray (2.2)"];
  v5 = genericGrayGamma2_2ColorSpace_result;
  genericGrayGamma2_2ColorSpace_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)sRGBColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__NUColorSpace_sRGBColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sRGBColorSpace_onceToken != -1)
  {
    dispatch_once(&sRGBColorSpace_onceToken, block);
  }

  v2 = sRGBColorSpace_result;

  return v2;
}

void __30__NUColorSpace_sRGBColorSpace__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (!v2)
  {
    v6 = NUAssertLogger_4789();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load kCGColorSpaceSRGB"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4789();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace sRGBColorSpace]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 189, @"Failed to load kCGColorSpaceSRGB", v18, v19, v20, v21, *v22);
  }

  v3 = v2;
  v4 = [objc_alloc(*(a1 + 32)) initWithCGColorSpace:v2 descriptionName:@"sRGB"];
  v5 = sRGBColorSpace_result;
  sRGBColorSpace_result = v4;

  CGColorSpaceRelease(v3);
}

+ (id)_loadICCProfileDataWithIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:identifierCopy ofType:@"icc"];
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5];
  if (!v6 || (v7 = v6, ![v6 length]))
  {
    v9 = NUAssertLogger_4789();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load %@", identifierCopy];
      *buf = 138543362;
      v26 = identifierCopy;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_4789();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        callStackSymbols = [v17 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v16;
        v27 = 2114;
        v28 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUColorSpace _loadICCProfileDataWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUColorSpace.m", 65, @"Failed to load %@", v21, v22, v23, v24, identifierCopy);
  }

  return v7;
}

@end