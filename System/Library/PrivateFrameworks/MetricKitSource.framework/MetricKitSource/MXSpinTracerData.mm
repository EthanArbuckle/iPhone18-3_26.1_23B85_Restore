@interface MXSpinTracerData
- (MXSpinTracerData)initWithCoder:(id)a3;
- (id)initPayloadDataWithDiagnostics:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXSpinTracerData

- (id)initPayloadDataWithDiagnostics:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MXSpinTracerData;
  v5 = [(MXSourceData *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"cpuExceptionDiagnostics"];
    cpuExceptionDiagnostic = v5->_cpuExceptionDiagnostic;
    v5->_cpuExceptionDiagnostic = v6;

    v8 = [v4 objectForKeyedSubscript:@"diskWriteExceptionDiagnostics"];
    diskWriteExceptionDiagnostic = v5->_diskWriteExceptionDiagnostic;
    v5->_diskWriteExceptionDiagnostic = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  cpuExceptionDiagnostic = self->_cpuExceptionDiagnostic;
  v5 = a3;
  [v5 encodeObject:cpuExceptionDiagnostic forKey:@"cpuExceptionDiagnostics"];
  [v5 encodeObject:self->_diskWriteExceptionDiagnostic forKey:@"diskWriteExceptionDiagnostics"];
}

- (MXSpinTracerData)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MXSpinTracerData;
  v5 = [(MXSourceData *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cpuExceptionDiagnostics"];
    cpuExceptionDiagnostic = v5->_cpuExceptionDiagnostic;
    v5->_cpuExceptionDiagnostic = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diskWriteExceptionDiagnostics"];
    diskWriteExceptionDiagnostic = v5->_diskWriteExceptionDiagnostic;
    v5->_diskWriteExceptionDiagnostic = v8;
  }

  return v5;
}

@end