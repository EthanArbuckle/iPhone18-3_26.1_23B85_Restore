@interface MTPAFBaseEventDataProvider
- (id)isOffline:(id)a3;
- (id)knownFields;
- (id)osLanguages:(id)a3;
@end

@implementation MTPAFBaseEventDataProvider

- (id)knownFields
{
  v7.receiver = self;
  v7.super_class = MTPAFBaseEventDataProvider;
  v2 = [(MTBaseEventDataProvider *)&v7 knownFields];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"app", @"appVersion", @"baseVersion", @"clientEventId", @"clientId", @"connection", @"dsId", @"eventTime", @"eventVersion", @"hardwareFamily", @"hardwareModel", @"isOffline", @"os", @"osBuildNumber", @"osLanguages", @"osVersion", @"resourceRevNum", @"storeFrontHeader", @"timezoneOffset", @"userAgent", @"xpPostFrequency", @"xpSendMethod", @"xpVersionMetricsKit", 0}];
  }

  v5 = v4;

  return v5;
}

- (id)isOffline:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 isOffline:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)osLanguages:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 osLanguages:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"osLanguages"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 osLanguages];

LABEL_6:

  return v10;
}

@end