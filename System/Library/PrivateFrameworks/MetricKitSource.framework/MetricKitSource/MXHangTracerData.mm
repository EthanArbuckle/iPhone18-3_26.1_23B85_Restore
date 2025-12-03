@interface MXHangTracerData
- (MXHangTracerData)initWithCoder:(id)coder;
- (id)initPayloadDataWithDiagnostics:(id)diagnostics;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXHangTracerData

- (id)initPayloadDataWithDiagnostics:(id)diagnostics
{
  diagnosticsCopy = diagnostics;
  v11.receiver = self;
  v11.super_class = MXHangTracerData;
  v5 = [(MXSourceData *)&v11 init];
  if (v5)
  {
    v6 = [diagnosticsCopy objectForKeyedSubscript:@"hangDiagnostic"];
    hangDiagnostic = v5->_hangDiagnostic;
    v5->_hangDiagnostic = v6;

    v8 = [diagnosticsCopy objectForKeyedSubscript:@"appLaunchDiagnostic"];
    appLaunchDiagnostic = v5->_appLaunchDiagnostic;
    v5->_appLaunchDiagnostic = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  hangDiagnostic = self->_hangDiagnostic;
  coderCopy = coder;
  [coderCopy encodeObject:hangDiagnostic forKey:@"hangDiagnostic"];
  [coderCopy encodeObject:self->_appLaunchDiagnostic forKey:@"appLaunchDiagnostic"];
}

- (MXHangTracerData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MXHangTracerData;
  v5 = [(MXSourceData *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hangDiagnostic"];
    hangDiagnostic = v5->_hangDiagnostic;
    v5->_hangDiagnostic = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appLaunchDiagnostic"];
    appLaunchDiagnostic = v5->_appLaunchDiagnostic;
    v5->_appLaunchDiagnostic = v8;
  }

  return v5;
}

@end