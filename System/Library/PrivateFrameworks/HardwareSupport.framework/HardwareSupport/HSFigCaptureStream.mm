@interface HSFigCaptureStream
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStream:(id)a3;
- (BOOL)start:(id *)a3;
- (BOOL)stop:(id *)a3;
- (HSFigCaptureStream)initWithCaptureStream:(OpaqueFigCaptureStream *)a3 fromDevice:(id)a4;
- (id)description;
- (id)valueForKey:(id)a3;
@end

@implementation HSFigCaptureStream

- (HSFigCaptureStream)initWithCaptureStream:(OpaqueFigCaptureStream *)a3 fromDevice:(id)a4
{
  v6 = a4;
  FigBaseObject = FigCaptureStreamGetFigBaseObject();
  v11.receiver = self;
  v11.super_class = HSFigCaptureStream;
  v8 = [(HSCMBaseObject *)&v11 initWithBaseObject:FigBaseObject];
  v8->_underlyingStream = a3;
  device = v8->_device;
  v8->_device = v6;

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HSFigCaptureStream *)self isEqualToStream:v4];
  }

  return v5;
}

- (BOOL)isEqualToStream:(id)a3
{
  v5 = a3;
  v6 = [a3 underlyingStream];
  return v6 == [(HSFigCaptureStream *)self underlyingStream];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HSFigCaptureStream;
  v4 = [(HSFigCaptureStream *)&v10 description];
  underlyingStream = self->_underlyingStream;
  v6 = [(HSFigCaptureStream *)self device];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"%@ [streamRef: %p, device: %@]", v4, underlyingStream, v7];

  return v8;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_underlyingStream);
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = self->_underlyingStream;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HSFigCaptureStream;
    v7 = [(HSFigCaptureStream *)&v10 valueForKey:v4];
  }

  v8 = v7;

  return v8;
}

- (BOOL)start:(id *)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = HSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(HSFigCaptureStream *)v5 start:v6, v7, v8, v9, v10, v11, v12];
  }

  underlyingStream = self->_underlyingStream;
  VTable = CMBaseObjectGetVTable();
  v15 = *(*(VTable + 16) + 8);
  if (v15)
  {
    v16 = *(VTable + 16) + 8;
    v17 = v15(underlyingStream);
    if (!v17)
    {
      result = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v17 = 4294954514;
  }

  v19 = HSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [(HSFigCaptureStream *)self start:v17];
  }

  if (a3)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [objc_opt_class() statusDescription:v17];
    v24 = [v20 stringWithFormat:@"%@ failed to start stream! %@", v22, v23];

    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA590];
    v31 = *MEMORY[0x277CCA450];
    v32[0] = v24;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v28 = [v25 errorWithDomain:v26 code:v17 userInfo:v27];

    v29 = v28;
    *a3 = v28;
  }

  result = 0;
LABEL_12:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)stop:(id *)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = HSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(HSFigCaptureStream *)v5 stop:v6, v7, v8, v9, v10, v11, v12];
  }

  underlyingStream = self->_underlyingStream;
  VTable = CMBaseObjectGetVTable();
  v15 = *(*(VTable + 16) + 16);
  if (v15)
  {
    v16 = *(VTable + 16) + 16;
    v17 = v15(underlyingStream);
    if (!v17)
    {
      result = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v17 = 4294954514;
  }

  v19 = HSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [(HSFigCaptureStream *)self stop:v17];
  }

  if (a3)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [objc_opt_class() statusDescription:v17];
    v24 = [v20 stringWithFormat:@"%@ failed to stop stream! %@", v22, v23];

    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA590];
    v31 = *MEMORY[0x277CCA450];
    v32[0] = v24;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v28 = [v25 errorWithDomain:v26 code:v17 userInfo:v27];

    v29 = v28;
    *a3 = v28;
  }

  result = 0;
LABEL_12:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)start:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_2510E6000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)start:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [objc_opt_class() statusDescription:a2];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stop:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_2510E6000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)stop:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [objc_opt_class() statusDescription:a2];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

@end