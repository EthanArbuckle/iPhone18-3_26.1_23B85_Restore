@interface NTKCompanionImageDataScaler
- (CGRect)inputCrop;
- (CGSize)inputSize;
- (CGSize)outputSize;
- (NTKCompanionImageDataScaler)initWithSize:(CGSize)size crop:(CGRect)crop data:(id)data orientation:(int64_t)orientation type:(id)type outputSize:(CGSize)outputSize;
- (void)cropAndScaleWithCompletion:(id)completion;
@end

@implementation NTKCompanionImageDataScaler

- (NTKCompanionImageDataScaler)initWithSize:(CGSize)size crop:(CGRect)crop data:(id)data orientation:(int64_t)orientation type:(id)type outputSize:(CGSize)outputSize
{
  height = outputSize.height;
  width = outputSize.width;
  v13 = crop.size.height;
  v14 = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v17 = size.height;
  v18 = size.width;
  dataCopy = data;
  typeCopy = type;
  v33.receiver = self;
  v33.super_class = NTKCompanionImageDataScaler;
  v22 = [(NTKCompanionImageDataScaler *)&v33 init];
  v23 = v22;
  if (v22)
  {
    v22->_inputSize.width = v18;
    v22->_inputSize.height = v17;
    v22->_inputCrop.origin.x = x;
    v22->_inputCrop.origin.y = y;
    v22->_inputCrop.size.width = v14;
    v22->_inputCrop.size.height = v13;
    objc_storeStrong(&v22->_data, data);
    v23->_orientation = orientation;
    objc_storeStrong(&v23->_type, type);
    v23->_outputSize.width = width;
    v23->_outputSize.height = height;
    identifier = [*MEMORY[0x277CE1DC0] identifier];
    identifier2 = [*MEMORY[0x277CE1D90] identifier];
    identifier3 = [(UTType *)v23->_type identifier];
    v27 = [identifier3 isEqualToString:identifier];

    if (v27)
    {
      v28 = 0x3FEB333333333333;
    }

    else
    {
      identifier4 = [(UTType *)v23->_type identifier];
      v30 = [identifier4 isEqualToString:identifier2];

      if (!v30)
      {
        v31 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [NTKCompanionImageDataScaler initWithSize:v31 crop:? data:? orientation:? type:? outputSize:?];
        }

        v23 = 0;
        goto LABEL_10;
      }

      v28 = 0x3FECCCCCCCCCCCCDLL;
    }

    *&v23->_compressionQuality = v28;
LABEL_10:
  }

  return v23;
}

- (void)cropAndScaleWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__NTKCompanionImageDataScaler_cropAndScaleWithCompletion___block_invoke;
  v7[3] = &unk_27877FF60;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

void __58__NTKCompanionImageDataScaler_cropAndScaleWithCompletion___block_invoke(uint64_t a1)
{
  v104 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = *(v2 + 96);
    v6 = *(v2 + 104);
    v7 = v3 / v4 * v6;
    if (v7 >= v5)
    {
      v7 = *(v2 + 96);
    }

    v8 = v5 / (v3 / v4);
    if (v8 >= v6)
    {
      v8 = *(v2 + 104);
    }

    v9 = (v8 * v7);
    v10 = v3 / v7;
    v11 = v4 / v8;
    if (v10 < v11)
    {
      v10 = v11;
    }

    v12 = (v10 * (*(v2 + 56) * (*(v2 + 48) * v10)));
    v13 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 134218240;
      *(&buf.a + 4) = vcvtd_n_f64_s64(v9, 0x14uLL);
      WORD2(buf.b) = 2048;
      *(&buf.b + 6) = vcvtd_n_f64_s64(v12, 0x14uLL);
      _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "cropThenScale ==> %.3f MP; scaleThenCrop ==> %.3f MP", &buf, 0x16u);
    }

    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    if (v9 >= v12)
    {
      v48 = *(v15 + 24);
      v49 = *(v15 + 8);
      v50 = *(v15 + 48);
      v51 = *(v15 + 56);
      v52 = *(v15 + 88);
      v93 = *(v15 + 80);
      v54 = *(v15 + 96);
      v53 = *(v15 + 104);
      v55 = *(v15 + 64);
      v56 = *(v15 + 72);
      v57 = *(v15 + 40);
      v58 = CGImageSourceCreateWithData(v48, 0);
      if (v58)
      {
        v59 = v58;
        v87 = v49;
        v88 = v52;
        if (v53 * (v55 / v56) >= v54)
        {
          v60 = v54;
        }

        else
        {
          v60 = v53 * (v55 / v56);
        }

        if (v54 / (v55 / v56) >= v53)
        {
          v61 = v53;
        }

        else
        {
          v61 = v54 / (v55 / v56);
        }

        v89 = v55;
        if (v55 / v60 >= v56 / v61)
        {
          v62 = v55 / v60;
        }

        else
        {
          v62 = v56 / v61;
        }

        v63 = v50 * v62;
        if (v50 * v62 < v51 * v62)
        {
          v63 = v51 * v62;
        }

        v64 = *MEMORY[0x277CD3568];
        v65 = MEMORY[0x277CBEC38];
        *&v101.a = MEMORY[0x277CBEC38];
        v66 = *MEMORY[0x277CD3660];
        v97 = v64;
        v98 = v66;
        v67 = [MEMORY[0x277CCABB0] numberWithDouble:ceil(v63)];
        v99 = *MEMORY[0x277CD3578];
        *&v101.b = v67;
        v101.c = v65;
        v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v97 count:3];

        ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v59, 0, v68);
        if (ThumbnailAtIndex)
        {
          v70 = ThumbnailAtIndex;
          v91 = v57;
          CGAffineTransformMakeScale(&buf, v62, v62);
          v107.origin.x = v93 + fmax((v54 - v60) * 0.5, 0.0);
          v107.origin.y = v88 + fmax((v53 - v61) * 0.5, 0.0);
          v107.size.width = v60;
          v107.size.height = v61;
          v108 = CGRectApplyAffineTransform(v107, &buf);
          v108.origin.x = rint(v108.origin.x);
          v108.origin.y = rint(v108.origin.y);
          v108.size.width = rint(v89);
          v108.size.height = rint(v56);
          v71 = CGImageCreateWithImageInRect(v70, v108);
          if (v71)
          {
            v72 = v71;
            v94 = v14;
            v37 = [MEMORY[0x277CBEB28] data];
            v73 = [v91 identifier];
            v74 = CGImageDestinationCreateWithData(v37, v73, 1uLL, 0);

            if (v74)
            {
              if (v89 >= v56)
              {
                v75 = v89;
              }

              else
              {
                v75 = v56;
              }

              v102[0] = *MEMORY[0x277CD2D48];
              v76 = [MEMORY[0x277CCABB0] numberWithDouble:v87];
              *&buf.a = v76;
              v102[1] = *MEMORY[0x277CD2D40];
              v77 = [MEMORY[0x277CCABB0] numberWithDouble:v75];
              v102[2] = *MEMORY[0x277CD2D78];
              *&buf.b = v77;
              buf.c = v65;
              v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v102 count:3];

              CGImageDestinationAddImage(v74, v72, v78);
              CGImageDestinationFinalize(v74);
              CFRelease(v74);
            }

            else
            {

              v78 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
              if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
                __58__NTKCompanionImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_1();
              }

              v37 = 0;
            }

            v14 = v94;

            CFRelease(v72);
          }

          else
          {
            v83 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              __58__NTKCompanionImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_2();
            }

            v37 = 0;
          }

          v57 = v91;
          CFRelease(v70);
        }

        else
        {
          v81 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            __58__NTKCompanionImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_3();
          }

          v37 = 0;
        }

        CFRelease(v59);
      }

      else
      {
        v68 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          __58__NTKCompanionImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_4();
        }

        v37 = 0;
      }
    }

    else
    {
      v16 = *(v15 + 24);
      v17 = *(v15 + 32);
      v18 = *(v15 + 8);
      v19 = *(v15 + 80);
      v20 = *(v15 + 88);
      v21 = *(v15 + 96);
      v22 = *(v15 + 104);
      v23 = *(v15 + 64);
      v24 = *(v15 + 72);
      v25 = *(v15 + 40);
      v26 = CGImageSourceCreateWithData(v16, 0);
      if (v26)
      {
        v27 = v26;
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v26, 0, 0);
        if (ImageAtIndex)
        {
          v29 = ImageAtIndex;
          if (v22 * (v23 / v24) >= v21)
          {
            v30 = v21;
          }

          else
          {
            v30 = v22 * (v23 / v24);
          }

          v31 = v19 + fmax((v21 - v30) * 0.5, 0.0);
          if (v21 / (v23 / v24) >= v22)
          {
            v32 = v22;
          }

          else
          {
            v32 = v21 / (v23 / v24);
          }

          Width = CGImageGetWidth(ImageAtIndex);
          Height = CGImageGetHeight(v29);
          memset(&buf, 0, sizeof(buf));
          NTKImagePresentationTransform(v17, Width, Height, &v101);
          CGAffineTransformInvert(&buf, &v101);
          v101 = buf;
          v105.origin.x = v31;
          v105.origin.y = v20 + fmax((v22 - v32) * 0.5, 0.0);
          v105.size.width = v30;
          v105.size.height = v32;
          v106 = CGRectApplyAffineTransform(v105, &v101);
          v35 = CGImageCreateWithImageInRect(v29, v106);
          if (v35)
          {
            v36 = v35;
            v92 = v14;
            v37 = [MEMORY[0x277CBEB28] data];
            v38 = [v25 identifier];
            v39 = CGImageDestinationCreateWithData(v37, v38, 1uLL, 0);

            if (v39)
            {
              if (v23 >= v24)
              {
                v40 = v23;
              }

              else
              {
                v40 = v24;
              }

              ImageOrientation = getImageOrientation(v27);
              v97 = *MEMORY[0x277CD2D48];
              v42 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
              *&v101.a = v42;
              v98 = *MEMORY[0x277CD2D40];
              [MEMORY[0x277CCABB0] numberWithDouble:v40];
              v43 = v90 = v25;
              v44 = *MEMORY[0x277CD2D78];
              *&v101.b = v43;
              *&v101.c = MEMORY[0x277CBEC38];
              v45 = *MEMORY[0x277CD3410];
              v99 = v44;
              v100 = v45;
              v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ImageOrientation];
              *&v101.d = v46;
              v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v97 count:4];

              v25 = v90;
              CGImageDestinationAddImage(v39, v36, v47);
              CGImageDestinationFinalize(v39);
              CFRelease(v39);
            }

            else
            {

              v47 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                __58__NTKCompanionImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_1();
              }

              v37 = 0;
            }

            CFRelease(v36);
            v14 = v92;
          }

          else
          {
            v82 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              __58__NTKCompanionImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_2();
            }

            v37 = 0;
          }

          CFRelease(v29);
        }

        else
        {
          v80 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            __58__NTKCompanionImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_7();
          }

          v37 = 0;
        }

        CFRelease(v27);
      }

      else
      {
        v79 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          __58__NTKCompanionImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_4();
        }

        v37 = 0;
      }
    }

    v84 = *(a1 + 32);
    v85 = *(v84 + 16);
    *(v84 + 16) = v37;

    objc_autoreleasePoolPop(v14);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NTKCompanionImageDataScaler_cropAndScaleWithCompletion___block_invoke_1;
  block[3] = &unk_27877E570;
  v86 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v96 = v86;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (CGSize)inputSize
{
  width = self->_inputSize.width;
  height = self->_inputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)inputCrop
{
  x = self->_inputCrop.origin.x;
  y = self->_inputCrop.origin.y;
  width = self->_inputCrop.size.width;
  height = self->_inputCrop.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)outputSize
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithSize:(id *)a1 crop:(NSObject *)a2 data:orientation:type:outputSize:.cold.1(id *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [*a1 identifier];
  v4 = 136315394;
  v5 = "[NTKCompanionImageDataScaler initWithSize:crop:data:orientation:type:outputSize:]";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "%s only supports JPEG and HEIC; not %@", &v4, 0x16u);
}

@end