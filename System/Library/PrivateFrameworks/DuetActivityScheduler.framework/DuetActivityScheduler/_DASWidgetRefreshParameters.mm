@interface _DASWidgetRefreshParameters
- (_DASWidgetRefreshParameters)initWithIdentifier:(id)identifier withBudgetIdentifier:(id)budgetIdentifier withRateLimitConfigurationName:(id)name withRemoteDeviceIdentifier:(id)deviceIdentifier withAppIdentifier:(id)appIdentifier refreshAfter:(id)after refreshBefore:(id)before;
@end

@implementation _DASWidgetRefreshParameters

- (_DASWidgetRefreshParameters)initWithIdentifier:(id)identifier withBudgetIdentifier:(id)budgetIdentifier withRateLimitConfigurationName:(id)name withRemoteDeviceIdentifier:(id)deviceIdentifier withAppIdentifier:(id)appIdentifier refreshAfter:(id)after refreshBefore:(id)before
{
  identifierCopy = identifier;
  budgetIdentifierCopy = budgetIdentifier;
  nameCopy = name;
  deviceIdentifierCopy = deviceIdentifier;
  appIdentifierCopy = appIdentifier;
  afterCopy = after;
  beforeCopy = before;
  v26.receiver = self;
  v26.super_class = _DASWidgetRefreshParameters;
  v18 = [(_DASWidgetRefreshParameters *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_widgetIdentifier, identifier);
    objc_storeStrong(&v19->_widgetBudgetIdentifier, budgetIdentifier);
    objc_storeStrong(&v19->_ratelimitConfigurationName, name);
    objc_storeStrong(&v19->_remoteDeviceIdentifier, deviceIdentifier);
    objc_storeStrong(&v19->_appIdentifier, appIdentifier);
    objc_storeStrong(&v19->_refreshAfterDate, after);
    objc_storeStrong(&v19->_refreshBeforeDate, before);
  }

  return v19;
}

@end