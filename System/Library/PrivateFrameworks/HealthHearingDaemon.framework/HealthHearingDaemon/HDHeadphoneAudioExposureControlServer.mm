@interface HDHeadphoneAudioExposureControlServer
- (HDHeadphoneAudioExposureControlServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)_headphoneProvenanceForRemoteDevice:(BOOL)a3;
- (id)_headphoneProvenanceForRemoteWatch;
- (id)_makeAirPods;
- (id)_makeBeatsHeadphones;
- (id)_makeEarPods;
- (id)_makeUnknownHeadphones;
- (void)_headphoneProvenanceForRemoteWatch;
- (void)remote_fetchDoseLimitWithCompletion:(id)a3;
- (void)remote_fetchInfoDictWithCompletion:(id)a3;
- (void)remote_fetchInfoWithCompletion:(id)a3;
- (void)remote_overrideDoseLimit:(id)a3 completion:(id)a4;
- (void)remote_rebuildWithCompletion:(id)a3;
@end

@implementation HDHeadphoneAudioExposureControlServer

- (HDHeadphoneAudioExposureControlServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v11 = a5;
  v22.receiver = self;
  v22.super_class = HDHeadphoneAudioExposureControlServer;
  v12 = [(HDStandardTaskServer *)&v22 initWithUUID:a3 configuration:a4 client:v11 delegate:a6];
  if (v12)
  {
    v13 = [v11 profile];
    objc_storeWeak(&v12->_profile, v13);

    v14 = [v11 profile];
    v15 = [v14 profileExtensionWithIdentifier:*MEMORY[0x277D11250]];
    profileExtension = v12->_profileExtension;
    v12->_profileExtension = v15;

    objc_storeStrong(&v12->_client, a5);
    v17 = HKCreateSerialDispatchQueue();
    queue = v12->_queue;
    v12->_queue = v17;

    v19 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v19 addObject:v12];

    v20 = v12;
  }

  return v12;
}

- (void)remote_rebuildWithCompletion:(id)a3
{
  profileExtension = self->_profileExtension;
  v4 = a3;
  v5 = [(HDHearingProfileExtension *)profileExtension headphoneDoseManager];
  v8 = 0;
  v6 = [v5 _rebuildWithError:&v8];
  v7 = v8;

  v4[2](v4, v6, v7);
}

- (void)remote_fetchInfoWithCompletion:(id)a3
{
  profileExtension = self->_profileExtension;
  v4 = a3;
  v5 = [(HDHearingProfileExtension *)profileExtension headphoneDoseManager];
  v8 = 0;
  v6 = [v5 _infoWithError:&v8];
  v7 = v8;

  v4[2](v4, v6, v7);
}

- (void)remote_fetchInfoDictWithCompletion:(id)a3
{
  profileExtension = self->_profileExtension;
  v4 = a3;
  v5 = [(HDHearingProfileExtension *)profileExtension headphoneDoseManager];
  v8 = 0;
  v6 = [v5 _infoDictWithError:&v8];
  v7 = v8;

  v4[2](v4, v6, v7);
}

- (void)remote_fetchDoseLimitWithCompletion:(id)a3
{
  profileExtension = self->_profileExtension;
  v4 = a3;
  v5 = [(HDHearingProfileExtension *)profileExtension headphoneDoseManager];
  v8 = 0;
  v6 = [v5 _fetchDoseLimitInfoWithError:&v8];
  v7 = v8;

  v4[2](v4, v6, v7);
}

- (void)remote_overrideDoseLimit:(id)a3 completion:(id)a4
{
  profileExtension = self->_profileExtension;
  v6 = a4;
  v7 = a3;
  v8 = [(HDHearingProfileExtension *)profileExtension headphoneDoseManager];
  v11 = 0;
  v9 = [v8 _overrideDoseLimit:v7 error:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (id)_headphoneProvenanceForRemoteDevice:(BOOL)a3
{
  if (a3)
  {
    v3 = [(HDHeadphoneAudioExposureControlServer *)self _headphoneProvenanceForRemoteWatch];
  }

  else
  {
    v4 = [(HDStandardTaskServer *)self profile];
    v5 = [v4 dataProvenanceManager];
    v3 = [v5 defaultLocalDataProvenance];
  }

  return v3;
}

- (id)_headphoneProvenanceForRemoteWatch
{
  v43[4] = *MEMORY[0x277D85DE8];
  v3 = [(HDHeadphoneAudioExposureControlServer *)self _makeAirPods];
  v43[0] = v3;
  v4 = [(HDHeadphoneAudioExposureControlServer *)self _makeEarPods];
  v43[1] = v4;
  v5 = [(HDHeadphoneAudioExposureControlServer *)self _makeBeatsHeadphones];
  v43[2] = v5;
  v6 = [(HDHeadphoneAudioExposureControlServer *)self _makeUnknownHeadphones];
  v43[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];

  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"AAAAAAAA-AAAA-AAAA-AAAA-AAAAAAAAAAAA"];
  v9 = [(HDStandardTaskServer *)self profile];
  v10 = [v9 sourceManager];
  v42 = 0;
  v11 = [v10 sourceForAppleDeviceWithUUID:v8 identifier:@"com.apple.health.demo_watch" name:@"Fake Person's Watch" productType:@"Watch1 createIfNecessary:2" error:{1, &v42}];
  v12 = v42;

  if (v11)
  {
    v13 = [(HDStandardTaskServer *)self profile];
    v14 = [v13 deviceManager];
    v15 = [v7 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v7, "count"))}];
    v41 = v12;
    v16 = [v14 deviceEntityForDevice:v15 error:&v41];
    v39 = v41;

    if (v16)
    {
      v17 = [(HDStandardTaskServer *)self profile];
      v18 = [v17 daemon];
      v19 = [v18 behavior];

      v35 = MEMORY[0x277D10698];
      v36 = [(HDStandardTaskServer *)self profile];
      v34 = [v36 currentSyncIdentityPersistentID];
      v20 = [v19 currentOSBuild];
      v21 = v20;
      v22 = *MEMORY[0x277D10430];
      if (v20)
      {
        v22 = v20;
      }

      v33 = v22;
      v37 = v8;
      v38 = v7;
      if (v19)
      {
        [v19 currentOSVersionStruct];
      }

      else
      {
        memset(v40, 0, sizeof(v40));
      }

      v26 = [v19 currentOSVersion];
      v27 = [v19 localTimeZone];
      v28 = [v27 name];
      v29 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "persistentID")}];
      v30 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
      v24 = [v35 dataProvenanceWithSyncProvenance:0 syncIdentity:v34 productType:@"Watch1 systemBuild:2" operatingSystemVersion:v33 sourceVersion:v40 timeZoneName:v26 sourceID:v28 deviceID:v29 contributorReference:{v30, 0}];

      v8 = v37;
      v7 = v38;
    }

    else
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC2B8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
      {
        v12 = v39;
        [(HDHeadphoneAudioExposureControlServer *)v39 _headphoneProvenanceForRemoteWatch];
        v24 = 0;
        goto LABEL_15;
      }

      v24 = 0;
    }

    v12 = v39;
LABEL_15:

    goto LABEL_16;
  }

  _HKInitializeLogging();
  v23 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
  {
    [(HDHeadphoneAudioExposureControlServer *)v12 _headphoneProvenanceForRemoteWatch];
  }

  v24 = 0;
LABEL_16:

  v31 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_makeAirPods
{
  v2 = objc_alloc(MEMORY[0x277CCD2E8]);
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 initWithName:@"AirPods" manufacturer:@"Apple model:Inc." hardwareVersion:@"AirPods 1 firmwareVersion:1" softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{0, v4, 0}];

  return v5;
}

- (id)_makeEarPods
{
  v2 = objc_alloc(MEMORY[0x277CCD2E8]);
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 initWithName:@"EarPods" manufacturer:@"Apple model:Inc." hardwareVersion:@"EarPods 1 firmwareVersion:1" softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{0, v4, 0}];

  return v5;
}

- (id)_makeBeatsHeadphones
{
  v2 = objc_alloc(MEMORY[0x277CCD2E8]);
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 initWithName:@"Powerbeats Pro" manufacturer:@"Beats By Dre" model:@"Powerbeats Pro 1 hardwareVersion:1" firmwareVersion:0 softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{v4, 0}];

  return v5;
}

- (id)_makeUnknownHeadphones
{
  v2 = objc_alloc(MEMORY[0x277CCD2E8]);
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 initWithName:0 manufacturer:@"Foo model:Inc." hardwareVersion:@"FooPods 1 firmwareVersion:1" softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{0, v4, 0}];

  return v5;
}

- (void)_headphoneProvenanceForRemoteWatch
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_251764000, a2, OS_LOG_TYPE_ERROR, "Error creating watch source entity %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end