@interface DNDSClientConnectionDetails
- (id)_initWithDetails:(id)a3;
- (id)_initWithInterruptionInvalidationAssertionUUID:(id)a3 assertionUpdateClientIdentifiers:(id)a4 activeAssertionUpdateClientIdentifiers:(id)a5 wantsStateUpdates:(BOOL)a6 wantsSettingsUpdates:(BOOL)a7 wantsModeUpdates:(BOOL)a8 wantsActiveModeUpdates:(BOOL)a9 wantsGlobalConfigurationUpdates:(BOOL)a10 wantsMeDeviceStateUpdates:(BOOL)a11;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation DNDSClientConnectionDetails

- (id)_initWithDetails:(id)a3
{
  v4 = a3;
  v5 = [(DNDSClientConnectionDetails *)self interruptionInvalidationAssertionUUID];
  v6 = [v4 assertionUpdateClientIdentifiers];
  v7 = [v4 activeAssertionUpdateClientIdentifiers];
  v16 = [v4 wantsStateUpdates];
  v8 = [v4 wantsSettingsUpdates];
  v9 = [v4 wantsModeUpdates];
  v10 = [v4 wantsActiveModeUpdates];
  v11 = [v4 wantsGlobalConfigurationUpdates];
  v12 = [v4 wantsMeDeviceStateUpdates];

  BYTE2(v15) = v12;
  BYTE1(v15) = v11;
  LOBYTE(v15) = v10;
  v13 = [DNDSClientConnectionDetails _initWithInterruptionInvalidationAssertionUUID:"_initWithInterruptionInvalidationAssertionUUID:assertionUpdateClientIdentifiers:activeAssertionUpdateClientIdentifiers:wantsStateUpdates:wantsSettingsUpdates:wantsModeUpdates:wantsActiveModeUpdates:wantsGlobalConfigurationUpdates:wantsMeDeviceStateUpdates:" assertionUpdateClientIdentifiers:v5 activeAssertionUpdateClientIdentifiers:v6 wantsStateUpdates:v7 wantsSettingsUpdates:v16 wantsModeUpdates:v8 wantsActiveModeUpdates:v9 wantsGlobalConfigurationUpdates:v15 wantsMeDeviceStateUpdates:?];

  return v13;
}

- (id)_initWithInterruptionInvalidationAssertionUUID:(id)a3 assertionUpdateClientIdentifiers:(id)a4 activeAssertionUpdateClientIdentifiers:(id)a5 wantsStateUpdates:(BOOL)a6 wantsSettingsUpdates:(BOOL)a7 wantsModeUpdates:(BOOL)a8 wantsActiveModeUpdates:(BOOL)a9 wantsGlobalConfigurationUpdates:(BOOL)a10 wantsMeDeviceStateUpdates:(BOOL)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v32.receiver = self;
  v32.super_class = DNDSClientConnectionDetails;
  v20 = [(DNDSClientConnectionDetails *)&v32 init];
  if (v20)
  {
    v21 = [v17 copy];
    interruptionInvalidationAssertionUUID = v20->_interruptionInvalidationAssertionUUID;
    v20->_interruptionInvalidationAssertionUUID = v21;

    v23 = [v18 copy];
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

    v27 = [v19 copy];
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

    v20->_wantsStateUpdates = a6;
    v20->_wantsSettingsUpdates = a7;
    v20->_wantsModeUpdates = a8;
    v20->_wantsActiveModeUpdates = a9;
    v20->_wantsGlobalConfigurationUpdates = a10;
    v20->_wantsMeDeviceStateUpdates = a11;
  }

  return v20;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableClientConnectionDetails alloc];

  return [(DNDSClientConnectionDetails *)v4 _initWithDetails:self];
}

@end