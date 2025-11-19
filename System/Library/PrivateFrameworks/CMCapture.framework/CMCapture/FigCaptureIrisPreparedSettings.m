@interface FigCaptureIrisPreparedSettings
- (BOOL)isEqual:(id)a3;
- (FigCaptureIrisPreparedSettings)init;
- (FigCaptureIrisPreparedSettings)initWithCoder:(id)a3;
- (FigCaptureIrisPreparedSettings)initWithXPCEncoding:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)figCaptureStillImageSettingsRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FigCaptureIrisPreparedSettings

- (FigCaptureIrisPreparedSettings)init
{
  v3.receiver = self;
  v3.super_class = FigCaptureIrisPreparedSettings;
  return [(FigCaptureIrisPreparedSettings *)&v3 init];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "settingsID", self->_settingsID);
  xpc_dictionary_set_int64(v3, "processedOutputFormat", self->_processedOutputFormat);
  xpc_dictionary_set_int64(v3, "rawOutputFormat", self->_rawOutputFormat);
  xpc_dictionary_set_int64(v3, "outputWidth", self->_outputWidth);
  xpc_dictionary_set_int64(v3, "outputHeight", self->_outputHeight);
  xpc_dictionary_set_int64(v3, "bracketedImageCount", self->_bracketedImageCount);
  xpc_dictionary_set_int64(v3, "qualityPrioritization", self->_qualityPrioritization);
  xpc_dictionary_set_int64(v3, "HDRMode", self->_HDRMode);
  xpc_dictionary_set_int64(v3, "DigitalFlashMode", self->_digitalFlashMode);
  if ([(NSArray *)self->_bravoConstituentImageDeliveryDeviceTypes count])
  {
    FigXPCMessageSetCFArray();
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureIrisPreparedSettings;
  [(FigCaptureIrisPreparedSettings *)&v3 dealloc];
}

- (FigCaptureIrisPreparedSettings)initWithXPCEncoding:(id)a3
{
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = FigCaptureIrisPreparedSettings;
    v4 = [(FigCaptureIrisPreparedSettings *)&v6 init];
    if (v4)
    {
      v4->_settingsID = xpc_dictionary_get_int64(a3, "settingsID");
      v4->_processedOutputFormat = xpc_dictionary_get_int64(a3, "processedOutputFormat");
      v4->_rawOutputFormat = xpc_dictionary_get_int64(a3, "rawOutputFormat");
      v4->_outputWidth = xpc_dictionary_get_int64(a3, "outputWidth");
      v4->_outputHeight = xpc_dictionary_get_int64(a3, "outputHeight");
      v4->_bracketedImageCount = xpc_dictionary_get_int64(a3, "bracketedImageCount");
      v4->_qualityPrioritization = xpc_dictionary_get_int64(a3, "qualityPrioritization");
      v4->_HDRMode = xpc_dictionary_get_int64(a3, "HDRMode");
      v4->_digitalFlashMode = xpc_dictionary_get_int64(a3, "DigitalFlashMode");
      FigXPCMessageCopyCFArray();
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (FigCaptureIrisPreparedSettings)initWithCoder:(id)a3
{
  v4 = [(FigCaptureIrisPreparedSettings *)self init];
  if (v4)
  {
    v4->_settingsID = [a3 decodeInt64ForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "settingsID")}];
    v4->_processedOutputFormat = [a3 decodeInt32ForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "processedOutputFormat")}];
    v4->_rawOutputFormat = [a3 decodeInt32ForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "rawOutputFormat")}];
    v4->_outputWidth = [a3 decodeInt32ForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "outputWidth")}];
    v4->_outputHeight = [a3 decodeInt32ForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "outputHeight")}];
    v4->_bracketedImageCount = [a3 decodeInt32ForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "bracketedImageCount")}];
    v4->_qualityPrioritization = [a3 decodeInt32ForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "qualityPrioritization")}];
    v4->_HDRMode = [a3 decodeInt32ForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "HDRMode")}];
    v4->_digitalFlashMode = [a3 decodeInt32ForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "DigitalFlashMode")}];
    v5 = MEMORY[0x1E695DFD8];
    v9[0] = objc_opt_class();
    v9[1] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v7 = [v5 setWithArray:{v6, v9[0]}];
    v4->_bravoConstituentImageDeliveryDeviceTypes = [a3 decodeObjectOfClasses:v7 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "bravoConstituentImageDeliveryDeviceTypes")}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt64:self->_settingsID forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "settingsID")}];
  [a3 encodeInt32:self->_processedOutputFormat forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "processedOutputFormat")}];
  [a3 encodeInt32:self->_rawOutputFormat forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "rawOutputFormat")}];
  [a3 encodeInt32:self->_outputWidth forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "outputWidth")}];
  [a3 encodeInt32:self->_outputHeight forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "outputHeight")}];
  [a3 encodeInt32:self->_bracketedImageCount forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "bracketedImageCount")}];
  [a3 encodeInt32:self->_qualityPrioritization forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "qualityPrioritization")}];
  [a3 encodeInt32:self->_HDRMode forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "HDRMode")}];
  [a3 encodeInt32:self->_digitalFlashMode forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "DigitalFlashMode")}];
  bravoConstituentImageDeliveryDeviceTypes = self->_bravoConstituentImageDeliveryDeviceTypes;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bravoConstituentImageDeliveryDeviceTypes"];

  [a3 encodeObject:bravoConstituentImageDeliveryDeviceTypes forKey:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSettingsID:self->_settingsID];
  [v4 setProcessedOutputFormat:self->_processedOutputFormat];
  [v4 setRawOutputFormat:self->_rawOutputFormat];
  [v4 setOutputWidth:self->_outputWidth];
  [v4 setOutputHeight:self->_outputHeight];
  [v4 setBracketedImageCount:self->_bracketedImageCount];
  [v4 setQualityPrioritization:self->_qualityPrioritization];
  [v4 setHDRMode:self->_HDRMode];
  [v4 setDigitalFlashMode:self->_digitalFlashMode];
  [v4 setBravoConstituentImageDeliveryDeviceTypes:self->_bravoConstituentImageDeliveryDeviceTypes];
  return v4;
}

- (NSString)description
{
  v3 = bswap32(self->_processedOutputFormat);
  v7 = bswap32(self->_rawOutputFormat);
  v8 = v3;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" DIGITALFLASH:%d", self->_digitalFlashMode];
  if ([(NSArray *)self->_bravoConstituentImageDeliveryDeviceTypes count])
  {
    v5 = _shortStringForFigCaptureSourceDeviceTypes(self->_bravoConstituentImageDeliveryDeviceTypes);
  }

  else
  {
    v5 = &stru_1F216A3D0;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %p: captureID:%lld '%.4s' %dx%d RAW:'%.4s' HDR:%d QUAL:%d%@ BRCK:%d%@", objc_opt_class(), self, self->_settingsID, &v8, self->_outputWidth, self->_outputHeight, &v7, self->_HDRMode, self->_qualityPrioritization, v4, self->_bracketedImageCount, v5];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [a3 settingsID] == self->_settingsID && objc_msgSend(a3, "processedOutputFormat") == self->_processedOutputFormat && objc_msgSend(a3, "rawOutputFormat") == self->_rawOutputFormat && objc_msgSend(a3, "outputWidth") == self->_outputWidth && objc_msgSend(a3, "outputHeight") == self->_outputHeight && objc_msgSend(a3, "bracketedImageCount") == self->_bracketedImageCount && objc_msgSend(a3, "qualityPrioritization") == self->_qualityPrioritization && objc_msgSend(a3, "HDRMode") == self->_HDRMode && objc_msgSend(a3, "digitalFlashMode") == self->_digitalFlashMode)
    {
      bravoConstituentImageDeliveryDeviceTypes = self->_bravoConstituentImageDeliveryDeviceTypes;
      if (bravoConstituentImageDeliveryDeviceTypes == [a3 bravoConstituentImageDeliveryDeviceTypes] || (v6 = -[NSArray isEqual:](self->_bravoConstituentImageDeliveryDeviceTypes, "isEqual:", objc_msgSend(a3, "bravoConstituentImageDeliveryDeviceTypes"))) != 0)
      {
        LOBYTE(v6) = 1;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (id)figCaptureStillImageSettingsRepresentation
{
  v3 = [[FigCaptureStillImageSettings alloc] initWithSettingsID:self->_settingsID];
  [(FigCaptureStillImageSettings *)v3 setSettingsProvider:1];
  [(FigCaptureStillImageSettings *)v3 setOutputFormat:self->_processedOutputFormat];
  [(FigCaptureStillImageSettings *)v3 setOutputWidth:self->_outputWidth];
  [(FigCaptureStillImageSettings *)v3 setOutputHeight:self->_outputHeight];
  [(FigCaptureStillImageSettings *)v3 setRawOutputFormat:self->_rawOutputFormat];
  [(FigCaptureStillImageSettings *)v3 setBracketType:2 imageCount:self->_bracketedImageCount];
  [(FigCaptureStillImageSettings *)v3 setQualityPrioritization:self->_qualityPrioritization];
  [(FigCaptureStillImageSettings *)v3 setHDRMode:self->_HDRMode];
  [(FigCaptureStillImageSettings *)v3 setDigitalFlashMode:self->_digitalFlashMode];
  [(FigCaptureStillImageSettings *)v3 setBravoConstituentImageDeliveryDeviceTypes:self->_bravoConstituentImageDeliveryDeviceTypes];

  return v3;
}

@end