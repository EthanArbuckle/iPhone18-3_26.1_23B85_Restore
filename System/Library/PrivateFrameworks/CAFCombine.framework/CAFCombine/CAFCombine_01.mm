id CAFCarObservable.__deallocating_deinit()
{
  v1 = static os_log_type_t.debug.getter();
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = static OS_os_log.default;
  if (os_log_type_enabled(static OS_os_log.default, v1))
  {
    v3 = OUTLINED_FUNCTION_16();
    v6 = OUTLINED_FUNCTION_17();
    *v3 = 136315650;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x74696E696564, 0xE600000000000000, &v6);
    *(v3 + 12) = 2048;
    *(v3 + 14) = 390;
    *(v3 + 22) = 2080;
    *(v3 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024230A4C0, &v6);
    _os_log_impl(&dword_2421B0000, v2, v1, "%s: %ld  %s", v3, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  v4 = type metadata accessor for CAFCarObservable();
  v7.receiver = v0;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id CAFCarObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFCarObservable@<X0>(void *a1@<X8>)
{
  result = CAFCarObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFCarObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFCarObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFCarObservable.carDidUpdate(_:receivedAllValues:)(void *a1, char a2)
{
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  MEMORY[0x245D0A530](0xD000000000000030, 0x800000024230A500);
  if (a2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x3D72616320202ELL, 0xE700000000000000);
  v6 = [a1 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  MEMORY[0x245D0A530](v7, v9);

  v10 = static os_log_type_t.debug.getter();
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if (os_log_type_enabled(static OS_os_log.default, v10))
  {
    v11 = OUTLINED_FUNCTION_16();
    v16 = OUTLINED_FUNCTION_17();
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x800000024230A540, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 24) = OUTLINED_FUNCTION_25_0(398, v16);
    OUTLINED_FUNCTION_31_0(&dword_2421B0000, v12, v13, "%s: %ld  %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  [a1 receivedAllValues];
  OUTLINED_FUNCTION_30_0();

  return CAFCarObservable.receivedAllValues.setter();
}

void CAFCarObservable.carDidUpdateAccessories(_:)(void *a1)
{
  _StringGuts.grow(_:)(46);

  v2 = [a1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x245D0A530](v3, v5);

  v6 = static os_log_type_t.debug.getter();
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if (os_log_type_enabled(static OS_os_log.default, v6))
  {
    v7 = OUTLINED_FUNCTION_16();
    v147 = OUTLINED_FUNCTION_17();
    *v7 = 136315650;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x800000024230A5A0, &v147);
    *(v7 + 12) = 2048;
    *(v7 + 24) = OUTLINED_FUNCTION_25_0(403, v147);
    OUTLINED_FUNCTION_31_0(&dword_2421B0000, v8, v9, "%s: %ld  %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  v10 = *MEMORY[0x277CF8060];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v11, v12, a1))
  {
    v13 = [a1 audioSettings];
    CAFCarObservable.audioSettings.setter();
  }

  v14 = *MEMORY[0x277CF8068];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v15, v16, a1))
  {
    v17 = [a1 automakerApps];
    CAFCarObservable.automakerApps.setter();
  }

  v18 = *MEMORY[0x277CF8070];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v19, v20, a1))
  {
    v21 = [a1 automakerExteriorCamera];
    CAFCarObservable.automakerExteriorCamera.setter();
  }

  v22 = *MEMORY[0x277CF8078];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v23, v24, a1))
  {
    v25 = [a1 automakerInputStreams];
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFAutomakerInputStreams, 0x277CF8310);
    OUTLINED_FUNCTION_23_0();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_24_0();
    CAFCarObservable.automakerInputStreams.setter();
  }

  v26 = *MEMORY[0x277CF8080];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v27, v28, a1))
  {
    v29 = [a1 automakerNotificationHistory];
    CAFCarObservable.automakerNotificationHistory.setter();
  }

  v30 = *MEMORY[0x277CF8088];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v31, v32, a1))
  {
    v33 = [a1 automakerNotifications];
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFAutomakerNotifications, 0x277CF8318);
    OUTLINED_FUNCTION_23_0();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_24_0();
    CAFCarObservable.automakerNotifications.setter();
  }

  v34 = *MEMORY[0x277CF8090];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v35, v36, a1))
  {
    v37 = [a1 automakerOverlays];
    CAFCarObservable.automakerOverlays.setter();
  }

  v38 = *MEMORY[0x277CF8098];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v39, v40, a1))
  {
    v41 = [a1 automakerRequestContent];
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFAutomakerRequestContent, 0x277CF8320);
    OUTLINED_FUNCTION_23_0();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_24_0();
    CAFCarObservable.automakerRequestContent.setter();
  }

  v42 = *MEMORY[0x277CF80A0];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v43, v44, a1))
  {
    v45 = [a1 automakerSettings];
    CAFCarObservable.automakerSettings.setter();
  }

  v46 = *MEMORY[0x277CF80A8];
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v47, v48, a1))
  {
    v49 = [a1 charging];
    CAFCarObservable.charging.setter();
  }

  v50 = *MEMORY[0x277CF80B0];
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v51, v52, a1))
  {
    v53 = [a1 climate];
    CAFCarObservable.climate.setter();
  }

  v54 = *MEMORY[0x277CF80B8];
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v55, v56, a1))
  {
    v57 = [a1 closure];
    CAFCarObservable.closure.setter();
  }

  v58 = *MEMORY[0x277CF80C0];
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v59, v60, a1))
  {
    v61 = [a1 driveState];
    CAFCarObservable.driveState.setter();
  }

  v62 = *MEMORY[0x277CF80C8];
  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v63, v64, a1))
  {
    v65 = [a1 driverAssistance];
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFDriverAssistance, 0x277CF8438);
    OUTLINED_FUNCTION_23_0();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_24_0();
    CAFCarObservable.driverAssistance.setter();
  }

  v66 = *MEMORY[0x277CF80D0];
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v67, v68, a1))
  {
    v69 = [a1 electricEngine];
    CAFCarObservable.electricEngine.setter();
  }

  v70 = *MEMORY[0x277CF80D8];
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v71, v72, a1))
  {
    v73 = [a1 environmentalConditions];
    CAFCarObservable.environmentalConditions.setter();
  }

  v74 = *MEMORY[0x277CF80E0];
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v75, v76, a1))
  {
    v77 = [a1 fuel];
    CAFCarObservable.fuel.setter();
  }

  v78 = *MEMORY[0x277CF80E8];
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v79, v80, a1))
  {
    v81 = [a1 highVoltageBattery];
    CAFCarObservable.highVoltageBattery.setter();
  }

  v82 = *MEMORY[0x277CF80F0];
  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v83, v84, a1))
  {
    v85 = [a1 indicators];
    CAFCarObservable.indicators.setter();
  }

  v86 = *MEMORY[0x277CF80F8];
  v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v87, v88, a1))
  {
    v89 = [a1 internalCombustionEngine];
    CAFCarObservable.internalCombustionEngine.setter();
  }

  v90 = *MEMORY[0x277CF8100];
  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v91, v92, a1))
  {
    v93 = [a1 lighting];
    CAFCarObservable.lighting.setter();
  }

  v94 = *MEMORY[0x277CF8108];
  v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v95, v96, a1))
  {
    v97 = [a1 media];
    CAFCarObservable.media.setter();
  }

  v98 = *MEMORY[0x277CF8110];
  v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v99, v100, a1))
  {
    v101 = [a1 navigation];
    CAFCarObservable.navigation.setter();
  }

  v102 = *MEMORY[0x277CF8118];
  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v103, v104, a1))
  {
    v105 = [a1 nowPlayingInformation];
    CAFCarObservable.nowPlayingInformation.setter();
  }

  v106 = *MEMORY[0x277CF8120];
  v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v107, v108, a1))
  {
    v109 = [a1 pairedDevices];
    CAFCarObservable.pairedDevices.setter();
  }

  v110 = *MEMORY[0x277CF8128];
  v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v111, v112, a1))
  {
    v113 = [a1 seat];
    CAFCarObservable.seat.setter();
  }

  v114 = *MEMORY[0x277CF8130];
  v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v115, v116, a1))
  {
    v117 = [a1 statusIndicators];
    CAFCarObservable.statusIndicators.setter();
  }

  v118 = *MEMORY[0x277CF8138];
  v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v119, v120, a1))
  {
    v121 = [a1 testingUseOnly];
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFTestingUseOnly, 0x277CF86D8);
    OUTLINED_FUNCTION_23_0();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_24_0();
    CAFCarObservable.testingUseOnly.setter();
  }

  v122 = *MEMORY[0x277CF8140];
  v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v123, v124, a1))
  {
    v125 = [a1 tire];
    CAFCarObservable.tire.setter();
  }

  v126 = *MEMORY[0x277CF8148];
  v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v127, v128, a1))
  {
    v129 = [a1 tripComputer];
    CAFCarObservable.tripComputer.setter();
  }

  v130 = *MEMORY[0x277CF8150];
  v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v131, v132, a1))
  {
    v133 = [a1 uiControl];
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUIControl, 0x277CF8748);
    OUTLINED_FUNCTION_23_0();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_24_0();
    CAFCarObservable.uiControl.setter();
  }

  v134 = *MEMORY[0x277CF8158];
  v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v135, v136, a1))
  {
    v137 = [a1 vehicleMotion];
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFVehicleMotion, 0x277CF8790);
    OUTLINED_FUNCTION_23_0();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_24_0();
    CAFCarObservable.vehicleMotion.setter();
  }

  v138 = *MEMORY[0x277CF8160];
  v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v139, v140, a1))
  {
    v141 = [a1 vehicleResources];
    CAFCarObservable.vehicleResources.setter();
  }

  v142 = *MEMORY[0x277CF8168];
  v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(v143, v144, a1))
  {
    v145 = [a1 vehicleUnits];
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFVehicleUnits, 0x277CF8798);
    OUTLINED_FUNCTION_23_0();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_30_0();

    CAFCarObservable.vehicleUnits.setter();
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
  }
}

id outlined bridged method (mbnn) of @objc CAFCar.registered(forAccessory:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x245D0A4C0]();

  v5 = [a3 registeredForAccessory_];

  return v5;
}

uint64_t type metadata accessor for CAFCarObservable()
{
  result = type metadata singleton initialization cache for CAFCarObservable;
  if (!type metadata singleton initialization cache for CAFCarObservable)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFCar and conformance CAFCar()
{
  result = lazy protocol witness table cache variable for type CAFCar and conformance CAFCar;
  if (!lazy protocol witness table cache variable for type CAFCar and conformance CAFCar)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFCar, 0x277CF8398);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFCar and conformance CAFCar);
  }

  return result;
}

uint64_t type metadata accessor for CAFVehicleUnits(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFCarObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFCarObservable and conformance CAFCarObservable(&lazy protocol witness table cache variable for type CAFCarObservable and conformance CAFCarObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCarObservable and conformance CAFCarObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFCarObservable();
    OUTLINED_FUNCTION_23_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for CAFCarObservable()
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    v70 = *(v0 - 8) + 64;
    type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFAudioSettings?>, &_sSo16CAFAudioSettingsCSgMd, &_sSo16CAFAudioSettingsCSgMR);
    if (v3 <= 0x3F)
    {
      v71 = *(v2 - 8) + 64;
      type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFAutomakerApps?>, &_sSo16CAFAutomakerAppsCSgMd, &_sSo16CAFAutomakerAppsCSgMR);
      if (v5 <= 0x3F)
      {
        v72 = *(v4 - 8) + 64;
        type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFAutomakerExteriorCamera?>, &_sSo26CAFAutomakerExteriorCameraCSgMd, &_sSo26CAFAutomakerExteriorCameraCSgMR);
        if (v7 <= 0x3F)
        {
          v73 = *(v6 - 8) + 64;
          type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFAutomakerInputStreams]>, &_sSaySo24CAFAutomakerInputStreamsCGMd, &_sSaySo24CAFAutomakerInputStreamsCGMR);
          if (v9 <= 0x3F)
          {
            v74 = *(v8 - 8) + 64;
            type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFAutomakerNotificationHistory?>, &_sSo31CAFAutomakerNotificationHistoryCSgMd, &_sSo31CAFAutomakerNotificationHistoryCSgMR);
            if (v11 <= 0x3F)
            {
              v75 = *(v10 - 8) + 64;
              type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFAutomakerNotifications]>, &_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR);
              if (v13 <= 0x3F)
              {
                v76 = *(v12 - 8) + 64;
                type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFAutomakerOverlays?>, &_sSo20CAFAutomakerOverlaysCSgMd, &_sSo20CAFAutomakerOverlaysCSgMR);
                if (v15 <= 0x3F)
                {
                  v77 = *(v14 - 8) + 64;
                  type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFAutomakerRequestContent]>, &_sSaySo26CAFAutomakerRequestContentCGMd, &_sSaySo26CAFAutomakerRequestContentCGMR);
                  if (v17 <= 0x3F)
                  {
                    v78 = *(v16 - 8) + 64;
                    type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFAutomakerSettings?>, &_sSo20CAFAutomakerSettingsCSgMd, &_sSo20CAFAutomakerSettingsCSgMR);
                    if (v19 <= 0x3F)
                    {
                      v79 = *(v18 - 8) + 64;
                      type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFCharging?>, &_sSo11CAFChargingCSgMd, &_sSo11CAFChargingCSgMR);
                      if (v21 <= 0x3F)
                      {
                        v80 = *(v20 - 8) + 64;
                        type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFClimate?>, &_sSo10CAFClimateCSgMd, &_sSo10CAFClimateCSgMR);
                        if (v23 <= 0x3F)
                        {
                          v81 = *(v22 - 8) + 64;
                          type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFClosure?>, &_sSo10CAFClosureCSgMd, &_sSo10CAFClosureCSgMR);
                          if (v25 <= 0x3F)
                          {
                            v82 = *(v24 - 8) + 64;
                            type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFDriveState?>, &_sSo13CAFDriveStateCSgMd, &_sSo13CAFDriveStateCSgMR);
                            if (v27 <= 0x3F)
                            {
                              v83 = *(v26 - 8) + 64;
                              type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFDriverAssistance]>, &_sSaySo19CAFDriverAssistanceCGMd, &_sSaySo19CAFDriverAssistanceCGMR);
                              if (v29 <= 0x3F)
                              {
                                v84 = *(v28 - 8) + 64;
                                type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFElectricEngine?>, &_sSo17CAFElectricEngineCSgMd, &_sSo17CAFElectricEngineCSgMR);
                                if (v31 <= 0x3F)
                                {
                                  v85 = *(v30 - 8) + 64;
                                  type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFEnvironmentalConditions?>, &_sSo26CAFEnvironmentalConditionsCSgMd, &_sSo26CAFEnvironmentalConditionsCSgMR);
                                  if (v33 <= 0x3F)
                                  {
                                    v86 = *(v32 - 8) + 64;
                                    type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFFuel?>, &_sSo7CAFFuelCSgMd, &_sSo7CAFFuelCSgMR);
                                    if (v35 <= 0x3F)
                                    {
                                      v87 = *(v34 - 8) + 64;
                                      type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFHighVoltageBattery?>, &_sSo21CAFHighVoltageBatteryCSgMd, &_sSo21CAFHighVoltageBatteryCSgMR);
                                      if (v37 <= 0x3F)
                                      {
                                        v88 = *(v36 - 8) + 64;
                                        type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFIndicators?>, &_sSo13CAFIndicatorsCSgMd, &_sSo13CAFIndicatorsCSgMR);
                                        if (v39 <= 0x3F)
                                        {
                                          v89 = *(v38 - 8) + 64;
                                          type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFInternalCombustionEngine?>, &_sSo27CAFInternalCombustionEngineCSgMd, &_sSo27CAFInternalCombustionEngineCSgMR);
                                          if (v41 <= 0x3F)
                                          {
                                            v90 = *(v40 - 8) + 64;
                                            type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFLighting?>, &_sSo11CAFLightingCSgMd, &_sSo11CAFLightingCSgMR);
                                            if (v43 <= 0x3F)
                                            {
                                              v91 = *(v42 - 8) + 64;
                                              type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFMedia?>, &_sSo8CAFMediaCSgMd, &_sSo8CAFMediaCSgMR);
                                              if (v45 <= 0x3F)
                                              {
                                                v92 = *(v44 - 8) + 64;
                                                type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFNavigation?>, &_sSo13CAFNavigationCSgMd, &_sSo13CAFNavigationCSgMR);
                                                if (v47 <= 0x3F)
                                                {
                                                  v93 = *(v46 - 8) + 64;
                                                  type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFNowPlayingInformation?>, &_sSo24CAFNowPlayingInformationCSgMd, &_sSo24CAFNowPlayingInformationCSgMR);
                                                  if (v49 <= 0x3F)
                                                  {
                                                    v94 = *(v48 - 8) + 64;
                                                    type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFPairedDevices?>, &_sSo16CAFPairedDevicesCSgMd, &_sSo16CAFPairedDevicesCSgMR);
                                                    if (v51 <= 0x3F)
                                                    {
                                                      v95 = *(v50 - 8) + 64;
                                                      type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFSeat?>, &_sSo7CAFSeatCSgMd, &_sSo7CAFSeatCSgMR);
                                                      if (v53 <= 0x3F)
                                                      {
                                                        v96 = *(v52 - 8) + 64;
                                                        type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFStatusIndicators?>, &_sSo19CAFStatusIndicatorsCSgMd, &_sSo19CAFStatusIndicatorsCSgMR);
                                                        if (v55 <= 0x3F)
                                                        {
                                                          v97 = *(v54 - 8) + 64;
                                                          type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFTestingUseOnly]>, &_sSaySo17CAFTestingUseOnlyCGMd, &_sSaySo17CAFTestingUseOnlyCGMR);
                                                          if (v57 <= 0x3F)
                                                          {
                                                            v98 = *(v56 - 8) + 64;
                                                            type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFTire?>, &_sSo7CAFTireCSgMd, &_sSo7CAFTireCSgMR);
                                                            if (v59 <= 0x3F)
                                                            {
                                                              v99 = *(v58 - 8) + 64;
                                                              type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFTripComputer?>, &_sSo15CAFTripComputerCSgMd, &_sSo15CAFTripComputerCSgMR);
                                                              if (v61 <= 0x3F)
                                                              {
                                                                v100 = *(v60 - 8) + 64;
                                                                type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFUIControl]>, &_sSaySo12CAFUIControlCGMd, &_sSaySo12CAFUIControlCGMR);
                                                                if (v63 <= 0x3F)
                                                                {
                                                                  v101 = *(v62 - 8) + 64;
                                                                  type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFVehicleMotion]>, &_sSaySo16CAFVehicleMotionCGMd, &_sSaySo16CAFVehicleMotionCGMR);
                                                                  if (v65 <= 0x3F)
                                                                  {
                                                                    v102 = *(v64 - 8) + 64;
                                                                    type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<CAFVehicleResources?>, &_sSo19CAFVehicleResourcesCSgMd, &_sSo19CAFVehicleResourcesCSgMR);
                                                                    if (v67 <= 0x3F)
                                                                    {
                                                                      v103 = *(v66 - 8) + 64;
                                                                      type metadata accessor for Published<CAFAudioSettings?>(319, &lazy cache variable for type metadata for Published<[CAFVehicleUnits]>, &_sSaySo15CAFVehicleUnitsCGMd, &_sSaySo15CAFVehicleUnitsCGMR);
                                                                      if (v69 <= 0x3F)
                                                                      {
                                                                        v104 = *(v68 - 8) + 64;
                                                                        swift_updateClassMetadata2();
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
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<Bool>()
{
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool>);
    }
  }
}

void type metadata accessor for Published<CAFAudioSettings?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_23_0();
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_5_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return Published.projectedValue.setter();
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return Published.init(initialValue:)();
}

uint64_t OUTLINED_FUNCTION_25_0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v4 + 14) = a1;
  *(v4 + 22) = 2080;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, &a2);
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t OUTLINED_FUNCTION_28_0()
{

  return static Published.subscript.setter();
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return static Published.subscript.getter();
}

void OUTLINED_FUNCTION_31_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_getKeyPath();
}

void CAFPositionManager.driverSeat.getter()
{
  OUTLINED_FUNCTION_13_1();
  v38 = v1;
  v2 = type metadata accessor for CAUVehicleLayoutKey();
  v3 = OUTLINED_FUNCTION_30(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_1();
  v10 = v9 - v8;
  CAFPositionManager.layoutKeys.getter();
  v12 = v11;
  v13 = [v0 car];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 rightHandDrive];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13CarAssetUtils19CAUVehicleLayoutKeyOGMd, &_ss23_ContiguousArrayStorageCy13CarAssetUtils19CAUVehicleLayoutKeyOGMR);
    v16 = *(v5 + 72);
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    v19 = v18;
    *(v18 + 16) = xmmword_2422F2490;
    v35 = v5;
    v22 = *(v5 + 104);
    v21 = v5 + 104;
    v20 = v22;
    v23 = MEMORY[0x277CF8838];
    v24 = v18 + v17;
    if (!v15)
    {
      v23 = MEMORY[0x277CF8810];
    }

    v20(v18 + v17, *v23, v2);
    v20(v24 + v16, *MEMORY[0x277CF87E8], v2);
    v25 = 0;
    v26 = *(v19 + 16);
    v27 = (v21 - 88);
    v36 = (v21 - 96);
    v39 = v12 + v17;
    v28 = v12;
    v37 = v26;
    while (v25 != v26)
    {
      v29 = v25 + 1;
      (*v27)(v10, v24 + v16 * v25, v2);
      v30 = v28;
      v31 = *(v28 + 16) + 1;
      v32 = v39;
      while (--v31)
      {
        lazy protocol witness table accessor for type CAUVehicleLayoutKey and conformance CAUVehicleLayoutKey();
        v32 += v16;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {

          v33 = v38;
          (*(v35 + 32))(v38, v10, v2);
          v34 = 0;
          goto LABEL_11;
        }
      }

      (*v36)(v10, v2);
      v25 = v29;
      v28 = v30;
      v26 = v37;
    }

    v34 = 1;
    v33 = v38;
LABEL_11:
    __swift_storeEnumTagSinglePayload(v33, v34, 1, v2);
    OUTLINED_FUNCTION_32();
  }

  else
  {
    __break(1u);
  }
}

void CAFPositionManager.services(for:includeSharedServices:requireSpecificServices:filter:)()
{
  OUTLINED_FUNCTION_13_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13CarAssetUtils19CAUVehicleLayoutKeyOGMd, &_ss23_ContiguousArrayStorageCy13CarAssetUtils19CAUVehicleLayoutKeyOGMR);
  v2 = type metadata accessor for CAUVehicleLayoutKey();
  OUTLINED_FUNCTION_30(v2);
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2422F24A0;
  (*(v4 + 16))(v8 + v7, v1, v2);
  CAFPositionManager.services(for:includeSharedServices:requireSpecificServices:filter:)();
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  OUTLINED_FUNCTION_32();
}

{
  OUTLINED_FUNCTION_13_1();
  v119 = v0;
  v2 = v1;
  v4 = v3;
  v103 = v5;
  v104 = v6;
  v8 = v7;
  v118 = type metadata accessor for CAUVehicleLayoutKey();
  v9 = OUTLINED_FUNCTION_30(v118);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v106 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v116 = &v103 - v15;
  v16 = *(v8 + 16);
  v108 = v2;
  v117 = v4;
  v120 = v16;
  v107 = v14;
  v105 = v8;
  if (!v16)
  {
    v123 = MEMORY[0x277D84F90];
LABEL_49:
    v58 = v123;
    v125 = v123;
    if (v4)
    {
      v124[0] = MEMORY[0x277D84F90];
      v59 = specialized Array._getCount()(v123);
      outlined copy of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(v4);

      for (i = 0; v59 != i; ++i)
      {
        if ((v58 & 0xC000000000000001) != 0)
        {
          v61 = MEMORY[0x245D0A790](i, v123);
        }

        else
        {
          if (i >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_130;
          }

          v61 = *(v123 + 8 * i + 32);
        }

        v62 = v61;
        if (__OFADD__(i, 1))
        {
          goto LABEL_129;
        }

        if (v4(v61))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v63 = *(v124[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }
      }

      outlined consume of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(v4);

      outlined consume of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(v4);
      v123 = v124[0];
      v125 = v124[0];
    }

    v64 = v105;
    if ((v104 & 1) != 0 && (specialized Array._getCount()(v123) || (v103 & 1) == 0))
    {
      v65 = MEMORY[0x277D84F90];
      if (v120)
      {
        v66 = 0;
        v121 = *(v107 + 16);
        v116 = (v64 + ((*(v107 + 80) + 32) & ~*(v107 + 80)));
        v67 = *(v107 + 72);
        v114 = (v107 + 8);
        v115 = v67;
        v68 = &_sSaySo10CAFServiceCGMd;
        v107 += 16;
        do
        {
          v69 = v68;
          v70 = v106;
          v71 = v118;
          (v121)(v106, &v116[v115 * v66], v118);
          CAFPositionManager.sharedServices(for:)();
          v73 = v72;
          (*v114)(v70, v71);
          if (v73 >> 62)
          {
            if (v73 < 0)
            {
              v96 = v73;
            }

            else
            {
              v96 = v73 & 0xFFFFFFFFFFFFFF8;
            }

            v74 = MEMORY[0x245D0A870](v96);
          }

          else
          {
            v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v75 = v65 >> 62;
          if (v65 >> 62)
          {
            if (v65 < 0)
            {
              v97 = v65;
            }

            else
            {
              v97 = v65 & 0xFFFFFFFFFFFFFF8;
            }

            v76 = MEMORY[0x245D0A870](v97);
          }

          else
          {
            v76 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v77 = v76 + v74;
          if (__OFADD__(v76, v74))
          {
            goto LABEL_135;
          }

          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          v123 = v66;
          if (isUniquelyReferenced_nonNull_bridgeObject)
          {
            if (v75)
            {
              goto LABEL_79;
            }

            v79 = v65 & 0xFFFFFFFFFFFFFF8;
            if (v77 <= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_84;
            }
          }

          else
          {
            if (v75)
            {
LABEL_79:
              if (v65 < 0)
              {
                v81 = v65;
              }

              else
              {
                v81 = v65 & 0xFFFFFFFFFFFFFF8;
              }

              MEMORY[0x245D0A870](v81);
              goto LABEL_83;
            }

            v79 = v65 & 0xFFFFFFFFFFFFFF8;
          }

          v80 = *(v79 + 16);
LABEL_83:
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v79 = v65 & 0xFFFFFFFFFFFFFF8;
LABEL_84:
          v82 = *(v79 + 16);
          v83 = (*(v79 + 24) >> 1) - v82;
          v84 = v79 + 8 * v82;
          v122 = v79;
          if (v73 >> 62)
          {
            if (v73 < 0)
            {
              v86 = v73;
            }

            else
            {
              v86 = v73 & 0xFFFFFFFFFFFFFF8;
            }

            v87 = MEMORY[0x245D0A870](v86);
            if (!v87)
            {
LABEL_101:

              v68 = v69;
              if (v74 > 0)
              {
                goto LABEL_136;
              }

              goto LABEL_102;
            }

            v88 = v87;
            v89 = MEMORY[0x245D0A870](v86);
            if (v83 < v89)
            {
              goto LABEL_140;
            }

            if (v88 < 1)
            {
              goto LABEL_142;
            }

            v111 = v89;
            v112 = v74;
            v113 = v65;
            v68 = v69;
            lazy protocol witness table accessor for type [CAFService] and conformance [A](&lazy protocol witness table cache variable for type [CAFService] and conformance [A], v69, &_sSaySo10CAFServiceCGMR);
            for (j = 0; j != v88; ++j)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v68, &_sSaySo10CAFServiceCGMR);
              v91 = specialized protocol witness for Collection.subscript.read in conformance [A](v124, j, v73);
              v93 = *v92;
              (v91)(v124, 0);
              *(v84 + 32 + 8 * j) = v93;
              v68 = v69;
            }

            v4 = v117;
            v74 = v112;
            v65 = v113;
            v85 = v111;
          }

          else
          {
            v85 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v85)
            {
              goto LABEL_101;
            }

            if (v83 < v85)
            {
              goto LABEL_141;
            }

            type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFService, 0x277CF8640);
            swift_arrayInitWithCopy();
            v68 = v69;
          }

          if (v85 < v74)
          {
            goto LABEL_136;
          }

          if (v85 > 0)
          {
            v94 = *(v122 + 16);
            v34 = __OFADD__(v94, v85);
            v95 = v94 + v85;
            if (v34)
            {
              goto LABEL_139;
            }

            *(v122 + 16) = v95;
          }

LABEL_102:
          v66 = v123 + 1;
        }

        while ((v123 + 1) != v120);
      }

      if (v4)
      {
        v124[0] = MEMORY[0x277D84F90];
        v98 = specialized Array._getCount()(v65);
        outlined copy of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(v4);

        for (k = 0; v98 != k; ++k)
        {
          if ((v65 & 0xC000000000000001) != 0)
          {
            v100 = MEMORY[0x245D0A790](k, v65);
          }

          else
          {
            if (k >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_138;
            }

            v100 = *(v65 + 8 * k + 32);
          }

          v101 = v100;
          if (__OFADD__(k, 1))
          {
            goto LABEL_137;
          }

          if (v4(v100))
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v102 = *(v124[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }
        }

        outlined consume of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(v4);

        outlined consume of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(v4);
        v65 = v124[0];
      }

      specialized Array.append<A>(contentsOf:)(v65);
      v123 = v125;
    }

    OUTLINED_FUNCTION_32();
    return;
  }

  v17 = 0;
  v19 = *(v14 + 16);
  v18 = v14 + 16;
  v113 = v8 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
  v114 = v19;
  v112 = (v18 - 8);
  v123 = MEMORY[0x277D84F90];
  v115 = v18;
  v111 = *(v18 + 56);
  v20 = &_sSaySo10CAFServiceCGMd;
  v21 = &_sSaySo10CAFServiceCGMR;
  while (1)
  {
    v22 = v21;
    v23 = v20;
    v24 = v116;
    v25 = v118;
    (v114)(v116, v113 + v111 * v17, v118);
    v26 = CAUVehicleLayoutKey.rawValue.getter();
    v27 = MEMORY[0x245D0A4C0](v26);

    v28 = [v119 servicesForVehicleLayoutKey_];

    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFService, 0x277CF8640);
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    (*v112)(v24, v25);
    if (v29 >> 62)
    {
      v56 = v29 < 0 ? v29 : v29 & 0xFFFFFFFFFFFFFF8;
      v30 = MEMORY[0x245D0A870](v56);
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v123;
    v32 = v123 >> 62;
    if (v123 >> 62)
    {
      v57 = v123 < 0 ? v123 : v123 & 0xFFFFFFFFFFFFFF8;
      v33 = MEMORY[0x245D0A870](v57);
    }

    else
    {
      v33 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v122 = v30;
    v34 = __OFADD__(v33, v30);
    v35 = v33 + v30;
    if (v34)
    {
      break;
    }

    v36 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v121 = v17;
    if (v36)
    {
      if (v32)
      {
        goto LABEL_15;
      }

      v37 = v31 & 0xFFFFFFFFFFFFFF8;
      if (v35 <= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v32)
      {
LABEL_15:
        if (v31 < 0)
        {
          v39 = v31;
        }

        else
        {
          v39 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        MEMORY[0x245D0A870](v39);
        goto LABEL_19;
      }

      v37 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    v38 = *(v37 + 16);
LABEL_19:
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v37 = v31 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
    v123 = v31;
    v40 = *(v37 + 16);
    v41 = (*(v37 + 24) >> 1) - v40;
    v42 = v37 + 8 * v40;
    if (v29 >> 62)
    {
      if (v29 < 0)
      {
        v45 = v29;
      }

      else
      {
        v45 = v29 & 0xFFFFFFFFFFFFFF8;
      }

      v46 = MEMORY[0x245D0A870](v45);
      if (!v46)
      {
LABEL_37:

        v20 = v23;
        v21 = v22;
        if (v122 > 0)
        {
          goto LABEL_128;
        }

        goto LABEL_38;
      }

      v47 = v46;
      v48 = MEMORY[0x245D0A870](v45);
      if (v41 < v48)
      {
        goto LABEL_132;
      }

      if (v47 < 1)
      {
        goto LABEL_134;
      }

      v109 = v48;
      v110 = v37;
      v49 = v42 + 32;
      v20 = v23;
      v21 = v22;
      lazy protocol witness table accessor for type [CAFService] and conformance [A](&lazy protocol witness table cache variable for type [CAFService] and conformance [A], v23, v22);
      for (m = 0; m != v47; ++m)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
        v51 = specialized protocol witness for Collection.subscript.read in conformance [A](v124, m, v29);
        v53 = *v52;
        (v51)(v124, 0);
        *(v49 + 8 * m) = v53;
        v21 = v22;
        v20 = v23;
      }

      v43 = v109;
      v37 = v110;
    }

    else
    {
      v43 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v43)
      {
        goto LABEL_37;
      }

      if (v41 < v43)
      {
        goto LABEL_133;
      }

      v44 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      swift_arrayInitWithCopy();
      v20 = v23;
      v21 = v22;
    }

    if (v43 < v122)
    {
      goto LABEL_128;
    }

    if (v43 > 0)
    {
      v54 = *(v37 + 16);
      v34 = __OFADD__(v54, v43);
      v55 = v54 + v43;
      if (v34)
      {
        goto LABEL_131;
      }

      *(v37 + 16) = v55;
    }

LABEL_38:
    v17 = v121 + 1;
    v4 = v117;
    if (v121 + 1 == v120)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void CAFPositionManager.sharedServices(for:)()
{
  OUTLINED_FUNCTION_13_1();
  v39 = type metadata accessor for CAUVehicleLayoutKey();
  v0 = OUTLINED_FUNCTION_30(v39);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_6_1();
  v7 = v6 - v5;
  v8 = CAUVehicleLayoutKey.sharedKeys.getter();
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v40 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v11 = v40;
    v13 = *(v2 + 16);
    v12 = v2 + 16;
    v14 = v8 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v37 = *(v12 + 56);
    v38 = v13;
    v15 = (v12 - 8);
    do
    {
      v16 = v12;
      v38(v7, v14, v39);
      v17 = CAFPositionManager.services(for:includeSharedServices:requireSpecificServices:filter:)(v7, 1, 0, 0, 0);
      (*v15)(v7, v39);
      v19 = *(v40 + 16);
      v18 = *(v40 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      }

      *(v40 + 16) = v19 + 1;
      *(v40 + 8 * v19 + 32) = v17;
      v14 += v37;
      --v9;
      v12 = v16;
    }

    while (v9);

    v10 = MEMORY[0x277D84F90];
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v20 = specialized FlattenSequence<>.startIndex.getter(v11);
  v23 = specialized FlattenSequence<>.distance(from:to:)(v20, v22, v21 & 1, *(v11 + 16), 0, 1, v11);
  if (v23)
  {
    v24 = v23;
    v41 = v10;
    specialized ContiguousArray.reserveCapacity(_:)();
    v25 = specialized FlattenSequence<>.startIndex.getter(v11);
    if ((v24 & 0x8000000000000000) == 0)
    {
      v28 = v25;
      v29 = v26;
      v30 = 0;
      v31 = v11 + 32;
      while (1)
      {
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (v28 >= *(v11 + 16))
        {
          goto LABEL_25;
        }

        if (v27)
        {
          goto LABEL_29;
        }

        v33 = *(v31 + 8 * v28);
        if ((v33 & 0xC000000000000001) != 0)
        {
          v36 = *(v31 + 8 * v28);

          MEMORY[0x245D0A790](v29, v33);
        }

        else
        {
          if ((v29 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          if (v29 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          *(v33 + 8 * v29 + 32);
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v34 = *(v41 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v28 = specialized FlattenSequence<>._index(after:)(v28, v29, 0, v11);
        v29 = v35;
        ++v30;
        if (v32 == v24)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:

    OUTLINED_FUNCTION_32();
  }
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v3 = specialized Array._getCount()(a1);
  v4 = specialized Array._getCount()(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

int64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for CAUVehicleLayoutKey();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void CAFPositionManager.layoutKeys.getter()
{
  OUTLINED_FUNCTION_13_1();
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMd, &_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = OUTLINED_FUNCTION_17_1();
  v8 = OUTLINED_FUNCTION_30(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v11 = [v4 vehicleLayoutKeys];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_9_0();
  v14 = MEMORY[0x277D84F90];
  v22 = v13;
LABEL_2:
  for (i = (v13 + 16 * v2); ; i += 2)
  {
    if (v3 == v2)
    {

      OUTLINED_FUNCTION_32();
      return;
    }

    if (v2 >= *(v12 + 16))
    {
      break;
    }

    v17 = *(i - 1);
    v16 = *i;

    CAUVehicleLayoutKey.init(rawValue:)();
    if (__swift_getEnumTagSinglePayload(v0, 1, v7) != 1)
    {
      v18 = OUTLINED_FUNCTION_15_1();
      v17(v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = OUTLINED_FUNCTION_14_1();
      }

      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v14);
      }

      v21 = OUTLINED_FUNCTION_4_1();
      v17(v21);
      v13 = v22;
      goto LABEL_2;
    }

    outlined destroy of CAUVehicleLayoutKey?(v0);
    ++v2;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type CAUVehicleLayoutKey and conformance CAUVehicleLayoutKey()
{
  result = lazy protocol witness table cache variable for type CAUVehicleLayoutKey and conformance CAUVehicleLayoutKey;
  if (!lazy protocol witness table cache variable for type CAUVehicleLayoutKey and conformance CAUVehicleLayoutKey)
  {
    type metadata accessor for CAUVehicleLayoutKey();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAUVehicleLayoutKey and conformance CAUVehicleLayoutKey);
  }

  return result;
}

void CAFPositionManager.vehicleLayoutKeys(for:)()
{
  OUTLINED_FUNCTION_13_1();
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMd, &_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = OUTLINED_FUNCTION_17_1();
  v8 = OUTLINED_FUNCTION_30(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v11 = [v4 vehicleLayoutKeysFor_];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_9_0();
  v14 = MEMORY[0x277D84F90];
  v22 = v13;
LABEL_2:
  for (i = (v13 + 16 * v2); ; i += 2)
  {
    if (v3 == v2)
    {

      OUTLINED_FUNCTION_32();
      return;
    }

    if (v2 >= *(v12 + 16))
    {
      break;
    }

    v17 = *(i - 1);
    v16 = *i;

    CAUVehicleLayoutKey.init(rawValue:)();
    if (__swift_getEnumTagSinglePayload(v0, 1, v7) != 1)
    {
      v18 = OUTLINED_FUNCTION_15_1();
      v17(v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = OUTLINED_FUNCTION_14_1();
      }

      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v14);
      }

      v21 = OUTLINED_FUNCTION_4_1();
      v17(v21);
      v13 = v22;
      goto LABEL_2;
    }

    outlined destroy of CAUVehicleLayoutKey?(v0);
    ++v2;
  }

  __break(1u);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  v1 = *(*(type metadata accessor for CAUVehicleLayoutKey() - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC13CarAssetUtils19CAUVehicleLayoutKeyO_Tt1g5(v8, v7);
  v10 = *(type metadata accessor for CAUVehicleLayoutKey() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_11_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_10_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_7_1(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v9 = OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_18_1(v9);
    OUTLINED_FUNCTION_5_1(v10);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    if (v2 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for CAUVehicleLayoutKey(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for CAUVehicleLayoutKey();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_1(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_1(a3, result);
  }

  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo10CAFServiceCGGMd, &_ss23_ContiguousArrayStorageCySaySo10CAFServiceCGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10CAFServiceCGMd, &_sSaySo10CAFServiceCGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_11_1();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_10_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_20_1(v2, v3, v4, v5, v6, v7);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * v14 - 64;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[v11] <= v15)
    {
      memmove(v15, v16, v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v11);
  }
}

{
  OUTLINED_FUNCTION_11_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_10_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_7_1(v6);
  if (v2)
  {
    OUTLINED_FUNCTION_20_1(v9, v10, v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_18_1(v15);
    OUTLINED_FUNCTION_5_1(v16);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v17 = OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    if (v2 != v0 || &v18[2 * v3] <= v17)
    {
      memmove(v17, v18, 2 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v17, v18, 2 * v3);
  }
}

{
  OUTLINED_FUNCTION_11_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_10_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_7_1(v6);
  if (v2)
  {
    OUTLINED_FUNCTION_20_1(v9, v10, v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_18_1(v15);
    OUTLINED_FUNCTION_5_1(v16);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v17 = OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    if (v2 != v0 || &v18[4 * v3] <= v17)
    {
      memmove(v17, v18, 4 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v17, v18, 4 * v3);
  }
}

{
  OUTLINED_FUNCTION_11_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_10_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_7_1(v6);
  if (v2)
  {
    OUTLINED_FUNCTION_20_1(v9, v10, v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_18_1(v15);
    OUTLINED_FUNCTION_5_1(v16);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v17 = OUTLINED_FUNCTION_16_1();
  if (v1)
  {
    if (v2 != v0 || &v18[8 * v3] <= v17)
    {
      memmove(v17, v18, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v3);
  }
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12CAFVentTypesVGMd, &_ss23_ContiguousArrayStorageCySo12CAFVentTypesVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    if (v3 < 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x245D0A870](v7);
    goto LABEL_14;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_14:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

size_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized _ArrayBuffer._getElementSlowPath(_:)(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10CAFServiceCGMd, &_sSaySo10CAFServiceCGMR);
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  _StringGuts.grow(_:)(82);
  MEMORY[0x245D0A530](0xD000000000000043, 0x800000024230B130);
  v4 = _typeName(_:qualified:)();
  MEMORY[0x245D0A530](v4);

  MEMORY[0x245D0A530](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v5 = _typeName(_:qualified:)();
  MEMORY[0x245D0A530](v5);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x245D0A870](v12);
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array._getCount()(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFService, 0x277CF8640);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type [CAFService] and conformance [A](&lazy protocol witness table cache variable for type [CAFService] and conformance [A], &_sSaySo10CAFServiceCGMd, &_sSaySo10CAFServiceCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10CAFServiceCGMd, &_sSaySo10CAFServiceCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
          v11 = *v10;
          (v9)(v13, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x245D0A870](v12);
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array._getCount()(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFMediaItem, 0x277CF8510);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type [CAFService] and conformance [A](&lazy protocol witness table cache variable for type [CAFMediaItem] and conformance [A], &_sSaySo12CAFMediaItemCGMd, &_sSaySo12CAFMediaItemCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12CAFMediaItemCGMd, &_sSaySo12CAFMediaItemCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
          v11 = *v10;
          (v9)(v13, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_12_1(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x245D0A790](v5, v4);
  }

  *v3 = v7;
  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed CAFService) -> (@unowned Bool))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  IsNativeType = specialized Array._hoistableIsNativeTypeChecked()();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a2, IsNativeType & 1, a3);
  if (IsNativeType)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)(a2, a3);
  }

  *a1 = v8;
  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t a1, unint64_t a2, uint64_t a3))()
{
  OUTLINED_FUNCTION_12_1(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x245D0A790](v5, v4);
  }

  *v3 = v7;
  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t specialized FlattenSequence<>.startIndex.getter(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = v2;
  v4 = a1 + 32;
  while (v2 != v1)
  {
    v5 = *(v4 + 8 * v1);
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v6 = *(v4 + 8 * v1);
      }

      else
      {
        v6 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      if (MEMORY[0x245D0A870](v6))
      {
        return v1;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v1;
    }

    ++v1;
  }

  return v3;
}

uint64_t specialized FlattenSequence<>.distance(from:to:)(uint64_t result, uint64_t a2, char a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v11 = a4;
  v12 = a3;
  v13 = a2;
  if (a4 == result)
  {
    if (a6)
    {
      if (a3)
      {
        return 0;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (a3)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

    if (*(a7 + 16) <= a4)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v14 = a5 - a2;
    if (!__OFSUB__(a5, a2))
    {
      return v14;
    }

    __break(1u);
  }

  else
  {
    v7 = result;
    if (a4 < result)
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (*(a7 + 16) <= a4)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      result = specialized Array._getCount()(*(a7 + 8 * a4 + 32));
      if (a6)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v14 = a5 - result;
      if (__OFSUB__(a5, result))
      {
        goto LABEL_50;
      }

      v15 = -1;
      v16 = v7;
      goto LABEL_22;
    }
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (*(a7 + 16) <= v7)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((a3 & 1) == 0)
  {
    result = specialized Array._getCount()(*(a7 + 8 * v7 + 32));
    v14 = result - v13;
    if (__OFSUB__(result, v13))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v15 = 1;
    v13 = a5;
    v12 = a6;
    v16 = v11;
    v11 = v7;
LABEL_22:
    v17 = v11 + 1;
    if ((v11 + 1) >= v16)
    {
LABEL_35:
      if (v12)
      {
        return v14;
      }

      if ((v16 & 0x8000000000000000) == 0)
      {
        if (v16 < *(a7 + 16))
        {
          v21 = __OFADD__(v14, v13 * v15);
          v14 += v13 * v15;
          if (!v21)
          {
            return v14;
          }

          goto LABEL_54;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v18 = *(a7 + 16);
    v19 = (a7 + 8 * v11 + 40);
    while (v17 < v18)
    {
      v20 = *v19;
      if (*v19 >> 62)
      {
        if (v20 < 0)
        {
          v23 = *v19;
        }

        else
        {
          v23 = v20 & 0xFFFFFFFFFFFFFF8;
        }

        result = MEMORY[0x245D0A870](v23);
      }

      else
      {
        result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = __OFADD__(v14, result * v15);
      v14 += result * v15;
      if (v21)
      {
        goto LABEL_41;
      }

      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_42;
      }

      ++v17;
      ++v19;
      if (v22 >= v16)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_57:
  __break(1u);
  return result;
}

unint64_t specialized FlattenSequence<>._index(after:)(unint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = a4;
  v4 = result;
  v6 = *(a4 + 16);
  if (v6 <= result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((a3 & 1) == 0)
  {
    if (!__OFADD__(a2, 1))
    {
      if (a2 + 1 != specialized Array._getCount()(*(a4 + 8 * result + 32)))
      {
        return v4;
      }

LABEL_10:
      ++v4;
      while (v4 != v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySo10CAFServiceCGGMd, &_sSaySaySo10CAFServiceCGGMR);
        lazy protocol witness table accessor for type [CAFService] and conformance [A](&lazy protocol witness table cache variable for type [[CAFService]] and conformance [A], &_sSaySaySo10CAFServiceCGGMd, &_sSaySaySo10CAFServiceCGGMR);
        v7 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, v4, v5);
        v9 = *v8;

        (v7)(v13, 0);
        if (v9 >> 62)
        {
          if (v9 < 0)
          {
            v12 = v9;
          }

          else
          {
            v12 = v9 & 0xFFFFFFFFFFFFFF8;
          }

          v10 = MEMORY[0x245D0A870](v12);
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v10)
        {
          return v4;
        }

        if (__OFADD__(v4++, 1))
        {
          __break(1u);
          goto LABEL_24;
        }
      }

      return v6;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t outlined destroy of CAUVehicleLayoutKey?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMd, &_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type [CAFService] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_4_1()
{
  *(v1 + 16) = v2;
  v4 = *(v3 - 88);
  return v1 + ((*(*(v3 - 96) + 80) + 32) & ~*(*(v3 - 96) + 80)) + *(*(v3 - 96) + 72) * v0;
}

void OUTLINED_FUNCTION_7_1(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

unint64_t OUTLINED_FUNCTION_12_1(uint64_t a1, unint64_t a2, uint64_t a3)
{
  IsNativeTypeCheckedSbyFSo12CAFMediaItemC_Tg5_0 = _sSa29_hoistableIsNativeTypeCheckedSbyFSo12CAFMediaItemC_Tg5_0(a3);

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a2, IsNativeTypeCheckedSbyFSo12CAFMediaItemC_Tg5_0, a3);
}

size_t OUTLINED_FUNCTION_14_1()
{
  v2 = *(v0 + 16) + 1;

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return type metadata accessor for CAUVehicleLayoutKey();
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t Measurement<>.localeStep(_:by:in:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v138 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v10 = OUTLINED_FUNCTION_30(v9);
  v139 = v11;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v134 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v129 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v129 - v19;
  v137 = *a1;
  v135 = v5;
  if (!a3)
  {
    goto LABEL_4;
  }

  v21 = a3;
  Measurement.value.getter();
  *&v22 = v22;
  if ([v21 valueIsInRange_])
  {

LABEL_4:
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
    if (v137)
    {
      OUTLINED_FUNCTION_5_2();
      static Measurement<>.- infix(_:_:)();
    }

    else
    {
      OUTLINED_FUNCTION_5_2();
      static Measurement<>.+ infix(_:_:)();
    }

    v23 = *(v139 + 32);
    v139 += 32;
    v136 = v23;
    v23(v20, v18, v9);
    v130 = a4;
    if (!a3)
    {
      v51 = Measurement<>.digitsOnly.getter();
      v36 = v52;
      v53 = Measurement<>.digitsOnly.getter();
      v55 = v54;
      goto LABEL_28;
    }

    v24 = a3;
    OUTLINED_FUNCTION_2_0();
    Measurement.value.getter();
    v26 = v25;
    v27 = [v18 maximum];
    [v27 doubleValue];
    v29 = v28;

    if (v29 <= v26)
    {

      v36 = 0xE200000000000000;
      v56 = 18760;
    }

    else
    {
      Measurement.value.getter();
      v31 = v30;
      v32 = [v18 minimum];
      [v32 doubleValue];
      v34 = v33;

      if (v31 > v34)
      {
        v133 = Measurement<>.digitsOnly.getter();
        v36 = v35;

LABEL_22:
        v57 = v18;
        OUTLINED_FUNCTION_2_0();
        Measurement.value.getter();
        v59 = v58;
        v60 = [v18 maximum];
        [v60 doubleValue];
        v62 = v61;

        if (v62 <= v59)
        {

          v55 = 0xE200000000000000;
          v53 = 18760;
        }

        else
        {
          Measurement.value.getter();
          v64 = v63;
          v65 = [v18 minimum];
          [v65 doubleValue];
          v67 = v66;

          if (v64 <= v67)
          {

            v55 = 0xE200000000000000;
            v53 = 20300;
          }

          else
          {
            v53 = Measurement<>.digitsOnly.getter();
            v55 = v68;
          }
        }

        v51 = v133;
LABEL_28:
        if (v51 == v53 && v36 == v55)
        {
        }

        else
        {
          v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v70 & 1) == 0)
          {
            return v136(v130, v20, v9);
          }
        }

        v132 = "[LocaleStep] skipping ";
        v133 = 0x800000024230B180;
        *&v71 = 136315650;
        v131 = v71;
        do
        {
          while (1)
          {
            v140[0] = 0;
            v140[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(36);

            v140[0] = 0xD000000000000016;
            v140[1] = v133;
            lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
            v72 = dispatch thunk of CustomStringConvertible.description.getter();
            v74 = v73;
            MEMORY[0x245D0A530](v72);

            MEMORY[0x245D0A530](0x79616C7073696420, 0xEA0000000000203ALL);
            if (a3)
            {
              v75 = a3;
              OUTLINED_FUNCTION_2_0();
              Measurement.value.getter();
              v77 = v76;
              v78 = [v74 maximum];
              [v78 doubleValue];
              v80 = v79;

              if (v80 <= v77)
              {

                v88 = 0xE200000000000000;
                v86 = 18760;
              }

              else
              {
                Measurement.value.getter();
                v82 = v81;
                v83 = [v74 minimum];
                [v83 doubleValue];
                v85 = v84;

                if (v82 <= v85)
                {

                  v88 = 0xE200000000000000;
                  v86 = 20300;
                }

                else
                {
                  v86 = Measurement<>.digitsOnly.getter();
                  v88 = v87;
                }
              }
            }

            else
            {
              v86 = Measurement<>.digitsOnly.getter();
              v88 = v89;
            }

            MEMORY[0x245D0A530](v86, v88);

            v91 = v140[0];
            v90 = v140[1];
            v92 = static os_log_type_t.debug.getter();
            if (one-time initialization token for default != -1)
            {
              OUTLINED_FUNCTION_0_1();
              swift_once();
            }

            v93 = static OS_os_log.default;
            if (os_log_type_enabled(static OS_os_log.default, v92))
            {
              v94 = swift_slowAlloc();
              v140[0] = swift_slowAlloc();
              *v94 = v131;
              *(v94 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, v132 | 0x8000000000000000, v140);
              *(v94 + 12) = 2048;
              OUTLINED_FUNCTION_4_2(20);
              *(v94 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v90, v95);
              _os_log_impl(&dword_2421B0000, v93, v92, "%s: %ld  %s", v94, 0x20u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_15();
              OUTLINED_FUNCTION_15();
            }

            v96 = v134;
            type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
            if (v137)
            {
              static Measurement<>.- infix(_:_:)();
            }

            else
            {
              static Measurement<>.+ infix(_:_:)();
            }

            (*"ep(_:by:in:)")(v20, v9);
            v136(v20, v96, v9);
            if (a3)
            {
              v97 = a3;
              OUTLINED_FUNCTION_2_0();
              Measurement.value.getter();
              v99 = v98;
              v100 = [v92 maximum];
              [v100 doubleValue];
              v102 = v101;

              if (v102 <= v99)
              {

                v110 = 0xE200000000000000;
                v108 = 18760;
              }

              else
              {
                Measurement.value.getter();
                v104 = v103;
                v105 = [v92 minimum];
                [v105 doubleValue];
                v107 = v106;

                if (v104 <= v107)
                {

                  v110 = 0xE200000000000000;
                  v108 = 20300;
                }

                else
                {
                  v108 = Measurement<>.digitsOnly.getter();
                  v110 = v109;
                }
              }

              v115 = v92;
              OUTLINED_FUNCTION_2_0();
              Measurement.value.getter();
              v117 = v116;
              v118 = [v92 maximum];
              [v118 doubleValue];
              v120 = v119;

              if (v120 <= v117)
              {

                v114 = 0xE200000000000000;
                v112 = 18760;
              }

              else
              {
                Measurement.value.getter();
                v122 = v121;
                v123 = [v92 minimum];
                [v123 doubleValue];
                v125 = v124;

                if (v122 <= v125)
                {

                  v114 = 0xE200000000000000;
                  v112 = 20300;
                }

                else
                {
                  v112 = Measurement<>.digitsOnly.getter();
                  v114 = v126;
                }
              }
            }

            else
            {
              v108 = Measurement<>.digitsOnly.getter();
              v110 = v111;
              v112 = Measurement<>.digitsOnly.getter();
              v114 = v113;
            }

            if (v108 != v112 || v110 != v114)
            {
              break;
            }
          }

          v128 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        while ((v128 & 1) != 0);
        return v136(v130, v20, v9);
      }

      v36 = 0xE200000000000000;
      v56 = 20300;
    }

    v133 = v56;
    goto LABEL_22;
  }

  v37 = a4;
  v140[0] = 0;
  v140[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  strcpy(v140, "[LocaleStep] ");
  HIWORD(v140[1]) = -4864;
  lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
  v38 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x245D0A530](v38);

  MEMORY[0x245D0A530](0xD000000000000012, 0x800000024230B1C0);
  v39 = [v21 description];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  MEMORY[0x245D0A530](v40, v42);

  v44 = v140[0];
  v43 = v140[1];
  v45 = static os_log_type_t.error.getter();
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v46 = static OS_os_log.default;
  if (os_log_type_enabled(static OS_os_log.default, v45))
  {
    v47 = swift_slowAlloc();
    v140[0] = swift_slowAlloc();
    *v47 = 136315650;
    v5 = v135;
    *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024230B1A0, v140);
    *(v47 + 12) = 2048;
    OUTLINED_FUNCTION_4_2(14);
    *(v47 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, v48);
    _os_log_impl(&dword_2421B0000, v46, v45, "%s: %ld  %s", v47, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  v49 = *(v139 + 16);

  return v49(v37, v5, v9);
}

uint64_t Measurement<>.step(_:by:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  if (v1)
  {

    return static Measurement<>.- infix(_:_:)();
  }

  else
  {

    return static Measurement<>.+ infix(_:_:)();
  }
}

uint64_t Measurement<>.readableString(in:)(void *a1)
{
  if (!a1)
  {
    return Measurement<>.digitsOnly.getter();
  }

  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  Measurement.value.getter();
  v3 = v2;
  v4 = [v1 maximum];
  [v4 doubleValue];
  v6 = v5;

  if (v6 <= v3)
  {

    return 18760;
  }

  else
  {
    Measurement.value.getter();
    v8 = v7;
    v9 = [v1 minimum];
    [v9 doubleValue];
    v11 = v10;

    if (v8 <= v11)
    {

      return 20300;
    }

    else
    {
      v12 = Measurement<>.digitsOnly.getter();
    }
  }

  return v12;
}

uint64_t Measurement<>.digitsOnly.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - v4;
  if (static Measurement<>.isFahrenheitUI.getter())
  {
    v6 = [objc_opt_self() fahrenheit];
    Measurement<>.converted(to:)();
  }

  else
  {
    (*(v2 + 16))(v5, v0, v1);
  }

  v7 = static Measurement<>.targetTemperatureFormatter.getter();
  v8 = Measurement.value.getter();
  v9 = MEMORY[0x245D0A650](v8);
  v10 = [v7 stringFromNumber_];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    Measurement.value.getter();
    v11 = Double.description.getter();
  }

  (*(v2 + 8))(v5, v1);
  return v11;
}

uint64_t static Measurement<>.isFahrenheitUI.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  static Locale.current.getter();
  v2 = NSDimension.init(forLocale:)();
  v3 = [objc_opt_self() fahrenheit];
  v4 = static NSObject.== infix(_:_:)();

  return v4 & 1;
}

id static Measurement<>.targetTemperatureFormatter.getter()
{
  v1 = type metadata accessor for Locale();
  v2 = OUTLINED_FUNCTION_30(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_2();
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v0, v1);
  [v7 setLocale_];

  [v7 setNumberStyle_];
  [v7 setRoundingMode_];
  [v7 setMinimumFractionDigits_];
  [v7 setMaximumFractionDigits_];
  return v7;
}

uint64_t Measurement<>.invalidString.getter()
{
  v1 = type metadata accessor for Locale();
  v2 = OUTLINED_FUNCTION_30(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_2();
  if (static Measurement<>.isFahrenheitUI.getter())
  {
    return 11565;
  }

  static Locale.autoupdatingCurrent.getter();
  v7 = Locale.decimalSeparator.getter();
  v9 = v8;
  (*(v4 + 8))(v0, v1);
  if (!v9)
  {
    return 11565;
  }

  MEMORY[0x245D0A530](v7, v9);

  MEMORY[0x245D0A530](45, 0xE100000000000000);
  return 11565;
}

unint64_t lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<NSUnitTemperature> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<NSUnitTemperature> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<NSUnitTemperature> and conformance Measurement<A>);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_2()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

uint64_t CAFVent.Configuration.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CAFVent.Configuration.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *a2 = v7;
  return result;
}

uint64_t CAFVent.Configuration.rawValue.getter()
{
  result = 0x796E614D6E6FLL;
  switch(*v0)
  {
    case 1:
      result = 0x656C676E69536E6FLL;
      break;
    case 2:
      result = 2037277037;
      break;
    case 3:
      result = 0x68746957796E616DLL;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CAFVent.Configuration@<X0>(uint64_t *a1@<X8>)
{
  result = CAFVent.Configuration.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CAFVent.configuration.getter@<X0>(char *a1@<X8>)
{
  v3 = [v1 hasOn];
  v4 = [v1 combinations];
  type metadata accessor for NSNumber();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3)
  {
    v6 = specialized Array._getCount()(v5);

    v8 = v6 < 2;
  }

  else
  {
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v13 = isa;
    MEMORY[0x28223BE20](isa);
    v12[2] = &v13;
    specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v12, v5);
    v11 = v10;

    if (v11)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }
  }

  *a1 = v8;
  return result;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

id CAFVent.ventType(at:)(unsigned int a1)
{
  v3 = [v1 combinations];
  type metadata accessor for NSNumber();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Array._getCount()(v4);

  if (v5 <= a1)
  {
    return 0;
  }

  v6 = [v1 combinations];
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a1, (v7 & 0xC000000000000001) == 0, v7);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x245D0A790](a1, v7);
  }

  else
  {
    v8 = *(v7 + 8 * a1 + 32);
  }

  v9 = v8;

  v10 = [v9 unsignedLongLongValue];

  return v10;
}

void specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = specialized Array._getCount()(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x245D0A790](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type CAFVent.Configuration and conformance CAFVent.Configuration()
{
  result = lazy protocol witness table cache variable for type CAFVent.Configuration and conformance CAFVent.Configuration;
  if (!lazy protocol witness table cache variable for type CAFVent.Configuration and conformance CAFVent.Configuration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFVent.Configuration and conformance CAFVent.Configuration);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAFVent.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CAFVent.Configuration(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized CAFObserved<>.observable.getter(void (*a1)(void), uint64_t (*a2)(void))
{
  if ([v2 observableCache])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    outlined destroy of Any?(v11);
    goto LABEL_8;
  }

  a1(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    objc_allocWithZone((a1)(0));
    v6 = v2;
    v5 = a2();
    [v6 setObservableCache_];
    return v5;
  }

  return v8;
}

uint64_t CAFObserved<>.observable.getter()
{
  v1 = v0;
  if ([v0 observableCache])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    outlined destroy of Any?(v10);
    v2 = OUTLINED_FUNCTION_1_2();
    goto LABEL_8;
  }

  v2 = OUTLINED_FUNCTION_1_2();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    *&v10[0] = v0;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v5 = *(AssociatedConformanceWitness + 40);
    swift_unknownObjectRetain();
    v3 = v5(v10, v2, AssociatedConformanceWitness);
    [v1 setObservableCache_];
    return v3;
  }

  return v7;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CAFObservable.objectDidChange.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVyyts5NeverOGMd, &_s7Combine12AnyPublisherVyyts5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVyyts5NeverOGMd, &_s7Combine12AnyPublisherVyyts5NeverOGMR);
  v6 = type metadata accessor for Publishers.CompactMap();
  v7 = OUTLINED_FUNCTION_30(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v18 - v12;
  v18[1] = closure #1 in CAFObservable.objectDidChange.getter(v3);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v14;
  Publisher.compactMap<A>(_:)();

  swift_getWitnessTable();
  v16 = Publisher.eraseToAnyPublisher()();

  (*(v9 + 8))(v13, v6);
  return v16;
}

uint64_t closure #1 in CAFObservable.objectDidChange.getter(void *a1)
{
  swift_beginAccess();
  v2 = objc_getAssociatedObject(a1, &static AssociatedKeys.objectDidChange);
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    outlined destroy of Any?(v12);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v7 = PassthroughSubject.init()();
    swift_beginAccess();
    objc_setAssociatedObject(a1, &static AssociatedKeys.objectDidChange, v7, 0x301);
    swift_endAccess();
    *&v12[0] = v7;
    lazy protocol witness table accessor for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
    v3 = Publisher.eraseToAnyPublisher()();
    goto LABEL_9;
  }

  *&v12[0] = v9;
  lazy protocol witness table accessor for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  v3 = Publisher.eraseToAnyPublisher()();
LABEL_9:

  return v3;
}

uint64_t closure #2 in CAFObservable.objectDidChange.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t CAFObservable.publisher.getter(uint64_t a1, uint64_t a2)
{
  v31[0] = a2;
  type metadata accessor for Array();
  swift_getWitnessTable();
  v5 = type metadata accessor for Publishers.Sequence();
  v6 = type metadata accessor for AnyPublisher();
  WitnessTable = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v34 = v5;
  v35 = v6;
  v36 = WitnessTable;
  v37 = v32;
  v8 = type metadata accessor for Publishers.Concatenate();
  v9 = OUTLINED_FUNCTION_30(v8);
  v33 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = v31 - v13;
  v31[1] = swift_getWitnessTable();
  v15 = type metadata accessor for Publishers.Filter();
  v16 = OUTLINED_FUNCTION_30(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = v31 - v21;
  v34 = CAFObservable.objectDidChange.getter(a1, a2);
  v23 = getContiguousArrayStorageType<A>(for:)(a1, a1);
  v24 = *(v23 + 52);
  v25 = (*(v23 + 48) + 7) & 0x1FFFFFFF8;
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  *v26 = v2;
  type metadata accessor for Array();
  swift_unknownObjectRetain();
  Publisher.prepend(_:)();

  v27 = swift_allocObject();
  v28 = v31[0];
  *(v27 + 16) = a1;
  *(v27 + 24) = v28;
  Publisher.filter(_:)();

  (*(v33 + 8))(v14, v8);
  swift_getWitnessTable();
  v29 = Publisher.eraseToAnyPublisher()();
  (*(v18 + 8))(v22, v15);
  return v29;
}

uint64_t closure #1 in CAFObservable.publisher.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = *a1;
  (*(a3 + 32))(a2, a3);
  type metadata accessor for CAFService();
  if (!swift_dynamicCast())
  {
    return 1;
  }

  v9 = v12;
  v10 = [v12 receivedAllValues];

  return v10;
}

uint64_t CAFObserved<>.observable.getter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_30(a1);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(v5 + 16))(v9, v1, a1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(v9, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  }

  else
  {

    return MEMORY[0x2821FDC00]();
  }
}

unint64_t type metadata accessor for CAFService()
{
  result = lazy cache variable for type metadata for CAFService;
  if (!lazy cache variable for type metadata for CAFService)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFService);
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t partial apply for closure #2 in CAFObservable.objectDidChange.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #2 in CAFObservable.objectDidChange.getter(a1);
}

uint64_t lazy protocol witness table accessor for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return swift_getAssociatedTypeWitness();
}

void CAFDataSourcePublisher.receive<A>(subscriber:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(*(type metadata accessor for Optional() - 8) + 64);
  OUTLINED_FUNCTION_13_0();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v20 - v12;
  v14 = *(v6 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v11);
  v18 = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v6 + 24);
  v20[0] = v14;
  v20[1] = v4;
  v20[2] = v19;
  v20[3] = v2;
  OUTLINED_FUNCTION_10_2();
  type metadata accessor for CAFDataSourceSubscription();
  (*(v15 + 16))(v18, v0, v14);
  CAFDataSourceSubscription.__allocating_init(dataSource:)(v18);
  (*(*(v4 - 8) + 16))(v13, v8, v4);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v4);
  CAFDataSourceSubscription.target.setter(v13);

  OUTLINED_FUNCTION_32();
}

uint64_t CAFDataSourceSubscription.__allocating_init(dataSource:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  CAFDataSourceSubscription.init(dataSource:)(a1);
  return v5;
}

uint64_t CAFDataSourceSubscription.target.didset(uint64_t a1)
{
  v2 = v1;
  v33 = *v1;
  v3 = v33;
  v4 = v33[10];
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v32 - v6;
  v8 = v33[11];
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32 - v13;
  v35 = *(v8 - 8);
  v15 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v32 - v16;
  v18 = v3[15];
  v19 = *(v2 + v18);
  *(v2 + v18) = 0;

  v20 = *(*v2 + 128);
  swift_beginAccess();
  (*(v10 + 16))(v14, v2 + v20, v9);
  if (__swift_getEnumTagSinglePayload(v14, 1, v8) == 1)
  {
    return (*(v10 + 8))(v14, v9);
  }

  v22 = v35;
  v23 = *(v35 + 32);
  v32 = v17;
  v23(v17, v14, v8);
  v24 = v33[12];
  v25 = v33[13];
  v36[0] = v4;
  v36[1] = v8;
  v36[2] = v24;
  v37 = v25;
  v37 = type metadata accessor for CAFDataSourceSubscription();
  WitnessTable = swift_getWitnessTable();
  v36[0] = v2;

  dispatch thunk of Subscriber.receive(subscription:)();
  __swift_destroy_boxed_opaque_existential_0(v36);
  v26 = v34;
  (*(v34 + 16))(v7, v2 + *(*v2 + 112), v4);
  v27 = (*(v24 + 16))(v4, v24);
  v33 = v27;
  (*(v26 + 8))(v7, v4);
  v36[0] = v27;
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = v4;
  v29[3] = v8;
  v29[4] = v24;
  v29[5] = v25;
  v29[6] = v28;
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnyPublisher();

  swift_getWitnessTable();
  v30 = Publisher<>.sink(receiveValue:)();

  (*(v22 + 8))(v32, v8);

  v31 = *(v2 + v18);
  *(v2 + v18) = v30;
}

uint64_t closure #1 in CAFDataSourceSubscription.target.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CAFDataSourceSubscription.target.getter(v13);

    if (__swift_getEnumTagSinglePayload(v13, 1, a4))
    {
      return (*(v10 + 8))(v13, v9);
    }

    else
    {
      (*(v5 + 16))(v8, v13, a4);
      (*(v10 + 8))(v13, v9);
      dispatch thunk of Subscriber.receive(_:)();
      return (*(v5 + 8))(v8, a4);
    }
  }

  return result;
}

uint64_t CAFDataSourceSubscription.target.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_3();
  v5 = *(v4 + 128);
  swift_beginAccess();
  v6 = *(v2 + 88);
  v7 = type metadata accessor for Optional();
  return (*(*(v7 - 8) + 16))(a1, v1 + v5, v7);
}

uint64_t CAFDataSourceSubscription.target.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5_3();
  v5 = *(v4 + 128);
  swift_beginAccess();
  v6 = *(v2 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  (*(v8 + 24))(v1 + v5, a1, v7);
  v9 = swift_endAccess();
  CAFDataSourceSubscription.target.didset(v9);
  return (*(v8 + 8))(a1, v7);
}

uint64_t CAFDataSourceSubscription.init(dataSource:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_3();
  *(v1 + *(v4 + 120)) = 0;
  OUTLINED_FUNCTION_7_2();
  __swift_storeEnumTagSinglePayload(v1 + *(v5 + 128), 1, 1, *(v2 + 88));
  OUTLINED_FUNCTION_7_2();
  (*(*(*(v2 + 80) - 8) + 32))(v1 + *(v6 + 112), a1);
  return v1;
}

Swift::Void __swiftcall CAFDataSourceSubscription.cancel()()
{
  OUTLINED_FUNCTION_7_2();
  v1 = *(v0 + 88);
  v2 = *(*(type metadata accessor for Optional() - 8) + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v6 - v4;
  __swift_storeEnumTagSinglePayload(&v6 - v4, 1, 1, v1);
  CAFDataSourceSubscription.target.setter(v5);
}

uint64_t *CAFDataSourceSubscription.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  OUTLINED_FUNCTION_7_2();
  v3 = *(v0 + *(v2 + 120));

  OUTLINED_FUNCTION_7_2();
  v5 = *(v4 + 128);
  v6 = *(v1 + 88);
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 8))(v0 + v5, v7);
  return v0;
}

uint64_t CAFDataSourceSubscription.__deallocating_deinit()
{
  CAFDataSourceSubscription.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void Publisher.skipNil<A>()()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AnyPublisher();
  OUTLINED_FUNCTION_3_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_2();
  v7 = type metadata accessor for Publishers.FlatMap();
  OUTLINED_FUNCTION_30(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_2();
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = v4;
  v13[4] = v2;
  static Subscribers.Demand.unlimited.getter();
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  Publisher.eraseToAnyPublisher()();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_32();
}

uint64_t closure #1 in Publisher.skipNil<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v41 = a1;
  v43 = a3;
  v4 = type metadata accessor for Just();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - v6;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for Result.Publisher();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v35 = &v34 - v10;
  v42 = AssociatedConformanceWitness;
  v11 = type metadata accessor for Empty();
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v34 - v19;
  v21 = *(a2 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v34 - v26;
  (*(v16 + 16))(v20, v41, v15);
  if (__swift_getEnumTagSinglePayload(v20, 1, a2) == 1)
  {
    (*(v16 + 8))(v20, v15);
    Empty.init(completeImmediately:)();
    swift_getWitnessTable();
    v28 = Publisher.eraseToAnyPublisher()();
    result = (*(v34 + 8))(v14, v11);
  }

  else
  {
    (*(v21 + 32))(v27, v20, a2);
    (*(v21 + 16))(v25, v27, a2);
    v30 = v38;
    Just.init(_:)();
    v31 = v35;
    v32 = v40;
    Just.setFailureType<A>(to:)();
    (*(v39 + 8))(v30, v32);
    v33 = v37;
    swift_getWitnessTable();
    v28 = Publisher.eraseToAnyPublisher()();
    (*(v36 + 8))(v31, v33);
    result = (*(v21 + 8))(v27, a2);
  }

  *v43 = v28;
  return result;
}

uint64_t partial apply for closure #1 in Publisher.skipNil<A>()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return closure #1 in Publisher.skipNil<A>()(a1, v2[3], a2);
}

void Publisher.flatMap<A, B>(_:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v18 = *(*v9 + *MEMORY[0x277D84DE8] + 8);
  OUTLINED_FUNCTION_10_2();
  v11 = type metadata accessor for Publishers.FlatMap();
  OUTLINED_FUNCTION_30(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_2();
  v17 = swift_allocObject();
  v17[2] = v8;
  v17[3] = v6;
  v17[4] = v4;
  v17[5] = v2;
  v17[6] = v10;

  static Subscribers.Demand.unlimited.getter();
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  Publisher.eraseToAnyPublisher()();
  (*(v13 + 8))(v0, v11);
  OUTLINED_FUNCTION_32();
}

void Publisher.compactFlatMap<A, B>(_:)()
{
  Publisher.compactFlatMap<A, B>(_:)();
}

{
  Publisher.compactFlatMap<A, B>(_:)();
}

{
  Publisher.compactFlatMap<A, B>(_:)();
}

{
  OUTLINED_FUNCTION_13_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *v12;
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = v9;
  v15[4] = v7;
  v15[5] = v5;
  v15[6] = v13;
  v16 = *(*(v14 + *MEMORY[0x277D84DE8] + 8) + 16);

  v1(v3, v15, v11, v9, v16, v7, v5);

  OUTLINED_FUNCTION_32();
}

{
  Publisher.compactFlatMap<A, B>(_:)();
}

{
  OUTLINED_FUNCTION_13_1();
  v20 = v1;
  v21 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v19 = v11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AnyPublisher();
  OUTLINED_FUNCTION_3_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_2();
  v12 = type metadata accessor for Publishers.FlatMap();
  OUTLINED_FUNCTION_30(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_2();
  v18 = swift_allocObject();
  v18[2] = v8;
  v18[3] = v6;
  v18[4] = v20;
  v18[5] = v4;
  v18[6] = v21;
  v18[7] = v19;
  v18[8] = v10;

  static Subscribers.Demand.unlimited.getter();
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  Publisher.eraseToAnyPublisher()();
  (*(v14 + 8))(v0, v12);
  OUTLINED_FUNCTION_32();
}

uint64_t Publisher.compactFlatMap<A, B>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a1;
  v12 = *(v10 + *MEMORY[0x277D84DE8] + 8);

  Publisher.compactFlatMap<A, B>(_:)();
  v14 = v13;

  return v14;
}

uint64_t closure #1 in Publisher.compactFlatMap<A, B>(_:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getAtKeyPath();
  v4 = *(v3 + *MEMORY[0x277D84DE8] + 8);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t closure #1 in Publisher.compactFlatMap<A, B>(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v47 = a3;
  v48 = a2;
  v50 = a9;
  v44 = a8;
  v14 = type metadata accessor for Publishers.CompactMap();
  v45 = *(v14 - 8);
  v46 = v14;
  v15 = *(v45 + 64);
  MEMORY[0x28223BE20](v14);
  v43 = &v39 - v16;
  swift_getAssociatedTypeWitness();
  v41 = a4;
  v42 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49 = a5;
  v39 = AssociatedConformanceWitness;
  v18 = type metadata accessor for Empty();
  v40 = *(v18 - 8);
  v19 = *(v40 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - v20;
  v22 = type metadata accessor for Optional();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v39 - v26;
  v28 = *(a6 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  v31 = &v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48(a1);
  if (__swift_getEnumTagSinglePayload(v27, 1, a6) == 1)
  {
    (*(v23 + 8))(v27, v22);
    Empty.init(completeImmediately:)();
    swift_getWitnessTable();
    v32 = Publisher.eraseToAnyPublisher()();
    result = (*(v40 + 8))(v21, v18);
  }

  else
  {
    (*(v28 + 32))(v31, v27, a6);
    v34 = swift_allocObject();
    v35 = v42;
    v36 = v49;
    v34[2] = v41;
    v34[3] = v36;
    v34[4] = a6;
    v34[5] = v35;
    v37 = v43;
    v34[6] = v44;
    Publisher.compactMap<A>(_:)();

    v38 = v46;
    swift_getWitnessTable();
    v32 = Publisher.eraseToAnyPublisher()();
    (*(v45 + 8))(v37, v38);
    result = (*(v28 + 8))(v31, a6);
  }

  *v50 = v32;
  return result;
}

uint64_t closure #1 in closure #1 in Publisher.compactFlatMap<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t closure #1 in Publisher.compactFlatMap<A, B>(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  v28 = a6;
  v30 = a3;
  v31 = a2;
  v32 = a7;
  swift_getAssociatedTypeWitness();
  v29 = a4;
  v26[1] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for Empty();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v26 - v18;
  v20 = *(a5 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31(a1);
  if (__swift_getEnumTagSinglePayload(v19, 1, a5) == 1)
  {
    (*(v15 + 8))(v19, v14);
    Empty.init(completeImmediately:)();
    swift_getWitnessTable();
    v24 = Publisher.eraseToAnyPublisher()();
    result = (*(v27 + 8))(v13, v10);
  }

  else
  {
    (*(v20 + 32))(v23, v19, a5);
    v24 = Publisher.eraseToAnyPublisher()();
    result = (*(v20 + 8))(v23, a5);
  }

  *v32 = v24;
  return result;
}

uint64_t partial apply for closure #1 in Publisher.compactFlatMap<A, B>(_:)(uint64_t a1)
{
  return partial apply for closure #1 in Publisher.compactFlatMap<A, B>(_:)(a1, closure #1 in Publisher.compactFlatMap<A, B>(_:));
}

{
  return partial apply for closure #1 in Publisher.compactFlatMap<A, B>(_:)(a1, closure #1 in Publisher.compactFlatMap<A, B>(_:));
}

uint64_t partial apply for closure #1 in Publisher.compactFlatMap<A, B>(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return closure #1 in Publisher.compactFlatMap<A, B>(_:)(*(v1 + 48), a1);
}

uint64_t Publisher.nullable()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  v4 = type metadata accessor for Publishers.Map();
  OUTLINED_FUNCTION_30(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  Publisher.map<A>(_:)();

  swift_getWitnessTable();
  v13 = Publisher.eraseToAnyPublisher()();
  (*(v6 + 8))(v11, v4);
  return v13;
}

uint64_t closure #1 in Publisher.nullable()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, AssociatedTypeWitness);
}

uint64_t partial apply for closure #1 in Publisher.nullable()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in Publisher.nullable()(a1, a2);
}

uint64_t type metadata completion function for CAFDataSourcePublisher(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAFDataSourcePublisher(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void storeEnumTagSinglePayload for CAFDataSourcePublisher(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t type metadata completion function for CAFDataSourceSubscription(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = type metadata accessor for Optional();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in Publisher.compactFlatMap<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  return closure #1 in closure #1 in Publisher.compactFlatMap<A, B>(_:)(a1, a2);
}

uint64_t partial apply for closure #1 in CAFDataSourceSubscription.target.didset(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return closure #1 in CAFDataSourceSubscription.target.didset(a1, v1[6], v1[2], v1[3]);
}

uint64_t key path getter for CARSessionStatusObservable.session : CARSessionStatusObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CARSessionStatusObservable.session.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CARSessionStatusObservable.session : CARSessionStatusObservable(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CARSessionStatusObservable.session.setter();
}

uint64_t CARSessionStatusObservable.session.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CARSessionStatusObservable.session.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*CARSessionStatusObservable.session.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = static Published.subscript.modify();
  return CARSessionStatusObservable.session.modify;
}

void CARSessionStatusObservable.session.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t key path setter for CARSessionStatusObservable.$session : CARSessionStatusObservable(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo10CARSessionCSg_GMd, &_s7Combine9PublishedV9PublisherVySo10CARSessionCSg_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *a2;
  return CARSessionStatusObservable.$session.setter(v7);
}

uint64_t CARSessionStatusObservable.$session.getter()
{
  OUTLINED_FUNCTION_5_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo10CARSessionCSgGMd, &_s7Combine9PublishedVySo10CARSessionCSgGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CARSessionStatusObservable.$session.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo10CARSessionCSg_GMd, &_s7Combine9PublishedV9PublisherVySo10CARSessionCSg_GMR);
  v3 = OUTLINED_FUNCTION_30(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v10 - v8, a1, v2);
  OUTLINED_FUNCTION_5_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo10CARSessionCSgGMd, &_s7Combine9PublishedVySo10CARSessionCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v2);
}

void (*CARSessionStatusObservable.$session.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo10CARSessionCSg_GMd, &_s7Combine9PublishedV9PublisherVySo10CARSessionCSg_GMR);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_5_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo10CARSessionCSgGMd, &_s7Combine9PublishedVySo10CARSessionCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return CARSessionStatusObservable.$session.modify;
}

void CARSessionStatusObservable.$session.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[3];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    CARSessionStatusObservable.$session.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = v2[3];
    CARSessionStatusObservable.$session.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

id CARSessionStatusObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CARSessionStatusObservable.init()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CF89F8]) init];
  v3 = objc_allocWithZone(type metadata accessor for CARSessionStatusObservable());
  v4 = CARSessionStatusObservable.init(carSessionStatus:)(v2);
  swift_getObjectType();
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t type metadata accessor for CARSessionStatusObservable()
{
  result = type metadata singleton initialization cache for CARSessionStatusObservable;
  if (!type metadata singleton initialization cache for CARSessionStatusObservable)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CARSessionStatusObservable.init(carSessionStatus:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo10CARSessionCSgGMd, &_s7Combine9PublishedVySo10CARSessionCSgGMR);
  v4 = OUTLINED_FUNCTION_30(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v17 - v9;
  v11 = OBJC_IVAR____TtC10CAFCombine26CARSessionStatusObservable__session;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10CARSessionCSgMd, &_sSo10CARSessionCSgMR);
  Published.init(initialValue:)();
  (*(v6 + 32))(&v1[v11], v10, v3);
  *&v1[OBJC_IVAR____TtC10CAFCombine26CARSessionStatusObservable_carSessionStatus] = a1;
  v12 = a1;
  v13 = [v12 currentSession];
  OUTLINED_FUNCTION_5_4();
  (*(v6 + 8))(&v1[v11], v3);
  v18 = v13;
  Published.init(initialValue:)();
  swift_endAccess();
  v14 = type metadata accessor for CARSessionStatusObservable();
  v17.receiver = v1;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  [v12 addSessionObserver_];

  return v15;
}

uint64_t CARSessionStatusObservable.sessionDidConnect(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = OUTLINED_FUNCTION_30(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_1();
  v10 = v9 - v8;
  v26 = type metadata accessor for DispatchQoS();
  v11 = OUTLINED_FUNCTION_30(v26);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_1();
  v18 = v17 - v16;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for OS_dispatch_queue();
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in CARSessionStatusObservable.sessionDidConnect(_:);
  aBlock[5] = v21;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_4(COERCE_DOUBLE(1107296256));
  aBlock[2] = v22;
  aBlock[3] = &block_descriptor;
  v23 = _Block_copy(aBlock);

  v24 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_3();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x245D0A6D0](0, v18, v10, v23);
  _Block_release(v23);

  (*(v5 + 8))(v10, v2);
  (*(v13 + 8))(v18, v26);
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

void closure #1 in CARSessionStatusObservable.sessionDidConnect(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    CARSessionStatusObservable.session.setter();
  }
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t CARSessionStatusObservable.sessionDidDisconnect(_:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = OUTLINED_FUNCTION_30(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_6_1();
  v8 = v7 - v6;
  v22 = type metadata accessor for DispatchQoS();
  v9 = OUTLINED_FUNCTION_30(v22);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_1();
  v16 = v15 - v14;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for OS_dispatch_queue();
  v18 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in CARSessionStatusObservable.sessionDidDisconnect(_:);
  aBlock[5] = v17;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_4(COERCE_DOUBLE(1107296256));
  aBlock[2] = v19;
  aBlock[3] = &block_descriptor_9;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_3();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x245D0A6D0](0, v16, v8, v20);
  _Block_release(v20);

  (*(v3 + 8))(v8, v0);
  (*(v11 + 8))(v16, v22);
}

void closure #1 in CARSessionStatusObservable.sessionDidDisconnect(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CARSessionStatusObservable.session.setter();
  }
}

id CARSessionStatusObservable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CARSessionStatusObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CARSessionStatusObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CARSessionStatusObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void type metadata completion function for CARSessionStatusObservable()
{
  type metadata accessor for Published<CARSession?>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<CARSession?>()
{
  if (!lazy cache variable for type metadata for Published<CARSession?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo10CARSessionCSgMd, &_sSo10CARSessionCSgMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<CARSession?>);
    }
  }
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return swift_beginAccess();
}

uint64_t key path getter for CAFPositionManagerObservable.state : CAFPositionManagerObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFPositionManagerObservable.state.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFPositionManagerObservable.state : CAFPositionManagerObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return CAFPositionManagerObservable.state.setter();
}

uint64_t CAFPositionManagerObservable.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CAFPositionManagerObservable.state.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t key path setter for CAFPositionManagerObservable.$state : CAFPositionManagerObservable(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo22CAFCharacteristicStateV_GMd, &_s7Combine9PublishedV9PublisherVySo22CAFCharacteristicStateV_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *a2;
  return CAFPositionManagerObservable.$state.setter(v7);
}

uint64_t CAFPositionManagerObservable.$state.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22CAFCharacteristicStateVGMd, _s7Combine9PublishedVySo22CAFCharacteristicStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CAFPositionManagerObservable.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo22CAFCharacteristicStateV_GMd, &_s7Combine9PublishedV9PublisherVySo22CAFCharacteristicStateV_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22CAFCharacteristicStateVGMd, _s7Combine9PublishedVySo22CAFCharacteristicStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

id CAFPositionManagerObservable.init(_:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC10CAFCombine28CAFPositionManagerObservable_observed] = a1;
  v2 = a1;
  v3 = [v2 state];
  swift_beginAccess();
  v7 = v3;
  type metadata accessor for CAFCharacteristicState(0);
  Published.init(initialValue:)();
  swift_endAccess();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CAFPositionManagerObservable();
  v4 = objc_msgSendSuper2(&v6, sel_init);
  [v2 registerObserver_];

  return v4;
}

uint64_t type metadata accessor for CAFPositionManagerObservable()
{
  result = type metadata singleton initialization cache for CAFPositionManagerObservable;
  if (!type metadata singleton initialization cache for CAFPositionManagerObservable)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CAFPositionManagerObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine28CAFPositionManagerObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFPositionManagerObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFPositionManagerObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFPositionManagerObservable@<X0>(void *a1@<X8>)
{
  result = CAFPositionManagerObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFPositionManagerObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFPositionManagerObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFPositionManagerObservable.positionManager(_:didUpdate:)(void *a1)
{
  [a1 state];

  return CAFPositionManagerObservable.state.setter();
}

unint64_t type metadata accessor for CAFPositionManager()
{
  result = lazy cache variable for type metadata for CAFPositionManager;
  if (!lazy cache variable for type metadata for CAFPositionManager)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFPositionManager);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFPositionManagerObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFPositionManagerObservable and conformance CAFPositionManagerObservable(&lazy protocol witness table cache variable for type CAFPositionManagerObservable and conformance CAFPositionManagerObservable, type metadata accessor for CAFPositionManagerObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPositionManagerObservable and conformance CAFPositionManagerObservable(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for CAFPositionManagerObservable()
{
  type metadata accessor for Published<CAFCharacteristicState>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<CAFCharacteristicState>()
{
  if (!lazy cache variable for type metadata for Published<CAFCharacteristicState>)
  {
    type metadata accessor for CAFCharacteristicState(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<CAFCharacteristicState>);
    }
  }
}

uint64_t static CAFAppearanceMode.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFAppearanceMode.allCases = a1;
}

uint64_t CAFAppearanceMode.description.getter()
{
  v0 = NSStringFromAppearanceMode();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFAppearanceMode(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFAppearanceMode and conformance CAFAppearanceMode(&lazy protocol witness table cache variable for type CAFAppearanceMode and conformance CAFAppearanceMode);
  a1[2] = lazy protocol witness table accessor for type CAFAppearanceMode and conformance CAFAppearanceMode(&lazy protocol witness table cache variable for type CAFAppearanceMode and conformance CAFAppearanceMode);
  result = lazy protocol witness table accessor for type CAFAppearanceMode and conformance CAFAppearanceMode(&lazy protocol witness table cache variable for type CAFAppearanceMode and conformance CAFAppearanceMode);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFAppearanceMode and conformance CAFAppearanceMode(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFAppearanceMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFAppearanceMode] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFAppearanceMode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFAppearanceMode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17CAFAppearanceModeVGMd, &_sSaySo17CAFAppearanceModeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFAppearanceMode] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFAppearanceMode@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFAppearanceMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFAppearanceMode@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFAudioContentBadge.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFAudioContentBadge.allCases = a1;
}

uint64_t CAFAudioContentBadge.description.getter()
{
  v0 = NSStringFromAudioContentBadge();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFAudioContentBadge(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFAudioContentBadge and conformance CAFAudioContentBadge(&lazy protocol witness table cache variable for type CAFAudioContentBadge and conformance CAFAudioContentBadge);
  a1[2] = lazy protocol witness table accessor for type CAFAudioContentBadge and conformance CAFAudioContentBadge(&lazy protocol witness table cache variable for type CAFAudioContentBadge and conformance CAFAudioContentBadge);
  result = lazy protocol witness table accessor for type CAFAudioContentBadge and conformance CAFAudioContentBadge(&lazy protocol witness table cache variable for type CAFAudioContentBadge and conformance CAFAudioContentBadge);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFAudioContentBadge and conformance CAFAudioContentBadge(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFAudioContentBadge(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFAudioContentBadge] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFAudioContentBadge] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFAudioContentBadge] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20CAFAudioContentBadgeVGMd, &_sSaySo20CAFAudioContentBadgeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFAudioContentBadge] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFAudioContentBadge@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFAudioContentBadge.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFAudioContentBadge@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFAutoModeIntensity.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFAutoModeIntensity.allCases = a1;
}

uint64_t CAFAutoModeIntensity.description.getter()
{
  v0 = NSStringFromAutoModeIntensity();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFAutoModeIntensity(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFAutoModeIntensity and conformance CAFAutoModeIntensity(&lazy protocol witness table cache variable for type CAFAutoModeIntensity and conformance CAFAutoModeIntensity);
  a1[2] = lazy protocol witness table accessor for type CAFAutoModeIntensity and conformance CAFAutoModeIntensity(&lazy protocol witness table cache variable for type CAFAutoModeIntensity and conformance CAFAutoModeIntensity);
  result = lazy protocol witness table accessor for type CAFAutoModeIntensity and conformance CAFAutoModeIntensity(&lazy protocol witness table cache variable for type CAFAutoModeIntensity and conformance CAFAutoModeIntensity);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFAutoModeIntensity and conformance CAFAutoModeIntensity(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFAutoModeIntensity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFAutoModeIntensity] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFAutoModeIntensity] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFAutoModeIntensity] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20CAFAutoModeIntensityVGMd, &_sSaySo20CAFAutoModeIntensityVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFAutoModeIntensity] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFAutoModeIntensity@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFAutoModeIntensity.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFAutoModeIntensity@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFBatteryConditioningState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFBatteryConditioningState.allCases = a1;
}

uint64_t CAFBatteryConditioningState.description.getter()
{
  v0 = NSStringFromBatteryConditioningState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFBatteryConditioningState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFBatteryConditioningState and conformance CAFBatteryConditioningState(&lazy protocol witness table cache variable for type CAFBatteryConditioningState and conformance CAFBatteryConditioningState);
  a1[2] = lazy protocol witness table accessor for type CAFBatteryConditioningState and conformance CAFBatteryConditioningState(&lazy protocol witness table cache variable for type CAFBatteryConditioningState and conformance CAFBatteryConditioningState);
  result = lazy protocol witness table accessor for type CAFBatteryConditioningState and conformance CAFBatteryConditioningState(&lazy protocol witness table cache variable for type CAFBatteryConditioningState and conformance CAFBatteryConditioningState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBatteryConditioningState and conformance CAFBatteryConditioningState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFBatteryConditioningState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFBatteryConditioningState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFBatteryConditioningState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFBatteryConditioningState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo27CAFBatteryConditioningStateVGMd, &_sSaySo27CAFBatteryConditioningStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFBatteryConditioningState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFBatteryConditioningState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFBatteryConditioningState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFBatteryConditioningState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFBatteryLevelState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFBatteryLevelState.allCases = a1;
}

uint64_t CAFBatteryLevelState.description.getter()
{
  v0 = NSStringFromBatteryLevelState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFBatteryLevelState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFBatteryLevelState and conformance CAFBatteryLevelState(&lazy protocol witness table cache variable for type CAFBatteryLevelState and conformance CAFBatteryLevelState);
  a1[2] = lazy protocol witness table accessor for type CAFBatteryLevelState and conformance CAFBatteryLevelState(&lazy protocol witness table cache variable for type CAFBatteryLevelState and conformance CAFBatteryLevelState);
  result = lazy protocol witness table accessor for type CAFBatteryLevelState and conformance CAFBatteryLevelState(&lazy protocol witness table cache variable for type CAFBatteryLevelState and conformance CAFBatteryLevelState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBatteryLevelState and conformance CAFBatteryLevelState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFBatteryLevelState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFBatteryLevelState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFBatteryLevelState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFBatteryLevelState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20CAFBatteryLevelStateVGMd, &_sSaySo20CAFBatteryLevelStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFBatteryLevelState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFBatteryLevelState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFBatteryLevelState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFBatteryLevelState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFButtonAction.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFButtonAction.allCases = a1;
}

uint64_t CAFButtonAction.description.getter()
{
  v0 = NSStringFromButtonAction();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFButtonAction(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFButtonAction and conformance CAFButtonAction(&lazy protocol witness table cache variable for type CAFButtonAction and conformance CAFButtonAction);
  a1[2] = lazy protocol witness table accessor for type CAFButtonAction and conformance CAFButtonAction(&lazy protocol witness table cache variable for type CAFButtonAction and conformance CAFButtonAction);
  result = lazy protocol witness table accessor for type CAFButtonAction and conformance CAFButtonAction(&lazy protocol witness table cache variable for type CAFButtonAction and conformance CAFButtonAction);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFButtonAction and conformance CAFButtonAction(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFButtonAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFButtonAction] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFButtonAction] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFButtonAction] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15CAFButtonActionVGMd, &_sSaySo15CAFButtonActionVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFButtonAction] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFButtonAction@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFButtonAction.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFButtonAction@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFCableState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFCableState.allCases = a1;
}

uint64_t CAFCableState.description.getter()
{
  v0 = NSStringFromCableState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFCableState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFCableState and conformance CAFCableState(&lazy protocol witness table cache variable for type CAFCableState and conformance CAFCableState);
  a1[2] = lazy protocol witness table accessor for type CAFCableState and conformance CAFCableState(&lazy protocol witness table cache variable for type CAFCableState and conformance CAFCableState);
  result = lazy protocol witness table accessor for type CAFCableState and conformance CAFCableState(&lazy protocol witness table cache variable for type CAFCableState and conformance CAFCableState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCableState and conformance CAFCableState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFCableState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFCableState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFCableState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFCableState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13CAFCableStateVGMd, &_sSaySo13CAFCableStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFCableState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFCableState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFCableState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFCableState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFCellularType.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFCellularType.allCases = a1;
}

uint64_t CAFCellularType.description.getter()
{
  v0 = NSStringFromCellularType();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFCellularType(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFCellularType and conformance CAFCellularType(&lazy protocol witness table cache variable for type CAFCellularType and conformance CAFCellularType);
  a1[2] = lazy protocol witness table accessor for type CAFCellularType and conformance CAFCellularType(&lazy protocol witness table cache variable for type CAFCellularType and conformance CAFCellularType);
  result = lazy protocol witness table accessor for type CAFCellularType and conformance CAFCellularType(&lazy protocol witness table cache variable for type CAFCellularType and conformance CAFCellularType);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCellularType and conformance CAFCellularType(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFCellularType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFCellularType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFCellularType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFCellularType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15CAFCellularTypeVGMd, &_sSaySo15CAFCellularTypeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFCellularType] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFCellularType@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFCellularType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFCellularType@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFChargingState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFChargingState.allCases = a1;
}

uint64_t CAFChargingState.description.getter()
{
  v0 = NSStringFromChargingState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFChargingState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFChargingState and conformance CAFChargingState(&lazy protocol witness table cache variable for type CAFChargingState and conformance CAFChargingState);
  a1[2] = lazy protocol witness table accessor for type CAFChargingState and conformance CAFChargingState(&lazy protocol witness table cache variable for type CAFChargingState and conformance CAFChargingState);
  result = lazy protocol witness table accessor for type CAFChargingState and conformance CAFChargingState(&lazy protocol witness table cache variable for type CAFChargingState and conformance CAFChargingState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFChargingState and conformance CAFChargingState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFChargingState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFChargingState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFChargingState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFChargingState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16CAFChargingStateVGMd, &_sSaySo16CAFChargingStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFChargingState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFChargingState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFChargingState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFChargingState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFDefrostTypes.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFDefrostTypes.allCases = a1;
}

uint64_t CAFDefrostTypes.description.getter()
{
  v0 = NSStringFromDefrostTypes();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFDefrostTypes(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFDefrostTypes and conformance CAFDefrostTypes(&lazy protocol witness table cache variable for type CAFDefrostTypes and conformance CAFDefrostTypes);
  a1[2] = lazy protocol witness table accessor for type CAFDefrostTypes and conformance CAFDefrostTypes(&lazy protocol witness table cache variable for type CAFDefrostTypes and conformance CAFDefrostTypes);
  result = lazy protocol witness table accessor for type CAFDefrostTypes and conformance CAFDefrostTypes(&lazy protocol witness table cache variable for type CAFDefrostTypes and conformance CAFDefrostTypes);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDefrostTypes and conformance CAFDefrostTypes(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFDefrostTypes(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFDefrostTypes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFDefrostTypes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFDefrostTypes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15CAFDefrostTypesVGMd, &_sSaySo15CAFDefrostTypesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFDefrostTypes] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFDefrostTypes@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFDefrostTypes.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFDefrostTypes@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFDriverSide.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFDriverSide.allCases = a1;
}

uint64_t CAFDriverSide.description.getter()
{
  v0 = NSStringFromDriverSide();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFDriverSide(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFDriverSide and conformance CAFDriverSide(&lazy protocol witness table cache variable for type CAFDriverSide and conformance CAFDriverSide);
  a1[2] = lazy protocol witness table accessor for type CAFDriverSide and conformance CAFDriverSide(&lazy protocol witness table cache variable for type CAFDriverSide and conformance CAFDriverSide);
  result = lazy protocol witness table accessor for type CAFDriverSide and conformance CAFDriverSide(&lazy protocol witness table cache variable for type CAFDriverSide and conformance CAFDriverSide);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDriverSide and conformance CAFDriverSide(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFDriverSide(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFDriverSide] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFDriverSide] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFDriverSide] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13CAFDriverSideVGMd, &_sSaySo13CAFDriverSideVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFDriverSide] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFDriverSide@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFDriverSide.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFDriverSide@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFEqualizerType.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFEqualizerType.allCases = a1;
}

uint64_t CAFEqualizerType.description.getter()
{
  v0 = NSStringFromEqualizerType();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFEqualizerType(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFEqualizerType and conformance CAFEqualizerType(&lazy protocol witness table cache variable for type CAFEqualizerType and conformance CAFEqualizerType);
  a1[2] = lazy protocol witness table accessor for type CAFEqualizerType and conformance CAFEqualizerType(&lazy protocol witness table cache variable for type CAFEqualizerType and conformance CAFEqualizerType);
  result = lazy protocol witness table accessor for type CAFEqualizerType and conformance CAFEqualizerType(&lazy protocol witness table cache variable for type CAFEqualizerType and conformance CAFEqualizerType);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFEqualizerType and conformance CAFEqualizerType(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFEqualizerType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFEqualizerType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFEqualizerType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFEqualizerType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16CAFEqualizerTypeVGMd, &_sSaySo16CAFEqualizerTypeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFEqualizerType] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFEqualizerType@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFEqualizerType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFEqualizerType@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFFillLevelLabel.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFFillLevelLabel.allCases = a1;
}

uint64_t CAFFillLevelLabel.description.getter()
{
  v0 = NSStringFromFillLevelLabel();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFFillLevelLabel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFFillLevelLabel and conformance CAFFillLevelLabel(&lazy protocol witness table cache variable for type CAFFillLevelLabel and conformance CAFFillLevelLabel);
  a1[2] = lazy protocol witness table accessor for type CAFFillLevelLabel and conformance CAFFillLevelLabel(&lazy protocol witness table cache variable for type CAFFillLevelLabel and conformance CAFFillLevelLabel);
  result = lazy protocol witness table accessor for type CAFFillLevelLabel and conformance CAFFillLevelLabel(&lazy protocol witness table cache variable for type CAFFillLevelLabel and conformance CAFFillLevelLabel);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFFillLevelLabel and conformance CAFFillLevelLabel(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFFillLevelLabel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFFillLevelLabel] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFFillLevelLabel] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFFillLevelLabel] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17CAFFillLevelLabelVGMd, &_sSaySo17CAFFillLevelLabelVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFFillLevelLabel] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFFillLevelLabel@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFFillLevelLabel.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFFillLevelLabel@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFFuelLevelState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFFuelLevelState.allCases = a1;
}

uint64_t CAFFuelLevelState.description.getter()
{
  v0 = NSStringFromFuelLevelState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFFuelLevelState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFFuelLevelState and conformance CAFFuelLevelState(&lazy protocol witness table cache variable for type CAFFuelLevelState and conformance CAFFuelLevelState);
  a1[2] = lazy protocol witness table accessor for type CAFFuelLevelState and conformance CAFFuelLevelState(&lazy protocol witness table cache variable for type CAFFuelLevelState and conformance CAFFuelLevelState);
  result = lazy protocol witness table accessor for type CAFFuelLevelState and conformance CAFFuelLevelState(&lazy protocol witness table cache variable for type CAFFuelLevelState and conformance CAFFuelLevelState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFFuelLevelState and conformance CAFFuelLevelState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFFuelLevelState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFFuelLevelState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFFuelLevelState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFFuelLevelState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17CAFFuelLevelStateVGMd, &_sSaySo17CAFFuelLevelStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFFuelLevelState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFFuelLevelState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFFuelLevelState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFFuelLevelState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFGeodeticSystem.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFGeodeticSystem.allCases = a1;
}

uint64_t CAFGeodeticSystem.description.getter()
{
  v0 = NSStringFromGeodeticSystem();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFGeodeticSystem(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFGeodeticSystem and conformance CAFGeodeticSystem(&lazy protocol witness table cache variable for type CAFGeodeticSystem and conformance CAFGeodeticSystem);
  a1[2] = lazy protocol witness table accessor for type CAFGeodeticSystem and conformance CAFGeodeticSystem(&lazy protocol witness table cache variable for type CAFGeodeticSystem and conformance CAFGeodeticSystem);
  result = lazy protocol witness table accessor for type CAFGeodeticSystem and conformance CAFGeodeticSystem(&lazy protocol witness table cache variable for type CAFGeodeticSystem and conformance CAFGeodeticSystem);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFGeodeticSystem and conformance CAFGeodeticSystem(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFGeodeticSystem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFGeodeticSystem] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFGeodeticSystem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFGeodeticSystem] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17CAFGeodeticSystemVGMd, &_sSaySo17CAFGeodeticSystemVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFGeodeticSystem] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFGeodeticSystem@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFGeodeticSystem.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFGeodeticSystem@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFIcyConditions.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFIcyConditions.allCases = a1;
}

uint64_t CAFIcyConditions.description.getter()
{
  v0 = NSStringFromIcyConditions();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFIcyConditions(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFIcyConditions and conformance CAFIcyConditions(&lazy protocol witness table cache variable for type CAFIcyConditions and conformance CAFIcyConditions);
  a1[2] = lazy protocol witness table accessor for type CAFIcyConditions and conformance CAFIcyConditions(&lazy protocol witness table cache variable for type CAFIcyConditions and conformance CAFIcyConditions);
  result = lazy protocol witness table accessor for type CAFIcyConditions and conformance CAFIcyConditions(&lazy protocol witness table cache variable for type CAFIcyConditions and conformance CAFIcyConditions);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFIcyConditions and conformance CAFIcyConditions(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFIcyConditions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFIcyConditions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFIcyConditions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFIcyConditions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16CAFIcyConditionsVGMd, &_sSaySo16CAFIcyConditionsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFIcyConditions] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFIcyConditions@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFIcyConditions.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFIcyConditions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFImageColor.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFImageColor.allCases = a1;
}

uint64_t CAFImageColor.description.getter()
{
  v0 = NSStringFromImageColor();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFImageColor(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFImageColor and conformance CAFImageColor(&lazy protocol witness table cache variable for type CAFImageColor and conformance CAFImageColor);
  a1[2] = lazy protocol witness table accessor for type CAFImageColor and conformance CAFImageColor(&lazy protocol witness table cache variable for type CAFImageColor and conformance CAFImageColor);
  result = lazy protocol witness table accessor for type CAFImageColor and conformance CAFImageColor(&lazy protocol witness table cache variable for type CAFImageColor and conformance CAFImageColor);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFImageColor and conformance CAFImageColor(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFImageColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFImageColor] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFImageColor] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFImageColor] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13CAFImageColorVGMd, &_sSaySo13CAFImageColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFImageColor] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFImageColor@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFImageColor.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFImageColor@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFLockState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFLockState.allCases = a1;
}

uint64_t CAFLockState.description.getter()
{
  v0 = NSStringFromLockState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFLockState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFLockState and conformance CAFLockState(&lazy protocol witness table cache variable for type CAFLockState and conformance CAFLockState);
  a1[2] = lazy protocol witness table accessor for type CAFLockState and conformance CAFLockState(&lazy protocol witness table cache variable for type CAFLockState and conformance CAFLockState);
  result = lazy protocol witness table accessor for type CAFLockState and conformance CAFLockState(&lazy protocol witness table cache variable for type CAFLockState and conformance CAFLockState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFLockState and conformance CAFLockState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFLockState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFLockState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFLockState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFLockState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo12CAFLockStateVGMd, &_sSaySo12CAFLockStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFLockState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFLockState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFLockState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFLockState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFMediaCategory.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFMediaCategory.allCases = a1;
}

uint64_t CAFMediaCategory.description.getter()
{
  v0 = NSStringFromMediaCategory();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFMediaCategory(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFMediaCategory and conformance CAFMediaCategory(&lazy protocol witness table cache variable for type CAFMediaCategory and conformance CAFMediaCategory);
  a1[2] = lazy protocol witness table accessor for type CAFMediaCategory and conformance CAFMediaCategory(&lazy protocol witness table cache variable for type CAFMediaCategory and conformance CAFMediaCategory);
  result = lazy protocol witness table accessor for type CAFMediaCategory and conformance CAFMediaCategory(&lazy protocol witness table cache variable for type CAFMediaCategory and conformance CAFMediaCategory);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMediaCategory and conformance CAFMediaCategory(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFMediaCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFMediaCategory] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFMediaCategory] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFMediaCategory] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16CAFMediaCategoryVGMd, &_sSaySo16CAFMediaCategoryVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFMediaCategory] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFMediaCategory@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFMediaCategory.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFMediaCategory@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFMediaSourceSemanticType.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFMediaSourceSemanticType.allCases = a1;
}

uint64_t CAFMediaSourceSemanticType.description.getter()
{
  v0 = NSStringFromMediaSourceSemanticType();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFMediaSourceSemanticType(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType(&lazy protocol witness table cache variable for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType);
  a1[2] = lazy protocol witness table accessor for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType(&lazy protocol witness table cache variable for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType);
  result = lazy protocol witness table accessor for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType(&lazy protocol witness table cache variable for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFMediaSourceSemanticType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFMediaSourceSemanticType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFMediaSourceSemanticType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFMediaSourceSemanticType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo26CAFMediaSourceSemanticTypeVGMd, &_sSaySo26CAFMediaSourceSemanticTypeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFMediaSourceSemanticType] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFMediaSourceSemanticType@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFMediaSourceSemanticType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFMediaSourceSemanticType@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFModuleStatus.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFModuleStatus.allCases = a1;
}

uint64_t CAFModuleStatus.description.getter()
{
  v0 = NSStringFromModuleStatus();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFModuleStatus(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFModuleStatus and conformance CAFModuleStatus(&lazy protocol witness table cache variable for type CAFModuleStatus and conformance CAFModuleStatus);
  a1[2] = lazy protocol witness table accessor for type CAFModuleStatus and conformance CAFModuleStatus(&lazy protocol witness table cache variable for type CAFModuleStatus and conformance CAFModuleStatus);
  result = lazy protocol witness table accessor for type CAFModuleStatus and conformance CAFModuleStatus(&lazy protocol witness table cache variable for type CAFModuleStatus and conformance CAFModuleStatus);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFModuleStatus and conformance CAFModuleStatus(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFModuleStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFModuleStatus] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFModuleStatus] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFModuleStatus] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15CAFModuleStatusVGMd, &_sSaySo15CAFModuleStatusVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFModuleStatus] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFModuleStatus@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFModuleStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFModuleStatus@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFNotificationSeverity.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFNotificationSeverity.allCases = a1;
}

uint64_t CAFNotificationSeverity.description.getter()
{
  v0 = NSStringFromNotificationSeverity();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFNotificationSeverity(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFNotificationSeverity and conformance CAFNotificationSeverity(&lazy protocol witness table cache variable for type CAFNotificationSeverity and conformance CAFNotificationSeverity);
  a1[2] = lazy protocol witness table accessor for type CAFNotificationSeverity and conformance CAFNotificationSeverity(&lazy protocol witness table cache variable for type CAFNotificationSeverity and conformance CAFNotificationSeverity);
  result = lazy protocol witness table accessor for type CAFNotificationSeverity and conformance CAFNotificationSeverity(&lazy protocol witness table cache variable for type CAFNotificationSeverity and conformance CAFNotificationSeverity);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFNotificationSeverity and conformance CAFNotificationSeverity(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFNotificationSeverity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFNotificationSeverity] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFNotificationSeverity] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFNotificationSeverity] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo23CAFNotificationSeverityVGMd, &_sSaySo23CAFNotificationSeverityVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFNotificationSeverity] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFNotificationSeverity@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFNotificationSeverity.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFNotificationSeverity@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFPairedDeviceState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFPairedDeviceState.allCases = a1;
}

uint64_t CAFPairedDeviceState.description.getter()
{
  v0 = NSStringFromPairedDeviceState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFPairedDeviceState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFPairedDeviceState and conformance CAFPairedDeviceState(&lazy protocol witness table cache variable for type CAFPairedDeviceState and conformance CAFPairedDeviceState);
  a1[2] = lazy protocol witness table accessor for type CAFPairedDeviceState and conformance CAFPairedDeviceState(&lazy protocol witness table cache variable for type CAFPairedDeviceState and conformance CAFPairedDeviceState);
  result = lazy protocol witness table accessor for type CAFPairedDeviceState and conformance CAFPairedDeviceState(&lazy protocol witness table cache variable for type CAFPairedDeviceState and conformance CAFPairedDeviceState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPairedDeviceState and conformance CAFPairedDeviceState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFPairedDeviceState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFPairedDeviceState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFPairedDeviceState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFPairedDeviceState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20CAFPairedDeviceStateVGMd, &_sSaySo20CAFPairedDeviceStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFPairedDeviceState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFPairedDeviceState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFPairedDeviceState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFPairedDeviceState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFPlaybackState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFPlaybackState.allCases = a1;
}

uint64_t CAFPlaybackState.description.getter()
{
  v0 = NSStringFromPlaybackState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFPlaybackState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFPlaybackState and conformance CAFPlaybackState(&lazy protocol witness table cache variable for type CAFPlaybackState and conformance CAFPlaybackState);
  a1[2] = lazy protocol witness table accessor for type CAFPlaybackState and conformance CAFPlaybackState(&lazy protocol witness table cache variable for type CAFPlaybackState and conformance CAFPlaybackState);
  result = lazy protocol witness table accessor for type CAFPlaybackState and conformance CAFPlaybackState(&lazy protocol witness table cache variable for type CAFPlaybackState and conformance CAFPlaybackState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPlaybackState and conformance CAFPlaybackState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFPlaybackState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFPlaybackState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFPlaybackState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFPlaybackState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16CAFPlaybackStateVGMd, &_sSaySo16CAFPlaybackStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFPlaybackState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFPlaybackState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFPlaybackState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFPlaybackState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFPortSideIndicator.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFPortSideIndicator.allCases = a1;
}

uint64_t CAFPortSideIndicator.description.getter()
{
  v0 = NSStringFromPortSideIndicator();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFPortSideIndicator(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFPortSideIndicator and conformance CAFPortSideIndicator(&lazy protocol witness table cache variable for type CAFPortSideIndicator and conformance CAFPortSideIndicator);
  a1[2] = lazy protocol witness table accessor for type CAFPortSideIndicator and conformance CAFPortSideIndicator(&lazy protocol witness table cache variable for type CAFPortSideIndicator and conformance CAFPortSideIndicator);
  result = lazy protocol witness table accessor for type CAFPortSideIndicator and conformance CAFPortSideIndicator(&lazy protocol witness table cache variable for type CAFPortSideIndicator and conformance CAFPortSideIndicator);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPortSideIndicator and conformance CAFPortSideIndicator(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFPortSideIndicator(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFPortSideIndicator] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFPortSideIndicator] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFPortSideIndicator] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20CAFPortSideIndicatorVGMd, &_sSaySo20CAFPortSideIndicatorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFPortSideIndicator] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFPortSideIndicator@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFPortSideIndicator.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFPortSideIndicator@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFPowerState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFPowerState.allCases = a1;
}

uint64_t CAFPowerState.description.getter()
{
  v0 = NSStringFromPowerState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFPowerState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFPowerState and conformance CAFPowerState(&lazy protocol witness table cache variable for type CAFPowerState and conformance CAFPowerState);
  a1[2] = lazy protocol witness table accessor for type CAFPowerState and conformance CAFPowerState(&lazy protocol witness table cache variable for type CAFPowerState and conformance CAFPowerState);
  result = lazy protocol witness table accessor for type CAFPowerState and conformance CAFPowerState(&lazy protocol witness table cache variable for type CAFPowerState and conformance CAFPowerState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPowerState and conformance CAFPowerState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFPowerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFPowerState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFPowerState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFPowerState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13CAFPowerStateVGMd, &_sSaySo13CAFPowerStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFPowerState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFPowerState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFPowerState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFPowerState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFPressureState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFPressureState.allCases = a1;
}

uint64_t CAFPressureState.description.getter()
{
  v0 = NSStringFromPressureState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFPressureState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFPressureState and conformance CAFPressureState(&lazy protocol witness table cache variable for type CAFPressureState and conformance CAFPressureState);
  a1[2] = lazy protocol witness table accessor for type CAFPressureState and conformance CAFPressureState(&lazy protocol witness table cache variable for type CAFPressureState and conformance CAFPressureState);
  result = lazy protocol witness table accessor for type CAFPressureState and conformance CAFPressureState(&lazy protocol witness table cache variable for type CAFPressureState and conformance CAFPressureState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPressureState and conformance CAFPressureState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFPressureState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFPressureState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFPressureState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFPressureState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16CAFPressureStateVGMd, &_sSaySo16CAFPressureStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFPressureState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFPressureState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFPressureState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFPressureState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFProximityAlert.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFProximityAlert.allCases = a1;
}

uint64_t CAFProximityAlert.description.getter()
{
  v0 = NSStringFromProximityAlert();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFProximityAlert(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFProximityAlert and conformance CAFProximityAlert(&lazy protocol witness table cache variable for type CAFProximityAlert and conformance CAFProximityAlert);
  a1[2] = lazy protocol witness table accessor for type CAFProximityAlert and conformance CAFProximityAlert(&lazy protocol witness table cache variable for type CAFProximityAlert and conformance CAFProximityAlert);
  result = lazy protocol witness table accessor for type CAFProximityAlert and conformance CAFProximityAlert(&lazy protocol witness table cache variable for type CAFProximityAlert and conformance CAFProximityAlert);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFProximityAlert and conformance CAFProximityAlert(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFProximityAlert(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFProximityAlert] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFProximityAlert] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFProximityAlert] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17CAFProximityAlertVGMd, &_sSaySo17CAFProximityAlertVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFProximityAlert] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFProximityAlert@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFProximityAlert.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFProximityAlert@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFRotationalSpeedState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFRotationalSpeedState.allCases = a1;
}

uint64_t CAFRotationalSpeedState.description.getter()
{
  v0 = NSStringFromRotationalSpeedState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFRotationalSpeedState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFRotationalSpeedState and conformance CAFRotationalSpeedState(&lazy protocol witness table cache variable for type CAFRotationalSpeedState and conformance CAFRotationalSpeedState);
  a1[2] = lazy protocol witness table accessor for type CAFRotationalSpeedState and conformance CAFRotationalSpeedState(&lazy protocol witness table cache variable for type CAFRotationalSpeedState and conformance CAFRotationalSpeedState);
  result = lazy protocol witness table accessor for type CAFRotationalSpeedState and conformance CAFRotationalSpeedState(&lazy protocol witness table cache variable for type CAFRotationalSpeedState and conformance CAFRotationalSpeedState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFRotationalSpeedState and conformance CAFRotationalSpeedState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFRotationalSpeedState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFRotationalSpeedState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFRotationalSpeedState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFRotationalSpeedState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo23CAFRotationalSpeedStateVGMd, &_sSaySo23CAFRotationalSpeedStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFRotationalSpeedState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFRotationalSpeedState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFRotationalSpeedState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFRotationalSpeedState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFRouteState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFRouteState.allCases = a1;
}

uint64_t CAFRouteState.description.getter()
{
  v0 = NSStringFromRouteState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFRouteState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFRouteState and conformance CAFRouteState(&lazy protocol witness table cache variable for type CAFRouteState and conformance CAFRouteState);
  a1[2] = lazy protocol witness table accessor for type CAFRouteState and conformance CAFRouteState(&lazy protocol witness table cache variable for type CAFRouteState and conformance CAFRouteState);
  result = lazy protocol witness table accessor for type CAFRouteState and conformance CAFRouteState(&lazy protocol witness table cache variable for type CAFRouteState and conformance CAFRouteState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFRouteState and conformance CAFRouteState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFRouteState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFRouteState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFRouteState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFRouteState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13CAFRouteStateVGMd, &_sSaySo13CAFRouteStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFRouteState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFRouteState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFRouteState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFRouteState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFSeatBeltIndicator.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFSeatBeltIndicator.allCases = a1;
}

uint64_t CAFSeatBeltIndicator.description.getter()
{
  v0 = NSStringFromSeatBeltIndicator();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFSeatBeltIndicator(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFSeatBeltIndicator and conformance CAFSeatBeltIndicator(&lazy protocol witness table cache variable for type CAFSeatBeltIndicator and conformance CAFSeatBeltIndicator);
  a1[2] = lazy protocol witness table accessor for type CAFSeatBeltIndicator and conformance CAFSeatBeltIndicator(&lazy protocol witness table cache variable for type CAFSeatBeltIndicator and conformance CAFSeatBeltIndicator);
  result = lazy protocol witness table accessor for type CAFSeatBeltIndicator and conformance CAFSeatBeltIndicator(&lazy protocol witness table cache variable for type CAFSeatBeltIndicator and conformance CAFSeatBeltIndicator);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSeatBeltIndicator and conformance CAFSeatBeltIndicator(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFSeatBeltIndicator(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFSeatBeltIndicator] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFSeatBeltIndicator] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFSeatBeltIndicator] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20CAFSeatBeltIndicatorVGMd, &_sSaySo20CAFSeatBeltIndicatorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFSeatBeltIndicator] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFSeatBeltIndicator@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFSeatBeltIndicator.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFSeatBeltIndicator@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFSeatOccupancy.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFSeatOccupancy.allCases = a1;
}

uint64_t CAFSeatOccupancy.description.getter()
{
  v0 = NSStringFromSeatOccupancy();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFSeatOccupancy(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFSeatOccupancy and conformance CAFSeatOccupancy(&lazy protocol witness table cache variable for type CAFSeatOccupancy and conformance CAFSeatOccupancy);
  a1[2] = lazy protocol witness table accessor for type CAFSeatOccupancy and conformance CAFSeatOccupancy(&lazy protocol witness table cache variable for type CAFSeatOccupancy and conformance CAFSeatOccupancy);
  result = lazy protocol witness table accessor for type CAFSeatOccupancy and conformance CAFSeatOccupancy(&lazy protocol witness table cache variable for type CAFSeatOccupancy and conformance CAFSeatOccupancy);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSeatOccupancy and conformance CAFSeatOccupancy(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFSeatOccupancy(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFSeatOccupancy] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFSeatOccupancy] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFSeatOccupancy] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16CAFSeatOccupancyVGMd, &_sSaySo16CAFSeatOccupancyVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFSeatOccupancy] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFSeatOccupancy@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFSeatOccupancy.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFSeatOccupancy@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFSensorState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFSensorState.allCases = a1;
}

uint64_t CAFSensorState.description.getter()
{
  v0 = NSStringFromSensorState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFSensorState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFSensorState and conformance CAFSensorState(&lazy protocol witness table cache variable for type CAFSensorState and conformance CAFSensorState);
  a1[2] = lazy protocol witness table accessor for type CAFSensorState and conformance CAFSensorState(&lazy protocol witness table cache variable for type CAFSensorState and conformance CAFSensorState);
  result = lazy protocol witness table accessor for type CAFSensorState and conformance CAFSensorState(&lazy protocol witness table cache variable for type CAFSensorState and conformance CAFSensorState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSensorState and conformance CAFSensorState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFSensorState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFSensorState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFSensorState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFSensorState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo14CAFSensorStateVGMd, &_sSaySo14CAFSensorStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFSensorState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFSensorState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFSensorState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFSensorState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFSettingProminenceLevel.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFSettingProminenceLevel.allCases = a1;
}

uint64_t CAFSettingProminenceLevel.description.getter()
{
  v0 = NSStringFromSettingProminenceLevel();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFSettingProminenceLevel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(&lazy protocol witness table cache variable for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel);
  a1[2] = lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(&lazy protocol witness table cache variable for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel);
  result = lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(&lazy protocol witness table cache variable for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFSettingProminenceLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFSettingProminenceLevel] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFSettingProminenceLevel] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFSettingProminenceLevel] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo25CAFSettingProminenceLevelVGMd, &_sSaySo25CAFSettingProminenceLevelVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFSettingProminenceLevel] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFSettingProminenceLevel@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFSettingProminenceLevel.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFSettingProminenceLevel@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFSettingsCategory.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFSettingsCategory.allCases = a1;
}

uint64_t CAFSettingsCategory.description.getter()
{
  v0 = NSStringFromSettingsCategory();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFSettingsCategory(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFSettingsCategory and conformance CAFSettingsCategory(&lazy protocol witness table cache variable for type CAFSettingsCategory and conformance CAFSettingsCategory);
  a1[2] = lazy protocol witness table accessor for type CAFSettingsCategory and conformance CAFSettingsCategory(&lazy protocol witness table cache variable for type CAFSettingsCategory and conformance CAFSettingsCategory);
  result = lazy protocol witness table accessor for type CAFSettingsCategory and conformance CAFSettingsCategory(&lazy protocol witness table cache variable for type CAFSettingsCategory and conformance CAFSettingsCategory);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSettingsCategory and conformance CAFSettingsCategory(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFSettingsCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFSettingsCategory] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFSettingsCategory] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFSettingsCategory] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo19CAFSettingsCategoryVGMd, &_sSaySo19CAFSettingsCategoryVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFSettingsCategory] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFSettingsCategory@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFSettingsCategory.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFSettingsCategory@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFTargetSpeedState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFTargetSpeedState.allCases = a1;
}

uint64_t CAFTargetSpeedState.description.getter()
{
  v0 = NSStringFromTargetSpeedState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFTargetSpeedState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFTargetSpeedState and conformance CAFTargetSpeedState(&lazy protocol witness table cache variable for type CAFTargetSpeedState and conformance CAFTargetSpeedState);
  a1[2] = lazy protocol witness table accessor for type CAFTargetSpeedState and conformance CAFTargetSpeedState(&lazy protocol witness table cache variable for type CAFTargetSpeedState and conformance CAFTargetSpeedState);
  result = lazy protocol witness table accessor for type CAFTargetSpeedState and conformance CAFTargetSpeedState(&lazy protocol witness table cache variable for type CAFTargetSpeedState and conformance CAFTargetSpeedState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTargetSpeedState and conformance CAFTargetSpeedState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTargetSpeedState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFTargetSpeedState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFTargetSpeedState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFTargetSpeedState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo19CAFTargetSpeedStateVGMd, &_sSaySo19CAFTargetSpeedStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFTargetSpeedState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFTargetSpeedState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFTargetSpeedState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFTargetSpeedState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFTemperatureState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFTemperatureState.allCases = a1;
}

uint64_t CAFTemperatureState.description.getter()
{
  v0 = NSStringFromTemperatureState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFTemperatureState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFTemperatureState and conformance CAFTemperatureState(&lazy protocol witness table cache variable for type CAFTemperatureState and conformance CAFTemperatureState);
  a1[2] = lazy protocol witness table accessor for type CAFTemperatureState and conformance CAFTemperatureState(&lazy protocol witness table cache variable for type CAFTemperatureState and conformance CAFTemperatureState);
  result = lazy protocol witness table accessor for type CAFTemperatureState and conformance CAFTemperatureState(&lazy protocol witness table cache variable for type CAFTemperatureState and conformance CAFTemperatureState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTemperatureState and conformance CAFTemperatureState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTemperatureState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFTemperatureState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFTemperatureState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFTemperatureState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo19CAFTemperatureStateVGMd, &_sSaySo19CAFTemperatureStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFTemperatureState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFTemperatureState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFTemperatureState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFTemperatureState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFTrailingButtonType.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFTrailingButtonType.allCases = a1;
}

uint64_t CAFTrailingButtonType.description.getter()
{
  v0 = NSStringFromTrailingButtonType();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFTrailingButtonType(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFTrailingButtonType and conformance CAFTrailingButtonType(&lazy protocol witness table cache variable for type CAFTrailingButtonType and conformance CAFTrailingButtonType);
  a1[2] = lazy protocol witness table accessor for type CAFTrailingButtonType and conformance CAFTrailingButtonType(&lazy protocol witness table cache variable for type CAFTrailingButtonType and conformance CAFTrailingButtonType);
  result = lazy protocol witness table accessor for type CAFTrailingButtonType and conformance CAFTrailingButtonType(&lazy protocol witness table cache variable for type CAFTrailingButtonType and conformance CAFTrailingButtonType);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTrailingButtonType and conformance CAFTrailingButtonType(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTrailingButtonType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFTrailingButtonType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFTrailingButtonType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFTrailingButtonType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo21CAFTrailingButtonTypeVGMd, &_sSaySo21CAFTrailingButtonTypeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFTrailingButtonType] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFTrailingButtonType@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFTrailingButtonType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFTrailingButtonType@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFTransmissionMode.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFTransmissionMode.allCases = a1;
}

uint64_t CAFTransmissionMode.description.getter()
{
  v0 = NSStringFromTransmissionMode();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFTransmissionMode(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFTransmissionMode and conformance CAFTransmissionMode(&lazy protocol witness table cache variable for type CAFTransmissionMode and conformance CAFTransmissionMode);
  a1[2] = lazy protocol witness table accessor for type CAFTransmissionMode and conformance CAFTransmissionMode(&lazy protocol witness table cache variable for type CAFTransmissionMode and conformance CAFTransmissionMode);
  result = lazy protocol witness table accessor for type CAFTransmissionMode and conformance CAFTransmissionMode(&lazy protocol witness table cache variable for type CAFTransmissionMode and conformance CAFTransmissionMode);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTransmissionMode and conformance CAFTransmissionMode(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTransmissionMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFTransmissionMode] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFTransmissionMode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFTransmissionMode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo19CAFTransmissionModeVGMd, &_sSaySo19CAFTransmissionModeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFTransmissionMode] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFTransmissionMode@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFTransmissionMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFTransmissionMode@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFTurnSignal.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFTurnSignal.allCases = a1;
}

uint64_t CAFTurnSignal.description.getter()
{
  v0 = NSStringFromTurnSignal();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFTurnSignal(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFTurnSignal and conformance CAFTurnSignal(&lazy protocol witness table cache variable for type CAFTurnSignal and conformance CAFTurnSignal);
  a1[2] = lazy protocol witness table accessor for type CAFTurnSignal and conformance CAFTurnSignal(&lazy protocol witness table cache variable for type CAFTurnSignal and conformance CAFTurnSignal);
  result = lazy protocol witness table accessor for type CAFTurnSignal and conformance CAFTurnSignal(&lazy protocol witness table cache variable for type CAFTurnSignal and conformance CAFTurnSignal);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTurnSignal and conformance CAFTurnSignal(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTurnSignal(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFTurnSignal] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFTurnSignal] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFTurnSignal] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13CAFTurnSignalVGMd, &_sSaySo13CAFTurnSignalVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFTurnSignal] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFTurnSignal@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFTurnSignal.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFTurnSignal@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFUIEmphasizedEngineGauge.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFUIEmphasizedEngineGauge.allCases = a1;
}

uint64_t CAFUIEmphasizedEngineGauge.description.getter()
{
  v0 = NSStringFromUIEmphasizedEngineGauge();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFUIEmphasizedEngineGauge(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFUIEmphasizedEngineGauge and conformance CAFUIEmphasizedEngineGauge(&lazy protocol witness table cache variable for type CAFUIEmphasizedEngineGauge and conformance CAFUIEmphasizedEngineGauge);
  a1[2] = lazy protocol witness table accessor for type CAFUIEmphasizedEngineGauge and conformance CAFUIEmphasizedEngineGauge(&lazy protocol witness table cache variable for type CAFUIEmphasizedEngineGauge and conformance CAFUIEmphasizedEngineGauge);
  result = lazy protocol witness table accessor for type CAFUIEmphasizedEngineGauge and conformance CAFUIEmphasizedEngineGauge(&lazy protocol witness table cache variable for type CAFUIEmphasizedEngineGauge and conformance CAFUIEmphasizedEngineGauge);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFUIEmphasizedEngineGauge and conformance CAFUIEmphasizedEngineGauge(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFUIEmphasizedEngineGauge(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFUIEmphasizedEngineGauge] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFUIEmphasizedEngineGauge] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFUIEmphasizedEngineGauge] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo26CAFUIEmphasizedEngineGaugeVGMd, &_sSaySo26CAFUIEmphasizedEngineGaugeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFUIEmphasizedEngineGauge] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFUIEmphasizedEngineGauge@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFUIEmphasizedEngineGauge.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFUIEmphasizedEngineGauge@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFUIInputDeviceButtonEvent.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFUIInputDeviceButtonEvent.allCases = a1;
}

uint64_t CAFUIInputDeviceButtonEvent.description.getter()
{
  v0 = NSStringFromUIInputDeviceButtonEvent();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFUIInputDeviceButtonEvent(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFUIInputDeviceButtonEvent and conformance CAFUIInputDeviceButtonEvent(&lazy protocol witness table cache variable for type CAFUIInputDeviceButtonEvent and conformance CAFUIInputDeviceButtonEvent);
  a1[2] = lazy protocol witness table accessor for type CAFUIInputDeviceButtonEvent and conformance CAFUIInputDeviceButtonEvent(&lazy protocol witness table cache variable for type CAFUIInputDeviceButtonEvent and conformance CAFUIInputDeviceButtonEvent);
  result = lazy protocol witness table accessor for type CAFUIInputDeviceButtonEvent and conformance CAFUIInputDeviceButtonEvent(&lazy protocol witness table cache variable for type CAFUIInputDeviceButtonEvent and conformance CAFUIInputDeviceButtonEvent);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFUIInputDeviceButtonEvent and conformance CAFUIInputDeviceButtonEvent(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFUIInputDeviceButtonEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFUIInputDeviceButtonEvent] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFUIInputDeviceButtonEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFUIInputDeviceButtonEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo27CAFUIInputDeviceButtonEventVGMd, &_sSaySo27CAFUIInputDeviceButtonEventVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFUIInputDeviceButtonEvent] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFUIInputDeviceButtonEvent@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFUIInputDeviceButtonEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFUIInputDeviceButtonEvent@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFUIInputDevicePurpose.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFUIInputDevicePurpose.allCases = a1;
}

uint64_t CAFUIInputDevicePurpose.description.getter()
{
  v0 = NSStringFromUIInputDevicePurpose();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFUIInputDevicePurpose(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFUIInputDevicePurpose and conformance CAFUIInputDevicePurpose(&lazy protocol witness table cache variable for type CAFUIInputDevicePurpose and conformance CAFUIInputDevicePurpose);
  a1[2] = lazy protocol witness table accessor for type CAFUIInputDevicePurpose and conformance CAFUIInputDevicePurpose(&lazy protocol witness table cache variable for type CAFUIInputDevicePurpose and conformance CAFUIInputDevicePurpose);
  result = lazy protocol witness table accessor for type CAFUIInputDevicePurpose and conformance CAFUIInputDevicePurpose(&lazy protocol witness table cache variable for type CAFUIInputDevicePurpose and conformance CAFUIInputDevicePurpose);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFUIInputDevicePurpose and conformance CAFUIInputDevicePurpose(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFUIInputDevicePurpose(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFUIInputDevicePurpose] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFUIInputDevicePurpose] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFUIInputDevicePurpose] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo23CAFUIInputDevicePurposeVGMd, &_sSaySo23CAFUIInputDevicePurposeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFUIInputDevicePurpose] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFUIInputDevicePurpose@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFUIInputDevicePurpose.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFUIInputDevicePurpose@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFUISceneState.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFUISceneState.allCases = a1;
}

uint64_t CAFUISceneState.description.getter()
{
  v0 = NSStringFromUISceneState();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFUISceneState(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFUISceneState and conformance CAFUISceneState(&lazy protocol witness table cache variable for type CAFUISceneState and conformance CAFUISceneState);
  a1[2] = lazy protocol witness table accessor for type CAFUISceneState and conformance CAFUISceneState(&lazy protocol witness table cache variable for type CAFUISceneState and conformance CAFUISceneState);
  result = lazy protocol witness table accessor for type CAFUISceneState and conformance CAFUISceneState(&lazy protocol witness table cache variable for type CAFUISceneState and conformance CAFUISceneState);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFUISceneState and conformance CAFUISceneState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFUISceneState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFUISceneState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFUISceneState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFUISceneState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15CAFUISceneStateVGMd, &_sSaySo15CAFUISceneStateVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFUISceneState] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFUISceneState@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFUISceneState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFUISceneState@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static CAFVentTypes.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFVentTypes.allCases = a1;
}

uint64_t CAFVentTypes.description.getter()
{
  v0 = NSStringFromVentTypes();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFVentTypes(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFVentTypes and conformance CAFVentTypes(&lazy protocol witness table cache variable for type CAFVentTypes and conformance CAFVentTypes);
  a1[2] = lazy protocol witness table accessor for type CAFVentTypes and conformance CAFVentTypes(&lazy protocol witness table cache variable for type CAFVentTypes and conformance CAFVentTypes);
  result = lazy protocol witness table accessor for type CAFVentTypes and conformance CAFVentTypes(&lazy protocol witness table cache variable for type CAFVentTypes and conformance CAFVentTypes);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFVentTypes and conformance CAFVentTypes(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFVentTypes(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFVentTypes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFVentTypes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFVentTypes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo12CAFVentTypesVGMd, &_sSaySo12CAFVentTypesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFVentTypes] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFVentTypes@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFVentTypes.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFVentTypes@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t specialized CAFEnum.id.getter(unsigned __int8 a1)
{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8170]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8178]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8180]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8188]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8190]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8198]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81A0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81A8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81B0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81C0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81C8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81D0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81D8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81E0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81E8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81F0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81F8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8200]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8208]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8210]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8218]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8220]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8228]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8230]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8238]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8240]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8248]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8250]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8258]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8260]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8268]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8270]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8280]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8288]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8290]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8298]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF82A0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF82A8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF82B0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF82B8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF82C0]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF82C8]);
}

uint64_t specialized CAFEnum.id.getter(uint64_t a1)
{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF81B8]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF8278]);
}

{
  return specialized CAFEnum.id.getter(a1, MEMORY[0x277CF82D0]);
}

uint64_t specialized CAFEnum.id.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_3();
  v7 = v6();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_1_5();
  v9 = a2(a1);
  if (v9)
  {
    v10 = v9;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v11;
  }

  MEMORY[0x245D0A530](v3, v2);

  return v13;
}

uint64_t specialized CAFEnum.id.getter(unsigned __int8 a1, uint64_t (*a2)(void))
{
  OUTLINED_FUNCTION_0_3();
  v8 = v7(v6);
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_1_5();
  v10 = a2(a1);
  if (v10)
  {
    v11 = v10;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v12;
  }

  MEMORY[0x245D0A530](v3, v2);

  return v14;
}

uint64_t static CAFVolumeType.allCases.setter(void *a1)
{
  swift_beginAccess();
  static CAFVolumeType.allCases = a1;
}

uint64_t CAFVolumeType.description.getter()
{
  v0 = NSStringFromVolumeType();
  if (!v0)
  {
    return 0x6E776F6E6B6E7528;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t instantiation function for generic protocol witness table for CAFVolumeType(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CAFVolumeType and conformance CAFVolumeType(&lazy protocol witness table cache variable for type CAFVolumeType and conformance CAFVolumeType);
  a1[2] = lazy protocol witness table accessor for type CAFVolumeType and conformance CAFVolumeType(&lazy protocol witness table cache variable for type CAFVolumeType and conformance CAFVolumeType);
  result = lazy protocol witness table accessor for type CAFVolumeType and conformance CAFVolumeType(&lazy protocol witness table cache variable for type CAFVolumeType and conformance CAFVolumeType);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFVolumeType and conformance CAFVolumeType(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFVolumeType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CAFVolumeType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CAFVolumeType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CAFVolumeType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13CAFVolumeTypeVGMd, &_sSaySo13CAFVolumeTypeVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CAFVolumeType] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance CAFVolumeType@<X0>(uint64_t *a1@<X8>)
{
  result = static CAFVolumeType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CAFVolumeType@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CAFEnum.id.getter(*v1, MEMORY[0x277CF82D8]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void OUTLINED_FUNCTION_1_5()
{

  JUMPOUT(0x245D0A530);
}

id CAFCar.nowPlaying.getter()
{
  v1 = [v0 nowPlayingInformation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 nowPlaying];

  return v3;
}

uint64_t CAUAssetLibrary.featureConfiguration()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CAUResource();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils23CAUFeatureConfigurationVSgMd, &_s13CarAssetUtils23CAUFeatureConfigurationVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-v9];
  (*(v3 + 104))(v6, *MEMORY[0x277CF87D8], v2);
  lazy protocol witness table accessor for type CAUFeatureConfiguration? and conformance <A> A?();
  dispatch thunk of CAUAssetLibrary.asset<A>(for:)();
  (*(v3 + 8))(v6, v2);
  v11 = type metadata accessor for CAUFeatureConfiguration();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  outlined destroy of CAUFeatureConfiguration?(v10);
  return CAUFeatureConfiguration.init()();
}

unint64_t lazy protocol witness table accessor for type CAUFeatureConfiguration? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CAUFeatureConfiguration? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CAUFeatureConfiguration? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s13CarAssetUtils23CAUFeatureConfigurationVSgMd, &_s13CarAssetUtils23CAUFeatureConfigurationVSgMR);
    lazy protocol witness table accessor for type CAUFeatureConfiguration and conformance CAUFeatureConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAUFeatureConfiguration? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAUFeatureConfiguration and conformance CAUFeatureConfiguration()
{
  result = lazy protocol witness table cache variable for type CAUFeatureConfiguration and conformance CAUFeatureConfiguration;
  if (!lazy protocol witness table cache variable for type CAUFeatureConfiguration and conformance CAUFeatureConfiguration)
  {
    type metadata accessor for CAUFeatureConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAUFeatureConfiguration and conformance CAUFeatureConfiguration);
  }

  return result;
}

uint64_t outlined destroy of CAUFeatureConfiguration?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils23CAUFeatureConfigurationVSgMd, &_s13CarAssetUtils23CAUFeatureConfigurationVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Optional<A>.featureConfiguration()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils23CAUFeatureConfigurationVSgMd, &_s13CarAssetUtils23CAUFeatureConfigurationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  if (a1)
  {
    CAUAssetLibrary.featureConfiguration()(&v11 - v6);
    v8 = type metadata accessor for CAUFeatureConfiguration();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    return (*(*(v8 - 8) + 32))(a2, v7, v8);
  }

  else
  {
    v10 = type metadata accessor for CAUFeatureConfiguration();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
    CAUFeatureConfiguration.init()();
    result = __swift_getEnumTagSinglePayload(v7, 1, v10);
    if (result != 1)
    {
      return outlined destroy of CAUFeatureConfiguration?(v7);
    }
  }

  return result;
}