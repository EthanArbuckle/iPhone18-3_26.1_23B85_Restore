@interface MXReportCrashData
- (MXReportCrashData)initWithCoder:(id)coder;
- (id)initPayloadDataWithDiagnostics:(id)diagnostics;
@end

@implementation MXReportCrashData

- (id)initPayloadDataWithDiagnostics:(id)diagnostics
{
  diagnosticsCopy = diagnostics;
  v9.receiver = self;
  v9.super_class = MXReportCrashData;
  v5 = [(MXSourceData *)&v9 init];
  if (v5)
  {
    v6 = [diagnosticsCopy objectForKeyedSubscript:@"crashDiagnostic"];
    crashDiagnostic = v5->_crashDiagnostic;
    v5->_crashDiagnostic = v6;
  }

  return v5;
}

- (MXReportCrashData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MXReportCrashData;
  v5 = [(MXSourceData *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"crashDiagnostic"];
    crashDiagnostic = v5->_crashDiagnostic;
    v5->_crashDiagnostic = v6;
  }

  return v5;
}

@end