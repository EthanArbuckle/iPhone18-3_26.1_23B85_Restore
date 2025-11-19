@interface CAMHistogramResult
- (CAMHistogramResult)initWithHistogramObject:(id)a3 forDeviceFormat:(id)a4;
- (NSString)metadataType;
@end

@implementation CAMHistogramResult

- (CAMHistogramResult)initWithHistogramObject:(id)a3 forDeviceFormat:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v38.receiver = self;
  v38.super_class = CAMHistogramResult;
  v9 = [(CAMHistogramResult *)&v38 init];
  if (v9)
  {
    v10 = [v7 lumaHistogramData];
    v11 = [v7 lumaHistogramBinCount];
    if (v11)
    {
      if ([v10 length])
      {
        objc_storeStrong(&v9->__metadataHistogramObject, a3);
        v12 = [v7 type];
        uniqueIdentifier = v9->_uniqueIdentifier;
        v9->_uniqueIdentifier = v12;

        MEMORY[0x1EEE9AC00](v14);
        v16 = block - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        [v10 getBytes:v16 length:{objc_msgSend(v10, "length")}];
        v17 = 0;
        v18 = 0;
        do
        {
          v18 += *&v16[4 * v17++];
        }

        while (v11 != v17);
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        v20 = vcvtmd_u64_f64(v11 * 0.0390625);
        MediaSubType = CMFormatDescriptionGetMediaSubType([v8 formatDescription]);
        v22 = 0;
        if (MediaSubType <= 875704437)
        {
          if (MediaSubType <= 645424687)
          {
            v24 = 0;
            if (MediaSubType == 641230384)
            {
              goto LABEL_28;
            }

            if (MediaSubType != 641234480)
            {
LABEL_40:
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __62__CAMHistogramResult_initWithHistogramObject_forDeviceFormat___block_invoke;
              block[3] = &__block_descriptor_36_e5_v8__0l;
              v37 = MediaSubType;
              if (initWithHistogramObject_forDeviceFormat__onceToken != -1)
              {
                dispatch_once(&initWithHistogramObject_forDeviceFormat__onceToken, block);
              }

              v22 = 0;
              v24 = 0;
              goto LABEL_28;
            }

            goto LABEL_27;
          }

          if (MediaSubType == 645424688)
          {
            v24 = 0;
            goto LABEL_28;
          }

          if (MediaSubType == 645428784)
          {
            goto LABEL_27;
          }

          v23 = 875704422;
        }

        else
        {
          if (MediaSubType <= 2016686639)
          {
            if (MediaSubType != 875704438 && MediaSubType != 1882468912)
            {
              v23 = 1885745712;
              goto LABEL_23;
            }

LABEL_27:
            v24 = 10;
            v22 = 8;
            goto LABEL_28;
          }

          if (MediaSubType == 2016686640 || MediaSubType == 2016686642)
          {
            goto LABEL_27;
          }

          v23 = 2019963440;
        }

LABEL_23:
        v24 = 0;
        if (MediaSubType != v23)
        {
          goto LABEL_40;
        }

LABEL_28:
        v25 = 0.0;
        v26 = 0.0;
        v27 = v22 + v20;
        if (v27)
        {
          v28 = 0;
          v29 = v16;
          do
          {
            v30 = *v29;
            v29 += 4;
            v28 += v30;
            --v27;
          }

          while (v27);
          v26 = v28;
        }

        v31 = v24 + v20;
        if (v24 + v20)
        {
          v32 = 0;
          v33 = &v16[4 * v11 - 4];
          do
          {
            v34 = *v33;
            v33 -= 4;
            v32 += v34;
            --v31;
          }

          while (v31);
          v25 = v32;
        }

        v9->_shadowClipping = v26 / v19;
        v9->_highlightClipping = v25 / v19;
        v11 = v9;
        goto LABEL_37;
      }

      v11 = 0;
    }

LABEL_37:

    goto LABEL_38;
  }

  v11 = 0;
LABEL_38:

  return v11;
}

void __62__CAMHistogramResult_initWithHistogramObject_forDeviceFormat___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __62__CAMHistogramResult_initWithHistogramObject_forDeviceFormat___block_invoke_cold_1(a1, v2);
  }
}

- (NSString)metadataType
{
  v2 = [(CAMHistogramResult *)self _metadataHistogramObject];
  v3 = [v2 type];

  return v3;
}

void __62__CAMHistogramResult_initWithHistogramObject_forDeviceFormat___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "CAMHistogramResult received with unsupported pixel format type: %d", v3, 8u);
}

@end