@interface MNRouteAttributes
- (BOOL)shouldRetryForError:(id)a3;
- (MNRouteAttributes)initWithAttributes:(id)a3 latLngs:(id)a4 isStepping:(BOOL)a5;
- (MNRouteAttributes)initWithAttributes:(id)a3 waypoints:(id)a4;
- (MNRouteAttributes)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)vehicle;
- (void)_commonInit;
- (void)_loadRulesIfNecessaryWithVehicle:(id)a3 queue:(id)a4 finishedHandler:(id)a5;
- (void)_populateRouteAttributesWithVehicle:(id)a3 finishedHandler:(id)a4;
- (void)_resolveSelectedVehicle:(id)a3;
- (void)_updateMiscOptions;
- (void)buildRouteAttributes:(id)a3 queue:(id)a4 result:(id)a5;
- (void)buildRouteAttributes:(id)a3 result:(id)a4;
- (void)buildRouteAttributesForETAUpdateRequest:(id)a3 queue:(id)a4 result:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNRouteAttributes

- (BOOL)shouldRetryForError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = GEOErrorDomain();
  if (![v5 isEqualToString:v6])
  {

    goto LABEL_5;
  }

  v7 = [v4 code];

  if (v7 != -28)
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

- (void)buildRouteAttributesForETAUpdateRequest:(id)a3 queue:(id)a4 result:(id)a5
{
  v22 = a4;
  v8 = a5;
  v9 = [a3 currentUserLocation];
  if (v9)
  {
    if ([(NSArray *)self->_latLngs count])
    {
      v10 = [(NSArray *)self->_latLngs firstObject];
      [v10 coordinate];
      v12 = v11;
      v14 = v13;

      [v9 coordinate];
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

  [(MNRouteAttributes *)self buildRouteAttributes:v22 result:v8];
}

- (void)buildRouteAttributes:(id)a3 result:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([(MNRouteAttributes *)self mainTransportType])
    {
      v8 = MNGetMNRouteAttributesLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [(MNRouteAttributes *)self mainTransportType];
        if (v9 >= 7)
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v9];
        }

        else
        {
          v10 = off_1E842F2A0[v9];
        }

        v16 = [(MNRouteAttributes *)self formattedText];
        *buf = 134218498;
        v27 = self;
        v28 = 2112;
        v29 = v10;
        v30 = 2112;
        *v31 = v16;
        _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "%p Requested updated route attributes for an unsupported transportType: %@, attributes:\n%@", buf, 0x20u);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__MNRouteAttributes_buildRouteAttributes_result___block_invoke;
      block[3] = &unk_1E842F580;
      block[4] = self;
      v25 = v7;
      dispatch_async(v6, block);
      v11 = v25;
    }

    else
    {
      v13 = +[MNCarPlayConnectionMonitor sharedInstance];
      v14 = MNGetMNRouteAttributesLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(MNRouteAttributes *)self formattedText];
        *buf = 134218242;
        v27 = self;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEFAULT, "%p Requesting updated route attributes:\n%@", buf, 0x16u);
      }

      [(MNRouteAttributes *)self _updateMiscOptions];
      v11 = [[MNSequence alloc] initWithQueue:v6];
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
      v22 = v6;
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
      v19 = v7;
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
      v27 = "[MNRouteAttributes buildRouteAttributes:result:]";
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

- (void)buildRouteAttributes:(id)a3 queue:(id)a4 result:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10 && ![(MNRouteAttributes *)self mainTransportType])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v8;
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

          v17 = [*(*(&v20 + 1) + 8 * v16) bestLatLng];
          if (v17)
          {
            [(NSArray *)v11 addObject:v17];
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

  [(MNRouteAttributes *)self buildRouteAttributes:v9 result:v10, v20];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_populateRouteAttributesWithVehicle:(id)a3 finishedHandler:(id)a4
{
  v165 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MNRouteAttributes *)self copy];
  v9 = [v8 automobileOptions];
  [v9 setVehicleSpecifications:0];

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

  v147 = v6;
  if ([v6 isPureElectricVehicle] && (v16 & 1) == 0)
  {
    v145 = self;
    v139 = v7;
    v141 = v8;
    v17 = [v6 identifier];
    v18 = [MEMORY[0x1E69DF8B8] sharedService];
    [v18 setActiveVehicleIdentifier:v17];

    v19 = objc_alloc_init(MEMORY[0x1E69A1D78]);
    v20 = [v6 currentVehicleState];
    v21 = [v20 consumptionArguments];
    v22 = [v21 copy];
    [v19 setConsumptionArguments:v22];

    v23 = [v6 currentVehicleState];
    v24 = [v23 chargingArguments];
    v25 = [v24 copy];
    [v19 setChargingArguments:v25];

    v26 = [v6 currentVehicleState];
    v27 = [v26 maxEVRange];
    v28 = [MEMORY[0x1E696B058] meters];
    v29 = [v27 measurementByConvertingToUnit:v28];
    [v29 doubleValue];
    [v19 setMaxRange:v30];

    v31 = [v6 currentVehicleState];
    v32 = [v31 minBatteryCapacity];
    v33 = [MEMORY[0x1E696B030] kilowattHours];
    v34 = [v32 measurementByConvertingToUnit:v33];
    [v34 doubleValue];
    [v19 setMinBatteryCharge:(v35 * 1000.0)];

    v36 = +[MNVirtualGarageManager sharedManager];
    LODWORD(v32) = [v36 assumesFullCharge];

    v37 = [v6 currentVehicleState];
    v38 = v37;
    if (v32)
    {
      v39 = [v37 maxBatteryCapacity];
      v40 = [MEMORY[0x1E696B030] kilowattHours];
      v41 = [v39 measurementByConvertingToUnit:v40];
      [v41 doubleValue];
      [v19 setCurrentBatteryCharge:(v42 * 1000.0)];

      v43 = 100;
    }

    else
    {
      v44 = [v37 currentBatteryCapacity];
      v45 = [MEMORY[0x1E696B030] kilowattHours];
      v46 = [v44 measurementByConvertingToUnit:v45];
      [v46 doubleValue];
      [v19 setCurrentBatteryCharge:(v47 * 1000.0)];

      v43 = [v6 displayedBatteryPercentage];
    }

    [v19 setCurrentBatteryPercentage:v43];
    v48 = [v6 currentVehicleState];
    v49 = [v48 maxBatteryCapacity];
    v50 = [MEMORY[0x1E696B030] kilowattHours];
    v51 = [v49 measurementByConvertingToUnit:v50];
    [v51 doubleValue];
    [v19 setMaxBatteryCharge:(v52 * 1000.0)];

    v53 = [v6 currentVehicleState];
    v54 = [v53 dateOfUpdate];
    [v54 timeIntervalSinceReferenceDate];
    [v19 setLastSocUpdateDate:v55];

    v56 = [v6 currentVehicleState];
    [v19 setIsCharging:{objc_msgSend(v56, "isCharging")}];

    v57 = objc_alloc_init(MEMORY[0x1E69A1BE8]);
    [v19 setChargerPlugsInfo:v57];

    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v58 = [v6 powerByConnector];
    v59 = [v58 countByEnumeratingWithState:&v153 objects:v160 count:16];
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
            objc_enumerationMutation(v58);
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
            v70 = [MEMORY[0x1E696B068] watts];
            v71 = [v68 measurementByConvertingToUnit:v70];
            [v71 doubleValue];
            [v69 setMaximumPower:v72];

            v19 = v66;
            v73 = [v66 chargerPlugsInfo];
            [v73 addSupportedChargerPlug:v69];
          }

          else
          {
            v68 = MNGetMNRouteAttributesLog();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = v145;
              *&buf[12] = 2112;
              *&buf[14] = v63;
              _os_log_impl(&dword_1D311E000, v68, OS_LOG_TYPE_ERROR, "%p Skipping unknown VG connector: %@", buf, 0x16u);
            }
          }
        }

        v60 = [v58 countByEnumeratingWithState:&v153 objects:v160 count:16];
      }

      while (v60);
    }

    v74 = [v8 _vehicleSpecifications];
    [v74 setEvInfo:v19];
    v6 = v147;
    if ([v147 usesPreferredNetworksForRouting])
    {
      v137 = v74;
      v143 = v19;
      v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v149 = 0u;
      v150 = 0u;
      v151 = 0u;
      v152 = 0u;
      v76 = [v147 preferredChargingNetworks];
      v77 = [v76 countByEnumeratingWithState:&v149 objects:v159 count:16];
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
              objc_enumerationMutation(v76);
            }

            v81 = *(*(&v149 + 1) + 8 * j);
            v82 = objc_alloc_init(MEMORY[0x1E69A1D70]);
            v83 = objc_alloc_init(MEMORY[0x1E69A23B8]);
            [v83 setChargingNetworkMuid:{objc_msgSend(v81, "globalBrandID")}];
            [v82 setPreferenceEntity:v83];
            [v82 setPreferenceType:1];
            [v75 addObject:v82];
          }

          v78 = [v76 countByEnumeratingWithState:&v149 objects:v159 count:16];
        }

        while (v78);
      }

      v8 = v141;
      v84 = [v141 _userPreferences];
      v85 = [v75 copy];
      [v84 setEvChargingPreferences:v85];

      v6 = v147;
      v19 = v143;
      v74 = v137;
    }

    v7 = v139;
    self = v145;
  }

  if ([(NSArray *)self->_lprRules count])
  {
    v86 = [v6 licensePlate];
    v87 = [v86 length];

    if (v87)
    {
      v146 = self;
      v88 = objc_alloc_init(MEMORY[0x1E69A1E48]);
      v89 = [v6 licensePlate];
      [v88 setLicensePlate:v89];

      v90 = [v6 lprVehicleType];
      [v88 setVehicleTypeKey:v90];

      v91 = [v6 lprPowerType];
      [v88 setPowerTypeKey:v91];

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

        v95 = 0;
      }

      else
      {
        v93 = [MEMORY[0x1E695DF00] now];
        v95 = [MEMORY[0x1E695DFE8] localTimeZone];
      }

      v102 = [[MNLPRRuleMatcher alloc] initForVehicle:v88 withRules:v146->_lprRules];
      latLngs = v146->_latLngs;
      v148 = 0;
      v138 = v102;
      v140 = v95;
      v104 = [v102 generateMaskedPlateForWaypoints:latLngs date:v93 timeZone:v95 error:&v148];
      v105 = v148;
      v106 = objc_alloc_init(MEMORY[0x1E69A1E28]);
      v107 = [v147 lprVehicleType];
      [v106 setVehicleTypeKey:v107];

      v108 = [v147 lprPowerType];
      [v106 setPowerTypeKey:v108];

      [v93 timeIntervalSinceReferenceDate];
      [v106 setTimestamp:v109];
      [v106 setMaskedplateGeneratorValidatorVersion:2];
      if (!v146->_forceUpdate)
      {
        v110 = [MEMORY[0x1E69A2398] sharedPlatform];
        if ([v110 isInternalInstall])
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
                  v118 = v7;
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

                  v7 = v118;
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
            v125 = [v142 _vehicleSpecifications];
            if (![v104 length] || v105)
            {
              v126 = v7;
              v127 = MNGetMNRouteAttributesLog();
              if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218242;
                *&buf[4] = v146;
                *&buf[12] = 2112;
                *&buf[14] = v105;
                _os_log_impl(&dword_1D311E000, v127, OS_LOG_TYPE_ERROR, "%p Failed to mask license plate. Error: %@", buf, 0x16u);
              }

              v128 = [v105 domain];
              v129 = [v128 isEqualToString:@"MapsNavLPRErrorDomain"];

              v7 = v126;
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

                [v125 setLprPlateMissingReason:v130];
              }
            }

            else
            {
              [v106 setLicensePlate:v104];
            }

            [v125 setLprInfo:v106];

            v6 = v147;
            v8 = v142;
            goto LABEL_70;
          }
        }

        else
        {
        }
      }

      v116 = [(NSArray *)v146->_lprRules firstObject];
      v117 = [v116 version];
      [v106 setVersionId:v117];

      if (!v105)
      {
        goto LABEL_53;
      }

      goto LABEL_59;
    }
  }

  if (!v6)
  {
    v100 = +[MNVirtualGarageManager sharedManager];
    v101 = [v100 vehiclesCount];

    if (v101)
    {
      v98 = [v8 _vehicleSpecifications];
      v88 = v98;
      v99 = 1;
      goto LABEL_43;
    }
  }

  if ([(MNRouteAttributes *)self hasResolvedRules])
  {
    if (![(NSArray *)self->_lprRules count])
    {
      v96 = [v6 licensePlate];
      v97 = [v96 length];

      if (v97)
      {
        v98 = [v8 _vehicleSpecifications];
        v88 = v98;
        v99 = 3;
LABEL_43:
        [v98 setLprPlateMissingReason:v99];
LABEL_70:
      }
    }
  }

  v131 = objc_opt_new();
  v132 = +[MNCarPlayConnectionMonitor sharedInstance];
  [v131 setCarPlayConnectionStatus:{objc_msgSend(v132, "isConnected")}];

  v133 = +[MNVirtualGarageManager sharedManager];
  [v131 setIntentsConnectionStatus:{objc_msgSend(v133, "isProviderStarted")}];

  v134 = [v8 _vehicleSpecifications];
  [v134 setVehicleInfo:v131];

  v7[2](v7, v8, 1);
  v135 = *MEMORY[0x1E69E9840];
}

- (void)_loadRulesIfNecessaryWithVehicle:(id)a3 queue:(id)a4 finishedHandler:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 licensePlate];
  if ([v11 length])
  {
    v12 = [(MNRouteAttributes *)self hasResolvedRules];

    if (!v12)
    {
      v13 = MNGetMNRouteAttributesLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v8 licensePlate];
        *buf = 134218240;
        v27 = self;
        v28 = 1024;
        v29 = [v14 length];
        _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_INFO, "%p Will load rules for plate of %d chars length", buf, 0x12u);
      }

      latLngs = self->_latLngs;
      forceUpdate = self->_forceUpdate;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __76__MNRouteAttributes__loadRulesIfNecessaryWithVehicle_queue_finishedHandler___block_invoke;
      v23[3] = &unk_1E842F338;
      v23[4] = self;
      v25 = v10;
      v24 = v8;
      [MNRouteAttributes _loadLPRRulesForWaypoints:latLngs forceUpdate:forceUpdate queue:v9 completion:v23];

      goto LABEL_12;
    }
  }

  else
  {
  }

  v17 = MNGetMNRouteAttributesLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v8 licensePlate];
    v19 = [v18 length];
    v20 = [(MNRouteAttributes *)self hasResolvedRules];
    v21 = "NO";
    *buf = 134218498;
    v27 = self;
    if (v20)
    {
      v21 = "YES";
    }

    v28 = 1024;
    v29 = v19;
    v30 = 2080;
    v31 = v21;
    _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_INFO, "%p Not loading rules plate is %d chars & hasResolvedRules: %s", buf, 0x1Cu);
  }

  (*(v10 + 2))(v10, v8, 1);
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

- (void)_resolveSelectedVehicle:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MNGetMNRouteAttributesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v12 = self;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "%p _resolveSelectedVehicle: calling into MNVirtualGarageManager to get selected vehicle", buf, 0xCu);
  }

  v6 = +[MNVirtualGarageManager sharedManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__MNRouteAttributes__resolveSelectedVehicle___block_invoke;
  v9[3] = &unk_1E8430900;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
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
  v2 = [(GEORouteAttributes *)self _automobileOptions];
  [v2 setOptoutIncidentReporting:GEOConfigGetBOOL() ^ 1];
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

- (MNRouteAttributes)initWithAttributes:(id)a3 latLngs:(id)a4 isStepping:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = MNRouteAttributes;
  v10 = [(MNRouteAttributes *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [(MNRouteAttributes *)v10 _commonInit];
    if (v8)
    {
      [(MNRouteAttributes *)v11 mergeFrom:v8];
    }

    v12 = [v9 copy];
    latLngs = v11->_latLngs;
    v11->_latLngs = v12;

    v11->_isStepping = a5;
  }

  return v11;
}

- (MNRouteAttributes)initWithAttributes:(id)a3 waypoints:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 firstObject];
  v9 = [v8 isCurrentLocation];

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v7;
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

        v16 = [*(*(&v20 + 1) + 8 * v15) bestLatLng];
        if (v16)
        {
          [v10 addObject:v16];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [(MNRouteAttributes *)self initWithAttributes:v6 latLngs:v10 isStepping:v9 ^ 1u];
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = MNRouteAttributes;
  v4 = [(MNRouteAttributes *)&v8 copyWithZone:a3];
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MNRouteAttributes;
  v4 = a3;
  [(MNRouteAttributes *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_latLngs forKey:{@"LatLngs", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_isStepping forKey:@"IsStepping"];
}

- (void)_commonInit
{
  v3 = geo_isolater_create();
  vehicleIsolator = self->_vehicleIsolator;
  self->_vehicleIsolator = v3;
}

- (MNRouteAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MNRouteAttributes;
  v5 = [(MNRouteAttributes *)&v13 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(MNRouteAttributes *)v5 _commonInit];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"LatLngs"];
    latLngs = v6->_latLngs;
    v6->_latLngs = v10;

    v6->_isStepping = [v4 decodeBoolForKey:@"IsStepping"];
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