uint64_t type metadata accessor for Headphone_Manager()
{
  v1 = type metadata singleton initialization cache for Headphone_Manager;
  if (!type metadata singleton initialization cache for Headphone_Manager)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for Headphone_Manager()
{
  v4 = type metadata accessor for Published<[String : HMDeviceRecord]>();
  updated = v4;
  if (v0 <= 0x3F)
  {
    v6 = *(v4 - 8) + 64;
    v3 = type metadata accessor for Published<[String : HeadphoneDevice]>();
    updated = v3;
    if (v1 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

uint64_t type metadata accessor for HeadphoneDevice()
{
  v1 = type metadata singleton initialization cache for HeadphoneDevice;
  if (!type metadata singleton initialization cache for HeadphoneDevice)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for HeadphoneDevice()
{
  v30 = type metadata accessor for Published<Bool>();
  updated = v30;
  if (v0 <= 0x3F)
  {
    v29 = *(v30 - 8);
    v1 = type metadata accessor for Published<String>();
    updated = v1;
    if (v2 <= 0x3F)
    {
      v32 = *(v1 - 8) + 64;
      v3 = type metadata accessor for Published<CBListeningMode>();
      updated = v3;
      if (v4 <= 0x3F)
      {
        v33 = *(v3 - 8) + 64;
        v5 = type metadata accessor for Published<CBPeerUIGestureMode>();
        updated = v5;
        if (v6 <= 0x3F)
        {
          v34 = *(v5 - 8) + 64;
          v7 = type metadata accessor for Published<CBDoubleTapAction>();
          updated = v7;
          if (v8 <= 0x3F)
          {
            v35 = *(v7 - 8) + 64;
            v9 = type metadata accessor for Published<CBPeerCrownRotationDirection>();
            updated = v9;
            if (v10 <= 0x3F)
            {
              v36 = *(v9 - 8) + 64;
              v11 = type metadata accessor for Published<CBSmartRoutingMode>();
              updated = v11;
              if (v12 <= 0x3F)
              {
                v37 = *(v11 - 8) + 64;
                v13 = type metadata accessor for Published<CBMicrophoneMode>();
                updated = v13;
                if (v14 <= 0x3F)
                {
                  v38 = *(v13 - 8) + 64;
                  v15 = type metadata accessor for Published<CBPeerCallConfig>();
                  updated = v15;
                  if (v16 <= 0x3F)
                  {
                    v39 = *(v15 - 8) + 64;
                    v17 = type metadata accessor for Published<[Int : String]>();
                    updated = v17;
                    if (v18 <= 0x3F)
                    {
                      v40 = *(v17 - 8) + 64;
                      v19 = type metadata accessor for Published<Float>();
                      updated = v19;
                      if (v20 <= 0x3F)
                      {
                        v28 = *(v19 - 8);
                        v21 = type metadata accessor for Published<CBBatteryState>();
                        updated = v21;
                        if (v22 <= 0x3F)
                        {
                          v41 = *(v21 - 8) + 64;
                          v27 = type metadata accessor for Published<HearingRecord>();
                          updated = v27;
                          if (v23 <= 0x3F)
                          {
                            v42 = *(v27 - 8) + 64;
                            v26 = type metadata accessor for Published<AADevice>();
                            updated = v26;
                            if (v24 <= 0x3F)
                            {
                              v43 = *(v26 - 8) + 64;
                              updated = swift_updateClassMetadata2();
                              if (!updated)
                              {
                                return 0;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return updated;
}

uint64_t type metadata accessor for Published<Bool>()
{
  v4 = lazy cache variable for type metadata for Published<Bool>;
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<Bool>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<String>()
{
  v4 = lazy cache variable for type metadata for Published<String>;
  if (!lazy cache variable for type metadata for Published<String>)
  {
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<String>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<CBListeningMode>()
{
  v4 = lazy cache variable for type metadata for Published<CBListeningMode>;
  if (!lazy cache variable for type metadata for Published<CBListeningMode>)
  {
    type metadata accessor for CBListeningMode();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<CBListeningMode>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CBListeningMode()
{
  v4 = lazy cache variable for type metadata for CBListeningMode;
  if (!lazy cache variable for type metadata for CBListeningMode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBListeningMode);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<CBPeerUIGestureMode>()
{
  v4 = lazy cache variable for type metadata for Published<CBPeerUIGestureMode>;
  if (!lazy cache variable for type metadata for Published<CBPeerUIGestureMode>)
  {
    type metadata accessor for CBPeerUIGestureMode();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<CBPeerUIGestureMode>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CBPeerUIGestureMode()
{
  v4 = lazy cache variable for type metadata for CBPeerUIGestureMode;
  if (!lazy cache variable for type metadata for CBPeerUIGestureMode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBPeerUIGestureMode);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<CBDoubleTapAction>()
{
  v4 = lazy cache variable for type metadata for Published<CBDoubleTapAction>;
  if (!lazy cache variable for type metadata for Published<CBDoubleTapAction>)
  {
    type metadata accessor for CBDoubleTapAction();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<CBDoubleTapAction>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CBDoubleTapAction()
{
  v4 = lazy cache variable for type metadata for CBDoubleTapAction;
  if (!lazy cache variable for type metadata for CBDoubleTapAction)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBDoubleTapAction);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<CBPeerCrownRotationDirection>()
{
  v4 = lazy cache variable for type metadata for Published<CBPeerCrownRotationDirection>;
  if (!lazy cache variable for type metadata for Published<CBPeerCrownRotationDirection>)
  {
    type metadata accessor for CBPeerCrownRotationDirection();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<CBPeerCrownRotationDirection>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CBPeerCrownRotationDirection()
{
  v4 = lazy cache variable for type metadata for CBPeerCrownRotationDirection;
  if (!lazy cache variable for type metadata for CBPeerCrownRotationDirection)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBPeerCrownRotationDirection);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<CBSmartRoutingMode>()
{
  v4 = lazy cache variable for type metadata for Published<CBSmartRoutingMode>;
  if (!lazy cache variable for type metadata for Published<CBSmartRoutingMode>)
  {
    type metadata accessor for CBSmartRoutingMode();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<CBSmartRoutingMode>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CBSmartRoutingMode()
{
  v4 = lazy cache variable for type metadata for CBSmartRoutingMode;
  if (!lazy cache variable for type metadata for CBSmartRoutingMode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBSmartRoutingMode);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<CBMicrophoneMode>()
{
  v4 = lazy cache variable for type metadata for Published<CBMicrophoneMode>;
  if (!lazy cache variable for type metadata for Published<CBMicrophoneMode>)
  {
    type metadata accessor for CBMicrophoneMode();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<CBMicrophoneMode>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CBMicrophoneMode()
{
  v4 = lazy cache variable for type metadata for CBMicrophoneMode;
  if (!lazy cache variable for type metadata for CBMicrophoneMode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBMicrophoneMode);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<CBPeerCallConfig>()
{
  v4 = lazy cache variable for type metadata for Published<CBPeerCallConfig>;
  if (!lazy cache variable for type metadata for Published<CBPeerCallConfig>)
  {
    type metadata accessor for CBPeerCallConfig();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<CBPeerCallConfig>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CBPeerCallConfig()
{
  v4 = lazy cache variable for type metadata for CBPeerCallConfig;
  if (!lazy cache variable for type metadata for CBPeerCallConfig)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBPeerCallConfig);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<Float>()
{
  v4 = lazy cache variable for type metadata for Published<Float>;
  if (!lazy cache variable for type metadata for Published<Float>)
  {
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<Float>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<CBBatteryState>()
{
  v4 = lazy cache variable for type metadata for Published<CBBatteryState>;
  if (!lazy cache variable for type metadata for Published<CBBatteryState>)
  {
    type metadata accessor for CBBatteryState();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<CBBatteryState>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CBBatteryState()
{
  v4 = lazy cache variable for type metadata for CBBatteryState;
  if (!lazy cache variable for type metadata for CBBatteryState)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBBatteryState);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<HearingRecord>()
{
  v4 = lazy cache variable for type metadata for Published<HearingRecord>;
  if (!lazy cache variable for type metadata for Published<HearingRecord>)
  {
    type metadata accessor for HearingRecord();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<HearingRecord>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for HearingRecord()
{
  v1 = type metadata singleton initialization cache for HearingRecord;
  if (!type metadata singleton initialization cache for HearingRecord)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for HearingRecord()
{
  v18 = type metadata accessor for Published<String>();
  updated = v18;
  if (v0 <= 0x3F)
  {
    v20 = *(v18 - 8) + 64;
    v1 = type metadata accessor for Published<HMMultiState>();
    updated = v1;
    if (v2 <= 0x3F)
    {
      v17 = *(v1 - 8);
      v3 = type metadata accessor for Published<HMRegionStatus>();
      updated = v3;
      if (v4 <= 0x3F)
      {
        v16 = *(v3 - 8);
        v5 = type metadata accessor for Published<[NSNumber]>();
        updated = v5;
        if (v6 <= 0x3F)
        {
          v21 = *(v5 - 8) + 64;
          v7 = type metadata accessor for Published<HMOcclusionResult>();
          updated = v7;
          if (v8 <= 0x3F)
          {
            v22 = *(v7 - 8) + 64;
            v9 = type metadata accessor for Published<[HKAudiogramSample]>();
            updated = v9;
            if (v10 <= 0x3F)
            {
              v23 = *(v9 - 8) + 64;
              v15 = type metadata accessor for Published<HMInfo?>();
              updated = v15;
              if (v11 <= 0x3F)
              {
                v24 = *(v15 - 8) + 64;
                v14 = type metadata accessor for Published<NSNumber>();
                updated = v14;
                if (v12 <= 0x3F)
                {
                  v25 = *(v14 - 8) + 64;
                  updated = swift_updateClassMetadata2();
                  if (!updated)
                  {
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return updated;
}

uint64_t type metadata accessor for Published<HMMultiState>()
{
  v4 = lazy cache variable for type metadata for Published<HMMultiState>;
  if (!lazy cache variable for type metadata for Published<HMMultiState>)
  {
    type metadata accessor for HMMultiState();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<HMMultiState>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for HMMultiState()
{
  v4 = lazy cache variable for type metadata for HMMultiState;
  if (!lazy cache variable for type metadata for HMMultiState)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HMMultiState);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<HMRegionStatus>()
{
  v4 = lazy cache variable for type metadata for Published<HMRegionStatus>;
  if (!lazy cache variable for type metadata for Published<HMRegionStatus>)
  {
    type metadata accessor for HMRegionStatus();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<HMRegionStatus>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for HMRegionStatus()
{
  v4 = lazy cache variable for type metadata for HMRegionStatus;
  if (!lazy cache variable for type metadata for HMRegionStatus)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HMRegionStatus);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<[NSNumber]>()
{
  v4 = lazy cache variable for type metadata for Published<[NSNumber]>;
  if (!lazy cache variable for type metadata for Published<[NSNumber]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<[NSNumber]>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<HMOcclusionResult>()
{
  v4 = lazy cache variable for type metadata for Published<HMOcclusionResult>;
  if (!lazy cache variable for type metadata for Published<HMOcclusionResult>)
  {
    type metadata accessor for HMOcclusionResult();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<HMOcclusionResult>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for HMOcclusionResult()
{
  v4 = lazy cache variable for type metadata for HMOcclusionResult;
  if (!lazy cache variable for type metadata for HMOcclusionResult)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HMOcclusionResult);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<[HKAudiogramSample]>()
{
  v4 = lazy cache variable for type metadata for Published<[HKAudiogramSample]>;
  if (!lazy cache variable for type metadata for Published<[HKAudiogramSample]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17HKAudiogramSampleCGMd, &_sSaySo17HKAudiogramSampleCGMR);
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<[HKAudiogramSample]>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<NSNumber>()
{
  v4 = lazy cache variable for type metadata for Published<NSNumber>;
  if (!lazy cache variable for type metadata for Published<NSNumber>)
  {
    type metadata accessor for NSNumber();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<NSNumber>);
      return v1;
    }
  }

  return v4;
}

unint64_t type metadata accessor for NSNumber()
{
  v2 = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSNumber);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for Published<AADevice>()
{
  v4 = lazy cache variable for type metadata for Published<AADevice>;
  if (!lazy cache variable for type metadata for Published<AADevice>)
  {
    type metadata accessor for AADevice();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<AADevice>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AADevice()
{
  v1 = type metadata singleton initialization cache for AADevice;
  if (!type metadata singleton initialization cache for AADevice)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata accessor for AADeviceProperty<AADevice, Date?>()
{
  v4 = lazy cache variable for type metadata for AADeviceProperty<AADevice, Date?>;
  if (!lazy cache variable for type metadata for AADeviceProperty<AADevice, Date?>)
  {
    type metadata accessor for AADevice();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    lazy protocol witness table accessor for type AADevice and conformance AADevice();
    lazy protocol witness table accessor for type Date? and conformance <A> A?();
    v3 = type metadata accessor for AADeviceProperty();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for AADeviceProperty<AADevice, Date?>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata completion function for AADevice()
{
  v11 = type metadata accessor for AADeviceProperty<AADevice, Date?>();
  updated = v11;
  if (v0 <= 0x3F)
  {
    v13 = *(v11 - 8) + 64;
    v1 = type metadata accessor for Published<AAFeatureCapability>();
    updated = v1;
    if (v2 <= 0x3F)
    {
      v10 = *(v1 - 8);
      v3 = type metadata accessor for Published<AADBatteryInfoVM>();
      updated = v3;
      if (v4 <= 0x3F)
      {
        v14 = *(v3 - 8) + 64;
        v9 = type metadata accessor for Published<AADevicePlacementMode>();
        updated = v9;
        if (v5 <= 0x3F)
        {
          v15 = *(v9 - 8) + 64;
          v8 = type metadata accessor for Published<AAPlacement>();
          updated = v8;
          if (v6 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            updated = swift_updateClassMetadata2();
            if (!updated)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return updated;
}

unint64_t lazy protocol witness table accessor for type AADevice and conformance AADevice()
{
  v2 = lazy protocol witness table cache variable for type AADevice and conformance AADevice;
  if (!lazy protocol witness table cache variable for type AADevice and conformance AADevice)
  {
    type metadata accessor for AADevice();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AADevice and conformance AADevice);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AADevice and conformance AADevice;
  if (!lazy protocol witness table cache variable for type AADevice and conformance AADevice)
  {
    type metadata accessor for AADevice();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AADevice and conformance AADevice);
    return WitnessTable;
  }

  return v2;
}

unint64_t instantiation function for generic protocol witness table for AADevice(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AADevice and conformance AADevice();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Date? and conformance <A> A?()
{
  v2 = lazy protocol witness table cache variable for type Date? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Date? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    lazy protocol witness table accessor for type Date and conformance Date();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Date? and conformance <A> A?);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  v2 = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Date and conformance Date);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata instantiation function for AADeviceProperty(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  return swift_cvw_allocateGenericValueMetadataWithLayoutString();
}

uint64_t type metadata completion function for AADeviceProperty(uint64_t a1)
{
  v1 = *(a1 + 24);
  v7 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for HeadphonePropertyWrapperPublisher();
    v7 = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      v7 = type metadata accessor for ObservableObjectPublisher?();
      if (v4 <= 0x3F)
      {
        v7 = type metadata accessor for PartialKeyPath<AADeviceModel>();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v7;
}

uint64_t type metadata instantiation function for HeadphonePropertyWrapperPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for ObservableObjectPublisher?()
{
  v4 = lazy cache variable for type metadata for ObservableObjectPublisher?;
  if (!lazy cache variable for type metadata for ObservableObjectPublisher?)
  {
    type metadata accessor for ObservableObjectPublisher();
    v3 = type metadata accessor for Optional();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for ObservableObjectPublisher?);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for PartialKeyPath<AADeviceModel>()
{
  v4 = lazy cache variable for type metadata for PartialKeyPath<AADeviceModel>;
  if (!lazy cache variable for type metadata for PartialKeyPath<AADeviceModel>)
  {
    v3 = type metadata accessor for PartialKeyPath();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for PartialKeyPath<AADeviceModel>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<AADBatteryInfoVM>()
{
  v4 = lazy cache variable for type metadata for Published<AADBatteryInfoVM>;
  if (!lazy cache variable for type metadata for Published<AADBatteryInfoVM>)
  {
    type metadata accessor for AADBatteryInfoVM();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<AADBatteryInfoVM>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AADBatteryInfoVM()
{
  v1 = type metadata singleton initialization cache for AADBatteryInfoVM;
  if (!type metadata singleton initialization cache for AADBatteryInfoVM)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for AADBatteryInfoVM()
{
  v2 = type metadata accessor for Published<AABattery>();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t type metadata accessor for Published<AABattery>()
{
  v4 = lazy cache variable for type metadata for Published<AABattery>;
  if (!lazy cache variable for type metadata for Published<AABattery>)
  {
    type metadata accessor for AABattery();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<AABattery>);
      return v1;
    }
  }

  return v4;
}

unint64_t type metadata accessor for AABattery()
{
  v2 = lazy cache variable for type metadata for AABattery;
  if (!lazy cache variable for type metadata for AABattery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for AABattery);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for Published<AAFeatureCapability>()
{
  v4 = lazy cache variable for type metadata for Published<AAFeatureCapability>;
  if (!lazy cache variable for type metadata for Published<AAFeatureCapability>)
  {
    type metadata accessor for AAFeatureCapability();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<AAFeatureCapability>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AAFeatureCapability()
{
  v4 = lazy cache variable for type metadata for AAFeatureCapability;
  if (!lazy cache variable for type metadata for AAFeatureCapability)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAFeatureCapability);
      return v1;
    }
  }

  return v4;
}

uint64_t static Headphone_Manager.shared.getter()
{
  v0 = Headphone_Manager.shared.unsafeMutableAddressor();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t *Headphone_Manager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static Headphone_Manager.shared;
}

id one-time initialization function for shared()
{
  type metadata accessor for Headphone_Manager();
  result = Headphone_Manager.__allocating_init()();
  static Headphone_Manager.shared = result;
  return result;
}

{
  type metadata accessor for HeadphoneDataProvider();
  result = HeadphoneDataProvider.__allocating_init()();
  static HeadphoneDataProvider.shared = result;
  return result;
}

char *Headphone_Manager.init()()
{
  v109 = 0;
  v130 = 0;
  v66 = 0;
  v67 = type metadata accessor for Logger();
  v68 = *(v67 - 8);
  v69 = v68;
  v1 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67 - 8);
  v70 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  v71 = *(v100 - 8);
  v96 = v71;
  v72 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v100 - 8);
  v99 = &v26 - v72;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMd, &_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMR);
  v73 = *(v94 - 8);
  v91 = v73;
  v74 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v109);
  v93 = &v26 - v74;
  v3 = *(*(type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency() - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v79 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v78 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v77 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v0;
  v81 = v0;
  v80 = OBJC_IVAR___HPMHeadphoneManager_dispatchQueue;
  v75 = type metadata accessor for OS_dispatch_queue();
  v76 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneManager", 0x1AuLL, 1);
  default argument 1 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(v79);
  *&v81[v80] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_unknownObjectWeakInit();
  v83 = v130;
  v82 = OBJC_IVAR___HPMHeadphoneManager_cbDiscovery;
  type metadata accessor for CBDiscovery();
  *&v83[v82] = CBDiscovery.__allocating_init()();
  v85 = v130;
  v84 = OBJC_IVAR___HPMHeadphoneManager_controller;
  type metadata accessor for CBController();
  *&v85[v84] = CBController.__allocating_init()();
  v87 = v130;
  v86 = OBJC_IVAR___HPMHeadphoneManager_connection;
  type metadata accessor for CBConnection();
  *&v87[v86] = CBConnection.__allocating_init()();
  v89 = v130;
  v88 = OBJC_IVAR___HPMHeadphoneManager_deviceManager;
  type metadata accessor for AADeviceManager();
  v9 = AADeviceManager.__allocating_init()();
  v10 = v109;
  *&v89[v88] = v9;
  *&v130[OBJC_IVAR___HPMHeadphoneManager____lazy_storage___hmsClient] = v10;
  *&v130[OBJC_IVAR___HPMHeadphoneManager_audioAccessoryToken] = -1;
  *&v130[OBJC_IVAR___HPMHeadphoneManager____lazy_storage___cbUserController] = v10;
  v92 = &v130[OBJC_IVAR___HPMHeadphoneManager__connectedRecords];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So14HMDeviceRecordCtMd, &_sSS_So14HMDeviceRecordCtMR);
  v90 = _allocateUninitializedArray<A>(_:)();
  type metadata accessor for HMDeviceRecord();
  v106 = MEMORY[0x1E69E6158];
  v105 = MEMORY[0x1E69E6168];
  v11 = Dictionary.init(dictionaryLiteral:)();
  property wrapper backing initializer of Headphone_Manager.connectedRecords(v11, v93);
  (*(v91 + 32))(v92, v93, v94);
  swift_unknownObjectWeakInit();
  v97 = &v130[OBJC_IVAR___HPMHeadphoneManager__connectedHeadphones];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16HeadphoneManager0A6DeviceCtMd, &_sSS_16HeadphoneManager0A6DeviceCtMR);
  v95 = _allocateUninitializedArray<A>(_:)();
  v104 = type metadata accessor for HeadphoneDevice();
  v12 = Dictionary.init(dictionaryLiteral:)();
  property wrapper backing initializer of Headphone_Manager.connectedHeadphones(v12, v99);
  v102 = *(v96 + 32);
  v101 = v96 + 32;
  v102(v97, v99, v100);
  v98 = &v130[OBJC_IVAR___HPMHeadphoneManager__pairedHeadphones];
  _allocateUninitializedArray<A>(_:)();
  v13 = Dictionary.init(dictionaryLiteral:)();
  property wrapper backing initializer of Headphone_Manager.pairedHeadphones(v13, v99);
  v102(v98, v99, v100);
  v108 = v130;
  v107 = OBJC_IVAR___HPMHeadphoneManager_pendingConnectedHeadphones;
  _allocateUninitializedArray<A>(_:)();
  *&v108[v107] = Dictionary.init(dictionaryLiteral:)();
  v110 = v130;
  v14 = type metadata accessor for Headphone_Manager();
  v129.receiver = v110;
  v129.super_class = v14;
  v130 = objc_msgSendSuper2(&v129, sel_init);
  v127 = &type metadata for HeadphoneFeatures;
  v128 = lazy protocol witness table accessor for type HeadphoneFeatures and conformance HeadphoneFeatures();
  v126 = 0;
  v111 = &v126;
  v112 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v111);
  if (v112)
  {
    v15 = v70;
    v16 = Logger.shared.unsafeMutableAddressor();
    (*(v69 + 16))(v15, v16, v67);
    v64 = Logger.logObject.getter();
    v61 = v64;
    v63 = static os_log_type_t.default.getter();
    v62 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v65 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v64, v63))
    {
      v17 = v66;
      v52 = static UnsafeMutablePointer.allocate(capacity:)();
      v48 = v52;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v50 = 0;
      v53 = createStorage<A>(capacity:type:)(0);
      v51 = v53;
      v54 = createStorage<A>(capacity:type:)(v50);
      v116 = v52;
      v115 = v53;
      v114 = v54;
      v55 = 0;
      v56 = &v116;
      serialize(_:at:)(0, &v116);
      serialize(_:at:)(v55, v56);
      v113 = v65;
      v57 = &v26;
      MEMORY[0x1EEE9AC00](&v26);
      v58 = &v26 - 6;
      *(&v26 - 4) = v18;
      *(&v26 - 3) = &v115;
      *(&v26 - 2) = &v114;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v60 = v17;
      if (v17)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1D93D0000, v61, v62, "HeadphoneManager: BDM Feature enabled", v48, 2u);
        v46 = 0;
        destroyStorage<A>(_:count:)(v51, 0, v49);
        destroyStorage<A>(_:count:)(v54, v46, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v48, MEMORY[0x1E69E7508]);

        v47 = v60;
      }
    }

    else
    {

      v47 = v66;
    }

    v44 = v47;

    v19 = (*(v69 + 8))(v70, v67);
    v20 = *v130;
    v43 = MEMORY[0x1E69E7D40];
    (*((v20 & *MEMORY[0x1E69E7D40]) + 0x260))(v19);
    Headphone_Manager.configHearingModeClient()();
    (*((*v130 & *v43) + 0x268))();
    v45 = v44;
  }

  else
  {
    v45 = v66;
  }

  v40 = &v130[OBJC_IVAR___HPMHeadphoneManager_audioAccessoryToken];
  v41 = &v125;
  swift_beginAccess();
  v42 = *v40;
  v21 = swift_endAccess();
  if (v42 == -1)
  {
    v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.AudioAccessory.daemonStarted", 0x26uLL, 1);
    countAndFlagsBits = v22._countAndFlagsBits;
    object = v22._object;
    v32 = v130;
    v38 = static OS_dispatch_queue.main.getter();
    v30 = swift_allocObject();
    v28 = v30 + 16;
    v29 = v130;
    v23 = v130;
    swift_unknownObjectWeakInit();

    v123 = partial apply for closure #1 in Headphone_Manager.init();
    v124 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v119 = 1107296256;
    v120 = 0;
    v121 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    v122 = &block_descriptor_5;
    v37 = _Block_copy(&aBlock);

    v36 = String.utf8CString.getter();

    v33 = (v36 + 32);

    v34 = &v32[OBJC_IVAR___HPMHeadphoneManager_audioAccessoryToken];
    v35 = &v117;
    swift_beginAccess();
    notify_register_dispatch(v33, v34, v38, v37);
    swift_endAccess();
    swift_unknownObjectRelease();
    _Block_release(v37);
  }

  v27 = v130;
  v24 = v130;

  return v27;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  v2 = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for OS_dispatch_queue);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo17OS_dispatch_queueC8DispatchE10AttributesV_Tt0gq5(0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo17OS_dispatch_queueC8DispatchE10AttributesV_Tt0gq5(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      type metadata accessor for OS_dispatch_queue.Attributes();
      v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();

      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v1 = type metadata accessor for OS_dispatch_queue.Attributes();
    result = v4;
    v2 = v4 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  v2 = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E8090];
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

unint64_t type metadata accessor for CBDiscovery()
{
  v2 = lazy cache variable for type metadata for CBDiscovery;
  if (!lazy cache variable for type metadata for CBDiscovery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CBDiscovery);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for CBController()
{
  v2 = lazy cache variable for type metadata for CBController;
  if (!lazy cache variable for type metadata for CBController)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CBController);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for CBConnection()
{
  v2 = lazy cache variable for type metadata for CBConnection;
  if (!lazy cache variable for type metadata for CBConnection)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CBConnection);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for AADeviceManager()
{
  v2 = lazy cache variable for type metadata for AADeviceManager;
  if (!lazy cache variable for type metadata for AADeviceManager)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for AADeviceManager);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HMDeviceRecord()
{
  v2 = lazy cache variable for type metadata for HMDeviceRecord;
  if (!lazy cache variable for type metadata for HMDeviceRecord)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HMDeviceRecord);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t property wrapper backing initializer of Headphone_Manager.connectedRecords@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14HMDeviceRecordCGMd, &_sSDySSSo14HMDeviceRecordCGMR);
  Published.init(wrappedValue:)(v6, v2, a2);
}

uint64_t Published.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[1] = a3;
  v7 = a1;
  v8 = a2;
  v9 = a2;
  v5 = *(a2 - 8);
  v6 = a2 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v4[2] = v4 - v4[0];
  (*(v5 + 16))();
  Published.init(initialValue:)();
  return (*(v5 + 8))(v7, v8);
}

uint64_t property wrapper backing initializer of Headphone_Manager.connectedHeadphones@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
  Published.init(wrappedValue:)(v6, v2, a2);
}

uint64_t property wrapper backing initializer of Headphone_Manager.pairedHeadphones@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
  Published.init(wrappedValue:)(v6, v2, a2);
}

unint64_t lazy protocol witness table accessor for type HeadphoneFeatures and conformance HeadphoneFeatures()
{
  v2 = lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures;
  if (!lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures;
  if (!lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures;
  if (!lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneFeatures and conformance HeadphoneFeatures);
    return WitnessTable;
  }

  return v2;
}

const char *HeadphoneFeatures.feature.getter(char a1)
{
  if (!a1)
  {
    return "BetterDeviceManagement";
  }

  if (a1 == 1)
  {
    return "BatteryStatus";
  }

  return "HeadphoneInfrastructureReDesign";
}

uint64_t one-time initialization function for shared()
{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static Logger.shared);
  __swift_project_value_buffer(v1, static Logger.shared);
  v2 = Logger.subsystem.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 1);

  swift_endAccess();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("general", 7uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t Logger.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.shared);
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t one-time initialization function for subsystem()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.headphonemanager", 0x1AuLL, 1);
  result = v1._countAndFlagsBits;
  static Logger.subsystem = v1;
  return result;
}

__int128 *Logger.subsystem.unsafeMutableAddressor()
{
  if (one-time initialization token for subsystem != -1)
  {
    swift_once();
  }

  return &static Logger.subsystem;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  v2 = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

uint64_t createStorage<A>(capacity:type:)(uint64_t a1)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t destroyStorage<A>(_:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    return MEMORY[0x1DA730D30](v3, a3);
  }

  return result;
}

uint64_t Headphone_Manager.deviceManager.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneManager_deviceManager);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t *HeadphoneDataProvider.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static HeadphoneDataProvider.shared;
}

_BYTE *HeadphoneDataProvider.init()()
{
  v17 = 0;
  v8 = OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_kDefaultsStorageIdentifier;
  *v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.settings.headphone.HeadphoneManager.Mock", 0x32uLL, 1);
  *&v17[OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider____lazy_storage___defaultsObserver] = 1;
  v9 = OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_listeners;
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable();
  *&v17[v9] = Set.init()();
  v17[OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_shouldShowMock] = 0;
  v10 = OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_shouldShowMockKey;
  *&v17[v10] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("shouldShowMock", 0xEuLL, 1);
  v0 = &v17[OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_deviceFoundHandler];
  *v0 = 0;
  v0[1] = 0;
  v1 = &v17[OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_deviceLostHandler];
  *v1 = 0;
  v1[1] = 0;
  v11 = OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_dataObjects;
  *&v17[v11] = Dictionary.init()();
  v12 = OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_hexForReplayDeviceMap;
  type metadata accessor for NSMutableDictionary();
  *&v17[v12] = NSMutableDictionary.__allocating_init()();
  v16.receiver = v17;
  v16.super_class = type metadata accessor for HeadphoneDataProvider();
  v17 = objc_msgSendSuper2(&v16, sel_init);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.Perferences", 0x15uLL, 1);
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();

  if (has_internal_ui)
  {
    v15 = HeadphoneDataProvider.defaultsObserver.getter();
    if (v15)
    {
      v2 = v15;
      v5 = v15;
      MEMORY[0x1E69E5928](v15);
      outlined destroy of DefaultsObserver?(&v15);
      v6 = (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x68))();
      MEMORY[0x1E69E5920](v5);
      v14 = v6;
      swift_allocObject();
      v7 = v17;
      MEMORY[0x1E69E5928](v17);
      swift_unknownObjectWeakInit();
      MEMORY[0x1E69E5920](v7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo14NSUserDefaultsCs5NeverOGMd, &_s7Combine12AnyPublisherVySo14NSUserDefaultsCs5NeverOGMR);
      lazy protocol witness table accessor for type AnyPublisher<NSUserDefaults, Never> and conformance AnyPublisher<A, B>();
      Publisher<>.sink(receiveValue:)();

      outlined destroy of AnyPublisher<NSUserDefaults, Never>(&v14);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }

    else
    {
      outlined destroy of DefaultsObserver?(&v15);
    }
  }

  v4 = v17;
  MEMORY[0x1E69E5928](v17);
  MEMORY[0x1E69E5920](v17);
  return v4;
}

unint64_t lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable()
{
  v2 = lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable;
  if (!lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable)
  {
    type metadata accessor for AnyCancellable();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for NSMutableDictionary()
{
  v2 = lazy cache variable for type metadata for NSMutableDictionary;
  if (!lazy cache variable for type metadata for NSMutableDictionary)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSMutableDictionary);
    return ObjCClassMetadata;
  }

  return v2;
}

char *HeadphoneDataProvider.defaultsObserver.getter()
{
  v10 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider____lazy_storage___defaultsObserver);
  swift_beginAccess();
  v11 = *v10;
  outlined copy of DefaultsObserver??(*v10);
  swift_endAccess();
  if (v11 != 1)
  {
    return v11;
  }

  type metadata accessor for DefaultsObserver();
  type metadata accessor for NSUserDefaults();
  suiteName = *(v9 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_kDefaultsStorageIdentifier);

  NSUserDefaults.__allocating_init(suiteName:)(v1, suiteName);
  v7 = DefaultsObserver.__allocating_init(withDefault:)(v2);
  MEMORY[0x1E69E5928](v7);
  v6 = (v9 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider____lazy_storage___defaultsObserver);
  swift_beginAccess();
  v3 = *v6;
  *v6 = v7;
  outlined consume of DefaultsObserver??(v3);
  swift_endAccess();
  return v7;
}

uint64_t outlined copy of DefaultsObserver??(uint64_t result)
{
  if (result != 1)
  {
    return MEMORY[0x1E69E5928](result);
  }

  return result;
}

void __swiftcall NSUserDefaults.__allocating_init(suiteName:)(NSUserDefaults_optional *__return_ptr retstr, Swift::String_optional suiteName)
{
  countAndFlagsBits = suiteName.value._countAndFlagsBits;
  object = suiteName.value._object;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  @nonobjc NSUserDefaults.init(suiteName:)(countAndFlagsBits, object);
}

unint64_t type metadata accessor for NSUserDefaults()
{
  v2 = lazy cache variable for type metadata for NSUserDefaults;
  if (!lazy cache variable for type metadata for NSUserDefaults)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSUserDefaults);
    return ObjCClassMetadata;
  }

  return v2;
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = MEMORY[0x1DA730940](a1);

    v2 = [v7 initWithSuiteName_];
  }

  else
  {
    v2 = [v7 initWithSuiteName_];
  }

  v5 = v2;
  MEMORY[0x1E69E5920](v4);
  return v5;
}

char *DefaultsObserver.init(withDefault:)(uint64_t a1)
{
  v15 = 0;
  v13 = 0;
  v14 = a1;
  *OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver____lazy_storage___publisher = 0;
  MEMORY[0x1E69E5928](a1);
  if (a1)
  {
    v13 = a1;
    MEMORY[0x1E69E5928](a1);
    *&v15[OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_defaults] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo14NSUserDefaultsCs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySo14NSUserDefaultsCs5NeverOGMR);
    v3 = *&v15[OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_defaults];
    MEMORY[0x1E69E5928](v3);
    v12 = v3;
    *&v15[OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_updatesSubject] = CurrentValueSubject.__allocating_init(_:)();
    v11.receiver = v15;
    v11.super_class = type metadata accessor for DefaultsObserver();
    v7 = objc_msgSendSuper2(&v11, sel_init);
    MEMORY[0x1E69E5928](v7);
    v15 = v7;
    v6 = *&v7[OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_defaults];
    MEMORY[0x1E69E5928](v6);
    v4 = v15;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("root", 4uLL, 1)._countAndFlagsBits;
    v5 = MEMORY[0x1DA730940](countAndFlagsBits);

    type metadata accessor for NSKeyValueObservingOptions();
    _allocateUninitializedArray<A>(_:)();
    lazy protocol witness table accessor for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions();
    SetAlgebra<>.init(arrayLiteral:)();
    [v6 addObserver:v4 forKeyPath:v5 options:v10 context:0];
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v15);
    return v7;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    outlined destroy of AnyPublisher<NSUserDefaults, Never>?(&v15[OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver____lazy_storage___publisher]);
    type metadata accessor for DefaultsObserver();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for NSKeyValueObservingOptions()
{
  v4 = lazy cache variable for type metadata for NSKeyValueObservingOptions;
  if (!lazy cache variable for type metadata for NSKeyValueObservingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSKeyValueObservingOptions);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions()
{
  v2 = lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions;
  if (!lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions)
  {
    type metadata accessor for NSKeyValueObservingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions;
  if (!lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions)
  {
    type metadata accessor for NSKeyValueObservingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions;
  if (!lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions)
  {
    type metadata accessor for NSKeyValueObservingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions;
  if (!lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions)
  {
    type metadata accessor for NSKeyValueObservingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions;
  if (!lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions)
  {
    type metadata accessor for NSKeyValueObservingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions);
    return WitnessTable;
  }

  return v2;
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSKeyValueObservingOptions()
{
  lazy protocol witness table accessor for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  v2 = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt and conformance UInt);
    return WitnessTable;
  }

  return v2;
}

__C::NSKeyValueObservingOptions protocol witness for OptionSet.init(rawValue:) in conformance NSKeyValueObservingOptions@<X0>(Swift::UInt *a1@<X0>, __C::NSKeyValueObservingOptions *a2@<X8>)
{
  result.rawValue = NSKeyValueObservingOptions.init(rawValue:)(*a1).rawValue;
  a2->rawValue = result.rawValue;
  return result;
}

uint64_t outlined consume of DefaultsObserver??(uint64_t result)
{
  if (result != 1)
  {
    return MEMORY[0x1E69E5920](result);
  }

  return result;
}

uint64_t DefaultsObserver.publisher.getter()
{
  v8 = (v0 + OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver____lazy_storage___publisher);
  swift_beginAccess();
  v9 = *v8;

  swift_endAccess();
  if (v9)
  {
    return v9;
  }

  v3 = *(v7 + OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_updatesSubject);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo14NSUserDefaultsCs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySo14NSUserDefaultsCs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<NSUserDefaults, Never> and conformance CurrentValueSubject<A, B>();
  v5 = Publisher.eraseToAnyPublisher()();

  v4 = (v7 + OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver____lazy_storage___publisher);
  swift_beginAccess();
  v1 = *v4;
  *v4 = v5;

  swift_endAccess();
  return v5;
}

unint64_t lazy protocol witness table accessor for type CurrentValueSubject<NSUserDefaults, Never> and conformance CurrentValueSubject<A, B>()
{
  v2 = lazy protocol witness table cache variable for type CurrentValueSubject<NSUserDefaults, Never> and conformance CurrentValueSubject<A, B>;
  if (!lazy protocol witness table cache variable for type CurrentValueSubject<NSUserDefaults, Never> and conformance CurrentValueSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine19CurrentValueSubjectCySo14NSUserDefaultsCs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySo14NSUserDefaultsCs5NeverOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CurrentValueSubject<NSUserDefaults, Never> and conformance CurrentValueSubject<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AnyPublisher<NSUserDefaults, Never> and conformance AnyPublisher<A, B>()
{
  v2 = lazy protocol witness table cache variable for type AnyPublisher<NSUserDefaults, Never> and conformance AnyPublisher<A, B>;
  if (!lazy protocol witness table cache variable for type AnyPublisher<NSUserDefaults, Never> and conformance AnyPublisher<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVySo14NSUserDefaultsCs5NeverOGMd, &_s7Combine12AnyPublisherVySo14NSUserDefaultsCs5NeverOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AnyPublisher<NSUserDefaults, Never> and conformance AnyPublisher<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t closure #1 in HeadphoneDataProvider.init()(uint64_t a1, uint64_t a2)
{
  v104 = &v129;
  v108 = a2;
  v107 = a1;
  v106 = 0;
  v136 = 0;
  v135 = 0;
  v133 = 0;
  v128 = 0;
  v127 = 0;
  v105 = 0;
  v120 = 0;
  v109 = type metadata accessor for Logger();
  v110 = *(v109 - 8);
  v111 = v110;
  v2 = *(v110 + 64);
  v3 = MEMORY[0x1EEE9AC00](v107);
  v112 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *v3;
  v136 = v113;
  v114 = v5 + 16;
  v135 = v5 + 16;
  v115 = &v134;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v116 = Strong;
  swift_endAccess();
  if (!Strong)
  {
    return v105;
  }

  v103 = v116;
  v97 = v116;
  v133 = v116;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("root", 4uLL, 1);
  object = v6._object;
  v99 = MEMORY[0x1DA730940](v6._countAndFlagsBits);

  v101 = [v113 valueForKey_];
  v100 = v101;

  if (v101)
  {
    v96 = v100;
    v95 = v100;
    v94 = &v118;
    _bridgeAnyObjectToAny(_:)();
    outlined init with take of Any(v94, &v129);
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = 0uLL;
    v130 = 0;
    v131 = 0;
  }

  v7 = v104;
  v8 = v129;
  v104[3] = v104[1];
  v7[2] = v8;
  if (v132[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
    if (swift_dynamicCast())
    {
      v92 = v119;
    }

    else
    {
      v92 = 0;
    }

    v93 = v92;
  }

  else
  {
    outlined destroy of Any?(v132);
    v93 = 0;
  }

  v91 = v93;
  if (v93)
  {
    v90 = v91;
    v84 = v91;
    v120 = v91;
    v85 = MEMORY[0x1E69E6158];
    v86 = MEMORY[0x1E6969080];
    v87 = MEMORY[0x1E69E6168];
    v88 = Dictionary.values.getter();
    v89 = MEMORY[0x1DA7308A0](v88, v85, v86, v87);

    if (v89 >= 1)
    {
      HeadphoneDataProvider.shouldShowMock.setter(1);
      v9 = HeadphoneDataProvider.dataObjects.setter(v84);
      (*((*v97 & *MEMORY[0x1E69E7D40]) + 0x158))(v9);

      return v105;
    }
  }

  v10 = v112;
  v11 = Logger.shared.unsafeMutableAddressor();
  (*(v111 + 16))(v10, v11, v109);
  v12 = v113;
  v72 = 7;
  v73 = swift_allocObject();
  *(v73 + 16) = v113;
  v83 = Logger.logObject.getter();
  v66 = v83;
  v82 = static os_log_type_t.default.getter();
  v67 = v82;
  v68 = 17;
  v76 = swift_allocObject();
  v69 = v76;
  *(v76 + 16) = 64;
  v77 = swift_allocObject();
  v70 = v77;
  *(v77 + 16) = 8;
  v71 = 32;
  v13 = swift_allocObject();
  v14 = v73;
  v74 = v13;
  *(v13 + 16) = partial apply for implicit closure #1 in closure #1 in HeadphoneDataProvider.init();
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v74;
  v80 = v15;
  v75 = v15;
  *(v15 + 16) = _s2os18OSLogInterpolationV06appendC0_7privacyySo8NSObjectCyXA_AA0B7PrivacyVtFAGSgycfu_TA_4;
  *(v15 + 24) = v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v78 = _allocateUninitializedArray<A>(_:)();
  v79 = v17;

  v18 = v76;
  v19 = v79;
  *v79 = closure #1 in OSLogArguments.append(_:)partial apply;
  v19[1] = v18;

  v20 = v77;
  v21 = v79;
  v79[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v21[3] = v20;

  v22 = v79;
  v23 = v80;
  v79[4] = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_5;
  v22[5] = v23;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v83, v82))
  {
    v24 = v105;
    v59 = static UnsafeMutablePointer.allocate(capacity:)();
    v56 = v59;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v62 = 1;
    v60 = createStorage<A>(capacity:type:)(1);
    v58 = v60;
    v61 = createStorage<A>(capacity:type:)(0);
    v125 = v59;
    v124 = v60;
    v123 = v61;
    v63 = &v125;
    serialize(_:at:)(2, &v125);
    serialize(_:at:)(v62, v63);
    v121 = closure #1 in OSLogArguments.append(_:)partial apply;
    v122 = v69;
    closure #1 in osLogInternal(_:log:type:)(&v121, v63, &v124, &v123);
    v64 = v24;
    v65 = v24;
    if (v24)
    {
      v54 = 0;

      __break(1u);
    }

    else
    {
      v121 = closure #1 in OSLogArguments.append(_:)partial apply;
      v122 = v70;
      closure #1 in osLogInternal(_:log:type:)(&v121, &v125, &v124, &v123);
      v52 = 0;
      v53 = 0;
      v121 = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_5;
      v122 = v75;
      closure #1 in osLogInternal(_:log:type:)(&v121, &v125, &v124, &v123);
      v50 = 0;
      v51 = 0;
      _os_log_impl(&dword_1D93D0000, v66, v67, "HeadphoneManager-Replay: did not find data dict for notification %@", v56, 0xCu);
      destroyStorage<A>(_:count:)(v58, 1, v57);
      destroyStorage<A>(_:count:)(v61, 0, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v56, MEMORY[0x1E69E7508]);

      v55 = v50;
    }
  }

  else
  {
    v25 = v105;

    v55 = v25;
  }

  v47 = v55;

  (*(v111 + 8))(v112, v109);
  HeadphoneDataProvider.shouldShowMock.setter(0);
  v26 = Dictionary.init()();
  v27 = HeadphoneDataProvider.dataObjects.setter(v26);
  v48 = (*((*v97 & *MEMORY[0x1E69E7D40]) + 0x110))(v27);
  v49 = v28;
  if (!v48)
  {
    v44 = v47;
LABEL_29:
    v34 = v44;
    type metadata accessor for NSMutableDictionary();
    v31.super.super.isa = NSMutableDictionary.__allocating_init()().super.super.isa;
    HeadphoneDataProvider.hexForReplayDeviceMap.setter(v31.super.super.isa);

    return v34;
  }

  v45 = v48;
  v46 = v49;
  v29 = v47;
  v38 = v49;
  v40 = v48;
  v127 = v48;
  v128 = v49;
  v36 = (*((*v97 & *MEMORY[0x1E69E7D40]) + 0x140))();
  v35 = [v36 allValues];
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v126 = v37;

  v39 = &v33;
  MEMORY[0x1EEE9AC00](&v33);
  v41 = &v33 - 4;
  *(&v33 - 2) = v40;
  *(&v33 - 1) = v30;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  lazy protocol witness table accessor for type [Any] and conformance [A]();
  Sequence.forEach(_:)();
  v43 = v29;
  if (!v29)
  {

    outlined destroy of [Any](&v126);

    v44 = v43;
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D93D9B30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93D9B70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t *outlined destroy of Any?(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

_BYTE **closure #1 in OSLogArguments.append(_:)partial apply(_BYTE **a1, uint64_t a2, uint64_t a3)
{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a4();
  v8 = *a1;
  MEMORY[0x1E69E5928](v9);
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  if (v9)
  {
    MEMORY[0x1E69E5920](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (*a2)
  {
    MEMORY[0x1E69E5928](v9);
    *v5 = v9;
    result = MEMORY[0x1E69E5920](v9);
    *a2 = v5 + 1;
  }

  else
  {
    result = MEMORY[0x1E69E5920](v9);
  }

  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HeadphoneDataProvider.shouldShowMock.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_shouldShowMock);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t HeadphoneDataProvider.dataObjects.setter(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_dataObjects);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t HeadphoneDataProvider.deviceLostHandler.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_deviceLostHandler);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(*v2);
  swift_endAccess();
  return v3;
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t HeadphoneDataProvider.hexForReplayDeviceMap.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_hexForReplayDeviceMap);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t *outlined destroy of AnyPublisher<NSUserDefaults, Never>(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t HeadphoneDataProvider.deviceFoundHandler.setter(uint64_t a1, uint64_t a2)
{
  outlined copy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(a1);
  v6 = (v2 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_deviceFoundHandler);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(v3);
  swift_endAccess();
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(a1);
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t HeadphoneDataProvider.deviceLostHandler.setter(uint64_t a1, uint64_t a2)
{
  outlined copy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(a1);
  v6 = (v2 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_deviceLostHandler);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(v3);
  swift_endAccess();
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(a1);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

Swift::Void __swiftcall Headphone_Manager.configHearingModeClient()()
{
  v57 = 0;
  type metadata accessor for HMServiceClient();
  v0 = HMServiceClient.__allocating_init()();
  v19 = MEMORY[0x1E69E7D40];
  v1 = (*((*v15 & *MEMORY[0x1E69E7D40]) + 0x158))(v0);
  v8 = (*((*v15 & *v19) + 0x150))(v1);
  v6 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  v55 = partial apply for closure #1 in Headphone_Manager.configHearingModeClient();
  v56 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = 0;
  v53 = thunk for @escaping @callee_guaranteed () -> ();
  v54 = &block_descriptor_2;
  v7 = _Block_copy(&aBlock);

  [v8 setInterruptionHandler_];
  _Block_release(v7);
  v2 = MEMORY[0x1E69E5920](v8);
  v11 = (*((*v15 & *v19) + 0x150))(v2);
  v9 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  v48 = partial apply for closure #2 in Headphone_Manager.configHearingModeClient();
  v49 = v9;
  v43 = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = 0;
  v46 = thunk for @escaping @callee_guaranteed () -> ();
  v47 = &block_descriptor_4;
  v10 = _Block_copy(&v43);

  [v11 setInvalidationHandler_];
  _Block_release(v10);
  v3 = MEMORY[0x1E69E5920](v11);
  v14 = (*((*v15 & *v19) + 0x150))(v3);
  v12 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  v41 = partial apply for closure #3 in Headphone_Manager.configHearingModeClient();
  v42 = v12;
  v36 = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = 0;
  v39 = thunk for @escaping @callee_guaranteed (@guaranteed [HKAudiogramSample], @guaranteed [HKAudiogramSample], @guaranteed Error?) -> ();
  v40 = &block_descriptor_8;
  v13 = _Block_copy(&v36);

  [v14 setAudiogramsAvailableHandler_];
  _Block_release(v13);
  v4 = MEMORY[0x1E69E5920](v14);
  v18 = (*((*v15 & *v19) + 0x150))(v4);
  v16 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  v34 = partial apply for closure #4 in Headphone_Manager.configHearingModeClient();
  v35 = v16;
  v29 = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = 0;
  v32 = thunk for @escaping @callee_guaranteed (@guaranteed HMDeviceRecord) -> ();
  v33 = &block_descriptor_12;
  v17 = _Block_copy(&v29);

  [v18 setDeviceRecordChangedHandler_];
  _Block_release(v17);
  v5 = MEMORY[0x1E69E5920](v18);
  v21 = (*((*v15 & *v19) + 0x150))(v5);
  v27 = closure #5 in Headphone_Manager.configHearingModeClient();
  v28 = 0;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = 0;
  v25 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v26 = &block_descriptor_15;
  v20 = _Block_copy(&v22);
  [v21 activateWithCompletion_];
  _Block_release(v20);
  MEMORY[0x1E69E5920](v21);
}

id Headphone_Manager.hmsClient.getter()
{
  v7 = (v0 + OBJC_IVAR___HPMHeadphoneManager____lazy_storage___hmsClient);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x1E69E5928](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  type metadata accessor for HMServiceClient();
  v4 = HMServiceClient.__allocating_init()();
  MEMORY[0x1E69E5928](v4);
  v3 = (v6 + OBJC_IVAR___HPMHeadphoneManager____lazy_storage___hmsClient);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return v4;
}

unint64_t type metadata accessor for HMServiceClient()
{
  v2 = lazy cache variable for type metadata for HMServiceClient;
  if (!lazy cache variable for type metadata for HMServiceClient)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HMServiceClient);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

Swift::Void __swiftcall Headphone_Manager.configCBUserController()()
{
  v21 = closure #1 in Headphone_Manager.configCBUserController();
  v25 = closure #2 in Headphone_Manager.configCBUserController();
  v43 = 0;
  v17 = 0;
  v10 = (*(*(type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v9 - v10;
  v11 = (*(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v15 = &v9 - v11;
  v1 = type metadata accessor for DispatchQoS();
  v12 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v14 = &v9 - v12;
  v43 = v0;
  v2 = *v0;
  v24 = MEMORY[0x1E69E7D40];
  v19 = (*((v2 & *MEMORY[0x1E69E7D40]) + 0x180))();
  type metadata accessor for OS_dispatch_queue();
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.headphoneSettings.firmwareSeeding", 0x2BuLL, 1);
  default argument 1 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(v16);
  v3 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4 = v20;
  v18 = v3;
  [v19 setDispatchQueue_];
  MEMORY[0x1E69E5920](v18);
  v5 = MEMORY[0x1E69E5920](v19);
  v6 = (*((*v4 & *v24) + 0x180))(v5);
  v7 = v20;
  v23 = v6;
  v41 = v21;
  v42 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v37 = 1107296256;
  v38 = 0;
  v39 = thunk for @escaping @callee_guaranteed () -> ();
  v40 = &block_descriptor_48;
  v22 = _Block_copy(&aBlock);
  [v23 setInterruptionHandler_];
  _Block_release(v22);
  v8 = MEMORY[0x1E69E5920](v23);
  v28 = (*((*v7 & *v24) + 0x180))(v8);
  v34 = v25;
  v35 = 0;
  v29 = MEMORY[0x1E69E9820];
  v30 = v26;
  v31 = 0;
  v32 = thunk for @escaping @callee_guaranteed () -> ();
  v33 = &block_descriptor_51;
  v27 = _Block_copy(&v29);
  [v28 setInvalidationHandler_];
  _Block_release(v27);
  MEMORY[0x1E69E5920](v28);
}

id Headphone_Manager.cbUserController.getter()
{
  v7 = (v0 + OBJC_IVAR___HPMHeadphoneManager____lazy_storage___cbUserController);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x1E69E5928](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  type metadata accessor for CBUserController();
  v4 = CBUserController.__allocating_init()();
  MEMORY[0x1E69E5928](v4);
  v3 = (v6 + OBJC_IVAR___HPMHeadphoneManager____lazy_storage___cbUserController);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return v4;
}

unint64_t type metadata accessor for CBUserController()
{
  v2 = lazy cache variable for type metadata for CBUserController;
  if (!lazy cache variable for type metadata for CBUserController)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CBUserController);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t Headphone_Manager.topLevelUIHandler.setter()
{
  swift_unknownObjectRetain();
  Headphone_Manager._topLevelUIHandler.setter();
  v3 = HeadphoneDataProvider.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v0 = *v3;
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3);
  v1 = swift_endAccess();
  (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x158))(v1);
  MEMORY[0x1E69E5920](v4);
  return swift_unknownObjectRelease();
}

uint64_t Headphone_Manager._topLevelUIHandler.setter()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall HeadphoneDataProvider.provideDeviceForDiscoveryHandler()()
{
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v35 = 0;
  v36 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x140))();
  v45 = v36;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.Perferences", 0x15uLL, 1)._object;
  v38 = String.utf8CString.getter();

  v37 = v38 + 32;

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();

  if (has_internal_ui)
  {
    v32 = (*((*v34 & *MEMORY[0x1E69E7D40]) + 0xF8))();
    v33 = v1;
    if (v32)
    {
      v30 = v32;
      v31 = v33;
      v2 = v35;
      v21 = v33;
      v22 = v32;
      v43 = v32;
      v44 = v33;
      v42 = HeadphoneDataProvider.dataObjects.getter();
      v23 = &v14;
      MEMORY[0x1EEE9AC00](&v14);
      v24 = v11;
      v12 = closure #1 in HeadphoneDataProvider.provideDeviceForDiscoveryHandler();
      v13 = 0;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16HeadphoneManager10ReplayDataCtMd, &_sSS_16HeadphoneManager10ReplayDataCtMR);
      lazy protocol witness table accessor for type [String : Data] and conformance [A : B]();
      v3 = Sequence.compactMap<A>(_:)();
      v27 = v2;
      v28 = v3;
      v15 = v3;
      outlined destroy of [String : Data](&v42);
      v41 = v15;
      v4 = v34;
      v5 = v36;

      v16 = &v14;
      MEMORY[0x1EEE9AC00](&v14);
      v11[0] = v6;
      v11[1] = v7;
      v12 = v22;
      v13 = v21;
      v17 = v10;
      MEMORY[0x1EEE9AC00](v10);
      v18 = v9;
      v9[2] = partial apply for closure #2 in HeadphoneDataProvider.provideDeviceForDiscoveryHandler();
      v9[3] = v8;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS_16HeadphoneManager10ReplayDataCtGMd, &_sSaySS_16HeadphoneManager10ReplayDataCtGMR);
      lazy protocol witness table accessor for type [(String, ReplayData)] and conformance [A]();
      Sequence.forEach(_:)();
      v20 = 0;

      outlined destroy of [(String, ReplayData)](&v41);

      v29 = v20;
    }

    else
    {
      v29 = v35;
    }
  }

  else
  {
    v29 = v35;
  }
}

uint64_t HeadphoneDataProvider.hexForReplayDeviceMap.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_hexForReplayDeviceMap);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDataProvider.deviceFoundHandler.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_deviceFoundHandler);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(*v2);
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDataProvider.dataObjects.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_dataObjects);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t type metadata accessor for ReplayData()
{
  v1 = type metadata singleton initialization cache for ReplayData;
  if (!type metadata singleton initialization cache for ReplayData)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for ReplayData()
{
  v2 = type metadata accessor for UUID?();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t type metadata accessor for UUID?()
{
  v4 = lazy cache variable for type metadata for UUID?;
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v3 = type metadata accessor for Optional();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for UUID?);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1D93DBF08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DBF48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC028()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC068()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC100()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC180(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v3 = type metadata accessor for Optional();
  return (*(*(v3 - 8) + 48))(a1, a2);
}

uint64_t sub_1D93DC1E8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 56))(a1, a2);
}

uint64_t sub_1D93DC2D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC318()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC358()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC398()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC580()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC5C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC658()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC698()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC730()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC770()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC808()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC848()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC8E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC920()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC9B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DC9F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DCA90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DCAD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DCCDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DCD1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DCDB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DCDF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DCE8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DCECC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DCFAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DCFEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD0CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD10C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD1FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD23C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD31C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD35C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD3F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD434()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD540()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD580()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD618()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD658()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD7D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD818()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD8B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD8F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD988()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DD9C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DDA60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DDAA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DDAE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DDBD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DDC10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DDCA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DDCE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DDD80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DDDC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DDEE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DDF20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DDF60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DDFA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE078()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE0B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE17C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE1BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE1FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE23C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE31C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE35C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE3F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE434()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE4CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE50C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE6B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE798()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE7D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE870()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE8B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE8F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE988()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DE9C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DEA08()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1D93DEAA8()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1D93DEB48()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1D93DED60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DEDA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DEE38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DEE78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DEF10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DEF50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DEFE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF028()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF0C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF100()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF318()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF358()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF3F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF430()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF4C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF508()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF548()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF588()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF620()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF660()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF6F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF738()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF7D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF810()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF8A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DF8E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DFA58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DFA98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DFB30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DFB70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DFC08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DFC48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DFCE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DFD20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DFDB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DFDF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DFE38()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D93DFE78()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D93DFF10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DFF50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93DFFE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0028()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E00C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0100()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0198()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E01D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0270()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E02B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0348()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0388()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0420()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0460()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E04F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0538()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0578()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E05B8()
{
  v5 = *(v0 + 16);
  v3 = *(*(v0 + 24) - 8);
  v1 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1D93E068C()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D93E072C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E076C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0804()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0844()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E08DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E091C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E095C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E099C()
{
  v5 = *(v0 + 16);
  v3 = *(*(v0 + 24) - 8);
  v1 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1D93E0A70()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D93E0AB8()
{
  v4 = v0[2];
  v3 = v0[3];
  v1 = v0[7];
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_1D93E0B08()
{
  v4 = v0[2];
  v3 = v0[3];
  v1 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1D93E0BB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0BF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0C88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0CC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0D60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0DA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0E38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0E78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0F10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0F50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0F90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E0FD0()
{
  v5 = *(v0 + 16);
  v3 = *(*(v0 + 24) - 8);
  v1 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1D93E10A4()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D93E10EC()
{
  v4 = v0[2];
  v3 = v0[3];
  v1 = v0[7];
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_1D93E1194()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E11D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E126C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E12AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E1344()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E1384()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E141C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E145C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E149C()
{
  v13 = *(v0 + 2);
  v12 = *(v0 + 3);
  v6 = *(v12 - 8);
  v1 = *(v6 + 80);
  v7 = (v1 + 64) & ~v1;
  v2 = *(v6 + 64);
  v8 = (v7 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 8 + v1) & ~v1;
  v11 = (v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + 7);

  v10 = *(v6 + 8);
  v10(&v0[v7], v12);
  MEMORY[0x1E69E5920](*&v0[v8]);
  v10(&v0[v9], v12);
  v4 = *&v0[v11];
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_1D93E1624(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  return 40;
}

void *sub_1D93E1650(uint64_t *a1, void *__dst)
{
  v4 = *a1;
  v3 = a1[1];
  return memcpy(__dst, a1, 0x28uLL);
}

uint64_t sub_1D93E1694(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  return 40;
}

void *sub_1D93E16C0(uint64_t *a1, void *__dst)
{
  v4 = *a1;
  v3 = a1[1];
  return memcpy(__dst, a1, 0x28uLL);
}

uint64_t sub_1D93E1704(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  if (a2 == *(*(v6 - 8) + 84))
  {
    return (*(*(v6 - 8) + 48))(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 68)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 68));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1D93E181C(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (a3 == *(*(v4 - 8) + 84))
  {
    return (*(*(v4 - 8) + 56))(result, a2, a2, v4);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(result + *(a4 + 68)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D93E19AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E19EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E1A84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E1AC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E1B5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E1B9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E1CBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E1CFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E1D94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E1DD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E1E6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E1EAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E1F44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E1F84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2064()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E20A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E213C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E217C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E225C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E229C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2334()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2374()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2454()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2494()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E252C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E256C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2604()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2644()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E26DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E271C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E27E4()
{
  v1 = v0[3];

  v2 = v0[4];

  MEMORY[0x1E69E5920](v0[5]);
  return swift_deallocObject();
}

uint64_t sub_1D93E28DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E291C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E295C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  MEMORY[0x1E69E5920](v0[6]);
  return swift_deallocObject();
}

uint64_t sub_1D93E2A54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2A94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2B2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2B6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2BAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2C84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2CC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2D5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2D9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2DDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2EBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2EFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2F94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E2FD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E306C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E30AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3184()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E31C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E325C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E329C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3334()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3374()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E33B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E35A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E35E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3624()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1D93E371C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E375C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E383C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E387C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E38BC()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1D93E3914()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1D93E3A0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3A4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3AE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3B24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3C04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3C44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3CDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3D1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3DB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3DF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3E34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3ECC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3F0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3FA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E3FE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E40C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E4104()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E419C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E41DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E4274()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E42B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E434C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E438C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E446C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E44AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E4584()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E45C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E46A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E46E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E47BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E47FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E48DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E491C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E49F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E4A34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E4B14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E4B54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E4C2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E4C6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E4D44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E4D84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E4DC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E4F24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E4F64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5044()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5084()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E51A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E51E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E52C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5304()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E53E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5424()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5544()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5584()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5664()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E56A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E56E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D93E572C()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D93E5774()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D93E57BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E57FC()
{
  v5 = *(v0 + 16);
  v3 = *(*(v0 + 24) - 8);
  v1 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1D93E5928()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5968()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5A00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5A40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5AD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5B18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5BB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5BF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5C30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5C70()
{
  v5 = *(v0 + 16);
  v3 = *(*(v0 + 24) - 8);
  v1 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1D93E5D44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5DE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5E24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5EBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5EFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5F94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E5FD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E606C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E60AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E6144()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E6184()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E61C4()
{
  v4 = v0[2];
  v3 = v0[3];
  v1 = v0[6];
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_1D93E6214()
{
  v4 = v0[2];
  v3 = v0[3];
  v1 = v0[6];
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_1D93E62BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E62FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E6394()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E63D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E646C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E64AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E6544()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E6624()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E6664()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E66FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E673C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E67D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E6814()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E6854()
{
  v11 = *(v0 + 2);
  v9 = *(v0 + 3);
  v5 = *(v9 - 8);
  v1 = *(v5 + 80);
  v6 = (v1 + 64) & ~v1;
  v7 = (v6 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 8 + v1) & ~v1;
  v2 = *(v0 + 6);
  swift_unknownObjectRelease();
  v3 = *(v0 + 7);

  v10 = *(v5 + 8);
  v10(&v0[v6], v9);
  MEMORY[0x1E69E5920](*&v0[v7]);
  v10(&v0[v8], v9);
  return swift_deallocObject();
}

uint64_t sub_1D93E69C0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  return 32;
}

__n128 sub_1D93E69EC(__n128 *a1, __n128 *a2)
{
  v4 = a1->n128_u64[0];
  v3 = a1->n128_u64[1];
  *a2 = *a1;
  result = a1[1];
  a2[1] = result;
  return result;
}

uint64_t sub_1D93E6A18(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  return 32;
}

__n128 sub_1D93E6A44(__n128 *a1, __n128 *a2)
{
  v4 = a1->n128_u64[0];
  v3 = a1->n128_u64[1];
  *a2 = *a1;
  result = a1[1];
  a2[1] = result;
  return result;
}

uint64_t sub_1D93E6A70(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  if (a2 == *(*(v6 - 8) + 84))
  {
    return (*(*(v6 - 8) + 48))(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 60)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 60));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1D93E6B88(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (a3 == *(*(v4 - 8) + 84))
  {
    return (*(*(v4 - 8) + 56))(result, a2, a2, v4);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(result + *(a4 + 60)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D93E6D18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E6D58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E6DF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E6E30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E6EC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E6F08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E7028()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E7068()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E7100()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E7140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E71D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E7218()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E72B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E72F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E7330()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E73C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E7408()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E7448()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E74E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E7520()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E75A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E763C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E767C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D93E76BC()
{
  v5 = *(v0 + 32);
  v3 = *(v5 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = v4 + *(v3 + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v5);
  return swift_deallocObject();
}

uint64_t sub_1D93E77A8()
{
  v10 = *(v0 + 32);
  type metadata accessor for Optional();
  v9 = type metadata accessor for Binding();
  v1 = *(*(v9 - 8) + 80);
  v8 = (v1 + 40) & ~v1;
  v7 = v8 + *(*(v9 - 8) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  v3 = *(v0 + v8);

  v4 = *(v0 + v8 + 8);

  v11 = *(v9 + 32);
  v12 = *(v10 - 8);
  if (!(*(v12 + 48))(v0 + v8 + v11, 1))
  {
    (*(v12 + 8))(v6 + v8 + v11, v10);
  }

  return swift_deallocObject();
}

uint64_t AABatteryState.cbBatteryState.getter(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 2;
    case 2:
      return 1;
    case 3:
      return 4;
    case 4:
      return 5;
    default:
      return 0;
  }
}

uint64_t HeadphoneDevice.updateBatteryInfo(aaDevice:cbDevice:)(void *a1, void *a2)
{
  v305 = a1;
  v304 = a2;
  v288 = implicit closure #3 in HeadphoneDevice.updateBatteryInfo(aaDevice:cbDevice:);
  v289 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v290 = partial apply for implicit closure #4 in HeadphoneDevice.updateBatteryInfo(aaDevice:cbDevice:);
  v291 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v292 = closure #1 in OSLogArguments.append(_:)partial apply;
  v293 = closure #1 in OSLogArguments.append(_:)partial apply;
  v294 = closure #1 in OSLogArguments.append(_:)partial apply;
  v295 = closure #1 in OSLogArguments.append(_:)partial apply;
  v296 = closure #1 in OSLogArguments.append(_:)partial apply;
  v297 = closure #1 in OSLogArguments.append(_:)partial apply;
  v298 = implicit closure #2 in HeadphoneDevice.updateBatteryInfo(aaDevice:cbDevice:);
  v299 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v300 = partial apply for closure #1 in OSLogArguments.append(_:);
  v301 = closure #1 in OSLogArguments.append(_:)partial apply;
  v302 = partial apply for closure #1 in OSLogArguments.append(_:);
  v380 = 0;
  v379 = 0;
  v378 = 0;
  v377 = 0;
  v303 = 0;
  v352 = 0;
  v306 = type metadata accessor for Logger();
  v307 = *(v306 - 8);
  v308 = v306 - 8;
  v309 = (*(v307 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v305);
  v310 = &v116 - v309;
  v311 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v312 = &v116 - v311;
  v380 = v5;
  v379 = v6;
  v378 = v2;
  v377 = 1;
  v313 = &v374;
  v375 = &type metadata for AudioAccessoryFeatures;
  v376 = lazy protocol witness table accessor for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures();
  v374 = 0;
  v314 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v313);
  v286 = (v314 & 1) != 0;
  if (v314)
  {
    v285 = [v305 batteryInfo];
    if (v285)
    {
      v284 = v285;
      v7 = v312;
      v264 = v285;
      v352 = v285;
      v8 = Logger.shared.unsafeMutableAddressor();
      (*(v307 + 16))(v7, v8, v306);
      MEMORY[0x1E69E5928](v264);
      v270 = 7;
      v271 = swift_allocObject();
      *(v271 + 16) = v264;
      v282 = Logger.logObject.getter();
      v283 = static os_log_type_t.info.getter();
      v267 = 17;
      v273 = swift_allocObject();
      v266 = 32;
      *(v273 + 16) = 32;
      v274 = swift_allocObject();
      v268 = 8;
      *(v274 + 16) = 8;
      v269 = 32;
      v9 = swift_allocObject();
      v265 = v9;
      *(v9 + 16) = v288;
      *(v9 + 24) = 0;
      v10 = swift_allocObject();
      v11 = v265;
      v275 = v10;
      *(v10 + 16) = v289;
      *(v10 + 24) = v11;
      v276 = swift_allocObject();
      *(v276 + 16) = v266;
      v277 = swift_allocObject();
      *(v277 + 16) = v268;
      v12 = swift_allocObject();
      v13 = v271;
      v272 = v12;
      *(v12 + 16) = v290;
      *(v12 + 24) = v13;
      v14 = swift_allocObject();
      v15 = v272;
      v279 = v14;
      *(v14 + 16) = v291;
      *(v14 + 24) = v15;
      v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v278 = _allocateUninitializedArray<A>(_:)();
      v280 = v16;

      v17 = v273;
      v18 = v280;
      *v280 = v292;
      v18[1] = v17;

      v19 = v274;
      v20 = v280;
      v280[2] = v293;
      v20[3] = v19;

      v21 = v275;
      v22 = v280;
      v280[4] = v294;
      v22[5] = v21;

      v23 = v276;
      v24 = v280;
      v280[6] = v295;
      v24[7] = v23;

      v25 = v277;
      v26 = v280;
      v280[8] = v296;
      v26[9] = v25;

      v27 = v279;
      v28 = v280;
      v280[10] = v297;
      v28[11] = v27;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v282, v283))
      {
        v29 = v303;
        v256 = static UnsafeMutablePointer.allocate(capacity:)();
        v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v257 = createStorage<A>(capacity:type:)(0);
        v258 = createStorage<A>(capacity:type:)(2);
        v260 = &v319;
        v319 = v256;
        v261 = &v318;
        v318 = v257;
        v262 = &v317;
        v317 = v258;
        v259 = 2;
        serialize(_:at:)(2, &v319);
        serialize(_:at:)(v259, v260);
        v315 = v292;
        v316 = v273;
        closure #1 in osLogInternal(_:log:type:)(&v315, v260, v261, v262);
        v263 = v29;
        if (v29)
        {

          __break(1u);
        }

        else
        {
          v315 = v293;
          v316 = v274;
          closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
          v254 = 0;
          v315 = v294;
          v316 = v275;
          closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
          v253 = 0;
          v315 = v295;
          v316 = v276;
          closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
          v252 = 0;
          v315 = v296;
          v316 = v277;
          closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
          v251 = 0;
          v315 = v297;
          v316 = v279;
          closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
          _os_log_impl(&dword_1D93D0000, v282, v283, "HeadphoneDevice: %s Updating battery info %s", v256, 0x16u);
          destroyStorage<A>(_:count:)(v257, 0, v255);
          destroyStorage<A>(_:count:)(v258, 2, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v256, MEMORY[0x1E69E7508]);
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v282);
      (*(v307 + 8))(v312, v306);
      v30 = [v264 batteryLeft];
      v250 = v30;
      if (v30)
      {
        v249 = v250;
        v245 = v250;
        [v250 level];
        v246 = v31;
        v30 = MEMORY[0x1E69E5920](v245);
        v247 = v246;
        v248 = 0;
      }

      else
      {
        v247 = 0.0;
        v248 = 1;
      }

      v350 = v247;
      v351 = v248 & 1;
      if (v248)
      {
        v244 = 0.0;
      }

      else
      {
        v244 = v350;
      }

      v32 = v287;
      v33 = MEMORY[0x1DA730BC0](v30, v244);
      v240 = &v349;
      v349 = v33;
      v34 = *((*v32 & *MEMORY[0x1E69E7D40]) + 0x940);
      v242 = &v348;
      v241 = v34();
      ==? infix<A>(_:_:)(v35, v240, MEMORY[0x1E69E6448], MEMORY[0x1E69E6470]);
      v241();
      v36 = [v264 batteryRight];
      v243 = v36;
      if (v36)
      {
        v239 = v243;
        v235 = v243;
        [v243 level];
        v236 = v37;
        v36 = MEMORY[0x1E69E5920](v235);
        v237 = v236;
        v238 = 0;
      }

      else
      {
        v237 = 0.0;
        v238 = 1;
      }

      v346 = v237;
      v347 = v238 & 1;
      if (v238)
      {
        v234 = 0.0;
      }

      else
      {
        v234 = v346;
      }

      v38 = v287;
      v39 = MEMORY[0x1DA730BC0](v36, v234);
      v230 = &v345;
      v345 = v39;
      v40 = *((*v38 & *MEMORY[0x1E69E7D40]) + 0x9A0);
      v232 = &v344;
      v231 = v40();
      ==? infix<A>(_:_:)(v41, v230, MEMORY[0x1E69E6448], MEMORY[0x1E69E6470]);
      v231();
      v42 = [v264 batteryCase];
      v233 = v42;
      if (v42)
      {
        v229 = v233;
        v225 = v233;
        [v233 level];
        v226 = v43;
        v42 = MEMORY[0x1E69E5920](v225);
        v227 = v226;
        v228 = 0;
      }

      else
      {
        v227 = 0.0;
        v228 = 1;
      }

      v342 = v227;
      v343 = v228 & 1;
      if (v228)
      {
        v224 = 0.0;
      }

      else
      {
        v224 = v342;
      }

      v44 = v287;
      v45 = MEMORY[0x1DA730BC0](v42, v224);
      v220 = &v341;
      v341 = v45;
      v46 = *((*v44 & *MEMORY[0x1E69E7D40]) + 0xA00);
      v222 = &v340;
      v221 = v46();
      ==? infix<A>(_:_:)(v47, v220, MEMORY[0x1E69E6448], MEMORY[0x1E69E6470]);
      v221();
      v48 = [v264 batteryMain];
      v223 = v48;
      if (v48)
      {
        v219 = v223;
        v215 = v223;
        [v223 level];
        v216 = v49;
        v48 = MEMORY[0x1E69E5920](v215);
        v217 = v216;
        v218 = 0;
      }

      else
      {
        v217 = 0.0;
        v218 = 1;
      }

      v338 = v217;
      v339 = v218 & 1;
      if (v218)
      {
        v214 = 0.0;
      }

      else
      {
        v214 = v338;
      }

      v50 = v287;
      v51 = MEMORY[0x1DA730BC0](v48, v214);
      v210 = &v337;
      v337 = v51;
      v52 = *((*v50 & *MEMORY[0x1E69E7D40]) + 0x8E0);
      v212 = &v336;
      v211 = v52();
      ==? infix<A>(_:_:)(v53, v210, MEMORY[0x1E69E6448], MEMORY[0x1E69E6470]);
      v211();
      v213 = [v264 batteryLeft];
      if (v213)
      {
        v209 = v213;
        v205 = v213;
        v206 = [v213 state];
        MEMORY[0x1E69E5920](v205);
        v207 = AABatteryState.cbBatteryState.getter(v206);
        v208 = 0;
      }

      else
      {
        v207 = 0;
        v208 = 1;
      }

      v334 = v207;
      v335 = v208 & 1;
      if (v208)
      {
        v204 = 0;
      }

      else
      {
        v204 = v334;
      }

      v197 = &v333;
      v333 = v204;
      v54 = *((*v287 & *MEMORY[0x1E69E7D40]) + 0x970);
      v202 = &v332;
      v201 = v54();
      v199 = v55;
      v198 = type metadata accessor for CBBatteryState();
      v200 = lazy protocol witness table accessor for type CBBatteryState and conformance CBBatteryState();
      ==? infix<A>(_:_:)(v199, v197, v198, v200);
      v201();
      v203 = [v264 batteryRight];
      if (v203)
      {
        v196 = v203;
        v192 = v203;
        v193 = [v203 state];
        MEMORY[0x1E69E5920](v192);
        v194 = AABatteryState.cbBatteryState.getter(v193);
        v195 = 0;
      }

      else
      {
        v194 = 0;
        v195 = 1;
      }

      v330 = v194;
      v331 = v195 & 1;
      if (v195)
      {
        v191 = 0;
      }

      else
      {
        v191 = v330;
      }

      v187 = &v329;
      v329 = v191;
      v56 = *((*v287 & *MEMORY[0x1E69E7D40]) + 0x9D0);
      v189 = &v328;
      v188 = v56();
      ==? infix<A>(_:_:)(v57, v187, v198, v200);
      v188();
      v190 = [v264 batteryCase];
      if (v190)
      {
        v186 = v190;
        v182 = v190;
        v183 = [v190 state];
        MEMORY[0x1E69E5920](v182);
        v184 = AABatteryState.cbBatteryState.getter(v183);
        v185 = 0;
      }

      else
      {
        v184 = 0;
        v185 = 1;
      }

      v326 = v184;
      v327 = v185 & 1;
      if (v185)
      {
        v181 = 0;
      }

      else
      {
        v181 = v326;
      }

      v177 = &v325;
      v325 = v181;
      v58 = *((*v287 & *MEMORY[0x1E69E7D40]) + 0xA30);
      v179 = &v324;
      v178 = v58();
      ==? infix<A>(_:_:)(v59, v177, v198, v200);
      v178();
      v180 = [v264 batteryMain];
      if (v180)
      {
        v176 = v180;
        v172 = v180;
        v173 = [v180 state];
        MEMORY[0x1E69E5920](v172);
        v174 = AABatteryState.cbBatteryState.getter(v173);
        v175 = 0;
      }

      else
      {
        v174 = 0;
        v175 = 1;
      }

      v322 = v174;
      v323 = v175 & 1;
      if (v175)
      {
        v171 = 0;
      }

      else
      {
        v171 = v322;
      }

      v168 = &v321;
      v321 = v171;
      v60 = *((*v287 & *MEMORY[0x1E69E7D40]) + 0x910);
      v170 = &v320;
      v169 = v60();
      ==? infix<A>(_:_:)(v61, v168, v198, v200);
      v169();
      return MEMORY[0x1E69E5920](v264);
    }

    else
    {
      v63 = v310;
      v64 = Logger.shared.unsafeMutableAddressor();
      (*(v307 + 16))(v63, v64, v306);
      v166 = Logger.logObject.getter();
      v167 = static os_log_type_t.error.getter();
      v156 = 17;
      v158 = 7;
      v160 = swift_allocObject();
      *(v160 + 16) = 32;
      v161 = swift_allocObject();
      *(v161 + 16) = 8;
      v157 = 32;
      v65 = swift_allocObject();
      v159 = v65;
      *(v65 + 16) = v298;
      *(v65 + 24) = 0;
      v66 = swift_allocObject();
      v67 = v159;
      v163 = v66;
      *(v66 + 16) = v299;
      *(v66 + 24) = v67;
      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v162 = _allocateUninitializedArray<A>(_:)();
      v164 = v68;

      v69 = v160;
      v70 = v164;
      *v164 = v300;
      v70[1] = v69;

      v71 = v161;
      v72 = v164;
      v164[2] = v301;
      v72[3] = v71;

      v73 = v163;
      v74 = v164;
      v164[4] = v302;
      v74[5] = v73;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v166, v167))
      {
        v75 = v303;
        v149 = static UnsafeMutablePointer.allocate(capacity:)();
        v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v150 = createStorage<A>(capacity:type:)(0);
        v151 = createStorage<A>(capacity:type:)(1);
        v152 = &v357;
        v357 = v149;
        v153 = &v356;
        v356 = v150;
        v154 = &v355;
        v355 = v151;
        serialize(_:at:)(2, &v357);
        serialize(_:at:)(1, v152);
        v353 = v300;
        v354 = v160;
        closure #1 in osLogInternal(_:log:type:)(&v353, v152, v153, v154);
        v155 = v75;
        if (v75)
        {

          __break(1u);
        }

        else
        {
          v353 = v301;
          v354 = v161;
          closure #1 in osLogInternal(_:log:type:)(&v353, &v357, &v356, &v355);
          v147 = 0;
          v353 = v302;
          v354 = v163;
          closure #1 in osLogInternal(_:log:type:)(&v353, &v357, &v356, &v355);
          _os_log_impl(&dword_1D93D0000, v166, v167, "HeadphoneDevice: %s No new battery info!", v149, 0xCu);
          destroyStorage<A>(_:count:)(v150, 0, v148);
          destroyStorage<A>(_:count:)(v151, 1, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v149, MEMORY[0x1E69E7508]);
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v166);
      return (*(v307 + 8))(v310, v306);
    }
  }

  else
  {
    v76 = v287;
    [v304 batteryLevelLeft];
    v116 = &v373;
    v373 = v77;
    v78 = *v76;
    v140 = MEMORY[0x1E69E7D40];
    v79 = *((v78 & *MEMORY[0x1E69E7D40]) + 0x940);
    v118 = &v372;
    v80 = v79();
    v81 = v287;
    v117 = v80;
    v125 = MEMORY[0x1E69E6448];
    v126 = MEMORY[0x1E69E6470];
    ==? infix<A>(_:_:)(v82, v116, MEMORY[0x1E69E6448], MEMORY[0x1E69E6470]);
    v144 = 0;
    v117();
    [v304 batteryLevelRight];
    v119 = &v371;
    v371 = v83;
    v84 = *((*v81 & *v140) + 0x9A0);
    v121 = &v370;
    v85 = v84();
    v86 = v287;
    v120 = v85;
    ==? infix<A>(_:_:)(v87, v119, v125, v126);
    v120();
    [v304 batteryLevelCase];
    v122 = &v369;
    v369 = v88;
    v89 = *((*v86 & *v140) + 0xA00);
    v124 = &v368;
    v90 = v89();
    v91 = v287;
    v123 = v90;
    ==? infix<A>(_:_:)(v92, v122, v125, v126);
    v123();
    [v304 batteryLevelMain];
    v127 = &v367;
    v367 = v93;
    v94 = *((*v91 & *v140) + 0x8E0);
    v129 = &v366;
    v95 = v94();
    v96 = v287;
    v128 = v95;
    ==? infix<A>(_:_:)(v97, v127, v125, v126);
    v128();
    v98 = [v304 batteryStateLeft];
    v130 = &v365;
    v365 = v98;
    v99 = *((*v96 & *v140) + 0x970);
    v133 = &v364;
    v100 = v99();
    v101 = v287;
    v132 = v100;
    v131 = v102;
    v141 = type metadata accessor for CBBatteryState();
    v142 = lazy protocol witness table accessor for type CBBatteryState and conformance CBBatteryState();
    ==? infix<A>(_:_:)(v131, v130, v141, v142);
    v132();
    v103 = [v304 batteryStateRight];
    v134 = &v363;
    v363 = v103;
    v104 = *((*v101 & *v140) + 0x9D0);
    v136 = &v362;
    v105 = v104();
    v106 = v287;
    v135 = v105;
    ==? infix<A>(_:_:)(v107, v134, v141, v142);
    v135();
    v108 = [v304 batteryStateCase];
    v137 = &v361;
    v361 = v108;
    v109 = *((*v106 & *v140) + 0xA30);
    v139 = &v360;
    v110 = v109();
    v111 = v287;
    v138 = v110;
    ==? infix<A>(_:_:)(v112, v137, v141, v142);
    v138();
    v113 = [v304 batteryStateMain];
    v143 = &v359;
    v359 = v113;
    v114 = *((*v111 & *v140) + 0x910);
    v146 = &v358;
    v145 = v114();
    ==? infix<A>(_:_:)(v115, v143, v141, v142);
    return v145();
  }
}

unint64_t lazy protocol witness table accessor for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures()
{
  v2 = lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures;
  if (!lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures;
  if (!lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures;
  if (!lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBBatteryState and conformance CBBatteryState()
{
  v2 = lazy protocol witness table cache variable for type CBBatteryState and conformance CBBatteryState;
  if (!lazy protocol witness table cache variable for type CBBatteryState and conformance CBBatteryState)
  {
    type metadata accessor for CBBatteryState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBBatteryState and conformance CBBatteryState);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBBatteryState and conformance CBBatteryState;
  if (!lazy protocol witness table cache variable for type CBBatteryState and conformance CBBatteryState)
  {
    type metadata accessor for CBBatteryState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBBatteryState and conformance CBBatteryState);
    return WitnessTable;
  }

  return v2;
}

uint64_t implicit closure #4 in HeadphoneDevice.updateBatteryInfo(aaDevice:cbDevice:)(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBBatteryState@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBBatteryState.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBBatteryState@<X0>(_BYTE *a1@<X8>)
{
  result = CBBatteryState.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x1E69E6A18];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

uint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        _sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = _StringGuts._allocateForDeconstruct()(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *_sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, uint64_t a2)
{
  v7 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  v3 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(inited, 1);
  *v4 = 0;
  specialized _finalizeUninitializedArray<A>(_:)();
  specialized Array.append<A>(contentsOf:)(v3);

  v8 = specialized Array.count.getter(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        specialized UnsafeMutablePointer.initialize(from:count:)(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      specialized UnsafeMutablePointer.initialize(from:count:)(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined destroy of String.UTF8View(v17);
  return v10;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v20 = specialized Array.count.getter(a1);
  v2 = specialized Array.count.getter(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!specialized Array._getCount()(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    specialized Array._endMutation()();
    return;
  }

LABEL_33:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];

    return v3;
  }
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x1DA730A50](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5()
{
  v1 = MEMORY[0x1E69E7CC0];

  return v1;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v4, v6);
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply()
{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

void *closure #1 in OSLogArguments.append(_:)partial apply(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t outlined destroy of String.UTF8View(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t CBDevice.replayDevice.getter()
{
  v9 = 0;
  v13 = v0;
  MEMORY[0x1E69E5928](v0);
  key = HPS_CBDevice_Addition_Key.unsafeMutableAddressor();
  swift_beginAccess();
  v6 = objc_getAssociatedObject(v0, key);
  swift_endAccess();
  swift_unknownObjectRelease();
  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined init with take of Any(v7, &v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    type metadata accessor for ReplayData();
    if (swift_dynamicCast())
    {
      v4 = v8;
    }

    else
    {
      v4 = 0;
    }

    v3 = v4;
  }

  else
  {
    outlined destroy of Any?(v12);
    v3 = 0;
  }

  if (v3)
  {
    v9 = v3;
    return v3;
  }

  else
  {
    type metadata accessor for ReplayData();
    return ReplayData.__allocating_init()();
  }
}

__n128 outlined init with take of Any(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t CBDevice.replayDevice.setter(void *a1)
{
  MEMORY[0x1E69E5928](v1);
  key = HPS_CBDevice_Addition_Key.unsafeMutableAddressor();

  swift_beginAccess();
  objc_setAssociatedObject(v1, key, a1, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t (*CBDevice.replayDevice.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = CBDevice.replayDevice.getter();
  return CBDevice.replayDevice.modify;
}

uint64_t CBDevice.replayDevice.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if ((a2 & 1) == 0)
  {
    return CBDevice.replayDevice.setter(*a1);
  }

  v5 = *a1;

  CBDevice.replayDevice.setter(v5);
  v4 = *a1;
}

uint64_t Data.init(hexString:)(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  v13 = a1;
  v14 = a2;

  v10[4] = a1;
  v10[5] = a2;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("0x", 2uLL, 1);
  String.hasPrefix(_:)(v2);

  lazy protocol witness table accessor for type String and conformance String();
  Collection.dropFirst(_:)();
  v10[0] = v10[6];
  v10[1] = v10[7];
  v10[2] = v10[8];
  v10[3] = v10[9];
  lazy protocol witness table accessor for type Substring and conformance Substring();
  v6 = Sequence.compactMap<A>(_:)();
  outlined destroy of Substring(v10);
  v9 = v6;
  v5 = String.count.getter();
  MEMORY[0x1DA730490](v5 / 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV4data_s5UInt8VSg4bytetMd, &_s10Foundation4DataV4data_s5UInt8VSg4bytetMR);
  lazy protocol witness table accessor for type [UInt8] and conformance [A]();
  Sequence.reduce<A>(into:_:)();
  outlined destroy of [UInt8](&v9);
  v15 = v11;
  v16 = v12;
  v4 = v11;
  outlined copy of Data._Representation(v11, v12);

  outlined destroy of Data(&v15);
  return v4;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}