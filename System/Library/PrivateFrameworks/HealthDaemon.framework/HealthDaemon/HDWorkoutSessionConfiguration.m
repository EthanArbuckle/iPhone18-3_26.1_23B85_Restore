@interface HDWorkoutSessionConfiguration
- (HDWorkoutSessionConfiguration)initWithSessionIdentifier:(id)a3 workoutConfiguration:(id)a4 sessionType:(int64_t)a5 client:(id)a6 processBundleIdentifier:(id)a7 applicationIdentifier:(id)a8 requiresCoreLocationAssertion:(BOOL)a9 supportsAppRelaunchForRecovery:(BOOL)a10 supports3rdPartyAOT:(BOOL)a11 enableWorkoutChangeDetection:(BOOL)a12 activityConfigurations:(id)a13;
@end

@implementation HDWorkoutSessionConfiguration

- (HDWorkoutSessionConfiguration)initWithSessionIdentifier:(id)a3 workoutConfiguration:(id)a4 sessionType:(int64_t)a5 client:(id)a6 processBundleIdentifier:(id)a7 applicationIdentifier:(id)a8 requiresCoreLocationAssertion:(BOOL)a9 supportsAppRelaunchForRecovery:(BOOL)a10 supports3rdPartyAOT:(BOOL)a11 enableWorkoutChangeDetection:(BOOL)a12 activityConfigurations:(id)a13
{
  v19 = a3;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a13;
  v37.receiver = self;
  v37.super_class = HDWorkoutSessionConfiguration;
  v25 = [(HDWorkoutSessionConfiguration *)&v37 init];
  if (v25)
  {
    v26 = [v19 copy];
    sessionIdentifier = v25->_sessionIdentifier;
    v25->_sessionIdentifier = v26;

    v28 = [v20 copy];
    workoutConfiguration = v25->_workoutConfiguration;
    v25->_workoutConfiguration = v28;

    v25->_sessionType = a5;
    objc_storeStrong(&v25->_client, a6);
    v30 = [v22 copy];
    clientProcessBundleIdentifier = v25->_clientProcessBundleIdentifier;
    v25->_clientProcessBundleIdentifier = v30;

    v32 = [v23 copy];
    clientApplicationIdentifier = v25->_clientApplicationIdentifier;
    v25->_clientApplicationIdentifier = v32;

    v25->_requiresCoreLocationAssertion = a9;
    v25->_supportsAppRelaunchForRecovery = a10;
    v25->_supports3rdPartyAOT = a11;
    v25->_enableWorkoutChangeDetection = a12;
    v34 = [v24 copy];
    activityConfigurations = v25->_activityConfigurations;
    v25->_activityConfigurations = v34;
  }

  return v25;
}

@end