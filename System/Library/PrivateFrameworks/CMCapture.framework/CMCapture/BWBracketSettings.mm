@interface BWBracketSettings
+ (id)bracketSettingsForBracketingMode:(int)mode;
- (BOOL)isEqual:(id)equal;
- (BWBracketSettings)initWithCoder:(id)coder;
- (id)description;
- (int)bracketFrameCount;
- (uint64_t)classesForExposureValues;
- (uint64_t)classesForManualExposureBracketedCaptureParams;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BWBracketSettings

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWBracketSettings;
  [(BWBracketSettings *)&v3 dealloc];
}

- (BWBracketSettings)initWithCoder:(id)coder
{
  v4 = [(BWBracketSettings *)self init];
  if (v4)
  {
    v4->_bracketingMode = [coder decodeInt32ForKey:@"bracketingMode"];
    v4->_providePreBracketedEV0 = [coder decodeBoolForKey:@"providePreBracketedEV0"];
    v4->_lensStabilizationEnabledForClientBracket = [coder decodeBoolForKey:@"lensStabilizationEnabledForClientBracket"];
    v4->_exposureValues = [coder decodeObjectOfClasses:-[BWBracketSettings classesForExposureValues](v4) forKey:@"exposureValues"];
    v4->_manualExposureBracketedCaptureParams = [coder decodeObjectOfClasses:-[BWBracketSettings classesForManualExposureBracketedCaptureParams](v4) forKey:@"manualExposureBracketedCaptureParams"];
    v4->_oisBracketedCaptureParams = [coder decodeObjectOfClasses:-[BWBracketSettings classesForManualExposureBracketedCaptureParams](v4) forKey:@"oisBracketedCaptureParams"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt32:self->_bracketingMode forKey:@"bracketingMode"];
  [coder encodeBool:self->_providePreBracketedEV0 forKey:@"providePreBracketedEV0"];
  [coder encodeBool:self->_lensStabilizationEnabledForClientBracket forKey:@"lensStabilizationEnabledForClientBracket"];
  [coder encodeObject:self->_exposureValues forKey:@"exposureValues"];
  [coder encodeObject:self->_manualExposureBracketedCaptureParams forKey:@"manualExposureBracketedCaptureParams"];
  oisBracketedCaptureParams = self->_oisBracketedCaptureParams;

  [coder encodeObject:oisBracketedCaptureParams forKey:@"oisBracketedCaptureParams"];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v19 = v5;
    v20 = v4;
    v21 = v3;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (bracketingMode = self->_bracketingMode, bracketingMode == [equal bracketingMode]) && (providePreBracketedEV0 = self->_providePreBracketedEV0, providePreBracketedEV0 == objc_msgSend(equal, "providePreBracketedEV0")) && (lensStabilizationEnabledForClientBracket = self->_lensStabilizationEnabledForClientBracket, lensStabilizationEnabledForClientBracket == objc_msgSend(equal, "lensStabilizationEnabledForClientBracket")))
    {
      exposureValues = self->_exposureValues;
      if (exposureValues == [equal exposureValues] || (v15 = -[NSArray isEqual:](self->_exposureValues, "isEqual:", objc_msgSend(equal, "exposureValues"))) != 0)
      {
        manualExposureBracketedCaptureParams = self->_manualExposureBracketedCaptureParams;
        if (manualExposureBracketedCaptureParams == [equal manualExposureBracketedCaptureParams] || (v15 = -[NSArray isEqual:](self->_manualExposureBracketedCaptureParams, "isEqual:", objc_msgSend(equal, "manualExposureBracketedCaptureParams"))) != 0)
        {
          oisBracketedCaptureParams = self->_oisBracketedCaptureParams;
          if (oisBracketedCaptureParams == [equal oisBracketedCaptureParams] || (v15 = -[NSDictionary isEqual:](self->_oisBracketedCaptureParams, "isEqual:", objc_msgSend(equal, "oisBracketedCaptureParams"))) != 0)
          {
            LOBYTE(v15) = 1;
          }
        }
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

  return v15;
}

- (int)bracketFrameCount
{
  v3 = [(NSArray *)self->_exposureValues count];
  v4 = [-[NSDictionary objectForKeyedSubscript:](self->_oisBracketedCaptureParams objectForKeyedSubscript:{*off_1E798B8D8), "count"}];
  return v4 + v3 + [(NSArray *)self->_manualExposureBracketedCaptureParams count];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p>: pre-bracket: %d, frame count: %d, bracketingMode: %@", v5, self, self->_providePreBracketedEV0, -[BWBracketSettings bracketFrameCount](self, "bracketFrameCount"), BWPhotoEncoderStringFromEncodingScheme(self->_bracketingMode)];
  exposureValues = self->_exposureValues;
  if (exposureValues)
  {
    v7 = @", exposureValues: %@";
LABEL_7:
    [string appendFormat:v7, objc_msgSend(exposureValues, "description")];
    return string;
  }

  exposureValues = self->_oisBracketedCaptureParams;
  if (exposureValues)
  {
    v7 = @", oisBracketedCaptureParams: %@";
    goto LABEL_7;
  }

  exposureValues = self->_manualExposureBracketedCaptureParams;
  if (exposureValues)
  {
    v7 = @", manualExposureBracketedCaptureParams: %@";
    goto LABEL_7;
  }

  return string;
}

+ (id)bracketSettingsForBracketingMode:(int)mode
{
  v4 = [BWBracketSettings alloc];
  if (v4)
  {
    v6.receiver = v4;
    v6.super_class = BWBracketSettings;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    if (v4)
    {
      v4->_bracketingMode = mode;
    }
  }

  return v4;
}

- (uint64_t)classesForExposureValues
{
  if (result)
  {
    v1 = MEMORY[0x1E695DFD8];
    v2 = objc_opt_class();
    return [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  }

  return result;
}

- (uint64_t)classesForManualExposureBracketedCaptureParams
{
  if (result)
  {
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();
    return OUTLINED_FUNCTION_0_120();
  }

  return result;
}

@end