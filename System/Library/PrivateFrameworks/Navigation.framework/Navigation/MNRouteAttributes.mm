@interface MNRouteAttributes
- (BOOL)shouldRetryForError:(id)error;
- (MNRouteAttributes)initWithAttributes:(id)attributes latLngs:(id)lngs isStepping:(BOOL)stepping;
- (MNRouteAttributes)initWithAttributes:(id)attributes waypoints:(id)waypoints;
- (MNRouteAttributes)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)vehicle;
- (void)_commonInit;
- (void)_loadRulesIfNecessaryWithVehicle:(id)vehicle queue:(id)queue finishedHandler:(id)handler;
- (void)_populateRouteAttributesWithVehicle:(id)vehicle finishedHandler:(id)handler;
- (void)_resolveSelectedVehicle:(id)vehicle;
- (void)_updateMiscOptions;
- (void)buildRouteAttributes:(id)attributes queue:(id)queue result:(id)result;
- (void)buildRouteAttributes:(id)attributes result:(id)result;
- (void)buildRouteAttributesForETAUpdateRequest:(id)request queue:(id)queue result:(id)result;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNRouteAttributes

- (BOOL)shouldRetryForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = GEOErrorDomain();
  if (![domain isEqualToString:v6])
  {

    goto LABEL_5;
  }

  code = [errorCopy code];

  if (code != -28)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = 1;
  self->_forceUpdate = 1;
  [(MNRouteAttributes *)self setHasResolvedRules:0];
LABEL_6:

  return v8;
}

- (void)buildRouteAttributesForETAUpdateRequest:(id)request queue:(id)queue result:(id)result
{
  queueCopy = queue;
  resultCopy = result;
  currentUserLocation = [request currentUserLocation];
  if (currentUserLocation)
  {
    if ([(NSArray *)self->_latLngs count])
    {
      firstObject = [(NSArray *)self->_latLngs firstObject];
      [firstObject coordinate];
      v12 = v11;
      v14 = v13;

      [currentUserLocation coordinate];
      if (vabdd_f64(v15, v12) >= 0.0001 || vabdd_f64(v16, v14) >= 0.0001)
      {
        v17 = [objc_alloc(MEMORY[0x1E69A1E50]) initWithCoordinate:{v15, v16}];
        v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_latLngs, "count")}];
        [(NSArray *)v18 addObject:v17];
        if ([(NSArray *)self->_latLngs count]>= 2)
        {
          v19 = 1;
          do
          {
            v20 = [(NSArray *)self->_latLngs objectAtIndexedSubscript:v19];
            [(NSArray *)v18 addObject:v20];

            ++v19;
          }

          while (v19 < [(NSArray *)self->_latLngs count]);
        }

        latLngs = self->_latLngs;
        self->_latLngs = v18;

        [(MNRouteAttributes *)self setHasResolvedRules:0];
      }
    }
  }

  [(MNRouteAttributes *)self buildRouteAttributes:queueCopy result:resultCopy];
}

- (void)buildRouteAttributes:(id)attributes result:(id)result
{
  v34 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  resultCopy = result;
  if (resultCopy)
  {
    if ([(MNRouteAttributes *)self mainTransportType])
    {
      v8 = MNGetMNRouteAttributesLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        mainTransportType = [(MNRouteAttributes *)self mainTransportType];
        if (mainTransportType >= 7)
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", mainTransportType];
        }

        else
        {
          v10 = off_1E842F2A0[mainTransportType];
        }

        formattedText = [(MNRouteAttributes *)self formattedText];
        *buf = 134218498;
        selfCopy2 = self;
        v28 = 2112;
        v29 = v10;
        v30 = 2112;
        *v31 = formattedText;
        _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "%p Requested updated route attributes for an unsupported transportType: %@, attributes:\n%@", buf, 0x20u);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__MNRouteAttributes_buildRouteAttributes_result___block_invoke;
      block[3] = &unk_1E842F580;
      block[4] = self;
      v25 = resultCopy;
      dispatch_async(attributesCopy, block);
      v11 = v25;
    }

    else
    {
      v13 = +[MNCarPlayConnectionMonitor sharedInstance];
      v14 = MNGetMNRouteAttributesLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        formattedText2 = [(MNRouteAttributes *)self formattedText];
        *buf = 134218242;
        selfCopy2 = self;
        v28 = 2112;
        v29 = formattedText2;
        _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEFAULT, "%p Requesting updated route attributes:\n%@", buf, 0x16u);
      }

      [(MNRouteAttributes *)self _updateMiscOptions];
      v11 = [[MNSequence alloc] initWithQueue:attributesCopy];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __49__MNRouteAttributes_buildRouteAttributes_result___block_invoke_102;
      v23[3] = &unk_1E842F1D8;
      v23[4] = self;
      [(MNSequence *)v11 addStep:v23];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __49__MNRouteAttributes_buildRouteAttributes_result___block_invoke_2;
      v21[3] = &unk_1E842F200;
      v21[4] = self;
      v22 = attributesCopy;
      [(MNSequence *)v11 addStep:v21];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __49__MNRouteAttributes_buildRouteAttributes_result___block_invoke_3;
      v20[3] = &unk_1E842F228;
      v20[4] = self;
      [(MNSequence *)v11 addStep:v20];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __49__MNRouteAttributes_buildRouteAttributes_result___block_invoke_4;
      v18[3] = &unk_1E842F250;
      v18[4] = self;
      v19 = resultCopy;
      [(MNSequence *)v11 addStep:v18];
      [(MNSequence *)v11 start];
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"defaultRouteAttributesForTransportType called without a handler"];
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      selfCopy2 = "[MNRouteAttributes buildRouteAttributes:result:]";
      v28 = 2080;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/GEORouteAttributes+MNExtras.m";
      v30 = 1024;
      *v31 = 658;
      *&v31[4] = 2080;
      *&v31[6] = "result != nil";
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __49__MNRouteAttributes_buildRouteAttributes_result___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

void __49__MNRouteAttributes_buildRouteAttributes_result___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(*(a1 + 32) + 240);
  v7 = a3;
  v8 = [v6 combinedDisplayName];
  v9 = *(a1 + 32);
  v10 = *(v9 + 248);
  if (v10)
  {
    v11 = v10;
    goto LABEL_4;
  }

  v11 = *(v9 + 280);
  if (v11)
  {
LABEL_4:
    v12 = MNGetMNRouteAttributesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = [v5 formattedText];
      v19 = 134218754;
      v20 = v13;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "%p Error updating route attributes with vehicle %@. Error: %@.\nRoute attributes:\n%@", &v19, 0x2Au);
    }

    goto LABEL_9;
  }

  v12 = MNGetMNRouteAttributesLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v16 = [v5 formattedText];
    v19 = 134218498;
    v20 = v15;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_DEFAULT, "%p Used vehicle %@ to update route attributes:\n%@", &v19, 0x20u);
  }

  v11 = 0;
LABEL_9:

  v17 = *(*(a1 + 32) + 248);
  (*(*(a1 + 40) + 16))();
  (*(v7 + 2))(v7, 0, 0);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)buildRouteAttributes:(id)attributes queue:(id)queue result:(id)result
{
  v25 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  queueCopy = queue;
  resultCopy = result;
  if (resultCopy && ![(MNRouteAttributes *)self mainTransportType])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(attributesCopy, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = attributesCopy;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          bestLatLng = [*(*(&v20 + 1) + 8 * v16) bestLatLng];
          if (bestLatLng)
          {
            [(NSArray *)v11 addObject:bestLatLng];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    latLngs = self->_latLngs;
    self->_latLngs = v11;
  }

  [(MNRouteAttributes *)self buildRouteAttributes:queueCopy result:resultCopy, v20];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_populateRouteAttributesWithVehicle:(id)vehicle finishedHandler:(id)handler
{
  v165 = *MEMORY[0x1E69E9840];
  vehicleCopy = vehicle;
  handlerCopy = handler;
  v8 = [(MNRouteAttributes *)self copy];
  automobileOptions = [v8 automobileOptions];
  [automobileOptions setVehicleSpecifications:0];

  v10 = *MEMORY[0x1E69A1A88];
  v11 = *(MEMORY[0x1E69A1A88] + 8);
  BOOL = GEOConfigGetBOOL();
  v13 = *MEMORY[0x1E69DF8C0];
  v14 = *(MEMORY[0x1E69DF8C0] + 8);
  v15 = GEOConfigGetBOOL();
  if (self->_isStepping)
  {
    v16 = (v15 ^ 1) & BOOL;
  }

  else
  {
    v16 = 0;
  }

  v147 = vehicleCopy;
  if ([vehicleCopy isPureElectricVehicle] && (v16 & 1) == 0)
  {
    selfCopy = self;
    v139 = handlerCopy;
    v141 = v8;
    identifier = [vehicleCopy identifier];
    mEMORY[0x1E69DF8B8] = [MEMORY[0x1E69DF8B8] sharedService];
    [mEMORY[0x1E69DF8B8] setActiveVehicleIdentifier:identifier];

    v19 = objc_alloc_init(MEMORY[0x1E69A1D78]);
    currentVehicleState = [vehicleCopy currentVehicleState];
    consumptionArguments = [currentVehicleState consumptionArguments];
    v22 = [consumptionArguments copy];
    [v19 setConsumptionArguments:v22];

    currentVehicleState2 = [vehicleCopy currentVehicleState];
    chargingArguments = [currentVehicleState2 chargingArguments];
    v25 = [chargingArguments copy];
    [v19 setChargingArguments:v25];

    currentVehicleState3 = [vehicleCopy currentVehicleState];
    maxEVRange = [currentVehicleState3 maxEVRange];
    meters = [MEMORY[0x1E696B058] meters];
    v29 = [maxEVRange measurementByConvertingToUnit:meters];
    [v29 doubleValue];
    [v19 setMaxRange:v30];

    currentVehicleState4 = [vehicleCopy currentVehicleState];
    minBatteryCapacity = [currentVehicleState4 minBatteryCapacity];
    kilowattHours = [MEMORY[0x1E696B030] kilowattHours];
    v34 = [minBatteryCapacity measurementByConvertingToUnit:kilowattHours];
    [v34 doubleValue];
    [v19 setMinBatteryCharge:(v35 * 1000.0)];

    v36 = +[MNVirtualGarageManager sharedManager];
    LODWORD(minBatteryCapacity) = [v36 assumesFullCharge];

    currentVehicleState5 = [vehicleCopy currentVehicleState];
    v38 = currentVehicleState5;
    if (minBatteryCapacity)
    {
      maxBatteryCapacity = [currentVehicleState5 maxBatteryCapacity];
      kilowattHours2 = [MEMORY[0x1E696B030] kilowattHours];
      v41 = [maxBatteryCapacity measurementByConvertingToUnit:kilowattHours2];
      [v41 doubleValue];
      [v19 setCurrentBatteryCharge:(v42 * 1000.0)];

      displayedBatteryPercentage = 100;
    }

    else
    {
      currentBatteryCapacity = [currentVehicleState5 currentBatteryCapacity];
      kilowattHours3 = [MEMORY[0x1E696B030] kilowattHours];
      v46 = [currentBatteryCapacity measurementByConvertingToUnit:kilowattHours3];
      [v46 doubleValue];
      [v19 setCurrentBatteryCharge:(v47 * 1000.0)];

      displayedBatteryPercentage = [vehicleCopy displayedBatteryPercentage];
    }

    [v19 setCurrentBatteryPercentage:displayedBatteryPercentage];
    currentVehicleState6 = [vehicleCopy currentVehicleState];
    maxBatteryCapacity2 = [currentVehicleState6 maxBatteryCapacity];
    kilowattHours4 = [MEMORY[0x1E696B030] kilowattHours];
    v51 = [maxBatteryCapacity2 measurementByConvertingToUnit:kilowattHours4];
    [v51 doubleValue];
    [v19 setMaxBatteryCharge:(v52 * 1000.0)];

    currentVehicleState7 = [vehicleCopy currentVehicleState];
    dateOfUpdate = [currentVehicleState7 dateOfUpdate];
    [dateOfUpdate timeIntervalSinceReferenceDate];
    [v19 setLastSocUpdateDate:v55];

    currentVehicleState8 = [vehicleCopy currentVehicleState];
    [v19 setIsCharging:{objc_msgSend(currentVehicleState8, "isCharging")}];

    v57 = objc_alloc_init(MEMORY[0x1E69A1BE8]);
    [v19 setChargerPlugsInfo:v57];

    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    powerByConnector = [vehicleCopy powerByConnector];
    v59 = [powerByConnector countByEnumeratingWithState:&v153 objects:v160 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v154;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v154 != v61)
          {
            objc_enumerationMutation(powerByConnector);
          }

          v63 = *(*(&v153 + 1) + 8 * i);
          [v63 unsignedIntegerValue];
          v64 = GEOEvChargingConnectorTypeFromVGConnectorType();
          if (v64)
          {
            v65 = v64;
            [v147 powerByConnector];
            v67 = v66 = v19;
            v68 = [v67 objectForKeyedSubscript:v63];

            v69 = objc_alloc_init(MEMORY[0x1E69A1BE0]);
            [v69 setType:v65];
            watts = [MEMORY[0x1E696B068] watts];
            v71 = [v68 measurementByConvertingToUnit:watts];
            [v71 doubleValue];
            [v69 setMaximumPower:v72];

            v19 = v66;
            chargerPlugsInfo = [v66 chargerPlugsInfo];
            [chargerPlugsInfo addSupportedChargerPlug:v69];
          }

          else
          {
            v68 = MNGetMNRouteAttributesLog();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = selfCopy;
              *&buf[12] = 2112;
              *&buf[14] = v63;
              _os_log_impl(&dword_1D311E000, v68, OS_LOG_TYPE_ERROR, "%p Skipping unknown VG connector: %@", buf, 0x16u);
            }
          }
        }

        v60 = [powerByConnector countByEnumeratingWithState:&v153 objects:v160 count:16];
      }

      while (v60);
    }

    _vehicleSpecifications = [v8 _vehicleSpecifications];
    [_vehicleSpecifications setEvInfo:v19];
    vehicleCopy = v147;
    if ([v147 usesPreferredNetworksForRouting])
    {
      v137 = _vehicleSpecifications;
      v143 = v19;
      v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v149 = 0u;
      v150 = 0u;
      v151 = 0u;
      v152 = 0u;
      preferredChargingNetworks = [v147 preferredChargingNetworks];
      v77 = [preferredChargingNetworks countByEnumeratingWithState:&v149 objects:v159 count:16];
      if (v77)
      {
        v78 = v77;
        v79 = *v150;
        do
        {
          for (j = 0; j != v78; ++j)
          {
            if (*v150 != v79)
            {
              objc_enumerationMutation(preferredChargingNetworks);
            }

            v81 = *(*(&v149 + 1) + 8 * j);
            v82 = objc_alloc_init(MEMORY[0x1E69A1D70]);
            v83 = objc_alloc_init(MEMORY[0x1E69A23B8]);
            [v83 setChargingNetworkMuid:{objc_msgSend(v81, "globalBrandID")}];
            [v82 setPreferenceEntity:v83];
            [v82 setPreferenceType:1];
            [v75 addObject:v82];
          }

          v78 = [preferredChargingNetworks countByEnumeratingWithState:&v149 objects:v159 count:16];
        }

        while (v78);
      }

      v8 = v141;
      _userPreferences = [v141 _userPreferences];
      v85 = [v75 copy];
      [_userPreferences setEvChargingPreferences:v85];

      vehicleCopy = v147;
      v19 = v143;
      _vehicleSpecifications = v137;
    }

    handlerCopy = v139;
    self = selfCopy;
  }

  if ([(NSArray *)self->_lprRules count])
  {
    licensePlate = [vehicleCopy licensePlate];
    v87 = [licensePlate length];

    if (v87)
    {
      selfCopy2 = self;
      v88 = objc_alloc_init(MEMORY[0x1E69A1E48]);
      licensePlate2 = [vehicleCopy licensePlate];
      [v88 setLicensePlate:licensePlate2];

      lprVehicleType = [vehicleCopy lprVehicleType];
      [v88 setVehicleTypeKey:lprVehicleType];

      lprPowerType = [vehicleCopy lprPowerType];
      [v88 setPowerTypeKey:lprPowerType];

      v92 = GEOConfigGetDate();
      v142 = v8;
      v144 = v92;
      if (v92)
      {
        v93 = v92;
        v94 = MNGetMNRouteAttributesLog();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v93;
          _os_log_impl(&dword_1D311E000, v94, OS_LOG_TYPE_DEFAULT, "!!!IMPORTANT!!! The date for LPR masking has been overridden to %@ !!!IMPORTANT!!! ", buf, 0xCu);
        }

        localTimeZone = 0;
      }

      else
      {
        v93 = [MEMORY[0x1E695DF00] now];
        localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
      }

      v102 = [[MNLPRRuleMatcher alloc] initForVehicle:v88 withRules:selfCopy2->_lprRules];
      latLngs = selfCopy2->_latLngs;
      v148 = 0;
      v138 = v102;
      v140 = localTimeZone;
      v104 = [v102 generateMaskedPlateForWaypoints:latLngs date:v93 timeZone:localTimeZone error:&v148];
      v105 = v148;
      v106 = objc_alloc_init(MEMORY[0x1E69A1E28]);
      lprVehicleType2 = [v147 lprVehicleType];
      [v106 setVehicleTypeKey:lprVehicleType2];

      lprPowerType2 = [v147 lprPowerType];
      [v106 setPowerTypeKey:lprPowerType2];

      [v93 timeIntervalSinceReferenceDate];
      [v106 setTimestamp:v109];
      [v106 setMaskedplateGeneratorValidatorVersion:2];
      if (!selfCopy2->_forceUpdate)
      {
        mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
        if ([mEMORY[0x1E69A2398] isInternalInstall])
        {
          HasValue = _GEOConfigHasValue();

          if (HasValue)
          {
            v112 = GEOConfigGetString();
            v113 = [v112 dataUsingEncoding:4];
            [v106 setVersionId:v113];

            GEOConfigGetDouble();
            v115 = fmin(v114, 3600.0);
            if (v115 >= 0.1)
            {
              v136 = dispatch_time(0, (v115 * 1000000000.0));
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = ____scheduleDebugConfigKeyReset_block_invoke;
              v162 = &__block_descriptor_48_e5_v8__0l;
              v163 = 150;
              v164 = &NavigationConfig_LPRProvideBadVersion_DEBUG_Metadata;
              dispatch_after(v136, MEMORY[0x1E69E96A0], buf);
              if (!v105)
              {
LABEL_53:
                if (_GEOConfigHasValue())
                {
                  v118 = handlerCopy;
                  Integer = GEOConfigGetInteger();
                  v120 = MEMORY[0x1E696ABC0];
                  v157 = *MEMORY[0x1E695E618];
                  v158 = @"Error was generated by request of LPRMaskPlateFailureCode_DEBUG key";
                  v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
                  v105 = [v120 errorWithDomain:@"MapsNavLPRErrorDomain" code:Integer userInfo:v121];

                  GEOConfigGetDouble();
                  v123 = fmin(v122, 3600.0);
                  if (v123 >= 0.1)
                  {
                    v124 = dispatch_time(0, (v123 * 1000000000.0));
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&buf[16] = ____scheduleDebugConfigKeyReset_block_invoke;
                    v162 = &__block_descriptor_48_e5_v8__0l;
                    v163 = 151;
                    v164 = &NavigationConfig_LPRMaskPlateFailureCode_DEBUG_Metadata;
                    dispatch_after(v124, MEMORY[0x1E69E96A0], buf);
                  }

                  else
                  {
                    _GEOConfigRemoveValue();
                  }

                  handlerCopy = v118;
                }

                else
                {
                  v105 = 0;
                }
              }
            }

            else
            {
              _GEOConfigRemoveValue();
              if (!v105)
              {
                goto LABEL_53;
              }
            }

LABEL_59:
            _vehicleSpecifications2 = [v142 _vehicleSpecifications];
            if (![v104 length] || v105)
            {
              v126 = handlerCopy;
              v127 = MNGetMNRouteAttributesLog();
              if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218242;
                *&buf[4] = selfCopy2;
                *&buf[12] = 2112;
                *&buf[14] = v105;
                _os_log_impl(&dword_1D311E000, v127, OS_LOG_TYPE_ERROR, "%p Failed to mask license plate. Error: %@", buf, 0x16u);
              }

              domain = [v105 domain];
              v129 = [domain isEqualToString:@"MapsNavLPRErrorDomain"];

              handlerCopy = v126;
              if (v129)
              {
                if (([v105 code] + 12) > 2)
                {
                  v130 = 3;
                }

                else
                {
                  v130 = 2;
                }

                [_vehicleSpecifications2 setLprPlateMissingReason:v130];
              }
            }

            else
            {
              [v106 setLicensePlate:v104];
            }

            [_vehicleSpecifications2 setLprInfo:v106];

            vehicleCopy = v147;
            v8 = v142;
            goto LABEL_70;
          }
        }

        else
        {
        }
      }

      firstObject = [(NSArray *)selfCopy2->_lprRules firstObject];
      version = [firstObject version];
      [v106 setVersionId:version];

      if (!v105)
      {
        goto LABEL_53;
      }

      goto LABEL_59;
    }
  }

  if (!vehicleCopy)
  {
    v100 = +[MNVirtualGarageManager sharedManager];
    vehiclesCount = [v100 vehiclesCount];

    if (vehiclesCount)
    {
      _vehicleSpecifications3 = [v8 _vehicleSpecifications];
      v88 = _vehicleSpecifications3;
      v99 = 1;
      goto LABEL_43;
    }
  }

  if ([(MNRouteAttributes *)self hasResolvedRules])
  {
    if (![(NSArray *)self->_lprRules count])
    {
      licensePlate3 = [vehicleCopy licensePlate];
      v97 = [licensePlate3 length];

      if (v97)
      {
        _vehicleSpecifications3 = [v8 _vehicleSpecifications];
        v88 = _vehicleSpecifications3;
        v99 = 3;
LABEL_43:
        [_vehicleSpecifications3 setLprPlateMissingReason:v99];
LABEL_70:
      }
    }
  }

  v131 = objc_opt_new();
  v132 = +[MNCarPlayConnectionMonitor sharedInstance];
  [v131 setCarPlayConnectionStatus:{objc_msgSend(v132, "isConnected")}];

  v133 = +[MNVirtualGarageManager sharedManager];
  [v131 setIntentsConnectionStatus:{objc_msgSend(v133, "isProviderStarted")}];

  _vehicleSpecifications4 = [v8 _vehicleSpecifications];
  [_vehicleSpecifications4 setVehicleInfo:v131];

  handlerCopy[2](handlerCopy, v8, 1);
  v135 = *MEMORY[0x1E69E9840];
}

- (void)_loadRulesIfNecessaryWithVehicle:(id)vehicle queue:(id)queue finishedHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  vehicleCopy = vehicle;
  queueCopy = queue;
  handlerCopy = handler;
  licensePlate = [vehicleCopy licensePlate];
  if ([licensePlate length])
  {
    hasResolvedRules = [(MNRouteAttributes *)self hasResolvedRules];

    if (!hasResolvedRules)
    {
      v13 = MNGetMNRouteAttributesLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        licensePlate2 = [vehicleCopy licensePlate];
        *buf = 134218240;
        selfCopy2 = self;
        v28 = 1024;
        v29 = [licensePlate2 length];
        _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_INFO, "%p Will load rules for plate of %d chars length", buf, 0x12u);
      }

      latLngs = self->_latLngs;
      forceUpdate = self->_forceUpdate;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __76__MNRouteAttributes__loadRulesIfNecessaryWithVehicle_queue_finishedHandler___block_invoke;
      v23[3] = &unk_1E842F338;
      v23[4] = self;
      v25 = handlerCopy;
      v24 = vehicleCopy;
      [MNRouteAttributes _loadLPRRulesForWaypoints:latLngs forceUpdate:forceUpdate queue:queueCopy completion:v23];

      goto LABEL_12;
    }
  }

  else
  {
  }

  v17 = MNGetMNRouteAttributesLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    licensePlate3 = [vehicleCopy licensePlate];
    v19 = [licensePlate3 length];
    hasResolvedRules2 = [(MNRouteAttributes *)self hasResolvedRules];
    v21 = "NO";
    *buf = 134218498;
    selfCopy2 = self;
    if (hasResolvedRules2)
    {
      v21 = "YES";
    }

    v28 = 1024;
    v29 = v19;
    v30 = 2080;
    v31 = v21;
    _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_INFO, "%p Not loading rules plate is %d chars & hasResolvedRules: %s", buf, 0x1Cu);
  }

  (*(handlerCopy + 2))(handlerCopy, vehicleCopy, 1);
LABEL_12:

  v22 = *MEMORY[0x1E69E9840];
}

void __76__MNRouteAttributes__loadRulesIfNecessaryWithVehicle_queue_finishedHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 272);
  *(v7 + 272) = v5;
  v13 = v5;

  v9 = *(a1 + 32);
  v10 = *(v9 + 280);
  *(v9 + 280) = v6;
  v11 = v6;

  [*(a1 + 32) setHasResolvedRules:1];
  v12 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

- (void)_resolveSelectedVehicle:(id)vehicle
{
  v13 = *MEMORY[0x1E69E9840];
  vehicleCopy = vehicle;
  v5 = MNGetMNRouteAttributesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "%p _resolveSelectedVehicle: calling into MNVirtualGarageManager to get selected vehicle", buf, 0xCu);
  }

  v6 = +[MNVirtualGarageManager sharedManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__MNRouteAttributes__resolveSelectedVehicle___block_invoke;
  v9[3] = &unk_1E8430900;
  v9[4] = self;
  v10 = vehicleCopy;
  v7 = vehicleCopy;
  [v6 updatedVehicleStateWithHandler:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __45__MNRouteAttributes__resolveSelectedVehicle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 256);
  v8 = v6;
  v9 = v5;
  geo_isolate_sync();
  if (!v9 || v8)
  {
    if (v9 && [v9 isPureElectricVehicle])
    {
      [MEMORY[0x1E69A1598] captureUserAction:6094 target:0 value:0];
    }

    v14 = MNGetMNRouteAttributesLog();
    v11 = v14;
    if (v8)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        *buf = 134218242;
        v23 = v15;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "%p Error getting updated vehicle state when building route attributes: %@", buf, 0x16u);
      }

      v11 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:17 debugDescription:@"Failed to get virtual garage" underlyingError:v8];
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 32);
      *buf = 134217984;
      v23 = v18;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "%p No vehicle selected in VirtualGarage when building route attributes.", buf, 0xCu);
    }
  }

  else
  {
    v10 = [v9 isPureElectricVehicle];
    v11 = MNGetMNRouteAttributesLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v12)
      {
        v13 = *(a1 + 32);
        *buf = 134218242;
        v23 = v13;
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "%p Got SoC of vehicle: %@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v16 = *(a1 + 32);
      v17 = [v9 displayName];
      if ([v17 length])
      {
        [v9 displayName];
      }

      else
      {
        [v9 licensePlate];
      }
      v19 = ;
      v20 = [v9 identifier];
      *buf = 134218498;
      v23 = v16;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "%p Got selected vehicle: %@ | %@", buf, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
  v21 = *MEMORY[0x1E69E9840];
}

void __45__MNRouteAttributes__resolveSelectedVehicle___block_invoke_2(void *a1)
{
  if (a1[5])
  {
    v2 = 0;
  }

  else
  {
    v2 = a1[6];
  }

  objc_storeStrong((a1[4] + 240), v2);
  v3 = a1[5];
  v4 = (a1[4] + 248);

  objc_storeStrong(v4, v3);
}

- (void)_updateMiscOptions
{
  _automobileOptions = [(GEORouteAttributes *)self _automobileOptions];
  [_automobileOptions setOptoutIncidentReporting:GEOConfigGetBOOL() ^ 1];
}

void __41__MNRouteAttributes_setHasResolvedRules___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 264) != v2)
  {
    *(v1 + 264) = v2;
    v4 = MNGetMNRouteAttributesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = @"NO";
      if (*(a1 + 40))
      {
        v6 = @"YES";
      }

      v12 = 134218242;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "%p setHasResolvedRules: %@", &v12, 0x16u);
    }

    v7 = *(a1 + 32);
    if ((*(v7 + 264) & 1) == 0)
    {
      v8 = *(v7 + 272);
      *(v7 + 272) = 0;

      v9 = *(a1 + 32);
      v10 = *(v9 + 280);
      *(v9 + 280) = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)vehicle
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__11255;
  v9 = __Block_byref_object_dispose__11256;
  v10 = 0;
  vehicleIsolator = self->_vehicleIsolator;
  geo_isolate_sync_data();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __28__MNRouteAttributes_vehicle__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 240) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (MNRouteAttributes)initWithAttributes:(id)attributes latLngs:(id)lngs isStepping:(BOOL)stepping
{
  attributesCopy = attributes;
  lngsCopy = lngs;
  v15.receiver = self;
  v15.super_class = MNRouteAttributes;
  v10 = [(MNRouteAttributes *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [(MNRouteAttributes *)v10 _commonInit];
    if (attributesCopy)
    {
      [(MNRouteAttributes *)v11 mergeFrom:attributesCopy];
    }

    v12 = [lngsCopy copy];
    latLngs = v11->_latLngs;
    v11->_latLngs = v12;

    v11->_isStepping = stepping;
  }

  return v11;
}

- (MNRouteAttributes)initWithAttributes:(id)attributes waypoints:(id)waypoints
{
  v25 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  waypointsCopy = waypoints;
  firstObject = [waypointsCopy firstObject];
  isCurrentLocation = [firstObject isCurrentLocation];

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(waypointsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = waypointsCopy;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        bestLatLng = [*(*(&v20 + 1) + 8 * v15) bestLatLng];
        if (bestLatLng)
        {
          [v10 addObject:bestLatLng];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [(MNRouteAttributes *)self initWithAttributes:attributesCopy latLngs:v10 isStepping:isCurrentLocation ^ 1u];
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = MNRouteAttributes;
  v4 = [(MNRouteAttributes *)&v8 copyWithZone:zone];
  v5 = [(NSArray *)self->_latLngs copy];
  v6 = *(v4 + 28);
  *(v4 + 28) = v5;

  *(v4 + 233) = self->_isStepping;
  objc_storeStrong(v4 + 30, self->_vehicle);
  objc_storeStrong(v4 + 31, self->_vgError);
  objc_storeStrong(v4 + 34, self->_lprRules);
  *(v4 + 264) = self->_hasResolvedRules;
  objc_storeStrong(v4 + 35, self->_lprError);
  [v4 _commonInit];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MNRouteAttributes;
  coderCopy = coder;
  [(MNRouteAttributes *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_latLngs forKey:{@"LatLngs", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_isStepping forKey:@"IsStepping"];
}

- (void)_commonInit
{
  v3 = geo_isolater_create();
  vehicleIsolator = self->_vehicleIsolator;
  self->_vehicleIsolator = v3;
}

- (MNRouteAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MNRouteAttributes;
  v5 = [(MNRouteAttributes *)&v13 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(MNRouteAttributes *)v5 _commonInit];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"LatLngs"];
    latLngs = v6->_latLngs;
    v6->_latLngs = v10;

    v6->_isStepping = [coderCopy decodeBoolForKey:@"IsStepping"];
  }

  return v6;
}

void __76__MNRouteAttributes__loadLPRRulesForWaypoints_forceUpdate_queue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = MNGetMNRouteAttributesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v15 = 134218242;
      v16 = v9;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "%p Failed to get LPR rules. Error: %@", &v15, 0x16u);
    }

    v10 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:17 debugDescription:@"Failed to get LPR rules" underlyingError:v7];

    [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"EmptyRules"];
  }

  else
  {
    v10 = 0;
  }

  v11 = MNGetMNRouteAttributesLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    v13 = [v5 count];
    v15 = 134218240;
    v16 = v12;
    v17 = 1024;
    LODWORD(v18) = v13;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "%p Found %d lpr rule sets", &v15, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
  v14 = *MEMORY[0x1E69E9840];
}

@end