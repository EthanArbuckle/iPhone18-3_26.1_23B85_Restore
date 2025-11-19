@interface REAudioPayload
- (REAudioPayload)initWithBuffer:(id)a3 format:(id)a4 length:(unsigned int)a5 inputMode:(unsigned __int8)a6 referenceLevel:(float)a7 loopCount:(int)a8 mixGroupName:(id)a9 streaming:(BOOL)a10 normalizationMode:(int)a11 calibrationMode:(int)a12 calibrationLevel:(double)a13 layoutTag:(unsigned int)a14 taskToken:(unsigned int)a15 audioAssetID:(unint64_t)a16;
- (REAudioPayload)initWithCoder:(id)a3;
- (REAudioPayload)initWithFileBuffer:(id)a3 format:(id)a4 length:(unsigned int)a5 bufferSize:(unint64_t)a6 inputMode:(unsigned __int8)a7 referenceLevel:(float)a8 loopCount:(int)a9 mixGroupName:(id)a10 streaming:(BOOL)a11 normalizationMode:(int)a12 calibrationMode:(int)a13 calibrationLevel:(double)a14 layoutTag:(unsigned int)a15 taskToken:(unsigned int)a16 audioAssetID:(unint64_t)a17;
- (REAudioPayload)initWithFilePath:(id)a3 inputMode:(unsigned __int8)a4 referenceLevel:(float)a5 loopCount:(int)a6 mixGroupName:(id)a7 streaming:(BOOL)a8 normalizationMode:(int)a9 calibrationMode:(int)a10 calibrationLevel:(double)a11 layoutTag:(unsigned int)a12 taskToken:(unsigned int)a13 targetLUFS:(double)a14 audioAssetID:(unint64_t)a15 urlQueryItems:(id)a16;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REAudioPayload

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  taskToken = self->_taskToken;
  if (taskToken + 1 >= 2)
  {
    v4 = mach_port_deallocate(*MEMORY[0x1E69E9A60], taskToken);
    v5 = v4;
    if (v4)
    {
      v6 = *re::audioLogObjects(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v9 = mach_error_string(v5);
        _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAsset] Failed to deallocate mach port, with KERN error code: %s", buf, 0xCu);
      }
    }
  }

  v7.receiver = self;
  v7.super_class = REAudioPayload;
  [(REAudioPayload *)&v7 dealloc];
}

- (REAudioPayload)initWithBuffer:(id)a3 format:(id)a4 length:(unsigned int)a5 inputMode:(unsigned __int8)a6 referenceLevel:(float)a7 loopCount:(int)a8 mixGroupName:(id)a9 streaming:(BOOL)a10 normalizationMode:(int)a11 calibrationMode:(int)a12 calibrationLevel:(double)a13 layoutTag:(unsigned int)a14 taskToken:(unsigned int)a15 audioAssetID:(unint64_t)a16
{
  v24 = a3;
  v25 = a4;
  v26 = a9;
  v33.receiver = self;
  v33.super_class = REAudioPayload;
  v27 = [(RESharedResourcePayload *)&v33 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_pcmBuffer, a3);
    objc_storeStrong(&v28->_format, a4);
    v29 = [MEMORY[0x1E696AD98] numberWithLongLong:a5];
    length = v28->_length;
    v28->_length = v29;

    v28->_inputMode = a6;
    v28->_referenceLevel = a7;
    v28->_loopCount = a8;
    objc_storeStrong(&v28->_mixGroupName, a9);
    v28->_streaming = a10;
    v28->_normalizationMode = a11;
    v28->_calibrationMode = a12;
    v28->_calibrationLevel = a13;
    v28->_layoutTag = a14;
    v28->_taskToken = a15;
    v28->_targetLUFS = -12.0;
    if (a15 + 1 >= 2)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], a15, 0, 1);
    }

    v28->_audioAssetID = a16;
  }

  return v28;
}

- (REAudioPayload)initWithFileBuffer:(id)a3 format:(id)a4 length:(unsigned int)a5 bufferSize:(unint64_t)a6 inputMode:(unsigned __int8)a7 referenceLevel:(float)a8 loopCount:(int)a9 mixGroupName:(id)a10 streaming:(BOOL)a11 normalizationMode:(int)a12 calibrationMode:(int)a13 calibrationLevel:(double)a14 layoutTag:(unsigned int)a15 taskToken:(unsigned int)a16 audioAssetID:(unint64_t)a17
{
  v25 = a3;
  v26 = a4;
  v27 = a10;
  v36.receiver = self;
  v36.super_class = REAudioPayload;
  v28 = [(RESharedResourcePayload *)&v36 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_fileBuffer, a3);
    objc_storeStrong(&v29->_format, a4);
    v30 = [MEMORY[0x1E696AD98] numberWithLongLong:a5];
    length = v29->_length;
    v29->_length = v30;

    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a6];
    bufferSize = v29->_bufferSize;
    v29->_bufferSize = v32;

    v29->_inputMode = a7;
    v29->_referenceLevel = a8;
    v29->_loopCount = a9;
    objc_storeStrong(&v29->_mixGroupName, a10);
    v29->_streaming = a11;
    v29->_normalizationMode = a12;
    v29->_calibrationMode = a13;
    v29->_calibrationLevel = a14;
    v29->_layoutTag = a15;
    v29->_taskToken = a16;
    v29->_targetLUFS = -12.0;
    if (a16 + 1 >= 2)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], a16, 0, 1);
    }

    v29->_audioAssetID = a17;
  }

  return v29;
}

- (REAudioPayload)initWithFilePath:(id)a3 inputMode:(unsigned __int8)a4 referenceLevel:(float)a5 loopCount:(int)a6 mixGroupName:(id)a7 streaming:(BOOL)a8 normalizationMode:(int)a9 calibrationMode:(int)a10 calibrationLevel:(double)a11 layoutTag:(unsigned int)a12 taskToken:(unsigned int)a13 targetLUFS:(double)a14 audioAssetID:(unint64_t)a15 urlQueryItems:(id)a16
{
  v23 = a3;
  v24 = a7;
  v25 = a16;
  v32.receiver = self;
  v32.super_class = REAudioPayload;
  v26 = [(RESharedResourcePayload *)&v32 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_filePath, a3);
    v27->_inputMode = a4;
    v27->_referenceLevel = a5;
    v27->_loopCount = a6;
    objc_storeStrong(&v27->_mixGroupName, a7);
    v27->_streaming = a8;
    v27->_normalizationMode = a9;
    v27->_calibrationMode = a10;
    v27->_calibrationLevel = a11;
    v27->_layoutTag = a12;
    v27->_taskToken = a13;
    v27->_targetLUFS = a14;
    if (a13 + 1 >= 2)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], a13, 0, 1);
    }

    v27->_audioAssetID = a15;
    objc_storeStrong(&v27->_urlQueryItems, a16);
  }

  return v27;
}

- (REAudioPayload)initWithCoder:(id)a3
{
  v58[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51.receiver = self;
    v51.super_class = REAudioPayload;
    v5 = [(RESharedResourcePayload *)&v51 initWithCoder:v4];
    if (!v5)
    {
LABEL_14:
      self = v5;
      v15 = self;
      goto LABEL_15;
    }

    if ([v4 containsValueForKey:@"pcmBuffer"])
    {
      v6 = [v4 decodeXPCObjectForKey:@"pcmBuffer"];
      pcmBuffer = v5->_pcmBuffer;
      v5->_pcmBuffer = v6;

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"format"];
      format = v5->_format;
      v5->_format = v8;

      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"length"];
      v11 = 72;
    }

    else
    {
      if (![v4 containsValueForKey:@"fileBuffer"])
      {
        if ([v4 containsValueForKey:@"filePath"])
        {
          v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filePath"];
          filePath = v5->_filePath;
          v5->_filePath = v32;

          v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"urlQueryItems"];
          urlQueryItems = v5->_urlQueryItems;
          v5->_urlQueryItems = v34;

          v22 = v4;
          *buf = 0u;
          v50 = 0u;
          v36 = [v22 connection];
          v37 = v36;
          if (v36)
          {
            [v36 auditToken];
          }

          else
          {
            *buf = 0u;
            v50 = 0u;
          }

          v41 = [(NSString *)v5->_filePath UTF8String];
          *v56 = *buf;
          *&v56[16] = v50;
          v42 = sandbox_check_by_audit_token();
          v43 = v42;
          if (!v42)
          {
LABEL_9:

            v5->_inputMode = [v4 decodeIntForKey:@"inputMode"];
            [v4 decodeFloatForKey:@"referenceLevel"];
            v5->_referenceLevel = v23;
            v5->_loopCount = [v4 decodeIntForKey:@"loopCount"];
            v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mixGroupName"];
            mixGroupName = v5->_mixGroupName;
            v5->_mixGroupName = v24;

            v5->_streaming = [v4 decodeBoolForKey:@"streaming"];
            v5->_normalizationMode = [v4 decodeIntegerForKey:@"normalizationMode"];
            v5->_calibrationMode = [v4 decodeIntegerForKey:@"calibrationMode"];
            [v4 decodeDoubleForKey:@"calibrationLevel"];
            v5->_calibrationLevel = v26;
            v5->_layoutTag = [v4 decodeIntegerForKey:@"layoutTag"];
            [v4 decodeDoubleForKey:@"targetLUFS"];
            v5->_targetLUFS = v27;
            v5->_audioAssetID = [v4 decodeInt64ForKey:@"audioAssetID"];
            v28 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9EC0] forKey:@"taskToken"];
            if (v28)
            {
              v29 = xpc_mach_send_copy_right();
            }

            else
            {
              v30 = *re::audioLogObjects(0);
              v29 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
              if (v29)
              {
                *buf = 0;
                _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "[CoreRE] [REAudioPayload] Failed to decode xpc_object for taskToken. Setting to MACH_PORT_NULL", buf, 2u);
                v29 = 0;
              }
            }

            v5->_taskToken = v29;

            goto LABEL_14;
          }

          v44 = *re::audioLogObjects(v42);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *v56 = 67109378;
            *&v56[4] = v43;
            *&v56[8] = 2080;
            *&v56[10] = v41;
            _os_log_error_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_ERROR, "sandbox_check_by_audit_token error = %u. App process does not have access to file path: %s", v56, 0x12u);
          }

          v45 = MEMORY[0x1E696ABC0];
          v54 = *MEMORY[0x1E696A278];
          v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sandbox_check_by_audit_token error = %u. App process does not have access to file path: %s", v43, v41];
          v55 = v46;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
          v48 = [v45 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v47];
          [v22 failWithError:v48];
        }

        else
        {
          v38 = MEMORY[0x1E696ABC0];
          v52 = *MEMORY[0x1E696A278];
          v53 = @"REAudioPayload requires either buffer or filePath";
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          v40 = [v38 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v39];
          [v4 failWithError:v40];
        }

        v15 = 0;
        self = v5;
        goto LABEL_15;
      }

      v16 = [v4 decodeXPCObjectForKey:@"fileBuffer"];
      fileBuffer = v5->_fileBuffer;
      v5->_fileBuffer = v16;

      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"format"];
      v19 = v5->_format;
      v5->_format = v18;

      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"length"];
      length = v5->_length;
      v5->_length = v20;

      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bufferSize"];
      v11 = 80;
    }

    v22 = *(&v5->super.super.isa + v11);
    *(&v5->super.super.isa + v11) = v10;
    goto LABEL_9;
  }

  v12 = MEMORY[0x1E696ABC0];
  v57 = *MEMORY[0x1E696A278];
  v58[0] = @"REAudioPayload requires an NSXPCCoder";
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
  v14 = [v12 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v13];
  [v4 failWithError:v14];

  v15 = 0;
LABEL_15:

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pcmBuffer = self->_pcmBuffer;
    if (pcmBuffer)
    {
      [v4 encodeXPCObject:pcmBuffer forKey:@"pcmBuffer"];
      v6 = &OBJC_IVAR___REAudioPayload__length;
      [v4 encodeObject:self->_format forKey:@"format"];
      v7 = @"length";
    }

    else
    {
      fileBuffer = self->_fileBuffer;
      if (fileBuffer)
      {
        [v4 encodeXPCObject:fileBuffer forKey:@"fileBuffer"];
        [v4 encodeObject:self->_format forKey:@"format"];
        v6 = &OBJC_IVAR___REAudioPayload__bufferSize;
        [v4 encodeObject:self->_length forKey:@"length"];
        v7 = @"bufferSize";
      }

      else
      {
        filePath = self->_filePath;
        if (!filePath)
        {
          v15 = MEMORY[0x1E696ABC0];
          v18 = *MEMORY[0x1E696A278];
          v19 = @"REAudioPayload requires either non-nil buffer of filePath";
          v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
          v16 = [v15 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v9];
          [v4 failWithError:v16];

          goto LABEL_5;
        }

        [v4 encodeObject:filePath forKey:@"filePath"];
        v7 = @"urlQueryItems";
        v6 = &OBJC_IVAR___REAudioPayload__urlQueryItems;
      }
    }

    [v4 encodeObject:*(&self->super.super.isa + *v6) forKey:v7];
    [v4 encodeInt:self->_inputMode forKey:@"inputMode"];
    *&v13 = self->_referenceLevel;
    [v4 encodeFloat:@"referenceLevel" forKey:v13];
    [v4 encodeInt:self->_loopCount forKey:@"loopCount"];
    [v4 encodeObject:self->_mixGroupName forKey:@"mixGroupName"];
    [v4 encodeBool:self->_streaming forKey:@"streaming"];
    [v4 encodeInteger:self->_normalizationMode forKey:@"normalizationMode"];
    [v4 encodeInteger:self->_calibrationMode forKey:@"calibrationMode"];
    [v4 encodeDouble:@"calibrationLevel" forKey:self->_calibrationLevel];
    [v4 encodeInteger:self->_layoutTag forKey:@"layoutTag"];
    [v4 encodeDouble:@"targetLUFS" forKey:self->_targetLUFS];
    [v4 encodeInteger:self->_audioAssetID forKey:@"audioAssetID"];
    if (self->_taskToken + 1 < 2)
    {
      goto LABEL_11;
    }

    v9 = xpc_mach_send_create();
    if (v9)
    {
      [v4 encodeXPCObject:v9 forKey:@"taskToken"];
    }

    else
    {
      v14 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "[CoreRE] [REAudioPayload] Failed to encode xpc_object for taskToken.", v17, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A278];
    v21[0] = @"REAudioPayload requires an NSXPCCoder";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = [v8 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v9];
    [v4 failWithError:v10];
  }

LABEL_5:

LABEL_11:
}

@end