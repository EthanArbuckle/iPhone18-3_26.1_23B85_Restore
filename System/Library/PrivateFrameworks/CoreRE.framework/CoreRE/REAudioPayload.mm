@interface REAudioPayload
- (REAudioPayload)initWithBuffer:(id)buffer format:(id)format length:(unsigned int)length inputMode:(unsigned __int8)mode referenceLevel:(float)level loopCount:(int)count mixGroupName:(id)name streaming:(BOOL)self0 normalizationMode:(int)self1 calibrationMode:(int)self2 calibrationLevel:(double)self3 layoutTag:(unsigned int)self4 taskToken:(unsigned int)self5 audioAssetID:(unint64_t)self6;
- (REAudioPayload)initWithCoder:(id)coder;
- (REAudioPayload)initWithFileBuffer:(id)buffer format:(id)format length:(unsigned int)length bufferSize:(unint64_t)size inputMode:(unsigned __int8)mode referenceLevel:(float)level loopCount:(int)count mixGroupName:(id)self0 streaming:(BOOL)self1 normalizationMode:(int)self2 calibrationMode:(int)self3 calibrationLevel:(double)self4 layoutTag:(unsigned int)self5 taskToken:(unsigned int)self6 audioAssetID:(unint64_t)self7;
- (REAudioPayload)initWithFilePath:(id)path inputMode:(unsigned __int8)mode referenceLevel:(float)level loopCount:(int)count mixGroupName:(id)name streaming:(BOOL)streaming normalizationMode:(int)normalizationMode calibrationMode:(int)self0 calibrationLevel:(double)self1 layoutTag:(unsigned int)self2 taskToken:(unsigned int)self3 targetLUFS:(double)self4 audioAssetID:(unint64_t)self5 urlQueryItems:(id)self6;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (REAudioPayload)initWithBuffer:(id)buffer format:(id)format length:(unsigned int)length inputMode:(unsigned __int8)mode referenceLevel:(float)level loopCount:(int)count mixGroupName:(id)name streaming:(BOOL)self0 normalizationMode:(int)self1 calibrationMode:(int)self2 calibrationLevel:(double)self3 layoutTag:(unsigned int)self4 taskToken:(unsigned int)self5 audioAssetID:(unint64_t)self6
{
  bufferCopy = buffer;
  formatCopy = format;
  nameCopy = name;
  v33.receiver = self;
  v33.super_class = REAudioPayload;
  v27 = [(RESharedResourcePayload *)&v33 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_pcmBuffer, buffer);
    objc_storeStrong(&v28->_format, format);
    v29 = [MEMORY[0x1E696AD98] numberWithLongLong:length];
    length = v28->_length;
    v28->_length = v29;

    v28->_inputMode = mode;
    v28->_referenceLevel = level;
    v28->_loopCount = count;
    objc_storeStrong(&v28->_mixGroupName, name);
    v28->_streaming = streaming;
    v28->_normalizationMode = normalizationMode;
    v28->_calibrationMode = calibrationMode;
    v28->_calibrationLevel = calibrationLevel;
    v28->_layoutTag = tag;
    v28->_taskToken = token;
    v28->_targetLUFS = -12.0;
    if (token + 1 >= 2)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], token, 0, 1);
    }

    v28->_audioAssetID = d;
  }

  return v28;
}

- (REAudioPayload)initWithFileBuffer:(id)buffer format:(id)format length:(unsigned int)length bufferSize:(unint64_t)size inputMode:(unsigned __int8)mode referenceLevel:(float)level loopCount:(int)count mixGroupName:(id)self0 streaming:(BOOL)self1 normalizationMode:(int)self2 calibrationMode:(int)self3 calibrationLevel:(double)self4 layoutTag:(unsigned int)self5 taskToken:(unsigned int)self6 audioAssetID:(unint64_t)self7
{
  bufferCopy = buffer;
  formatCopy = format;
  nameCopy = name;
  v36.receiver = self;
  v36.super_class = REAudioPayload;
  v28 = [(RESharedResourcePayload *)&v36 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_fileBuffer, buffer);
    objc_storeStrong(&v29->_format, format);
    v30 = [MEMORY[0x1E696AD98] numberWithLongLong:length];
    length = v29->_length;
    v29->_length = v30;

    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:size];
    bufferSize = v29->_bufferSize;
    v29->_bufferSize = v32;

    v29->_inputMode = mode;
    v29->_referenceLevel = level;
    v29->_loopCount = count;
    objc_storeStrong(&v29->_mixGroupName, name);
    v29->_streaming = streaming;
    v29->_normalizationMode = normalizationMode;
    v29->_calibrationMode = calibrationMode;
    v29->_calibrationLevel = calibrationLevel;
    v29->_layoutTag = tag;
    v29->_taskToken = token;
    v29->_targetLUFS = -12.0;
    if (token + 1 >= 2)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], token, 0, 1);
    }

    v29->_audioAssetID = d;
  }

  return v29;
}

- (REAudioPayload)initWithFilePath:(id)path inputMode:(unsigned __int8)mode referenceLevel:(float)level loopCount:(int)count mixGroupName:(id)name streaming:(BOOL)streaming normalizationMode:(int)normalizationMode calibrationMode:(int)self0 calibrationLevel:(double)self1 layoutTag:(unsigned int)self2 taskToken:(unsigned int)self3 targetLUFS:(double)self4 audioAssetID:(unint64_t)self5 urlQueryItems:(id)self6
{
  pathCopy = path;
  nameCopy = name;
  itemsCopy = items;
  v32.receiver = self;
  v32.super_class = REAudioPayload;
  v26 = [(RESharedResourcePayload *)&v32 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_filePath, path);
    v27->_inputMode = mode;
    v27->_referenceLevel = level;
    v27->_loopCount = count;
    objc_storeStrong(&v27->_mixGroupName, name);
    v27->_streaming = streaming;
    v27->_normalizationMode = normalizationMode;
    v27->_calibrationMode = calibrationMode;
    v27->_calibrationLevel = calibrationLevel;
    v27->_layoutTag = tag;
    v27->_taskToken = token;
    v27->_targetLUFS = s;
    if (token + 1 >= 2)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], token, 0, 1);
    }

    v27->_audioAssetID = d;
    objc_storeStrong(&v27->_urlQueryItems, items);
  }

  return v27;
}

- (REAudioPayload)initWithCoder:(id)coder
{
  v58[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51.receiver = self;
    v51.super_class = REAudioPayload;
    v5 = [(RESharedResourcePayload *)&v51 initWithCoder:coderCopy];
    if (!v5)
    {
LABEL_14:
      self = v5;
      selfCopy = self;
      goto LABEL_15;
    }

    if ([coderCopy containsValueForKey:@"pcmBuffer"])
    {
      v6 = [coderCopy decodeXPCObjectForKey:@"pcmBuffer"];
      pcmBuffer = v5->_pcmBuffer;
      v5->_pcmBuffer = v6;

      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"format"];
      format = v5->_format;
      v5->_format = v8;

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"length"];
      v11 = 72;
    }

    else
    {
      if (![coderCopy containsValueForKey:@"fileBuffer"])
      {
        if ([coderCopy containsValueForKey:@"filePath"])
        {
          v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filePath"];
          filePath = v5->_filePath;
          v5->_filePath = v32;

          v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlQueryItems"];
          urlQueryItems = v5->_urlQueryItems;
          v5->_urlQueryItems = v34;

          v22 = coderCopy;
          *buf = 0u;
          v50 = 0u;
          connection = [v22 connection];
          v37 = connection;
          if (connection)
          {
            [connection auditToken];
          }

          else
          {
            *buf = 0u;
            v50 = 0u;
          }

          uTF8String = [(NSString *)v5->_filePath UTF8String];
          *v56 = *buf;
          *&v56[16] = v50;
          v42 = sandbox_check_by_audit_token();
          v43 = v42;
          if (!v42)
          {
LABEL_9:

            v5->_inputMode = [coderCopy decodeIntForKey:@"inputMode"];
            [coderCopy decodeFloatForKey:@"referenceLevel"];
            v5->_referenceLevel = v23;
            v5->_loopCount = [coderCopy decodeIntForKey:@"loopCount"];
            v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mixGroupName"];
            mixGroupName = v5->_mixGroupName;
            v5->_mixGroupName = v24;

            v5->_streaming = [coderCopy decodeBoolForKey:@"streaming"];
            v5->_normalizationMode = [coderCopy decodeIntegerForKey:@"normalizationMode"];
            v5->_calibrationMode = [coderCopy decodeIntegerForKey:@"calibrationMode"];
            [coderCopy decodeDoubleForKey:@"calibrationLevel"];
            v5->_calibrationLevel = v26;
            v5->_layoutTag = [coderCopy decodeIntegerForKey:@"layoutTag"];
            [coderCopy decodeDoubleForKey:@"targetLUFS"];
            v5->_targetLUFS = v27;
            v5->_audioAssetID = [coderCopy decodeInt64ForKey:@"audioAssetID"];
            v28 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9EC0] forKey:@"taskToken"];
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
            *&v56[10] = uTF8String;
            _os_log_error_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_ERROR, "sandbox_check_by_audit_token error = %u. App process does not have access to file path: %s", v56, 0x12u);
          }

          v45 = MEMORY[0x1E696ABC0];
          v54 = *MEMORY[0x1E696A278];
          v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sandbox_check_by_audit_token error = %u. App process does not have access to file path: %s", v43, uTF8String];
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
          [coderCopy failWithError:v40];
        }

        selfCopy = 0;
        self = v5;
        goto LABEL_15;
      }

      v16 = [coderCopy decodeXPCObjectForKey:@"fileBuffer"];
      fileBuffer = v5->_fileBuffer;
      v5->_fileBuffer = v16;

      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"format"];
      v19 = v5->_format;
      v5->_format = v18;

      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"length"];
      length = v5->_length;
      v5->_length = v20;

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bufferSize"];
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
  [coderCopy failWithError:v14];

  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v21[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pcmBuffer = self->_pcmBuffer;
    if (pcmBuffer)
    {
      [coderCopy encodeXPCObject:pcmBuffer forKey:@"pcmBuffer"];
      v6 = &OBJC_IVAR___REAudioPayload__length;
      [coderCopy encodeObject:self->_format forKey:@"format"];
      v7 = @"length";
    }

    else
    {
      fileBuffer = self->_fileBuffer;
      if (fileBuffer)
      {
        [coderCopy encodeXPCObject:fileBuffer forKey:@"fileBuffer"];
        [coderCopy encodeObject:self->_format forKey:@"format"];
        v6 = &OBJC_IVAR___REAudioPayload__bufferSize;
        [coderCopy encodeObject:self->_length forKey:@"length"];
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
          [coderCopy failWithError:v16];

          goto LABEL_5;
        }

        [coderCopy encodeObject:filePath forKey:@"filePath"];
        v7 = @"urlQueryItems";
        v6 = &OBJC_IVAR___REAudioPayload__urlQueryItems;
      }
    }

    [coderCopy encodeObject:*(&self->super.super.isa + *v6) forKey:v7];
    [coderCopy encodeInt:self->_inputMode forKey:@"inputMode"];
    *&v13 = self->_referenceLevel;
    [coderCopy encodeFloat:@"referenceLevel" forKey:v13];
    [coderCopy encodeInt:self->_loopCount forKey:@"loopCount"];
    [coderCopy encodeObject:self->_mixGroupName forKey:@"mixGroupName"];
    [coderCopy encodeBool:self->_streaming forKey:@"streaming"];
    [coderCopy encodeInteger:self->_normalizationMode forKey:@"normalizationMode"];
    [coderCopy encodeInteger:self->_calibrationMode forKey:@"calibrationMode"];
    [coderCopy encodeDouble:@"calibrationLevel" forKey:self->_calibrationLevel];
    [coderCopy encodeInteger:self->_layoutTag forKey:@"layoutTag"];
    [coderCopy encodeDouble:@"targetLUFS" forKey:self->_targetLUFS];
    [coderCopy encodeInteger:self->_audioAssetID forKey:@"audioAssetID"];
    if (self->_taskToken + 1 < 2)
    {
      goto LABEL_11;
    }

    v9 = xpc_mach_send_create();
    if (v9)
    {
      [coderCopy encodeXPCObject:v9 forKey:@"taskToken"];
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
    [coderCopy failWithError:v10];
  }

LABEL_5:

LABEL_11:
}

@end