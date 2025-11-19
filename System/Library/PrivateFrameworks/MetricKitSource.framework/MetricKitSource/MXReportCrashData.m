@interface MXReportCrashData
- (MXReportCrashData)initWithCoder:(id)a3;
- (id)initPayloadDataWithDiagnostics:(id)a3;
@end

@implementation MXReportCrashData

- (id)initPayloadDataWithDiagnostics:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MXReportCrashData;
  v5 = [(MXSourceData *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"crashDiagnostic"];
    crashDiagnostic = v5->_crashDiagnostic;
    v5->_crashDiagnostic = v6;
  }

  return v5;
}

- (MXReportCrashData)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MXReportCrashData;
  v5 = [(MXSourceData *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"crashDiagnostic"];
    crashDiagnostic = v5->_crashDiagnostic;
    v5->_crashDiagnostic = v6;
  }

  return v5;
}

@end