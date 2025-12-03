@interface FigCaptureCalibrationContext
- ($1AB5FA073B851C12C2339EC22442E995)lastSuccessfulCalibrationMagneticField;
- (FigCaptureCalibrationContext)initWithPreferenceString:(id)string withActivityName:(id)name withPropertyName:(id)propertyName withExpectedDataSize:(unint64_t)size withInterval:(int)interval withMinimumBatteryLevel:(int)level withInternalLogName:(id)logName supportedDeviceNames:(id)self0;
- (NSDictionary)lastSuccessfulCalibrationData;
- (uint64_t)_updateAndStashCalibrationData:(uint64_t)data externalErrors:(char)errors hasFirmwareErrors:(uint64_t)firmwareErrors magneticFieldAttempts:(double)attempts magneticField:(double)field;
- (void)_createDictionaryForFailureOutsideFirmwareWithReasons:(uint64_t)reasons;
- (void)_writeCalibrationDataToInternalLogFile:(double)file magneticField:(double)field;
- (void)pushCalibrationDataToHistory:(id)history isRejected:(BOOL *)rejected;
- (void)updateWithNewCalibrationData:(id)data orExternalErrors:(unsigned int)errors magneticFieldAttempts:(int)attempts magneticField:(id)field isCalibrationValid:(BOOL *)valid calibrationStatus:(unsigned int *)status;
@end

@implementation FigCaptureCalibrationContext

- (NSDictionary)lastSuccessfulCalibrationData
{
  v2 = [(NSMutableDictionary *)self->_lastSuccessfulCalibrationData copy];

  return v2;
}

- (FigCaptureCalibrationContext)initWithPreferenceString:(id)string withActivityName:(id)name withPropertyName:(id)propertyName withExpectedDataSize:(unint64_t)size withInterval:(int)interval withMinimumBatteryLevel:(int)level withInternalLogName:(id)logName supportedDeviceNames:(id)self0
{
  if (string)
  {
    v21.receiver = self;
    v21.super_class = FigCaptureCalibrationContext;
    v16 = [(FigCaptureCalibrationContext *)&v21 init];
    if (v16)
    {
      v17 = CFPreferencesCopyValue(string, @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      v18 = [objc_msgSend(v17 objectForKeyedSubscript:{@"CalibrationData", "mutableCopy"}];
      v16->_lastSuccessfulCalibrationData = v18;
      if (!v18)
      {
        v16->_lastSuccessfulCalibrationData = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      if ([v17 objectForKeyedSubscript:@"TimeStampOfLastSuccessfulCalibration"])
      {
        [objc_msgSend(v17 objectForKeyedSubscript:{@"TimeStampOfLastSuccessfulCalibration", "doubleValue"}];
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
      }

      v16->_lastSuccessfulCalibrationTimeStamp = Current;
      if ([v17 objectForKeyedSubscript:@"CalibrationCompassHeading"])
      {
        [objc_msgSend(v17 objectForKeyedSubscript:{@"CalibrationCompassHeading", "getBytes:length:", &v16->_lastSuccessfulCalibrationMagneticField, 24}];
      }

      v16->_activityName = name;
      v16->_preferenceString = string;
      v16->_interval = interval;
      v16->_minimumBatteryLevelToRun = level;
      v16->_internalLogName = logName;
      v16->_propertyName = propertyName;
      v16->_expectedDataSize = size;
      v16->_supportedDevices = names;
    }
  }

  else
  {
    [FigCaptureCalibrationContext initWithPreferenceString:withActivityName:withPropertyName:withExpectedDataSize:withInterval:withMinimumBatteryLevel:withInternalLogName:supportedDeviceNames:];
    return 0;
  }

  return v16;
}

- (void)updateWithNewCalibrationData:(id)data orExternalErrors:(unsigned int)errors magneticFieldAttempts:(int)attempts magneticField:(id)field isCalibrationValid:(BOOL *)valid calibrationStatus:(unsigned int *)status
{
  var2 = field.var2;
  var1 = field.var1;
  var0 = field.var0;
  v13 = *&attempts;
  v14 = *&errors;
  dataCopy = data;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = [data countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v17)
  {
    v19 = v17;
    validCopy = valid;
    statusCopy = status;
    v20 = *v30;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(dataCopy);
        }

        v22 = *(*(&v29 + 1) + 8 * i);
        if (([v22 isEqualToString:@"Back Camera"] & 1) != 0 || objc_msgSend(v22, "isEqualToString:", @"Back Telephoto Camera"))
        {
          v23 = [objc_opt_class() calibrationStatusFromRawStreamCalibrationData:{objc_msgSend(dataCopy, "objectForKeyedSubscript:", v22)}];
          if (v23)
          {
            v18 = v23;
            goto LABEL_14;
          }
        }
      }

      v19 = [dataCopy countByEnumeratingWithState:&v29 objects:v28 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    v18 = 0;
LABEL_14:
    valid = validCopy;
    status = statusCopy;
    v13 = v13;
  }

  else
  {
    v18 = 0;
  }

  v24 = sqrt(var1 * var1 + var0 * var0 + var2 * var2);
  if (!dataCopy)
  {
    dataCopy = [MEMORY[0x1E695DF90] dictionary];
  }

  v25 = ([(FigCaptureCalibrationContext *)self _updateAndStashCalibrationData:dataCopy externalErrors:v14 hasFirmwareErrors:v18 != 0 magneticFieldAttempts:v13 magneticField:var0, var1, var2]| v14 | v18) == 0;
  [(FigCaptureCalibrationContext *)self _writeCalibrationDataToInternalLogFile:dataCopy magneticField:var0, var1, var2];
  [(FigCaptureCalibrationContext *)self reportLoggingWithCalibrationData:dataCopy isValid:v25 magneticFieldMagnitude:v24];
  if (valid)
  {
    *valid = v25;
  }

  if (status)
  {
    *status = !v25 | v14 | v18;
  }
}

- (void)pushCalibrationDataToHistory:(id)history isRejected:(BOOL *)rejected
{
  if (rejected)
  {
    *rejected = 0;
  }
}

- ($1AB5FA073B851C12C2339EC22442E995)lastSuccessfulCalibrationMagneticField
{
  x = self->_lastSuccessfulCalibrationMagneticField.x;
  y = self->_lastSuccessfulCalibrationMagneticField.y;
  z = self->_lastSuccessfulCalibrationMagneticField.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- (uint64_t)_updateAndStashCalibrationData:(uint64_t)data externalErrors:(char)errors hasFirmwareErrors:(uint64_t)firmwareErrors magneticFieldAttempts:(double)attempts magneticField:(double)field
{
  attemptsCopy = attempts;
  fieldCopy = field;
  v23 = a8;
  if (!self)
  {
    return 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(CFStringRef *)self lastSuccessfulCalibrationTimeStamp];
  [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", Current - v14), @"TimeSinceLastSuccessfulCalibration"}];
  [a2 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", &attemptsCopy, 24), @"CalibrationCompassHeading"}];
  v20 = 0;
  if (data || (errors & 1) != 0)
  {
    if (!data)
    {
      goto LABEL_10;
    }

    [a2 addEntriesFromDictionary:{-[FigCaptureCalibrationContext _createDictionaryForFailureOutsideFirmwareWithReasons:](self, data)}];
LABEL_9:
    data = 0;
    goto LABEL_10;
  }

  [(CFStringRef *)self pushCalibrationDataToHistory:a2 isRejected:&v20];
  if ((v20 & 1) == 0)
  {
    [(CFStringRef *)self setLastSuccessfulCalibrationData:a2];
    [(CFStringRef *)self setLastSuccessfulCalibrationTimeStamp:Current];
    [(CFStringRef *)self setLastSuccessfulCalibrationMagneticField:attemptsCopy, fieldCopy, v23];
    if ((v20 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  data = 257;
  [objc_opt_class() setStatusForCalibrationData:a2 status:257];
LABEL_10:
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:-[CFStringRef lastSuccessfulCalibrationData](self forKeyedSubscript:{"lastSuccessfulCalibrationData"), @"CalibrationData"}];
  v16 = MEMORY[0x1E696AD98];
  [(CFStringRef *)self lastSuccessfulCalibrationTimeStamp];
  [dictionary setObject:objc_msgSend(v16 forKeyedSubscript:{"numberWithDouble:"), @"TimeStampOfLastSuccessfulCalibration"}];
  [dictionary setObject:-[CFStringRef calibrationDataHistory](self forKeyedSubscript:{"calibrationDataHistory"), @"CalibrationHistory"}];
  v17 = *MEMORY[0x1E695E8B8];
  v18 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(self[7], dictionary, @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  CFPreferencesSetValue(@"magnetic_field_attempts", [MEMORY[0x1E696AD98] numberWithInt:firmwareErrors], @"com.apple.cameracapture.volatile", v17, v18);
  CFPreferencesSynchronize(@"com.apple.cameracapture.volatile", v17, v18);
  return data;
}

- (void)_writeCalibrationDataToInternalLogFile:(double)file magneticField:(double)field
{
  if (self)
  {
    v23 = 0;
    if (*(self + 88) && (MGGetBoolAnswer() & 1) == 0 && MGGetBoolAnswer())
    {
      v10 = [objc_opt_class() calibrationDataStringForInternalLogging:a2];
      if (v10)
      {
        v11 = v10;
        v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v12 setTimeZone:{objc_msgSend(MEMORY[0x1E695DFE8], "localTimeZone")}];
        [v12 setDateFormat:@"yyyy-MM-dd"];
        v13 = [v12 stringFromDate:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];
        if (FigCaptureCameracapturedEnabled())
        {
          v14 = @"cameracaptured";
        }

        else
        {
          v14 = @"mediaserverd";
        }

        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@-%@.log", v14, *(self + 88), v13];
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/private/var/mobile/Library/Logs/CrashReporter/%@", v14];
        [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v16, v15];
        if (!v23)
        {
          v18 = v17;
          v19 = [objc_msgSend(a2 objectForKeyedSubscript:{@"TimeSinceLastSuccessfulCalibration", "longLongValue"}];
          [v12 setDateFormat:@"HH:mm:ss"];
          v20 = [v12 stringFromDate:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];
          v21 = objc_alloc_init(MEMORY[0x1E696AD60]);
          [v21 appendFormat:@"%@, ", v20];
          [v21 appendFormat:@"%lld, ", v19];
          [v21 appendFormat:@"%f, %f, %f, %f, ", *&file, *&field, *&a5, sqrt(field * field + file * file + a5 * a5)];
          [v21 appendString:v11];
          [v21 appendString:@"\n"];
          if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
          {
            [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
          }

          v22 = [MEMORY[0x1E696AC00] fileHandleForUpdatingAtPath:v18];
          [v22 seekToEndOfFile];
          [v22 writeData:{objc_msgSend(v21, "dataUsingEncoding:", 4)}];
          [v22 closeFile];
          goto LABEL_13;
        }

LABEL_17:
        v21 = 0;
LABEL_13:

        return;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    v12 = 0;
    goto LABEL_17;
  }
}

- (void)_createDictionaryForFailureOutsideFirmwareWithReasons:(uint64_t)reasons
{
  if (!reasons)
  {
    return 0;
  }

  if (!*(reasons + 96))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = *(reasons + 96);
  v13 = OUTLINED_FUNCTION_60_0(dictionary, v6, v7, v8, v9, v10, v11, v12, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, 0);
  if (v13)
  {
    v14 = v13;
    v15 = MEMORY[0];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (MEMORY[0] != v15)
        {
          objc_enumerationMutation(v5);
        }

        v17 = *(8 * i);
        if (([v17 isEqualToString:@"Back Camera"] & 1) == 0)
        {
          v18 = [v17 isEqualToString:@"Back Telephoto Camera"];
          if (!v18)
          {
            continue;
          }
        }

        v18 = [dictionary setObject:objc_msgSend(objc_opt_class() forKeyedSubscript:{"createRawStreamCalibrationDataWithFailureReasons:", a2), v17}];
      }

      v14 = OUTLINED_FUNCTION_60_0(v18, v19, v20, v21, v22, v23, v24, v25, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v63);
    }

    while (v14);
  }

  return dictionary;
}

- (uint64_t)initWithPreferenceString:withActivityName:withPropertyName:withExpectedDataSize:withInterval:withMinimumBatteryLevel:withInternalLogName:supportedDeviceNames:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end