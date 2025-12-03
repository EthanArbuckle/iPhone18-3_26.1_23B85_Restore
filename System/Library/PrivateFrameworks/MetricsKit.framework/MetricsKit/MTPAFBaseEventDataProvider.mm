@interface MTPAFBaseEventDataProvider
- (id)isOffline:(id)offline;
- (id)knownFields;
- (id)osLanguages:(id)languages;
@end

@implementation MTPAFBaseEventDataProvider

- (id)knownFields
{
  v7.receiver = self;
  v7.super_class = MTPAFBaseEventDataProvider;
  knownFields = [(MTBaseEventDataProvider *)&v7 knownFields];
  v3 = knownFields;
  if (knownFields)
  {
    v4 = knownFields;
  }

  else
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"app", @"appVersion", @"baseVersion", @"clientEventId", @"clientId", @"connection", @"dsId", @"eventTime", @"eventVersion", @"hardwareFamily", @"hardwareModel", @"isOffline", @"os", @"osBuildNumber", @"osLanguages", @"osVersion", @"resourceRevNum", @"storeFrontHeader", @"timezoneOffset", @"userAgent", @"xpPostFrequency", @"xpSendMethod", @"xpVersionMetricsKit", 0}];
  }

  v5 = v4;

  return v5;
}

- (id)isOffline:(id)offline
{
  offlineCopy = offline;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 isOffline:offlineCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)osLanguages:(id)languages
{
  languagesCopy = languages;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 osLanguages:languagesCopy];
LABEL_5:
    osLanguages = v8;
    goto LABEL_6;
  }

  v9 = [languagesCopy objectForKeyedSubscript:@"osLanguages"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  osLanguages = [environment osLanguages];

LABEL_6:

  return osLanguages;
}

@end