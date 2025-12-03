@interface HDHeadphoneAudioExposureControlServer
- (HDHeadphoneAudioExposureControlServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_headphoneProvenanceForRemoteDevice:(BOOL)device;
- (id)_headphoneProvenanceForRemoteWatch;
- (id)_makeAirPods;
- (id)_makeBeatsHeadphones;
- (id)_makeEarPods;
- (id)_makeUnknownHeadphones;
- (void)_headphoneProvenanceForRemoteWatch;
- (void)remote_fetchDoseLimitWithCompletion:(id)completion;
- (void)remote_fetchInfoDictWithCompletion:(id)completion;
- (void)remote_fetchInfoWithCompletion:(id)completion;
- (void)remote_overrideDoseLimit:(id)limit completion:(id)completion;
- (void)remote_rebuildWithCompletion:(id)completion;
@end

@implementation HDHeadphoneAudioExposureControlServer

- (HDHeadphoneAudioExposureControlServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v22.receiver = self;
  v22.super_class = HDHeadphoneAudioExposureControlServer;
  v12 = [(HDStandardTaskServer *)&v22 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v12)
  {
    profile = [clientCopy profile];
    objc_storeWeak(&v12->_profile, profile);

    profile2 = [clientCopy profile];
    v15 = [profile2 profileExtensionWithIdentifier:*MEMORY[0x277D11250]];
    profileExtension = v12->_profileExtension;
    v12->_profileExtension = v15;

    objc_storeStrong(&v12->_client, client);
    v17 = HKCreateSerialDispatchQueue();
    queue = v12->_queue;
    v12->_queue = v17;

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v12];

    v20 = v12;
  }

  return v12;
}

- (void)remote_rebuildWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  headphoneDoseManager = [(HDHearingProfileExtension *)profileExtension headphoneDoseManager];
  v8 = 0;
  v6 = [headphoneDoseManager _rebuildWithError:&v8];
  v7 = v8;

  completionCopy[2](completionCopy, v6, v7);
}

- (void)remote_fetchInfoWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  headphoneDoseManager = [(HDHearingProfileExtension *)profileExtension headphoneDoseManager];
  v8 = 0;
  v6 = [headphoneDoseManager _infoWithError:&v8];
  v7 = v8;

  completionCopy[2](completionCopy, v6, v7);
}

- (void)remote_fetchInfoDictWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  headphoneDoseManager = [(HDHearingProfileExtension *)profileExtension headphoneDoseManager];
  v8 = 0;
  v6 = [headphoneDoseManager _infoDictWithError:&v8];
  v7 = v8;

  completionCopy[2](completionCopy, v6, v7);
}

- (void)remote_fetchDoseLimitWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  headphoneDoseManager = [(HDHearingProfileExtension *)profileExtension headphoneDoseManager];
  v8 = 0;
  v6 = [headphoneDoseManager _fetchDoseLimitInfoWithError:&v8];
  v7 = v8;

  completionCopy[2](completionCopy, v6, v7);
}

- (void)remote_overrideDoseLimit:(id)limit completion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  limitCopy = limit;
  headphoneDoseManager = [(HDHearingProfileExtension *)profileExtension headphoneDoseManager];
  v11 = 0;
  v9 = [headphoneDoseManager _overrideDoseLimit:limitCopy error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (id)_headphoneProvenanceForRemoteDevice:(BOOL)device
{
  if (device)
  {
    _headphoneProvenanceForRemoteWatch = [(HDHeadphoneAudioExposureControlServer *)self _headphoneProvenanceForRemoteWatch];
  }

  else
  {
    profile = [(HDStandardTaskServer *)self profile];
    dataProvenanceManager = [profile dataProvenanceManager];
    _headphoneProvenanceForRemoteWatch = [dataProvenanceManager defaultLocalDataProvenance];
  }

  return _headphoneProvenanceForRemoteWatch;
}

- (id)_headphoneProvenanceForRemoteWatch
{
  v43[4] = *MEMORY[0x277D85DE8];
  _makeAirPods = [(HDHeadphoneAudioExposureControlServer *)self _makeAirPods];
  v43[0] = _makeAirPods;
  _makeEarPods = [(HDHeadphoneAudioExposureControlServer *)self _makeEarPods];
  v43[1] = _makeEarPods;
  _makeBeatsHeadphones = [(HDHeadphoneAudioExposureControlServer *)self _makeBeatsHeadphones];
  v43[2] = _makeBeatsHeadphones;
  _makeUnknownHeadphones = [(HDHeadphoneAudioExposureControlServer *)self _makeUnknownHeadphones];
  v43[3] = _makeUnknownHeadphones;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];

  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"AAAAAAAA-AAAA-AAAA-AAAA-AAAAAAAAAAAA"];
  profile = [(HDStandardTaskServer *)self profile];
  sourceManager = [profile sourceManager];
  v42 = 0;
  v11 = [sourceManager sourceForAppleDeviceWithUUID:v8 identifier:@"com.apple.health.demo_watch" name:@"Fake Person's Watch" productType:@"Watch1 createIfNecessary:2" error:{1, &v42}];
  v12 = v42;

  if (v11)
  {
    profile2 = [(HDStandardTaskServer *)self profile];
    deviceManager = [profile2 deviceManager];
    v15 = [v7 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v7, "count"))}];
    v41 = v12;
    v16 = [deviceManager deviceEntityForDevice:v15 error:&v41];
    v39 = v41;

    if (v16)
    {
      profile3 = [(HDStandardTaskServer *)self profile];
      daemon = [profile3 daemon];
      behavior = [daemon behavior];

      v35 = MEMORY[0x277D10698];
      profile4 = [(HDStandardTaskServer *)self profile];
      currentSyncIdentityPersistentID = [profile4 currentSyncIdentityPersistentID];
      currentOSBuild = [behavior currentOSBuild];
      v21 = currentOSBuild;
      v22 = *MEMORY[0x277D10430];
      if (currentOSBuild)
      {
        v22 = currentOSBuild;
      }

      v33 = v22;
      v37 = v8;
      v38 = v7;
      if (behavior)
      {
        [behavior currentOSVersionStruct];
      }

      else
      {
        memset(v40, 0, sizeof(v40));
      }

      currentOSVersion = [behavior currentOSVersion];
      localTimeZone = [behavior localTimeZone];
      name = [localTimeZone name];
      v29 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "persistentID")}];
      v30 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
      v24 = [v35 dataProvenanceWithSyncProvenance:0 syncIdentity:currentSyncIdentityPersistentID productType:@"Watch1 systemBuild:2" operatingSystemVersion:v33 sourceVersion:v40 timeZoneName:currentOSVersion sourceID:name deviceID:v29 contributorReference:{v30, 0}];

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
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 initWithName:@"AirPods" manufacturer:@"Apple model:Inc." hardwareVersion:@"AirPods 1 firmwareVersion:1" softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{0, uUIDString, 0}];

  return v5;
}

- (id)_makeEarPods
{
  v2 = objc_alloc(MEMORY[0x277CCD2E8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 initWithName:@"EarPods" manufacturer:@"Apple model:Inc." hardwareVersion:@"EarPods 1 firmwareVersion:1" softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{0, uUIDString, 0}];

  return v5;
}

- (id)_makeBeatsHeadphones
{
  v2 = objc_alloc(MEMORY[0x277CCD2E8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 initWithName:@"Powerbeats Pro" manufacturer:@"Beats By Dre" model:@"Powerbeats Pro 1 hardwareVersion:1" firmwareVersion:0 softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{uUIDString, 0}];

  return v5;
}

- (id)_makeUnknownHeadphones
{
  v2 = objc_alloc(MEMORY[0x277CCD2E8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 initWithName:0 manufacturer:@"Foo model:Inc." hardwareVersion:@"FooPods 1 firmwareVersion:1" softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{0, uUIDString, 0}];

  return v5;
}

- (void)_headphoneProvenanceForRemoteWatch
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_251764000, a2, OS_LOG_TYPE_ERROR, "Error creating watch source entity %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end