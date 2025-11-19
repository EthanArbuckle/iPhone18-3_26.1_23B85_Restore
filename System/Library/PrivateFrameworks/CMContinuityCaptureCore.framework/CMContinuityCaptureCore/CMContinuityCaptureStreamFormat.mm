@interface CMContinuityCaptureStreamFormat
- (CMContinuityCaptureStreamFormat)initWithCoder:(id)a3;
- (CMContinuityCaptureStreamFormat)initWithDictionaryRepresentation:(id)a3;
- (CMContinuityCaptureStreamFormat)initWithName:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 pixelFormat:(unsigned int)a6 minFrameRate:(unsigned int)a7 maxFrameRate:(unsigned int)a8 entity:(int64_t)a9 minimumSupportedVersion:(id *)a10;
- (NSString)debugDescription;
- (NSString)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMContinuityCaptureStreamFormat

- (CMContinuityCaptureStreamFormat)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v15 = [v3 decodeInt64ForKey:@"entity"];
  v5 = [v3 decodeInt64ForKey:@"width"];
  v6 = [v3 decodeInt64ForKey:@"height"];
  v7 = [v3 decodeInt32ForKey:@"pixelFormat"];
  v8 = [v3 decodeInt32ForKey:@"minFrameRate"];
  v9 = [v3 decodeInt32ForKey:@"maxFrameRate"];
  v10 = [v3 decodeInt64ForKey:@"minimumSupportedVersionMajor"];
  v11 = [v3 decodeInt64ForKey:@"minimumSupportedVersionMinor"];
  v12 = [v3 decodeInt64ForKey:@"minimumSupportedVersionPatch"];

  v17[0] = v10;
  v17[1] = v11;
  v17[2] = v12;
  v13 = [(CMContinuityCaptureStreamFormat *)self initWithName:v4 width:v5 height:v6 pixelFormat:v7 minFrameRate:v8 maxFrameRate:v9 entity:v15 minimumSupportedVersion:v17];

  return v13;
}

- (CMContinuityCaptureStreamFormat)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"name"];
  if (!v5)
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureStreamFormat initWithDictionaryRepresentation:];
    }

    goto LABEL_27;
  }

  v6 = [v4 objectForKeyedSubscript:@"entity"];
  if (!v6)
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureStreamFormat initWithDictionaryRepresentation:];
    }

    goto LABEL_27;
  }

  v7 = v6;
  v8 = [v6 integerValue];
  v9 = [v4 objectForKeyedSubscript:@"width"];
  if (!v9)
  {
    [CMContinuityCaptureStreamFormat initWithDictionaryRepresentation:];
LABEL_27:
    v13 = 0;
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v9 integerValue];
  v12 = [v4 objectForKeyedSubscript:@"height"];
  v13 = v12;
  if (!v12)
  {
    [CMContinuityCaptureStreamFormat initWithDictionaryRepresentation:v10];
    goto LABEL_15;
  }

  v14 = [(CMContinuityCaptureStreamFormat *)v12 integerValue];
  v15 = [v4 objectForKeyedSubscript:@"pixelFormat"];
  if (!v15)
  {
    [(CMContinuityCaptureStreamFormat *)v13 initWithDictionaryRepresentation:v10];
    goto LABEL_27;
  }

  v16 = v15;
  v40 = v14;
  v39 = [v15 intValue];
  v17 = [v4 objectForKeyedSubscript:@"minFrameRate"];
  if (!v17)
  {
    [(CMContinuityCaptureStreamFormat *)v16 initWithDictionaryRepresentation:v13, v10];
    goto LABEL_27;
  }

  v18 = v17;
  v34 = v8;
  v35 = v11;
  v41 = v13;
  v19 = [v17 intValue];
  v20 = [v4 objectForKeyedSubscript:@"maxFrameRate"];
  if (!v20)
  {
    v30 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureStreamFormat initWithDictionaryRepresentation:];
    }

    goto LABEL_27;
  }

  v21 = v20;
  v36 = v10;
  v37 = v7;
  v38 = v5;
  v22 = [v20 intValue];
  v23 = [v4 objectForKeyedSubscript:@"minimumSupportedVersionMajor"];

  if (!v23)
  {
    v28 = 0;
    v25 = 1;
    goto LABEL_13;
  }

  v24 = [v4 objectForKeyedSubscript:@"minimumSupportedVersionMajor"];
  LODWORD(v25) = [v24 intValue];
  v26 = [v4 objectForKeyedSubscript:@"minimumSupportedVersionMinor"];

  if (!v26)
  {
    v31 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureStreamFormat initWithDictionaryRepresentation:];
    }

    v13 = 0;
    goto LABEL_34;
  }

  v33 = self;
  LODWORD(v23) = [v26 intValue];
  v27 = [v4 objectForKeyedSubscript:@"minimumSupportedVersionPatch"];

  if (!v27)
  {
    v32 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureStreamFormat initWithDictionaryRepresentation:];
    }

    v13 = 0;
    self = v33;
LABEL_34:
    v5 = v38;
    goto LABEL_14;
  }

  v25 = v25;
  v23 = v23;
  v28 = [v27 intValue];

  self = v33;
LABEL_13:
  v42[0] = v25;
  v42[1] = v23;
  v42[2] = v28;
  v5 = v38;
  self = [(CMContinuityCaptureStreamFormat *)self initWithName:v38 width:v35 height:v40 pixelFormat:v39 minFrameRate:v19 maxFrameRate:v22 entity:v34 minimumSupportedVersion:v42];

  v13 = self;
LABEL_14:
  v7 = v37;
LABEL_15:

  return v13;
}

- (id)dictionaryRepresentation
{
  v15[0] = self->_name;
  v14[0] = @"name";
  v14[1] = @"entity";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_entity];
  v15[1] = v3;
  v14[2] = @"width";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_width];
  v15[2] = v4;
  v14[3] = @"height";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_height];
  v15[3] = v5;
  v14[4] = @"pixelFormat";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_pixelFormat];
  v15[4] = v6;
  v14[5] = @"minFrameRate";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_minFrameRate];
  v15[5] = v7;
  v14[6] = @"maxFrameRate";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_maxFrameRate];
  v15[6] = v8;
  v14[7] = @"minimumSupportedVersionMajor";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minimumSupportedVersion.major];
  v15[7] = v9;
  v14[8] = @"minimumSupportedVersionMinor";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minimumSupportedVersion.minor];
  v15[8] = v10;
  v14[9] = @"minimumSupportedVersionPatch";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minimumSupportedVersion.patch];
  v15[9] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:10];

  return v12;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = CMContinuityCaptureStringFromOSType(self->_pixelFormat);
  width = self->_width;
  height = self->_height;
  entity = self->_entity;
  minFrameRate = self->_minFrameRate;
  maxFrameRate = self->_maxFrameRate;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%ld.%ld.%ld]", self->_minimumSupportedVersion.major, self->_minimumSupportedVersion.minor, self->_minimumSupportedVersion.patch];
  v11 = [v3 stringWithFormat:@"%@ %lu * %lu [%d-%d] entity:%u minimumSupportedVersion:%@", v4, width, height, minFrameRate, maxFrameRate, entity, v10];

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CMContinuityCaptureStreamFormat *)self debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CMContinuityCaptureStreamFormat *)self name];
  [v5 encodeObject:v4 forKey:@"name"];

  [v5 encodeInt64:-[CMContinuityCaptureStreamFormat entity](self forKey:{"entity"), @"entity"}];
  [v5 encodeInt64:-[CMContinuityCaptureStreamFormat width](self forKey:{"width"), @"width"}];
  [v5 encodeInt64:-[CMContinuityCaptureStreamFormat height](self forKey:{"height"), @"height"}];
  [v5 encodeInt32:-[CMContinuityCaptureStreamFormat pixelFormat](self forKey:{"pixelFormat"), @"pixelFormat"}];
  [v5 encodeInt32:-[CMContinuityCaptureStreamFormat minFrameRate](self forKey:{"minFrameRate"), @"minFrameRate"}];
  [v5 encodeInt32:-[CMContinuityCaptureStreamFormat maxFrameRate](self forKey:{"maxFrameRate"), @"maxFrameRate"}];
  [v5 encodeInt64:self->_minimumSupportedVersion.major forKey:@"minimumSupportedVersionMajor"];
  [v5 encodeInt64:self->_minimumSupportedVersion.minor forKey:@"minimumSupportedVersionMinor"];
  [v5 encodeInt64:self->_minimumSupportedVersion.patch forKey:@"minimumSupportedVersionPatch"];
}

- (CMContinuityCaptureStreamFormat)initWithName:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 pixelFormat:(unsigned int)a6 minFrameRate:(unsigned int)a7 maxFrameRate:(unsigned int)a8 entity:(int64_t)a9 minimumSupportedVersion:(id *)a10
{
  v17 = a3;
  v35.receiver = self;
  v35.super_class = CMContinuityCaptureStreamFormat;
  v18 = [(CMContinuityCaptureStreamFormat *)&v35 init];
  v19 = v18;
  formatDescriptionOut = 0;
  if (v18)
  {
    v18->_entity = a9;
    objc_storeStrong(&v18->_name, a3);
    v19->_width = a4;
    v19->_height = a5;
    v19->_pixelFormat = a6;
    v19->_minFrameRate = a7;
    v19->_maxFrameRate = a8;
    v20 = *&a10->var0;
    v19->_minimumSupportedVersion.patch = a10->var2;
    *&v19->_minimumSupportedVersion.major = v20;
    name = v19->_name;
    v32 = *MEMORY[0x277CC0310];
    v33 = name;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v23 = CMVideoFormatDescriptionCreate(0, v19->_pixelFormat, v19->_width, v19->_height, v22, &formatDescriptionOut);
    if (v23 || !formatDescriptionOut)
    {
      v27 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = 138412546;
        v29 = v19;
        v30 = 1024;
        v31 = v23;
        _os_log_error_impl(&dword_242545000, v27, OS_LOG_TYPE_ERROR, "%@ CMVideoFormatDescriptionCreate error %x", &v28, 0x12u);
      }

      v25 = 0;
    }

    else
    {
      formatDescription = v19->_formatDescription;
      v19->_formatDescription = formatDescriptionOut;

      v25 = v19;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)initWithDictionaryRepresentation:(void *)a3 .cold.4(void *a1, void *a2, void *a3)
{
  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    OUTLINED_FUNCTION_1_4(&dword_242545000, v6, v7, "missing CMContinuityCaptureStreamFormatKey_MinFrameRate", v8);
  }
}

- (void)initWithDictionaryRepresentation:(void *)a1 .cold.5(void *a1, void *a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    OUTLINED_FUNCTION_1_4(&dword_242545000, v4, v5, "missing CMContinuityCaptureStreamFormatKey_PixelFormat", v6);
  }
}

- (void)initWithDictionaryRepresentation:(void *)a1 .cold.6(void *a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    OUTLINED_FUNCTION_1_4(&dword_242545000, v2, v3, "missing CMContinuityCaptureStreamFormatKey_Height", v4);
  }
}

- (void)initWithDictionaryRepresentation:.cold.7()
{
  v0 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    OUTLINED_FUNCTION_1_4(&dword_242545000, v0, v1, "missing CMContinuityCaptureStreamFormatKey_Width", v2);
  }
}

@end