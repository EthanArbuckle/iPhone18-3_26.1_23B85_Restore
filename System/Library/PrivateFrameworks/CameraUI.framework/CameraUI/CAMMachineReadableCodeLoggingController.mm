@interface CAMMachineReadableCodeLoggingController
- (CAMMachineReadableCodeLoggingController)init;
- (void)logMachineReadableCodeResult:(id)result isOfSignificantSize:(BOOL)size;
- (void)logMachineReadableCodeResultDuringInactiveAppState;
- (void)resetLoggingState;
@end

@implementation CAMMachineReadableCodeLoggingController

- (CAMMachineReadableCodeLoggingController)init
{
  v3.receiver = self;
  v3.super_class = CAMMachineReadableCodeLoggingController;
  result = [(CAMMachineReadableCodeLoggingController *)&v3 init];
  *&result->__seenMachineReadableObjectOfAcceptableSize = 0;
  result->__seenMachineReadableObjectInNonActiveState = 0;
  return result;
}

- (void)logMachineReadableCodeResultDuringInactiveAppState
{
  if (![(CAMMachineReadableCodeLoggingController *)self _seenMachineReadableObjectInNonActiveState])
  {
    v3 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "MRC detected during inactive application state.", v4, 2u);
    }

    [(CAMMachineReadableCodeLoggingController *)self _setSeenMachineReadableObjectInNonActiveState:1];
  }
}

- (void)logMachineReadableCodeResult:(id)result isOfSignificantSize:(BOOL)size
{
  sizeCopy = size;
  v20 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  _seenMachineReadableObjectOfAcceptableSize = [(CAMMachineReadableCodeLoggingController *)self _seenMachineReadableObjectOfAcceptableSize];
  _seenMachineReadableObjectOfUnacceptableSize = [(CAMMachineReadableCodeLoggingController *)self _seenMachineReadableObjectOfUnacceptableSize];
  if (sizeCopy && !_seenMachineReadableObjectOfAcceptableSize)
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "MRC object handed off to BarcodeSupport", &v16, 2u);
    }

    [(CAMMachineReadableCodeLoggingController *)self _setSeenMachineReadableObjectOfAcceptableSize:1];
  }

  if (!sizeCopy && !_seenMachineReadableObjectOfUnacceptableSize)
  {
    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      underlyingMachineReadableCodeObject = [resultCopy underlyingMachineReadableCodeObject];
      [underlyingMachineReadableCodeObject bounds];
      v13 = v12;
      underlyingMachineReadableCodeObject2 = [resultCopy underlyingMachineReadableCodeObject];
      [underlyingMachineReadableCodeObject2 bounds];
      v16 = 134218240;
      v17 = v13;
      v18 = 2048;
      v19 = v15;
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "MRC object recognized, but was too small. Height:%f, Width:%f", &v16, 0x16u);
    }

    [(CAMMachineReadableCodeLoggingController *)self _setSeenMachineReadableObjectOfUnacceptableSize:1];
  }
}

- (void)resetLoggingState
{
  [(CAMMachineReadableCodeLoggingController *)self _setSeenMachineReadableObjectInNonActiveState:0];
  [(CAMMachineReadableCodeLoggingController *)self _setSeenMachineReadableObjectOfAcceptableSize:0];

  [(CAMMachineReadableCodeLoggingController *)self _setSeenMachineReadableObjectOfUnacceptableSize:0];
}

@end