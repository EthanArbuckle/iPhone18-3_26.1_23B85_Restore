@interface MXSpinTracerData
- (MXSpinTracerData)initWithCoder:(id)coder;
- (id)initPayloadDataWithDiagnostics:(id)diagnostics;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXSpinTracerData

- (id)initPayloadDataWithDiagnostics:(id)diagnostics
{
  diagnosticsCopy = diagnostics;
  v11.receiver = self;
  v11.super_class = MXSpinTracerData;
  v5 = [(MXSourceData *)&v11 init];
  if (v5)
  {
    v6 = [diagnosticsCopy objectForKeyedSubscript:@"cpuExceptionDiagnostics"];
    cpuExceptionDiagnostic = v5->_cpuExceptionDiagnostic;
    v5->_cpuExceptionDiagnostic = v6;

    v8 = [diagnosticsCopy objectForKeyedSubscript:@"diskWriteExceptionDiagnostics"];
    diskWriteExceptionDiagnostic = v5->_diskWriteExceptionDiagnostic;
    v5->_diskWriteExceptionDiagnostic = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  cpuExceptionDiagnostic = self->_cpuExceptionDiagnostic;
  coderCopy = coder;
  [coderCopy encodeObject:cpuExceptionDiagnostic forKey:@"cpuExceptionDiagnostics"];
  [coderCopy encodeObject:self->_diskWriteExceptionDiagnostic forKey:@"diskWriteExceptionDiagnostics"];
}

- (MXSpinTracerData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MXSpinTracerData;
  v5 = [(MXSourceData *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cpuExceptionDiagnostics"];
    cpuExceptionDiagnostic = v5->_cpuExceptionDiagnostic;
    v5->_cpuExceptionDiagnostic = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diskWriteExceptionDiagnostics"];
    diskWriteExceptionDiagnostic = v5->_diskWriteExceptionDiagnostic;
    v5->_diskWriteExceptionDiagnostic = v8;
  }

  return v5;
}

@end