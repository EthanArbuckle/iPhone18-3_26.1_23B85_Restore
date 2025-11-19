@interface _DASWidgetRefreshParameters
- (_DASWidgetRefreshParameters)initWithIdentifier:(id)a3 withBudgetIdentifier:(id)a4 withRateLimitConfigurationName:(id)a5 withRemoteDeviceIdentifier:(id)a6 withAppIdentifier:(id)a7 refreshAfter:(id)a8 refreshBefore:(id)a9;
@end

@implementation _DASWidgetRefreshParameters

- (_DASWidgetRefreshParameters)initWithIdentifier:(id)a3 withBudgetIdentifier:(id)a4 withRateLimitConfigurationName:(id)a5 withRemoteDeviceIdentifier:(id)a6 withAppIdentifier:(id)a7 refreshAfter:(id)a8 refreshBefore:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = _DASWidgetRefreshParameters;
  v18 = [(_DASWidgetRefreshParameters *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_widgetIdentifier, a3);
    objc_storeStrong(&v19->_widgetBudgetIdentifier, a4);
    objc_storeStrong(&v19->_ratelimitConfigurationName, a5);
    objc_storeStrong(&v19->_remoteDeviceIdentifier, a6);
    objc_storeStrong(&v19->_appIdentifier, a7);
    objc_storeStrong(&v19->_refreshAfterDate, a8);
    objc_storeStrong(&v19->_refreshBeforeDate, a9);
  }

  return v19;
}

@end