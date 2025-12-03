@interface HDWorkoutSessionConfiguration
- (HDWorkoutSessionConfiguration)initWithSessionIdentifier:(id)identifier workoutConfiguration:(id)configuration sessionType:(int64_t)type client:(id)client processBundleIdentifier:(id)bundleIdentifier applicationIdentifier:(id)applicationIdentifier requiresCoreLocationAssertion:(BOOL)assertion supportsAppRelaunchForRecovery:(BOOL)self0 supports3rdPartyAOT:(BOOL)self1 enableWorkoutChangeDetection:(BOOL)self2 activityConfigurations:(id)self3;
@end

@implementation HDWorkoutSessionConfiguration

- (HDWorkoutSessionConfiguration)initWithSessionIdentifier:(id)identifier workoutConfiguration:(id)configuration sessionType:(int64_t)type client:(id)client processBundleIdentifier:(id)bundleIdentifier applicationIdentifier:(id)applicationIdentifier requiresCoreLocationAssertion:(BOOL)assertion supportsAppRelaunchForRecovery:(BOOL)self0 supports3rdPartyAOT:(BOOL)self1 enableWorkoutChangeDetection:(BOOL)self2 activityConfigurations:(id)self3
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  clientCopy = client;
  bundleIdentifierCopy = bundleIdentifier;
  applicationIdentifierCopy = applicationIdentifier;
  configurationsCopy = configurations;
  v37.receiver = self;
  v37.super_class = HDWorkoutSessionConfiguration;
  v25 = [(HDWorkoutSessionConfiguration *)&v37 init];
  if (v25)
  {
    v26 = [identifierCopy copy];
    sessionIdentifier = v25->_sessionIdentifier;
    v25->_sessionIdentifier = v26;

    v28 = [configurationCopy copy];
    workoutConfiguration = v25->_workoutConfiguration;
    v25->_workoutConfiguration = v28;

    v25->_sessionType = type;
    objc_storeStrong(&v25->_client, client);
    v30 = [bundleIdentifierCopy copy];
    clientProcessBundleIdentifier = v25->_clientProcessBundleIdentifier;
    v25->_clientProcessBundleIdentifier = v30;

    v32 = [applicationIdentifierCopy copy];
    clientApplicationIdentifier = v25->_clientApplicationIdentifier;
    v25->_clientApplicationIdentifier = v32;

    v25->_requiresCoreLocationAssertion = assertion;
    v25->_supportsAppRelaunchForRecovery = recovery;
    v25->_supports3rdPartyAOT = t;
    v25->_enableWorkoutChangeDetection = detection;
    v34 = [configurationsCopy copy];
    activityConfigurations = v25->_activityConfigurations;
    v25->_activityConfigurations = v34;
  }

  return v25;
}

@end