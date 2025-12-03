@interface HSFigCaptureDevice
+ (id)statusDescription:(int)description;
- (BOOL)invalidate:(id *)invalidate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDevice:(id)device;
- (BOOL)relinquishControlOfStreams:(id)streams error:(id *)error;
- (BOOL)requestControlOfStreams:(id)streams error:(id *)error;
- (BOOL)setValue:(id)value forProperty:(__CFString *)property error:(id *)error;
- (HSFigCaptureDevice)initWithCaptureDevice:(OpaqueFigCaptureDevice *)device;
- (id)description;
- (id)valueForKey:(id)key;
- (id)valueForProperty:(__CFString *)property error:(id *)error;
- (void)dealloc;
@end

@implementation HSFigCaptureDevice

+ (id)statusDescription:(int)description
{
  if ((description + 12683) > 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___HSFigCaptureDevice;
    v5 = objc_msgSendSuper2(&v7, sel_statusDescription_);
  }

  else
  {
    v5 = off_2796AB608[description + 12683];
  }

  return v5;
}

- (HSFigCaptureDevice)initWithCaptureDevice:(OpaqueFigCaptureDevice *)device
{
  FigBaseObject = FigCaptureDeviceGetFigBaseObject();
  v7.receiver = self;
  v7.super_class = HSFigCaptureDevice;
  result = [(HSCMBaseObject *)&v7 initWithBaseObject:FigBaseObject];
  result->_underlyingDevice = device;
  return result;
}

- (void)dealloc
{
  underlyingDevice = self->_underlyingDevice;
  if (underlyingDevice)
  {
    CFRelease(underlyingDevice);
  }

  v4.receiver = self;
  v4.super_class = HSFigCaptureDevice;
  [(HSFigCaptureDevice *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HSFigCaptureDevice *)self isEqualToDevice:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToDevice:(id)device
{
  deviceCopy = device;
  underlyingDevice = [device underlyingDevice];
  return underlyingDevice == [(HSFigCaptureDevice *)self underlyingDevice];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = HSFigCaptureDevice;
  v4 = [(HSFigCaptureDevice *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ [deviceRef: %p]", v4, self->_underlyingDevice];

  return v5;
}

- (BOOL)invalidate:(id *)invalidate
{
  v24[1] = *MEMORY[0x277D85DE8];
  underlyingDevice = self->_underlyingDevice;
  FigBaseObject = FigCaptureDeviceGetFigBaseObject();
  if (FigBaseObject)
  {
    v7 = FigBaseObject;
    VTable = CMBaseObjectGetVTable();
    v9 = *(*(VTable + 8) + 24);
    if (v9)
    {
      v10 = *(VTable + 8) + 24;
      v11 = v9(v7);
      if (!v11)
      {
        result = 1;
        goto LABEL_12;
      }
    }

    else
    {
      v11 = 4294954514;
    }
  }

  else
  {
    v11 = 4294954516;
  }

  v13 = HSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(HSFigCaptureDevice *)self invalidate:v11];
  }

  if (invalidate)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [objc_opt_class() statusDescription:v11];
    v16 = [v14 stringWithFormat:@"Failed to invalidate device! %@", v15];

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA590];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = v16;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = [v17 errorWithDomain:v18 code:v11 userInfo:v19];

    v21 = v20;
    *invalidate = v20;
  }

  result = 0;
LABEL_12:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v5 = NSStringFromSelector(sel_underlyingDevice);
  v6 = [keyCopy isEqualToString:v5];

  if (v6)
  {
    v7 = self->_underlyingDevice;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HSFigCaptureDevice;
    v7 = [(HSFigCaptureDevice *)&v10 valueForKey:keyCopy];
  }

  v8 = v7;

  return v8;
}

- (BOOL)setValue:(id)value forProperty:(__CFString *)property error:(id *)error
{
  v8 = _unwrapFigCaptureValue(value);
  v10.receiver = self;
  v10.super_class = HSFigCaptureDevice;
  LOBYTE(error) = [(HSCMBaseObject *)&v10 setValue:v8 forProperty:property error:error];

  return error;
}

- (id)valueForProperty:(__CFString *)property error:(id *)error
{
  v8.receiver = self;
  v8.super_class = HSFigCaptureDevice;
  v5 = [(HSCMBaseObject *)&v8 valueForProperty:property error:error];
  v6 = _wrapFigCaptureValue(v5, self);

  return v6;
}

- (BOOL)requestControlOfStreams:(id)streams error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  streamsCopy = streams;
  v6 = HSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(HSFigCaptureDevice *)v6 requestControlOfStreams:v7 error:v8, v9, v10, v11, v12, v13];
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = NSStringFromSelector(sel_underlyingStream);
  v16 = [v14 stringWithFormat:@"self.%@", v15];

  v38 = v16;
  v39 = [streamsCopy valueForKeyPath:v16];
  v17 = 0;
  do
  {
    underlyingDevice = self->_underlyingDevice;
    v19 = *(CMBaseObjectGetVTable() + 16);
    if (*v19 >= 2uLL && (v20 = v19[2]) != 0)
    {
      v21 = v19[2];
      v22 = v20(underlyingDevice, v39, 0);
      if (!v22)
      {
        errorCopy = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v22 = 4294954514;
    }

    v23 = HSLogHandle();
    ++v17;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v43 = streamsCopy;
      v44 = 1024;
      *v45 = v17;
      *&v45[4] = 1024;
      *&v45[6] = 6;
      _os_log_impl(&dword_2510E6000, v23, OS_LOG_TYPE_DEFAULT, "Trying to get control of the streams %@. Iteration %d/%d", buf, 0x18u);
    }

    usleep(0x7A120u);
  }

  while (v17 != 6);
  v24 = HSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v36 = [objc_opt_class() statusDescription:v22];
    *buf = 138413058;
    v43 = streamsCopy;
    v44 = 2112;
    *v45 = self;
    *&v45[8] = 1024;
    v46 = 6;
    v47 = 2112;
    v48 = v36;
    _os_log_error_impl(&dword_2510E6000, v24, OS_LOG_TYPE_ERROR, "Failed to request control of streams %@ from device %@ after %d attempts! %@", buf, 0x26u);
  }

  errorCopy = error;
  if (error)
  {
    v25 = MEMORY[0x277CCACA8];
    v26 = [objc_opt_class() statusDescription:v22];
    v27 = [v25 stringWithFormat:@"Failed to request control of streams %@ from device %@ after %d attempts! %@", streamsCopy, self, 6, v26];

    v28 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA590];
    v40 = *MEMORY[0x277CCA450];
    v41 = v27;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v31 = [v28 errorWithDomain:v29 code:v22 userInfo:v30];

    v32 = v31;
    *error = v31;

    errorCopy = 0;
  }

LABEL_16:

  v34 = *MEMORY[0x277D85DE8];
  return errorCopy;
}

- (BOOL)relinquishControlOfStreams:(id)streams error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  streamsCopy = streams;
  v7 = HSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(HSFigCaptureDevice *)v7 relinquishControlOfStreams:v8 error:v9, v10, v11, v12, v13, v14];
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = NSStringFromSelector(sel_underlyingStream);
  v17 = [v15 stringWithFormat:@"self.%@", v16];

  v18 = [streamsCopy valueForKeyPath:v17];
  underlyingDevice = self->_underlyingDevice;
  v20 = *(CMBaseObjectGetVTable() + 16);
  if (*v20 >= 2uLL && (v21 = v20[3]) != 0)
  {
    v22 = v20[3];
    v23 = v21(underlyingDevice, v18, 0);
    if (!v23)
    {
      LOBYTE(error) = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v23 = 4294954514;
  }

  v24 = HSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v35 = [objc_opt_class() statusDescription:v23];
    *buf = 138412802;
    v39 = streamsCopy;
    v40 = 2112;
    selfCopy = self;
    v42 = 2112;
    v43 = v35;
    _os_log_error_impl(&dword_2510E6000, v24, OS_LOG_TYPE_ERROR, "Failed to relinquish control of streams %@ from device %@! %@", buf, 0x20u);
  }

  if (error)
  {
    v25 = MEMORY[0x277CCACA8];
    v26 = [objc_opt_class() statusDescription:v23];
    v27 = [v25 stringWithFormat:@"Failed to relinquish control of streams %@ from device %@! %@", streamsCopy, self, v26];

    v28 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA590];
    v36 = *MEMORY[0x277CCA450];
    v37 = v27;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v31 = [v28 errorWithDomain:v29 code:v23 userInfo:v30];

    v32 = v31;
    *error = v31;

    LOBYTE(error) = 0;
  }

LABEL_12:

  v33 = *MEMORY[0x277D85DE8];
  return error;
}

- (void)invalidate:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [objc_opt_class() statusDescription:a2];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestControlOfStreams:(uint64_t)a3 error:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_2510E6000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)relinquishControlOfStreams:(uint64_t)a3 error:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_2510E6000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end