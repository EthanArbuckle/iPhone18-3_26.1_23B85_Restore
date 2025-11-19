@interface MXHangTracerData
- (MXHangTracerData)initWithCoder:(id)a3;
- (id)initPayloadDataWithDiagnostics:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXHangTracerData

- (id)initPayloadDataWithDiagnostics:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MXHangTracerData;
  v5 = [(MXSourceData *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"hangDiagnostic"];
    hangDiagnostic = v5->_hangDiagnostic;
    v5->_hangDiagnostic = v6;

    v8 = [v4 objectForKeyedSubscript:@"appLaunchDiagnostic"];
    appLaunchDiagnostic = v5->_appLaunchDiagnostic;
    v5->_appLaunchDiagnostic = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  hangDiagnostic = self->_hangDiagnostic;
  v5 = a3;
  [v5 encodeObject:hangDiagnostic forKey:@"hangDiagnostic"];
  [v5 encodeObject:self->_appLaunchDiagnostic forKey:@"appLaunchDiagnostic"];
}

- (MXHangTracerData)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MXHangTracerData;
  v5 = [(MXSourceData *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hangDiagnostic"];
    hangDiagnostic = v5->_hangDiagnostic;
    v5->_hangDiagnostic = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appLaunchDiagnostic"];
    appLaunchDiagnostic = v5->_appLaunchDiagnostic;
    v5->_appLaunchDiagnostic = v8;
  }

  return v5;
}

@end