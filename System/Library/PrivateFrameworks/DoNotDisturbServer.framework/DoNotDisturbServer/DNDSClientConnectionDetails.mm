@interface DNDSClientConnectionDetails
- (id)_initWithDetails:(id)details;
- (id)_initWithInterruptionInvalidationAssertionUUID:(id)d assertionUpdateClientIdentifiers:(id)identifiers activeAssertionUpdateClientIdentifiers:(id)clientIdentifiers wantsStateUpdates:(BOOL)updates wantsSettingsUpdates:(BOOL)settingsUpdates wantsModeUpdates:(BOOL)modeUpdates wantsActiveModeUpdates:(BOOL)activeModeUpdates wantsGlobalConfigurationUpdates:(BOOL)self0 wantsMeDeviceStateUpdates:(BOOL)self1;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation DNDSClientConnectionDetails

- (id)_initWithDetails:(id)details
{
  detailsCopy = details;
  interruptionInvalidationAssertionUUID = [(DNDSClientConnectionDetails *)self interruptionInvalidationAssertionUUID];
  assertionUpdateClientIdentifiers = [detailsCopy assertionUpdateClientIdentifiers];
  activeAssertionUpdateClientIdentifiers = [detailsCopy activeAssertionUpdateClientIdentifiers];
  wantsStateUpdates = [detailsCopy wantsStateUpdates];
  wantsSettingsUpdates = [detailsCopy wantsSettingsUpdates];
  wantsModeUpdates = [detailsCopy wantsModeUpdates];
  wantsActiveModeUpdates = [detailsCopy wantsActiveModeUpdates];
  wantsGlobalConfigurationUpdates = [detailsCopy wantsGlobalConfigurationUpdates];
  wantsMeDeviceStateUpdates = [detailsCopy wantsMeDeviceStateUpdates];

  BYTE2(v15) = wantsMeDeviceStateUpdates;
  BYTE1(v15) = wantsGlobalConfigurationUpdates;
  LOBYTE(v15) = wantsActiveModeUpdates;
  v13 = [DNDSClientConnectionDetails _initWithInterruptionInvalidationAssertionUUID:"_initWithInterruptionInvalidationAssertionUUID:assertionUpdateClientIdentifiers:activeAssertionUpdateClientIdentifiers:wantsStateUpdates:wantsSettingsUpdates:wantsModeUpdates:wantsActiveModeUpdates:wantsGlobalConfigurationUpdates:wantsMeDeviceStateUpdates:" assertionUpdateClientIdentifiers:interruptionInvalidationAssertionUUID activeAssertionUpdateClientIdentifiers:assertionUpdateClientIdentifiers wantsStateUpdates:activeAssertionUpdateClientIdentifiers wantsSettingsUpdates:wantsStateUpdates wantsModeUpdates:wantsSettingsUpdates wantsActiveModeUpdates:wantsModeUpdates wantsGlobalConfigurationUpdates:v15 wantsMeDeviceStateUpdates:?];

  return v13;
}

- (id)_initWithInterruptionInvalidationAssertionUUID:(id)d assertionUpdateClientIdentifiers:(id)identifiers activeAssertionUpdateClientIdentifiers:(id)clientIdentifiers wantsStateUpdates:(BOOL)updates wantsSettingsUpdates:(BOOL)settingsUpdates wantsModeUpdates:(BOOL)modeUpdates wantsActiveModeUpdates:(BOOL)activeModeUpdates wantsGlobalConfigurationUpdates:(BOOL)self0 wantsMeDeviceStateUpdates:(BOOL)self1
{
  dCopy = d;
  identifiersCopy = identifiers;
  clientIdentifiersCopy = clientIdentifiers;
  v32.receiver = self;
  v32.super_class = DNDSClientConnectionDetails;
  v20 = [(DNDSClientConnectionDetails *)&v32 init];
  if (v20)
  {
    v21 = [dCopy copy];
    interruptionInvalidationAssertionUUID = v20->_interruptionInvalidationAssertionUUID;
    v20->_interruptionInvalidationAssertionUUID = v21;

    v23 = [identifiersCopy copy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = [MEMORY[0x277CBEB98] set];
    }

    assertionUpdateClientIdentifiers = v20->_assertionUpdateClientIdentifiers;
    v20->_assertionUpdateClientIdentifiers = v25;

    v27 = [clientIdentifiersCopy copy];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = [MEMORY[0x277CBEB98] set];
    }

    activeAssertionUpdateClientIdentifiers = v20->_activeAssertionUpdateClientIdentifiers;
    v20->_activeAssertionUpdateClientIdentifiers = v29;

    v20->_wantsStateUpdates = updates;
    v20->_wantsSettingsUpdates = settingsUpdates;
    v20->_wantsModeUpdates = modeUpdates;
    v20->_wantsActiveModeUpdates = activeModeUpdates;
    v20->_wantsGlobalConfigurationUpdates = configurationUpdates;
    v20->_wantsMeDeviceStateUpdates = stateUpdates;
  }

  return v20;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableClientConnectionDetails alloc];

  return [(DNDSClientConnectionDetails *)v4 _initWithDetails:self];
}

@end