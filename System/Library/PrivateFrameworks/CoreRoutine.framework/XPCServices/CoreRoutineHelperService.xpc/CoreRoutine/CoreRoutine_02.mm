void sub_100023378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000233A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v49[0] = a3;
  v49[1] = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [NSData dataWithBytes:v49 length:16];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v15 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = NSStringFromSelector(*(a1 + 56));
      v35 = v14;
      if (a2 > 5)
      {
        v17 = @"<unknown>";
      }

      else
      {
        v17 = *(&off_1000A8C78 + a2);
      }

      v18 = GEOExternalTileKeyAsString();
      *buf = 138413571;
      v38 = v16;
      v39 = 2112;
      v40 = v17;
      v41 = 2112;
      v42 = v18;
      v43 = 2112;
      v44 = v13;
      v45 = 2117;
      v46 = v11;
      v47 = 2117;
      v48 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%@, result, %@, externalKey, %@, error, %@, tileData, %{sensitive}@, tileCache, %{sensitive}@", buf, 0x3Eu);

      v14 = v35;
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a7);
  if (!a2 && !v13)
  {
    v19 = [(__CFString *)v11 fileURL];

    if (v19)
    {
      v20 = [NSFileManager pathInCacheDirectory:@"BluePOITemp"];
      v21 = GEOExternalTileKeyAsString();
      v22 = [v20 stringByAppendingPathComponent:v21];
      v23 = [NSURL fileURLWithPath:v22];

      v24 = +[NSFileManager defaultManager];
      v25 = [(__CFString *)v11 fileURL];
      v36 = 0;
      [v24 moveItemAtURL:v25 toURL:v23 error:&v36];
      v26 = v36;

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v27 = sub_1000011A0(&qword_1000B2970);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = NSStringFromSelector(*(a1 + 56));
          *buf = 138412802;
          v38 = v28;
          v39 = 2112;
          v40 = v23;
          v41 = 2112;
          v42 = v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%@, dest file, %@, error, %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v26 = sub_1000011A0(&qword_1000B2970);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v34 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412547;
        v38 = v34;
        v39 = 2117;
        v40 = v11;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@, tile URL is nil, tile, %{sensitive}@", buf, 0x16u);
      }

      v23 = 0;
    }

    v29 = [RTBluePOITileDownloadResult alloc];
    v30 = [v12 data];
    v31 = [v29 initWithDownloadKey:v14 tileURL:v23 tileCacheInfo:v30 downloadError:0];
    v32 = *(*(a1 + 48) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v31;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000241B0(id a1)
{
  v211 = NSStringFromSelector("setRoutineEnabled:reply:");
  v315[0] = v211;
  v314 = @"com.apple.CoreRoutine.preferences";
  v210 = [NSArray arrayWithObjects:&v314 count:1];
  v316[0] = v210;
  v209 = NSStringFromSelector("clearRoutineWithReply:");
  v315[1] = v209;
  v313 = @"com.apple.CoreRoutine.preferences";
  v208 = [NSArray arrayWithObjects:&v313 count:1];
  v316[1] = v208;
  v207 = NSStringFromSelector("fetchPathToDiagnosticFilesWithOptions:reply:");
  v315[2] = v207;
  v312 = @"com.apple.CoreRoutine.preferences";
  v206 = [NSArray arrayWithObjects:&v312 count:1];
  v316[2] = v206;
  v205 = NSStringFromSelector("fetchRoutineEnabledWithReply:");
  v315[3] = v205;
  v316[3] = &__NSArray0__struct;
  v204 = NSStringFromSelector("setRestorationIdentifier:");
  v315[4] = v204;
  v316[4] = &__NSArray0__struct;
  v203 = NSStringFromSelector("setTargetUserSession:");
  v315[5] = v203;
  v311 = @"com.apple.private.xpc.launchd.per-user-lookup";
  v202 = [NSArray arrayWithObjects:&v311 count:1];
  v316[5] = v202;
  v201 = NSStringFromSelector("startMonitoringPlaceInferencesWithOptions:reply:");
  v315[6] = v201;
  v310 = @"com.apple.CoreRoutine.LocationOfInterest";
  v200 = [NSArray arrayWithObjects:&v310 count:1];
  v316[6] = v200;
  v199 = NSStringFromSelector("stopMonitoringPlaceInferencesWithReply:");
  v315[7] = v199;
  v309 = @"com.apple.CoreRoutine.LocationOfInterest";
  v198 = [NSArray arrayWithObjects:&v309 count:1];
  v316[7] = v198;
  v197 = NSStringFromSelector("fetchFamiliarityIndexResultsWithOptions:reply:");
  v315[8] = v197;
  v308 = @"com.apple.CoreRoutine.LocationOfInterest";
  v196 = [NSArray arrayWithObjects:&v308 count:1];
  v316[8] = v196;
  v195 = NSStringFromSelector("fetchLocationsOfInterestWithinDistance:ofLocation:reply:");
  v315[9] = v195;
  v307 = @"com.apple.CoreRoutine.LocationOfInterest";
  v194 = [NSArray arrayWithObjects:&v307 count:1];
  v316[9] = v194;
  v193 = NSStringFromSelector("fetchLocationsOfInterestOfType:reply:");
  v315[10] = v193;
  v306 = @"com.apple.CoreRoutine.LocationOfInterest";
  v192 = [NSArray arrayWithObjects:&v306 count:1];
  v316[10] = v192;
  v191 = NSStringFromSelector("fetchAllLocationsOfInterestForSettingsWithReply:");
  v315[11] = v191;
  v305[0] = @"com.apple.CoreRoutine.LocationOfInterest";
  v305[1] = @"com.apple.CoreRoutine.preferences";
  v190 = [NSArray arrayWithObjects:v305 count:2];
  v316[11] = v190;
  v189 = NSStringFromSelector("fetchNextPredictedLocationsOfInterestFromLocation:startDate:timeInterval:reply:");
  v315[12] = v189;
  v304 = @"com.apple.CoreRoutine.LocationOfInterest";
  v188 = [NSArray arrayWithObjects:&v304 count:1];
  v316[12] = v188;
  v187 = NSStringFromSelector("fetchPlaceInferencesWithOptions:reply:");
  v315[13] = v187;
  v303 = @"com.apple.CoreRoutine.LocationOfInterest";
  v186 = [NSArray arrayWithObjects:&v303 count:1];
  v316[13] = v186;
  v185 = NSStringFromSelector("fetchFormattedPostalAddressesFromMeCard:");
  v315[14] = v185;
  v302 = @"com.apple.CoreRoutine.LocationOfInterest";
  v184 = [NSArray arrayWithObjects:&v302 count:1];
  v316[14] = v184;
  v183 = NSStringFromSelector("fetchRoutineModeFromLocation:reply:");
  v315[15] = v183;
  v301 = @"com.apple.CoreRoutine.LocationOfInterest";
  v182 = [NSArray arrayWithObjects:&v301 count:1];
  v316[15] = v182;
  v181 = NSStringFromSelector("fetchLocationsOfInterestAssociatedToIdentifier:reply:");
  v315[16] = v181;
  v300 = @"com.apple.CoreRoutine.LocationOfInterest";
  v180 = [NSArray arrayWithObjects:&v300 count:1];
  v316[16] = v180;
  v179 = NSStringFromSelector("fetchPredictedContextWithOptions:reply:");
  v315[17] = v179;
  v299 = @"com.apple.CoreRoutine.LocationOfInterest";
  v178 = [NSArray arrayWithObjects:&v299 count:1];
  v316[17] = v178;
  v177 = NSStringFromSelector("startMonitoringPredictedContextWithOptions:reply:");
  v315[18] = v177;
  v298 = @"com.apple.CoreRoutine.LocationOfInterest";
  v176 = [NSArray arrayWithObjects:&v298 count:1];
  v316[18] = v176;
  v175 = NSStringFromSelector("stopMonitoringPredictedContextWithReply:");
  v315[19] = v175;
  v297 = @"com.apple.CoreRoutine.LocationOfInterest";
  v174 = [NSArray arrayWithObjects:&v297 count:1];
  v316[19] = v174;
  v173 = NSStringFromSelector("fetchPredictedLocationsOfInterestAssociatedToTitle:location:calendarIdentifier:reply:");
  v315[20] = v173;
  v296 = @"com.apple.CoreRoutine.LocationOfInterest";
  v172 = [NSArray arrayWithObjects:&v296 count:1];
  v316[20] = v172;
  v171 = NSStringFromSelector("fetchPredictedLocationsOfInterestOnDate:reply:");
  v315[21] = v171;
  v295 = @"com.apple.CoreRoutine.LocationOfInterest";
  v170 = [NSArray arrayWithObjects:&v295 count:1];
  v316[21] = v170;
  v169 = NSStringFromSelector("fetchCurrentPredictedLocationsOfInterestLookingBack:lookingAhead:reply:");
  v315[22] = v169;
  v294 = @"com.apple.CoreRoutine.LocationOfInterest";
  v168 = [NSArray arrayWithObjects:&v294 count:1];
  v316[22] = v168;
  v167 = NSStringFromSelector("performBluePOIQueryLookingBack:lookingAhead:reply:");
  v315[23] = v167;
  v293 = @"com.apple.CoreRoutine.LocationOfInterest";
  v166 = [NSArray arrayWithObjects:&v293 count:1];
  v316[23] = v166;
  v165 = NSStringFromSelector("fetchLocationOfInterestWithIdentifier:reply:");
  v315[24] = v165;
  v292 = @"com.apple.CoreRoutine.LocationOfInterest";
  v164 = [NSArray arrayWithObjects:&v292 count:1];
  v316[24] = v164;
  v163 = NSStringFromSelector("fetchLocationsOfInterestVisitedBetweenStartDate:endDate:reply:");
  v315[25] = v163;
  v291 = @"com.apple.CoreRoutine.LocationOfInterest";
  v162 = [NSArray arrayWithObjects:&v291 count:1];
  v316[25] = v162;
  v161 = NSStringFromSelector("fetchLocationOfInterestAtLocation:reply:");
  v315[26] = v161;
  v290 = @"com.apple.CoreRoutine.LocationOfInterest";
  v160 = [NSArray arrayWithObjects:&v290 count:1];
  v316[26] = v160;
  v159 = NSStringFromSelector("fetchLocationOfInterestForRegion:reply:");
  v315[27] = v159;
  v289 = @"com.apple.CoreRoutine.LocationOfInterest";
  v158 = [NSArray arrayWithObjects:&v289 count:1];
  v316[27] = v158;
  v157 = NSStringFromSelector("addLocationOfInterestOfType:mapItemStorage:customLabel:reply:");
  v315[28] = v157;
  v288 = @"com.apple.CoreRoutine.LocationOfInterest";
  v156 = [NSArray arrayWithObjects:&v288 count:1];
  v316[28] = v156;
  v155 = NSStringFromSelector("updateLocationOfInterestWithIdentifier:type:reply:");
  v315[29] = v155;
  v287 = @"com.apple.CoreRoutine.LocationOfInterest";
  v154 = [NSArray arrayWithObjects:&v287 count:1];
  v316[29] = v154;
  v153 = NSStringFromSelector("updateLocationOfInterestWithIdentifier:customLabel:reply:");
  v315[30] = v153;
  v286 = @"com.apple.CoreRoutine.LocationOfInterest";
  v152 = [NSArray arrayWithObjects:&v286 count:1];
  v316[30] = v152;
  v151 = NSStringFromSelector("updateLocationOfInterestWithIdentifier:mapItemStorage:reply:");
  v315[31] = v151;
  v285 = @"com.apple.CoreRoutine.LocationOfInterest";
  v150 = [NSArray arrayWithObjects:&v285 count:1];
  v316[31] = v150;
  v149 = NSStringFromSelector("updateLocationOfInterestWithIdentifier:type:customLabel:reply:");
  v315[32] = v149;
  v284 = @"com.apple.CoreRoutine.LocationOfInterest";
  v148 = [NSArray arrayWithObjects:&v284 count:1];
  v316[32] = v148;
  v147 = NSStringFromSelector("updateLocationOfInterestWithIdentifier:type:mapItemStorage:customLabel:reply:");
  v315[33] = v147;
  v283 = @"com.apple.CoreRoutine.LocationOfInterest";
  v146 = [NSArray arrayWithObjects:&v283 count:1];
  v316[33] = v146;
  v145 = NSStringFromSelector("fetchTransitionsBetweenStartDate:endDate:reply:");
  v315[34] = v145;
  v282 = @"com.apple.CoreRoutine.LocationOfInterest";
  v144 = [NSArray arrayWithObjects:&v282 count:1];
  v316[34] = v144;
  v143 = NSStringFromSelector("fetchDedupedLocationOfInterestIdentifiersWithIdentifier:reply:");
  v315[35] = v143;
  v281 = @"com.apple.CoreRoutine.LocationOfInterest";
  v142 = [NSArray arrayWithObjects:&v281 count:1];
  v316[35] = v142;
  v141 = NSStringFromSelector("fetchAuthorizedLocationStatus:");
  v315[36] = v141;
  v280 = @"com.apple.CoreRoutine.AuthorizedLocation";
  v140 = [NSArray arrayWithObjects:&v280 count:1];
  v316[36] = v140;
  v139 = NSStringFromSelector("setHintForRegionState:significantRegion:reply:");
  v315[37] = v139;
  v279 = @"com.apple.CoreRoutine.LocationOfInterest";
  v138 = [NSArray arrayWithObjects:&v279 count:1];
  v316[37] = v138;
  v137 = NSStringFromSelector("fetchPredictedExitDatesFromLocation:onDate:reply:");
  v315[38] = v137;
  v278 = @"com.apple.CoreRoutine.Prediction";
  v136 = [NSArray arrayWithObjects:&v278 count:1];
  v316[38] = v136;
  v135 = NSStringFromSelector("fetchPredictedLocationsOfInterestBetweenStartDate:endDate:reply:");
  v315[39] = v135;
  v277 = @"com.apple.CoreRoutine.Prediction";
  v134 = [NSArray arrayWithObjects:&v277 count:1];
  v316[39] = v134;
  v133 = NSStringFromSelector("userInteractionWithPredictedLocationOfInterest:interaction:feedback:geoMapItem:reply:");
  v315[40] = v133;
  v276 = @"com.apple.CoreRoutine.Prediction";
  v132 = [NSArray arrayWithObjects:&v276 count:1];
  v316[40] = v132;
  v131 = NSStringFromSelector("startMonitoringVehicleEventsWithReply:");
  v315[41] = v131;
  v275 = @"com.apple.CoreRoutine.VehicleLocation";
  v130 = [NSArray arrayWithObjects:&v275 count:1];
  v316[41] = v130;
  v129 = NSStringFromSelector("stopMonitoringVehicleEventsWithReply:");
  v315[42] = v129;
  v274 = @"com.apple.CoreRoutine.VehicleLocation";
  v128 = [NSArray arrayWithObjects:&v274 count:1];
  v316[42] = v128;
  v127 = NSStringFromSelector("fetchLastVehicleEventsWithReply:");
  v315[43] = v127;
  v273 = @"com.apple.CoreRoutine.VehicleLocation";
  v126 = [NSArray arrayWithObjects:&v273 count:1];
  v316[43] = v126;
  v125 = NSStringFromSelector("vehicleEventAtLocation:notes:reply:");
  v315[44] = v125;
  v272 = @"com.apple.CoreRoutine.VehicleLocation";
  v124 = [NSArray arrayWithObjects:&v272 count:1];
  v316[44] = v124;
  v123 = NSStringFromSelector("clearAllVehicleEventsWithReply:");
  v315[45] = v123;
  v271 = @"com.apple.CoreRoutine.VehicleLocation";
  v122 = [NSArray arrayWithObjects:&v271 count:1];
  v316[45] = v122;
  v121 = NSStringFromSelector("updateVehicleEventWithIdentifier:notes:reply:");
  v315[46] = v121;
  v270 = @"com.apple.CoreRoutine.VehicleLocation";
  v120 = [NSArray arrayWithObjects:&v270 count:1];
  v316[46] = v120;
  v119 = NSStringFromSelector("updateVehicleEventWithIdentifier:photo:reply:");
  v315[47] = v119;
  v269 = @"com.apple.CoreRoutine.VehicleLocation";
  v118 = [NSArray arrayWithObjects:&v269 count:1];
  v316[47] = v118;
  v117 = NSStringFromSelector("updateVehicleEventWithIdentifier:geoMapItem:reply:");
  v315[48] = v117;
  v268 = @"com.apple.CoreRoutine.VehicleLocation";
  v116 = [NSArray arrayWithObjects:&v268 count:1];
  v316[48] = v116;
  v115 = NSStringFromSelector("updateVehicleEventWithIdentifier:location:reply:");
  v315[49] = v115;
  v267 = @"com.apple.CoreRoutine.VehicleLocation";
  v114 = [NSArray arrayWithObjects:&v267 count:1];
  v316[49] = v114;
  v113 = NSStringFromSelector("engageInVehicleEventWithIdentifier:reply:");
  v315[50] = v113;
  v266 = @"com.apple.CoreRoutine.VehicleLocation";
  v112 = [NSArray arrayWithObjects:&v266 count:1];
  v316[50] = v112;
  v111 = NSStringFromSelector("fetchAutomaticVehicleEventDetectionSupportedWithReply:");
  v315[51] = v111;
  v265 = @"com.apple.CoreRoutine.VehicleLocation";
  v110 = [NSArray arrayWithObjects:&v265 count:1];
  v316[51] = v110;
  v109 = NSStringFromSelector("removeLocationOfInterestWithIdentifier:reply:");
  v315[52] = v109;
  v264 = @"com.apple.CoreRoutine.LocationOfInterest.Delete";
  v108 = [NSArray arrayWithObjects:&v264 count:1];
  v316[52] = v108;
  v107 = NSStringFromSelector("removeVisitWithIdentifier:reply:");
  v315[53] = v107;
  v263 = @"com.apple.CoreRoutine.LocationOfInterest.Delete";
  v106 = [NSArray arrayWithObjects:&v263 count:1];
  v316[53] = v106;
  v105 = NSStringFromSelector("extendLifetimeOfVisitsWithIdentifiers:reply:");
  v315[54] = v105;
  v262 = @"com.apple.CoreRoutine.LocationOfInterest.ExtendLifetime";
  v104 = [NSArray arrayWithObjects:&v262 count:1];
  v316[54] = v104;
  v103 = NSStringFromSelector("fetchCloudSyncAuthorizationStateWithReply:");
  v315[55] = v103;
  v261 = @"com.apple.CoreRoutine.CloudSync";
  v102 = [NSArray arrayWithObjects:&v261 count:1];
  v316[55] = v102;
  v101 = NSStringFromSelector("updateCloudSyncProvisionedForAccount:reply:");
  v315[56] = v101;
  v260 = @"com.apple.CoreRoutine.CloudSync";
  v100 = [NSArray arrayWithObjects:&v260 count:1];
  v316[56] = v100;
  v99 = NSStringFromSelector("fetchLookbackWindowStartDateWithLocation:reply:");
  v315[57] = v99;
  v259 = @"com.apple.CoreRoutine.StoredLocation";
  v98 = [NSArray arrayWithObjects:&v259 count:1];
  v316[57] = v98;
  v97 = NSStringFromSelector("fetchStoredLocationsWithContext:reply:");
  v315[58] = v97;
  v258 = @"com.apple.CoreRoutine.StoredLocation";
  v96 = [NSArray arrayWithObjects:&v258 count:1];
  v316[58] = v96;
  v95 = NSStringFromSelector("fetchEstimatedLocationAtDate:options:reply:");
  v315[59] = v95;
  v257 = @"com.apple.CoreRoutine.StoredLocation";
  v94 = [NSArray arrayWithObjects:&v257 count:1];
  v316[59] = v94;
  v93 = NSStringFromSelector("startMonitoringVisitsWithReply:");
  v315[60] = v93;
  v256 = @"com.apple.CoreRoutine.Visit";
  v92 = [NSArray arrayWithObjects:&v256 count:1];
  v316[60] = v92;
  v91 = NSStringFromSelector("stopMonitoringVisitsWithReply:");
  v315[61] = v91;
  v255 = @"com.apple.CoreRoutine.Visit";
  v90 = [NSArray arrayWithObjects:&v255 count:1];
  v316[61] = v90;
  v89 = NSStringFromSelector("startLeechingVisitsWithReply:");
  v315[62] = v89;
  v254 = @"com.apple.CoreRoutine.Visit";
  v88 = [NSArray arrayWithObjects:&v254 count:1];
  v316[62] = v88;
  v87 = NSStringFromSelector("stopLeechingVisitsWithReply:");
  v315[63] = v87;
  v253 = @"com.apple.CoreRoutine.Visit";
  v86 = [NSArray arrayWithObjects:&v253 count:1];
  v316[63] = v86;
  v85 = NSStringFromSelector("startLeechingLowConfidenceVisitsWithReply:");
  v315[64] = v85;
  v252 = @"com.apple.CoreRoutine.Visit";
  v84 = [NSArray arrayWithObjects:&v252 count:1];
  v316[64] = v84;
  v83 = NSStringFromSelector("stopLeechingLowConfidenceVisitsWithReply:");
  v315[65] = v83;
  v251 = @"com.apple.CoreRoutine.Visit";
  v82 = [NSArray arrayWithObjects:&v251 count:1];
  v316[65] = v82;
  v81 = NSStringFromSelector("fetchStoredVisitsWithOptions:reply:");
  v315[66] = v81;
  v250 = @"com.apple.CoreRoutine.Visit";
  v80 = [NSArray arrayWithObjects:&v250 count:1];
  v316[66] = v80;
  v79 = NSStringFromSelector("processHindsightVisitsWithReply:");
  v315[67] = v79;
  v249 = @"com.apple.CoreRoutine.Visit";
  v78 = [NSArray arrayWithObjects:&v249 count:1];
  v316[67] = v78;
  v77 = NSStringFromSelector("fetchFinerGranularityInferredMapItemWithVisitIdentifier:reply:");
  v315[68] = v77;
  v248 = @"com.apple.CoreRoutine.Visit";
  v76 = [NSArray arrayWithObjects:&v248 count:1];
  v316[68] = v76;
  v75 = NSStringFromSelector("fetchTripSegmentsWithOptions:reply:");
  v315[69] = v75;
  v247 = @"com.apple.CoreRoutine.TripSegment";
  v74 = [NSArray arrayWithObjects:&v247 count:1];
  v316[69] = v74;
  v73 = NSStringFromSelector("fetchLocationsCountForTripSegmentWithOptions:reply:");
  v315[70] = v73;
  v246 = @"com.apple.CoreRoutine.TripSegment";
  v72 = [NSArray arrayWithObjects:&v246 count:1];
  v316[70] = v72;
  v71 = NSStringFromSelector("fetchLocationsForTripSegmentWithOptions:reply:");
  v315[71] = v71;
  v245 = @"com.apple.CoreRoutine.TripSegment";
  v70 = [NSArray arrayWithObjects:&v245 count:1];
  v316[71] = v70;
  v69 = NSStringFromSelector("deleteTripSegmentWithUUID:reply:");
  v315[72] = v69;
  v244 = @"com.apple.CoreRoutine.TripSegment";
  v68 = [NSArray arrayWithObjects:&v244 count:1];
  v316[72] = v68;
  v67 = NSStringFromSelector("fetchVehiclesWithOptions:reply:");
  v315[73] = v67;
  v243 = @"com.apple.CoreRoutine.TripSegment";
  v66 = [NSArray arrayWithObjects:&v243 count:1];
  v316[73] = v66;
  v65 = NSStringFromSelector("fetchTripSegmentMetadataWithOptions:reply:");
  v315[74] = v65;
  v242 = @"com.apple.CoreRoutine.TripSegment";
  v64 = [NSArray arrayWithObjects:&v242 count:1];
  v316[74] = v64;
  v63 = NSStringFromSelector("fetchBackgroundInertialOdometrySamplesWithOptions:reply:");
  v315[75] = v63;
  v241 = @"com.apple.CoreRoutine.BackgroundInertialOdometry";
  v62 = [NSArray arrayWithObjects:&v241 count:1];
  v316[75] = v62;
  v61 = NSStringFromSelector("addBackgroundInertialOdometrySamples:reply:");
  v315[76] = v61;
  v240 = @"com.apple.CoreRoutine.BackgroundInertialOdometry";
  v60 = [NSArray arrayWithObjects:&v240 count:1];
  v316[76] = v60;
  v59 = NSStringFromSelector("startMonitoringScenarioTriggerOfType:reply:");
  v315[77] = v59;
  v239 = @"com.apple.CoreRoutine.ScenarioTrigger";
  v58 = [NSArray arrayWithObjects:&v239 count:1];
  v316[77] = v58;
  v57 = NSStringFromSelector("stopMonitoringScenarioTriggerOfType:reply:");
  v315[78] = v57;
  v238 = @"com.apple.CoreRoutine.ScenarioTrigger";
  v56 = [NSArray arrayWithObjects:&v238 count:1];
  v316[78] = v56;
  v55 = NSStringFromSelector("fetchMonitoredScenarioTriggerTypesWithReply:");
  v315[79] = v55;
  v237 = @"com.apple.CoreRoutine.ScenarioTrigger";
  v54 = [NSArray arrayWithObjects:&v237 count:1];
  v316[79] = v54;
  v53 = NSStringFromSelector("fetchEnumerableObjectsWithOptions:offset:reply:");
  v315[80] = v53;
  v1 = objc_opt_class();
  v52 = NSStringFromClass(v1);
  v235[0] = v52;
  v234 = @"com.apple.CoreRoutine.LocationOfInterest";
  v51 = [NSArray arrayWithObjects:&v234 count:1];
  v236[0] = v51;
  v2 = objc_opt_class();
  v50 = NSStringFromClass(v2);
  v235[1] = v50;
  v233 = @"com.apple.CoreRoutine.Hint";
  v49 = [NSArray arrayWithObjects:&v233 count:1];
  v236[1] = v49;
  v3 = objc_opt_class();
  v48 = NSStringFromClass(v3);
  v235[2] = v48;
  v232 = @"com.apple.CoreRoutine.StoredLocation";
  v47 = [NSArray arrayWithObjects:&v232 count:1];
  v236[2] = v47;
  v46 = [NSDictionary dictionaryWithObjects:v236 forKeys:v235 count:3];
  v316[80] = v46;
  v45 = NSStringFromSelector("startMonitoringForPeopleDiscoveryWithIdentifier:configuration:reply:");
  v315[81] = v45;
  v231 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v44 = [NSArray arrayWithObjects:&v231 count:1];
  v316[81] = v44;
  v43 = NSStringFromSelector("stopMonitoringForPeopleDiscoveryWithIdentifier:reply:");
  v315[82] = v43;
  v230 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v42 = [NSArray arrayWithObjects:&v230 count:1];
  v316[82] = v42;
  v41 = NSStringFromSelector("fetchProximityHistoryFromStartDate:endDate:completionHandler:");
  v315[83] = v41;
  v229 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v40 = [NSArray arrayWithObjects:&v229 count:1];
  v316[83] = v40;
  v39 = NSStringFromSelector("fetchProximityHistoryFromEventIDs:completionHandler:");
  v315[84] = v39;
  v228 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v38 = [NSArray arrayWithObjects:&v228 count:1];
  v316[84] = v38;
  v37 = NSStringFromSelector("fetchPeopleCountEventsHistory:completionHandler:");
  v315[85] = v37;
  v227 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v36 = [NSArray arrayWithObjects:&v227 count:1];
  v316[85] = v36;
  v35 = NSStringFromSelector("fetchPeopleDensityHistoryFromStartDate:endDate:completionHandler:");
  v315[86] = v35;
  v226 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v34 = [NSArray arrayWithObjects:&v226 count:1];
  v316[86] = v34;
  v33 = NSStringFromSelector("fetchOngoingPeopleDensity:");
  v315[87] = v33;
  v225 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v32 = [NSArray arrayWithObjects:&v225 count:1];
  v316[87] = v32;
  v31 = NSStringFromSelector("fetchContactScoresFromContactIDs:completionHandler:");
  v315[88] = v31;
  v224 = @"com.apple.CoreRoutine.PeopleDiscovery";
  v30 = [NSArray arrayWithObjects:&v224 count:1];
  v316[88] = v30;
  v29 = NSStringFromSelector("fetchElevationsWithOptions:reply:");
  v315[89] = v29;
  v223 = @"com.apple.CoreRoutine.StoredElevation";
  v28 = [NSArray arrayWithObjects:&v223 count:1];
  v316[89] = v28;
  v27 = NSStringFromSelector("fetchElevationsWithContext:reply:");
  v315[90] = v27;
  v222 = @"com.apple.CoreRoutine.StoredElevation";
  v26 = [NSArray arrayWithObjects:&v222 count:1];
  v316[90] = v26;
  v25 = NSStringFromSelector("addElevations:handler:");
  v315[91] = v25;
  v221 = @"com.apple.CoreRoutine.StoredElevation";
  v24 = [NSArray arrayWithObjects:&v221 count:1];
  v316[91] = v24;
  v23 = NSStringFromSelector("fetchRemoteStatusWithReply:");
  v315[92] = v23;
  v220 = @"com.apple.CoreRoutine.RemoteStatus";
  v22 = [NSArray arrayWithObjects:&v220 count:1];
  v316[92] = v22;
  v21 = NSStringFromSelector("startMonitoringRemoteStatusWithReply:");
  v315[93] = v21;
  v219 = @"com.apple.CoreRoutine.RemoteStatus";
  v20 = [NSArray arrayWithObjects:&v219 count:1];
  v316[93] = v20;
  v19 = NSStringFromSelector("stopMonitoringRemoteStatusWithReply:");
  v315[94] = v19;
  v218 = @"com.apple.CoreRoutine.RemoteStatus";
  v18 = [NSArray arrayWithObjects:&v218 count:1];
  v316[94] = v18;
  v17 = NSStringFromSelector("submitUserCurationForVisitDateRange:newLabel:handler:");
  v315[95] = v17;
  v217 = @"com.apple.CoreRoutine.StoredUserCuration";
  v16 = [NSArray arrayWithObjects:&v217 count:1];
  v316[95] = v16;
  v15 = NSStringFromSelector("correctLabelForVisitWithIdentifier:entryDate:originalLabel:newLabel:handler:");
  v315[96] = v15;
  v216 = @"com.apple.CoreRoutine.StoredUserCuration";
  v4 = [NSArray arrayWithObjects:&v216 count:1];
  v316[96] = v4;
  v5 = NSStringFromSelector("fetchLearnedRoutesWithOptions:reply:");
  v315[97] = v5;
  v215 = @"com.apple.CoreRoutine.LearnedRoute";
  v6 = [NSArray arrayWithObjects:&v215 count:1];
  v316[97] = v6;
  v7 = NSStringFromSelector("fetchTripClusterMetadataWithOptions:reply:");
  v315[98] = v7;
  v214 = @"com.apple.CoreRoutine.LearnedRoute";
  v8 = [NSArray arrayWithObjects:&v214 count:1];
  v316[98] = v8;
  v9 = NSStringFromSelector("purgeTripClusterTable:reply:");
  v315[99] = v9;
  v213 = @"com.apple.CoreRoutine.LearnedRoute";
  v10 = [NSArray arrayWithObjects:&v213 count:1];
  v316[99] = v10;
  v11 = NSStringFromSelector("purgeTripClusterWithClusterID:reply:");
  v315[100] = v11;
  v212 = @"com.apple.CoreRoutine.LearnedRoute";
  v12 = [NSArray arrayWithObjects:&v212 count:1];
  v316[100] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v316 forKeys:v315 count:101];
  v14 = qword_1000B2B58;
  qword_1000B2B58 = v13;
}

void sub_10002756C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000B2B68;
  qword_1000B2B68 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_1000B2B68 setLocale:v3];

  [qword_1000B2B68 setDateStyle:1];
  v4 = qword_1000B2B68;

  [v4 setTimeStyle:3];
}

void sub_100027640(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000B2B78;
  qword_1000B2B78 = v1;

  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_1000B2B78 setLocale:v3];

  [qword_1000B2B78 setDateStyle:1];
  v4 = qword_1000B2B78;

  [v4 setTimeStyle:3];
}

void sub_100028784(uint64_t a1)
{
  v2 = [*(a1 + 32) computeState];

  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = objc_alloc_init(RTPredictedContextAlgorithmsServiceComputeState);
    [*(a1 + 32) setComputeState:v3];
  }
}

void sub_100029DB0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x390], 8);
  _Unwind_Resume(a1);
}

void sub_100029EA4(uint64_t a1)
{
  v2 = [*(a1 + 32) computeState];

  if (v2)
  {
    v3 = [*(a1 + 32) computeState];
    *(*(*(a1 + 48) + 8) + 24) = [v3 receivedInterruptRequest];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_100029F50(uint64_t a1)
{
  v3 = [*(a1 + 32) computeState];
  v2 = [v3 interactionRecords];
  [v2 addObject:*(a1 + 40)];
}

void sub_100029FB4(uint64_t a1)
{
  v3 = [*(a1 + 32) computeState];
  v2 = [v3 interactionRecords];
  [v2 addObject:*(a1 + 40)];
}

void sub_10002A018(uint64_t a1)
{
  v2 = [*(a1 + 32) computeState];
  *(*(*(a1 + 40) + 8) + 24) = [v2 receivedInterruptRequest];

  v3 = [*(a1 + 32) computeState];
  *(*(*(a1 + 48) + 8) + 24) = [v3 didInterrupt];
}

void sub_10002A098(uint64_t a1)
{
  v3 = [*(a1 + 32) computeState];
  v2 = [v3 interactionRecords];
  [v2 addObject:*(a1 + 40)];
}

void sub_10002A0FC(uint64_t a1)
{
  v3 = [*(a1 + 32) computeState];
  v2 = [v3 interactionRecords];
  [v2 addObject:*(a1 + 40)];
}

void sub_10002A168(uint64_t a1)
{
  v2 = [*(a1 + 32) computeState];
  v3 = [v2 interactionRecords];
  [v3 addObject:*(a1 + 40)];

  v8 = [*(a1 + 32) computeState];
  v4 = [v8 interactionRecords];
  v5 = [v4 copy];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10002A69C(uint64_t a1)
{
  v2 = [*(a1 + 32) computeState];

  if (v2)
  {
    v8 = [*(a1 + 32) computeState];
    [v8 setReceivedInterruptRequest:1];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = sub_1000011A0(&qword_1000B29E8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@, %@, Late interrupt received after training completed — ignored", buf, 0x16u);
    }
  }
}

void sub_10002A80C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) computeState];
  [v2 setDidInterrupt:v1];
}

void sub_10002A860(uint64_t a1)
{
  v3 = [*(a1 + 32) computeState];
  v2 = [v3 interactionRecords];
  [v2 addObject:*(a1 + 40)];
}

void sub_10002A970(uint64_t a1, SEL aSelector)
{
  v3 = NSStringFromSelector(aSelector);
  v4 = [NSString stringWithFormat:@"%@ requires the use of the initializer: %@", a1, v3];

  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  objc_exception_throw(v5);
}

id sub_10002A9F0(uint64_t a1)
{
  v1 = [NSString stringWithFormat:@"Invalid parameter not satisfying: %@", a1, NSLocalizedDescriptionKey];
  v6 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  v3 = [NSError errorWithDomain:RTErrorDomain code:7 userInfo:v2];

  return v3;
}

void sub_10002BCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  sub_10002BEDC(v10);

  _Unwind_Resume(a1);
}

void sub_10002BD3C(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 24 * a2;
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 16) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        v16 = a1;
        sub_10002E4C8(v10);
      }

      sub_10002E420();
    }

    v15 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v15);
    a1[1] = v4 + v15;
  }
}

uint64_t sub_10002BEDC(uint64_t a1)
{
  v4 = (a1 + 24);
  sub_10000B008(&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10002CA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, char a12, uint64_t a13, uint64_t a14, std::exception a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char *a43)
{
  sub_100018630(&a43);
  a43 = &a12;
  sub_100018804(&a43);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_10002BEDC(&a25);

  _Unwind_Resume(a1);
}

void sub_10002D2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62)
{
  _Block_object_dispose(&a51, 8);

  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void sub_10002D460(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10002D510(id a1)
{
  qword_1000B2B88 = os_log_create("com.apple.CoreRoutine", "POLYGONAL BLUE POI");

  _objc_release_x1();
}

void sub_10002D554(int8x16_t *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_10002D598(exception, a1);
}

int8x16_t sub_10002D598(uint64_t a1, int8x16_t *a2)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &off_1000A8F70;
  *(a1 + 8) = off_1000A8FA0;
  *(a1 + 16) = off_1000A8FC8;
  *(a1 + 48) = a2[1].i32[0];
  result = vextq_s8(*a2, *a2, 8uLL);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10002D614(uint64_t a1)
{
  *(a1 + 16) = &off_1000A9040;
  sub_10002DB54((a1 + 24));
  std::exception::~exception((a1 + 8));
  return a1;
}

void sub_10002D82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10002DB54(&a9);
  sub_10002DB54(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_10002D898(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_10002DBB0(exception, a1);
}

void sub_10002D8F4(uint64_t a1)
{
  *(a1 + 16) = &off_1000A9040;
  sub_10002DB54((a1 + 24));
  std::exception::~exception((a1 + 8));

  operator delete();
}

void sub_10002D968(uint64_t a1)
{
  *(a1 + 8) = &off_1000A9040;
  sub_10002DB54((a1 + 16));

  std::exception::~exception(a1);
}

void sub_10002D9C4(uint64_t a1)
{
  *(a1 + 8) = &off_1000A9040;
  sub_10002DB54((a1 + 16));
  std::exception::~exception(a1);

  operator delete();
}

void sub_10002DA48(void *a1)
{
  *a1 = &off_1000A9040;
  v1 = (a1 - 1);
  sub_10002DB54(a1 + 1);

  std::exception::~exception(v1);
}

void sub_10002DAA0(void *a1)
{
  *a1 = &off_1000A9040;
  v1 = (a1 - 1);
  sub_10002DB54(a1 + 1);
  std::exception::~exception(v1);

  operator delete();
}

void sub_10002DB1C(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

uint64_t *sub_10002DB54(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_10002DBB0(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1000A8FE8;
  *(a1 + 8) = &off_1000A9018;
  v4 = *(a2 + 24);
  *(a1 + 16) = &off_1000A9040;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &off_1000A8F70;
  *(a1 + 8) = off_1000A8FA0;
  *(a1 + 16) = off_1000A8FC8;
  return a1;
}

uint64_t sub_10002DCE0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

long double sub_10002DD78(double *a1, double *a2, double *a3)
{
  v6 = sub_10002E1D0(a2, a1);
  v7 = sub_10002E1D0(a2, a3);
  if (v7 != 0.0)
  {
    v9 = v7;
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    v10 = fabs(v7);
    v11 = 1.0;
    if (v10 >= 1.0)
    {
      v11 = v10;
    }

    if (v10 > v11 * 2.22044605e-16)
    {
LABEL_7:
      v52 = v6;
      v50 = sub_10002E1D0(a3, a1);
      v12 = *a2;
      if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2BA0))
      {
        qword_1000B2B98 = 0x3F91DF46A2529D39;
        __cxa_guard_release(&qword_1000B2BA0);
      }

      v51 = v9;
      v13 = *&qword_1000B2B98;
      v14 = a2[1];
      if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
      {
        v37 = v14;
        v38 = __cxa_guard_acquire(&qword_1000B2BA0);
        v14 = v37;
        if (v38)
        {
          qword_1000B2B98 = 0x3F91DF46A2529D39;
          __cxa_guard_release(&qword_1000B2BA0);
          v14 = v37;
        }
      }

      v15 = *&qword_1000B2B98;
      v16 = *a3;
      if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
      {
        v39 = v14;
        v40 = __cxa_guard_acquire(&qword_1000B2BA0);
        v14 = v39;
        if (v40)
        {
          qword_1000B2B98 = 0x3F91DF46A2529D39;
          __cxa_guard_release(&qword_1000B2BA0);
          v14 = v39;
        }
      }

      v17 = *&qword_1000B2B98;
      v18 = a3[1];
      if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
      {
        v41 = v14;
        v42 = __cxa_guard_acquire(&qword_1000B2BA0);
        v14 = v41;
        if (v42)
        {
          qword_1000B2B98 = 0x3F91DF46A2529D39;
          __cxa_guard_release(&qword_1000B2BA0);
          v14 = v41;
        }
      }

      v19 = *&qword_1000B2B98;
      v20 = *a1;
      if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
      {
        v49 = v14;
        v43 = __cxa_guard_acquire(&qword_1000B2BA0);
        v14 = v49;
        if (v43)
        {
          qword_1000B2B98 = 0x3F91DF46A2529D39;
          __cxa_guard_release(&qword_1000B2BA0);
          v14 = v49;
        }
      }

      v21 = v12 * v13;
      v22 = v14 * v15;
      v46 = v18 * v19;
      v48 = v16 * v17;
      v23 = v20 * *&qword_1000B2B98;
      v24 = a1[1];
      if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2BA0))
      {
        qword_1000B2B98 = 0x3F91DF46A2529D39;
        __cxa_guard_release(&qword_1000B2BA0);
      }

      v25 = v24 * *&qword_1000B2B98;
      v26 = __sincos_stret(v23 - v21);
      v27 = __sincos_stret(v22);
      v44 = v23;
      v28 = __sincos_stret(v25);
      v45 = atan2(v26.__sinval * v28.__cosval, v26.__cosval * -(v27.__sinval * v28.__cosval) + v27.__cosval * v28.__sinval);
      v29 = __sincos_stret(v48 - v21);
      v30 = __sincos_stret(v46);
      v47 = atan2(v29.__sinval * v30.__cosval, v29.__cosval * -(v27.__sinval * v30.__cosval) + v27.__cosval * v30.__sinval);
      v31 = atan2(v27.__cosval * v29.__sinval, v27.__cosval * v30.__sinval * v29.__cosval - v27.__sinval * v30.__cosval) + -3.14159265;
      v32 = __sincos_stret(v44 - v48);
      v33 = atan2(v32.__sinval * v28.__cosval, v32.__cosval * -(v30.__sinval * v28.__cosval) + v30.__cosval * v28.__sinval) - v31;
      v6 = v52;
      v34 = v52 * cos(v45 - v47) / v51;
      v35 = cos(v33);
      if (v34 <= 0.0 || v50 * v35 / v51 <= 0.0)
      {
        if (v50 < v52)
        {
          return v50;
        }
      }

      else
      {
        v36 = sin(v45 - v47);
        return v52 * v36 * (v36 - v52 * v36) / (sqrt(0.25 - v52 * v36 * (v36 - v52 * v36)) + 0.5);
      }
    }
  }

  return v6;
}

long double sub_10002E1D0(double *a1, double *a2)
{
  v2 = *a1;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v28 = a2;
    v32 = a1;
    v19 = __cxa_guard_acquire(&qword_1000B2BA0);
    a2 = v28;
    a1 = v32;
    if (v19)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      a2 = v28;
      a1 = v32;
    }
  }

  v3 = *&qword_1000B2B98;
  v4 = a1[1];
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v29 = a2;
    v33 = v3;
    v20 = __cxa_guard_acquire(&qword_1000B2BA0);
    v3 = v33;
    a2 = v29;
    if (v20)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v3 = v33;
      a2 = v29;
    }
  }

  v5 = *&qword_1000B2B98;
  v6 = *a2;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v30 = a2;
    v34 = v3;
    v24 = v6;
    v26 = v5;
    v21 = __cxa_guard_acquire(&qword_1000B2BA0);
    v6 = v24;
    v5 = v26;
    v3 = v34;
    a2 = v30;
    if (v21)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v6 = v24;
      v5 = v26;
      v3 = v34;
      a2 = v30;
    }
  }

  v7 = *&qword_1000B2B98;
  v8 = a2[1];
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v31 = v7;
    v35 = v3;
    v25 = v6;
    v27 = v5;
    v23 = v8;
    v22 = __cxa_guard_acquire(&qword_1000B2BA0);
    v5 = v27;
    v7 = v31;
    v8 = v23;
    v6 = v25;
    v3 = v35;
    if (v22)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v5 = v27;
      v7 = v31;
      v8 = v23;
      v6 = v25;
      v3 = v35;
    }
  }

  v9 = v6 * v7;
  v10 = v4 * v5;
  v11 = v2 * v3;
  v12 = v8 * *&qword_1000B2B98;
  v13 = sin((v8 * *&qword_1000B2B98 - v10) * 0.5);
  v14 = v13 * v13;
  v15 = cos(v10);
  v16 = v15 * cos(v12);
  v17 = sin((v9 - v11) * 0.5);
  return v14 + v16 * (v17 * v17);
}

void sub_10002E438(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10002E494(exception, a1);
}

std::logic_error *sub_10002E494(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_10002E4C8(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_10001A5DC();
}

uint64_t sub_10002E520(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v6 += 24;
      a4 += 3;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 24;
    }

    while (v5 != a3);
  }

  return sub_10002E5DC(v9);
}

uint64_t sub_10002E5DC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 8);
    v3 = **(a1 + 16);
    if (v3 != v2)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 = v4;
      }

      while (v4 != v2);
    }
  }

  return a1;
}

uint64_t sub_10002E644(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10002E6A8(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_100006D60(v10);
      }

      sub_10002E420();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

void sub_10002E7C0(void *a1, uint64_t a2)
{
  sub_10000D6F4(a1, ". A spike point was found with apex at ", 39);
  sub_10000D63C(v16, ", ");
  sub_10000D63C(v14, "(");
  sub_10000D63C(v12, ")");
  sub_10000D63C(v10, ", ");
  sub_10000D63C(v8, "(");
  sub_10000D63C(v6, ")");
  sub_10000D63C(v4, ", ");
  sub_10002EA58(&v18, a2, v16, v14, v12, v10, v8, v6, v4);
  sub_10002EEE0(a1, v18, &v19);
  std::ostream::flush();
  if (v32 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_10002E99C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002EA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9)
{
  if (*(a3 + 23) < 0)
  {
    sub_10002F038(v24, *a3, *(a3 + 8));
  }

  else
  {
    *v24 = *a3;
    v25 = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_10002F038(v26, *a4, *(a4 + 8));
  }

  else
  {
    *v26 = *a4;
    v27 = *(a4 + 16);
  }

  if (*(a5 + 23) < 0)
  {
    sub_10002F038(v28, *a5, *(a5 + 8));
  }

  else
  {
    *v28 = *a5;
    v29 = *(a5 + 16);
  }

  if (*(a6 + 23) < 0)
  {
    sub_10002F038(v30, *a6, *(a6 + 8));
  }

  else
  {
    *v30 = *a6;
    v31 = *(a6 + 16);
  }

  if (*(a7 + 23) < 0)
  {
    sub_10002F038(v32, *a7, *(a7 + 8));
  }

  else
  {
    *v32 = *a7;
    v33 = *(a7 + 16);
  }

  if (*(a8 + 23) < 0)
  {
    sub_10002F038(__p, *a8, *(a8 + 8));
  }

  else
  {
    *__p = *a8;
    v35 = *(a8 + 16);
  }

  if (*(a9 + 23) < 0)
  {
    sub_10002F038(&v36, *a9, *(a9 + 1));
  }

  else
  {
    v36 = *a9;
    v37 = *(a9 + 2);
  }

  *a1 = a2;
  v16 = SHIBYTE(v25);
  if (SHIBYTE(v25) < 0)
  {
    sub_10002F038((a1 + 8), v24[0], v24[1]);
  }

  else
  {
    *(a1 + 8) = *v24;
    *(a1 + 24) = v25;
  }

  v17 = SHIBYTE(v27);
  if (SHIBYTE(v27) < 0)
  {
    sub_10002F038((a1 + 32), v26[0], v26[1]);
  }

  else
  {
    *(a1 + 32) = *v26;
    *(a1 + 48) = v27;
  }

  v18 = SHIBYTE(v29);
  if (SHIBYTE(v29) < 0)
  {
    sub_10002F038((a1 + 56), v28[0], v28[1]);
  }

  else
  {
    *(a1 + 56) = *v28;
    *(a1 + 72) = v29;
  }

  v19 = SHIBYTE(v31);
  if (SHIBYTE(v31) < 0)
  {
    sub_10002F038((a1 + 80), v30[0], v30[1]);
  }

  else
  {
    *(a1 + 80) = *v30;
    *(a1 + 96) = v31;
  }

  v20 = SHIBYTE(v33);
  if (SHIBYTE(v33) < 0)
  {
    sub_10002F038((a1 + 104), v32[0], v32[1]);
  }

  else
  {
    *(a1 + 104) = *v32;
    *(a1 + 120) = v33;
  }

  v21 = SHIBYTE(v35);
  if (SHIBYTE(v35) < 0)
  {
    sub_10002F038((a1 + 128), __p[0], __p[1]);
  }

  else
  {
    *(a1 + 128) = *__p;
    *(a1 + 144) = v35;
  }

  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    *(a1 + 152) = v36;
    *(a1 + 168) = v37;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v22 = v36;
  sub_10002F038((a1 + 152), v36, *(&v36 + 1));
  operator delete(v22);
  if (v21 < 0)
  {
LABEL_42:
    operator delete(__p[0]);
  }

LABEL_43:
  if (v20 < 0)
  {
    operator delete(v32[0]);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_45:
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_53;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(v30[0]);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_46:
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

LABEL_54:
    operator delete(v26[0]);
    if ((v16 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_55;
  }

LABEL_53:
  operator delete(v28[0]);
  if (v17 < 0)
  {
    goto LABEL_54;
  }

LABEL_47:
  if ((v16 & 0x80000000) == 0)
  {
    return;
  }

LABEL_55:
  v23 = v24[0];

  operator delete(v23);
}

void sub_10002EDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 + 151) < 0)
  {
    operator delete(*(v44 + 128));
  }

  if (*(v44 + 127) < 0)
  {
    operator delete(*(v44 + 104));
  }

  if (*(v44 + 103) < 0)
  {
    operator delete(*(v44 + 80));
  }

  if (*(v44 + 79) < 0)
  {
    operator delete(*(v44 + 56));
  }

  if (*(v44 + 55) < 0)
  {
    operator delete(*(v44 + 32));
  }

  if (*(v44 + 31) < 0)
  {
    operator delete(*v45);
  }

  sub_10002F0DC(&a9);
  _Unwind_Resume(a1);
}

void *sub_10002EEE0(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 47);
  if (v6 >= 0)
  {
    v7 = a3 + 24;
  }

  else
  {
    v7 = *(a3 + 24);
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 47);
  }

  else
  {
    v8 = *(a3 + 32);
  }

  sub_10000D6F4(a1, v7, v8);
  sub_10000D63C(__p, "");
  if (v23 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v23 >= 0)
  {
    v10 = HIBYTE(v23);
  }

  else
  {
    v10 = __p[1];
  }

  sub_10000D6F4(a1, v9, v10);
  v11 = *a2;
  std::ostream::operator<<();
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a3 + 23) < 0)
  {
    sub_10002F038(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v23 = *(a3 + 16);
  }

  if (v23 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if (v23 >= 0)
  {
    v13 = HIBYTE(v23);
  }

  else
  {
    v13 = __p[1];
  }

  sub_10000D6F4(a1, v12, v13);
  v14 = a2[1];
  std::ostream::operator<<();
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = *(a3 + 48);
  v16 = a3 + 48;
  v15 = v17;
  v18 = *(v16 + 23);
  if (v18 >= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  if (v18 >= 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = *(v16 + 8);
  }

  return sub_10000D6F4(a1, v19, v20);
}

void sub_10002F018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10002F038(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_10002E7A8();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_10002F0DC(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10002F170(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_10001A5DC();
}

uint64_t sub_10002F1B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v4 = v3 >> 1;
  v5 = (result + 16 * (v3 >> 1));
  v8 = *(a2 - 16);
  v6 = a2 - 16;
  v7 = v8;
  v9 = *(v6 + 8);
  v10 = 8;
  if (*(v6 + 8))
  {
    v11 = 0;
  }

  else
  {
    v11 = 8;
  }

  v12 = *(v7 + v11);
  if (*(v5 + 8))
  {
    v10 = 0;
  }

  v13 = *(*v5 + v10);
  if (v12 == v13)
  {
    goto LABEL_48;
  }

  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  v26 = fabs(v12);
  v27 = fabs(v13);
  v28 = vabdd_f64(v12, v13);
  if (v26 < v27)
  {
    v26 = v27;
  }

  if (v26 < 1.0)
  {
    v26 = 1.0;
  }

  if (v28 <= v26 * 2.22044605e-16)
  {
LABEL_48:
    if (!*(v6 + 8) || *(v5 + 8))
    {
      return result;
    }
  }

  else
  {
LABEL_15:
    if (v12 >= v13)
    {
      return result;
    }
  }

  v15 = *v5;
  *(v6 + 8) = *(v5 + 8);
  *v6 = v15;
  if (v3 < 2)
  {
    goto LABEL_39;
  }

  v16 = (result + 16 * (v3 >> 1));
  while (1)
  {
    v17 = v4 - 1;
    v4 = (v4 - 1) >> 1;
    v5 = (result + 16 * v4);
    v18 = *(v7 + v11);
    v19 = *(v5 + 8) ? 0 : 8;
    v20 = *(*v5 + v19);
    if (v18 == v20)
    {
      break;
    }

    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v23 = fabs(v18);
      v24 = fabs(v20);
      v25 = vabdd_f64(v18, v20);
      if (v23 < v24)
      {
        v23 = v24;
      }

      if (v23 < 1.0)
      {
        v23 = 1.0;
      }

      if (v25 <= v23 * 2.22044605e-16)
      {
        break;
      }
    }

    if (v18 >= v20)
    {
      goto LABEL_38;
    }

LABEL_30:
    v22 = *v5;
    *(v16 + 8) = *(v5 + 8);
    *v16 = v22;
    v16 = (result + 16 * v4);
    if (v17 <= 1)
    {
      goto LABEL_39;
    }
  }

  if (v9 && !*(v5 + 8))
  {
    goto LABEL_30;
  }

LABEL_38:
  v5 = v16;
LABEL_39:
  *v5 = v7;
  *(v5 + 8) = v9;
  return result;
}

uint64_t sub_10002F350(double *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = (a1[1] + a1[3]) * 0.5;
  v47 = *(a1 + 2);
  v7 = *a1;
  v8 = *(a1 + 1);
  v44[0] = *a1;
  v45 = v8;
  v46 = v7;
  v48 = v6;
  v44[1] = v6;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  __p = 0;
  v39 = 0;
  v40 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  sub_100019804(&v46, v44, a2, &v41, &__p, &v35);
  v9 = v35;
  v10 = v36;
  if (v35 == v36)
  {
    goto LABEL_34;
  }

  v49 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v50 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v11 = v35;
  do
  {
    sub_10001911C(&v49, *v11++ + 2);
  }

  while (v11 != v10);
  v34[0] = v49;
  v34[1] = v50;
  v12 = v10 - v9;
  v13 = v9;
  if (a3 > 0x63 || (v13 = v9, v12 < 0x79))
  {
LABEL_19:
    v19 = v13 + 1;
    v18 = v13 + 1;
    if (v13 + 1 != v10)
    {
      while ((sub_10000E720(a4, *v13, *v18) & 1) != 0)
      {
        if (++v18 == v10)
        {
          ++v13;
          if (v19 == v10)
          {
            goto LABEL_7;
          }

          goto LABEL_19;
        }
      }

      goto LABEL_37;
    }
  }

  else if (!sub_100019424(v34, &v35, a3 + 1, a4))
  {
    goto LABEL_37;
  }

LABEL_7:
  if (v12 >= 0x80 && a3 <= 0x63 && (v42 - v41) >= 0x79)
  {
    if (sub_10002F738(v34, &v35, &v41, a3 + 1, a4))
    {
      goto LABEL_24;
    }

LABEL_37:
    v26 = 0;
    goto LABEL_38;
  }

  v14 = v41;
  v15 = v42;
  if (v41 != v42)
  {
    v16 = v9;
LABEL_10:
    v17 = v14;
    while ((sub_10000E720(a4, *v16, *v17) & 1) != 0)
    {
      if (++v17 == v15)
      {
        if (++v16 != v10)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }
    }

    goto LABEL_37;
  }

LABEL_14:
  if (v12 < 0x80)
  {
LABEL_28:
    v20 = __p;
    v21 = v39;
    if (__p != v39)
    {
      v22 = v9;
LABEL_30:
      v23 = v20;
      while ((sub_10000E720(a4, *v22, *v23) & 1) != 0)
      {
        if (++v23 == v21)
        {
          if (++v22 != v10)
          {
            goto LABEL_30;
          }

          goto LABEL_34;
        }
      }

      goto LABEL_37;
    }

    goto LABEL_34;
  }

LABEL_24:
  if (a3 > 0x63 || (v39 - __p) < 0x79)
  {
    goto LABEL_28;
  }

  if ((sub_10002F738(v34, &v35, &__p, a3 + 1, a4) & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v25 = v41;
  v24 = v42;
  if (a3 > 0x63 || (v42 - v41) < 0x79)
  {
    if (v41 != v42)
    {
LABEL_46:
      v28 = v25 + 1;
      v29 = v25 + 1;
      if (v25 + 1 != v24)
      {
        while ((sub_10000E720(a4, *v25, *v29) & 1) != 0)
        {
          if (++v29 == v24)
          {
            ++v25;
            if (v28 != v24)
            {
              goto LABEL_46;
            }

            goto LABEL_50;
          }
        }

        goto LABEL_37;
      }
    }
  }

  else if (!sub_100019424(&v46, &v41, a3 + 1, a4))
  {
    goto LABEL_37;
  }

LABEL_50:
  v31 = __p;
  v30 = v39;
  if (a3 > 0x63 || (v39 - __p) < 0x79)
  {
    if (__p != v39)
    {
LABEL_54:
      v32 = v31 + 1;
      v33 = v31 + 1;
      if (v31 + 1 != v30)
      {
        while ((sub_10000E720(a4, *v31, *v33) & 1) != 0)
        {
          if (++v33 == v30)
          {
            v26 = 1;
            ++v31;
            if (v32 != v30)
            {
              goto LABEL_54;
            }

            goto LABEL_38;
          }
        }

        goto LABEL_37;
      }
    }

    v26 = 1;
  }

  else
  {
    v26 = sub_100019424(v44, &__p, a3 + 1, a4);
  }

LABEL_38:
  if (v9)
  {
    operator delete(v9);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v41)
  {
    operator delete(v41);
  }

  return v26;
}

void sub_10002F6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002F738(double *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = (*a1 + a1[2]) * 0.5;
  v9 = *(a1 + 1);
  v72 = *a1;
  v74 = *(&v9 + 1);
  v70[1] = *(&v72 + 1);
  v71 = v9;
  v73 = v8;
  v70[0] = v8;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  __p = 0;
  v53 = 0;
  v54 = 0;
  sub_100019804(&v72, v70, a2, &v67, &v64, &v61);
  sub_100019804(&v72, v70, a3, &v58, &v55, &__p);
  v10 = v61;
  v11 = v62;
  v12 = __p;
  if (v61 == v62)
  {
    v49 = a4;
    v14 = v53;
  }

  else
  {
    v13 = v62 - v61;
    v14 = v53;
    if ((v62 - v61) < 0x80 || a4 > 0x63 || (v53 - __p) < 0x79)
    {
      if (__p != v53)
      {
        v15 = v61;
LABEL_5:
        v16 = v12;
        while ((sub_10000E720(a5, *v15, *v16) & 1) != 0)
        {
          if (++v16 == v14)
          {
            if (++v15 != v11)
            {
              goto LABEL_5;
            }

            goto LABEL_35;
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      v75 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v76 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v25 = v61;
      do
      {
        sub_10001911C(&v75, *v25++ + 2);
      }

      while (v25 != v11);
      v26 = v75;
      v27 = v76;
      if (v12 != v14)
      {
        v28 = v12;
        do
        {
          sub_10001911C(&v75, *v28++ + 2);
        }

        while (v28 != v14);
        v26 = v75;
        v27 = v76;
      }

      v50 = v26;
      v51 = v27;
      if ((sub_10002FD78(v50.f64, &v61, &__p, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_87;
      }
    }

LABEL_35:
    v30 = v58;
    v29 = v59;
    v49 = a4;
    if ((v59 - v58) < 0x80 || (v56 - v55) < 0x80 || a4 > 0x63 || v13 < 0x79)
    {
      if (v58 != v59)
      {
        v31 = v10;
LABEL_39:
        v32 = v30;
        while ((sub_10000E720(a5, *v31, *v32) & 1) != 0)
        {
          if (++v32 == v29)
          {
            if (++v31 != v11)
            {
              goto LABEL_39;
            }

            goto LABEL_43;
          }
        }

        goto LABEL_87;
      }

LABEL_43:
      v33 = v55;
      v34 = v56;
      if (v55 != v56)
      {
        v35 = v10;
LABEL_45:
        v36 = v33;
        while ((sub_10000E720(a5, *v35, *v36) & 1) != 0)
        {
          if (++v36 == v34)
          {
            if (++v35 != v11)
            {
              goto LABEL_45;
            }

            goto LABEL_11;
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      v75 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v76 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v37 = v10;
      do
      {
        sub_10001911C(&v75, *v37++ + 2);
      }

      while (v37 != v11);
      v50 = v75;
      v51 = v76;
      if (!sub_10002FD78(v50.f64, &v61, &v58, a4 + 1, a5) || (sub_10002FD78(v50.f64, &v61, &v55, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_87;
      }
    }
  }

LABEL_11:
  v18 = v67;
  v17 = v68;
  v19 = v68 - v67;
  if (v12 != v14)
  {
    if (v19 < 0x80 || (v65 - v64) < 0x80 || v49 > 0x63 || (v14 - v12) < 0x79)
    {
      if (v67 != v68)
      {
        v20 = v67;
LABEL_16:
        v21 = v12;
        while ((sub_10000E720(a5, *v20, *v21) & 1) != 0)
        {
          if (++v21 == v14)
          {
            if (++v20 != v17)
            {
              goto LABEL_16;
            }

            goto LABEL_20;
          }
        }

        goto LABEL_87;
      }

LABEL_20:
      v22 = v64;
      v23 = v65;
LABEL_21:
      if (v22 != v23)
      {
        v24 = v12;
        while ((sub_10000E720(a5, *v22, *v24) & 1) != 0)
        {
          if (++v24 == v14)
          {
            ++v22;
            goto LABEL_21;
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      v75 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v76 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v38 = v12;
      do
      {
        sub_10001911C(&v75, *v38++ + 2);
      }

      while (v38 != v14);
      v50 = v75;
      v51 = v76;
      if (!sub_10002FD78(v50.f64, &v67, &__p, v49 + 1, a5) || (sub_10002FD78(v50.f64, &v64, &__p, v49 + 1, a5) & 1) == 0)
      {
        goto LABEL_87;
      }
    }
  }

  if (v19 < 0x80 || v49 > 0x63 || (v59 - v58) < 0x79)
  {
    if (v18 != v17)
    {
      v39 = v58;
      v40 = v59;
      if (v58 != v59)
      {
LABEL_66:
        v41 = v39;
        while ((sub_10000E720(a5, *v18, *v41) & 1) != 0)
        {
          if (++v41 == v40)
          {
            if (++v18 != v17)
            {
              goto LABEL_66;
            }

            goto LABEL_74;
          }
        }

        goto LABEL_87;
      }
    }
  }

  else if ((sub_10002FD78(&v72, &v67, &v58, v49 + 1, a5) & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_74:
  v43 = v64;
  v42 = v65;
  if ((v65 - v64) < 0x80 || v49 > 0x63 || (v56 - v55) < 0x79)
  {
    if (v64 == v65)
    {
      goto LABEL_85;
    }

    v44 = v55;
    v45 = v56;
    if (v55 == v56)
    {
      goto LABEL_85;
    }

LABEL_77:
    v46 = v44;
    while ((sub_10000E720(a5, *v43, *v46) & 1) != 0)
    {
      if (++v46 == v45)
      {
        if (++v43 != v42)
        {
          goto LABEL_77;
        }

        goto LABEL_85;
      }
    }

LABEL_87:
    v47 = 0;
    if (!v12)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  if ((sub_10002FD78(v70, &v64, &v55, v49 + 1, a5) & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_85:
  v47 = 1;
  if (v12)
  {
LABEL_88:
    operator delete(v12);
  }

LABEL_89:
  if (v55)
  {
    operator delete(v55);
  }

  if (v58)
  {
    operator delete(v58);
  }

  if (v10)
  {
    operator delete(v10);
  }

  if (v64)
  {
    operator delete(v64);
  }

  if (v67)
  {
    operator delete(v67);
  }

  return v47;
}

void sub_10002FCE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (v30)
  {
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002FD78(double *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = a1[1] + a1[3];
  v72 = *a1;
  v73 = *(a1 + 2);
  v9 = *(a1 + 1);
  *&v70[0] = v72;
  v71 = v9;
  v74 = v8 * 0.5;
  v70[1] = v8 * 0.5;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  __p = 0;
  v53 = 0;
  v54 = 0;
  sub_100019804(&v72, v70, a2, &v67, &v64, &v61);
  sub_100019804(&v72, v70, a3, &v58, &v55, &__p);
  v10 = v61;
  v11 = v62;
  v12 = __p;
  if (v61 == v62)
  {
    v49 = a4;
    v14 = v53;
  }

  else
  {
    v13 = v62 - v61;
    v14 = v53;
    if ((v62 - v61) < 0x80 || a4 > 0x63 || (v53 - __p) < 0x79)
    {
      if (__p != v53)
      {
        v15 = v61;
LABEL_5:
        v16 = v12;
        while ((sub_10000E720(a5, *v15, *v16) & 1) != 0)
        {
          if (++v16 == v14)
          {
            if (++v15 != v11)
            {
              goto LABEL_5;
            }

            goto LABEL_35;
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      v75 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v76 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v25 = v61;
      do
      {
        sub_10001911C(&v75, *v25++ + 2);
      }

      while (v25 != v11);
      v26 = v75;
      v27 = v76;
      if (v12 != v14)
      {
        v28 = v12;
        do
        {
          sub_10001911C(&v75, *v28++ + 2);
        }

        while (v28 != v14);
        v26 = v75;
        v27 = v76;
      }

      v50 = v26;
      v51 = v27;
      if ((sub_10002F738(&v50, &v61, &__p, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_87;
      }
    }

LABEL_35:
    v30 = v58;
    v29 = v59;
    v49 = a4;
    if ((v59 - v58) < 0x80 || (v56 - v55) < 0x80 || a4 > 0x63 || v13 < 0x79)
    {
      if (v58 != v59)
      {
        v31 = v10;
LABEL_39:
        v32 = v30;
        while ((sub_10000E720(a5, *v31, *v32) & 1) != 0)
        {
          if (++v32 == v29)
          {
            if (++v31 != v11)
            {
              goto LABEL_39;
            }

            goto LABEL_43;
          }
        }

        goto LABEL_87;
      }

LABEL_43:
      v33 = v55;
      v34 = v56;
      if (v55 != v56)
      {
        v35 = v10;
LABEL_45:
        v36 = v33;
        while ((sub_10000E720(a5, *v35, *v36) & 1) != 0)
        {
          if (++v36 == v34)
          {
            if (++v35 != v11)
            {
              goto LABEL_45;
            }

            goto LABEL_11;
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      v75 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v76 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v37 = v10;
      do
      {
        sub_10001911C(&v75, *v37++ + 2);
      }

      while (v37 != v11);
      v50 = v75;
      v51 = v76;
      if (!sub_10002F738(&v50, &v61, &v58, a4 + 1, a5) || (sub_10002F738(&v50, &v61, &v55, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_87;
      }
    }
  }

LABEL_11:
  v18 = v67;
  v17 = v68;
  v19 = v68 - v67;
  if (v12 != v14)
  {
    if (v19 < 0x80 || (v65 - v64) < 0x80 || v49 > 0x63 || (v14 - v12) < 0x79)
    {
      if (v67 != v68)
      {
        v20 = v67;
LABEL_16:
        v21 = v12;
        while ((sub_10000E720(a5, *v20, *v21) & 1) != 0)
        {
          if (++v21 == v14)
          {
            if (++v20 != v17)
            {
              goto LABEL_16;
            }

            goto LABEL_20;
          }
        }

        goto LABEL_87;
      }

LABEL_20:
      v22 = v64;
      v23 = v65;
LABEL_21:
      if (v22 != v23)
      {
        v24 = v12;
        while ((sub_10000E720(a5, *v22, *v24) & 1) != 0)
        {
          if (++v24 == v14)
          {
            ++v22;
            goto LABEL_21;
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      v75 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v76 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v38 = v12;
      do
      {
        sub_10001911C(&v75, *v38++ + 2);
      }

      while (v38 != v14);
      v50 = v75;
      v51 = v76;
      if (!sub_10002F738(&v50, &v67, &__p, v49 + 1, a5) || (sub_10002F738(&v50, &v64, &__p, v49 + 1, a5) & 1) == 0)
      {
        goto LABEL_87;
      }
    }
  }

  if (v19 < 0x80 || v49 > 0x63 || (v59 - v58) < 0x79)
  {
    if (v18 != v17)
    {
      v39 = v58;
      v40 = v59;
      if (v58 != v59)
      {
LABEL_66:
        v41 = v39;
        while ((sub_10000E720(a5, *v18, *v41) & 1) != 0)
        {
          if (++v41 == v40)
          {
            if (++v18 != v17)
            {
              goto LABEL_66;
            }

            goto LABEL_74;
          }
        }

        goto LABEL_87;
      }
    }
  }

  else if ((sub_10002F738(&v72, &v67, &v58, v49 + 1, a5) & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_74:
  v43 = v64;
  v42 = v65;
  if ((v65 - v64) < 0x80 || v49 > 0x63 || (v56 - v55) < 0x79)
  {
    if (v64 == v65)
    {
      goto LABEL_85;
    }

    v44 = v55;
    v45 = v56;
    if (v55 == v56)
    {
      goto LABEL_85;
    }

LABEL_77:
    v46 = v44;
    while ((sub_10000E720(a5, *v43, *v46) & 1) != 0)
    {
      if (++v46 == v45)
      {
        if (++v43 != v42)
        {
          goto LABEL_77;
        }

        goto LABEL_85;
      }
    }

LABEL_87:
    v47 = 0;
    if (!v12)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  if ((sub_10002F738(v70, &v64, &v55, v49 + 1, a5) & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_85:
  v47 = 1;
  if (v12)
  {
LABEL_88:
    operator delete(v12);
  }

LABEL_89:
  if (v55)
  {
    operator delete(v55);
  }

  if (v58)
  {
    operator delete(v58);
  }

  if (v10)
  {
    operator delete(v10);
  }

  if (v64)
  {
    operator delete(v64);
  }

  if (v67)
  {
    operator delete(v67);
  }

  return v47;
}

void sub_100030330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (v30)
  {
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000303C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = 0;
  *(a1 + 16) = 4;
  *a1 = *(a2 + 8);
  v6 = a1 + 40;
  v7 = 1;
  v8 = 40;
  __asm { FMOV            V1.2D, #1.0 }

  do
  {
    v14 = v7;
    v15 = *(a3 + 36 + 4 * v5);
    if (v15 == -1)
    {
      v17 = v6 + 80 * v5;
      *(v17 + 48) = xmmword_100092590;
      *(v17 + 64) = 0;
    }

    else if (v15 == 1)
    {
      v16 = v6 + 80 * v5;
      *(v16 + 48) = _Q1;
      *(v16 + 64) = 0x412E848000000000;
    }

    else
    {
      v18 = (a2 + v8);
      v19 = *v18;
      v20 = v6 + 80 * v5;
      *(v20 + 64) = *(v18 + 2);
      *(v20 + 48) = v19;
    }

    v7 = 0;
    v8 = 64;
    v5 = 1;
  }

  while ((v14 & 1) != 0);
  v21 = *(a3 + 28);
  v22 = *(a4 + 8);
  v23 = *(a4 + 16);
  v24 = *(v22 + 16);
  v25 = *(v22 + 24);
  if ((*(v23 + 80) & 1) == 0)
  {
    v26 = *(v23 + 24);
    v27 = *(v23 + 32);
    v29 = *v26;
    v28 = v26[1];
    if (sub_10000B2C4(*v26, v28, *v27, v27[1]))
    {
      v30 = *(*v23 + 88);
      v31 = -1;
      while (++v31 < v30)
      {
        v32 = v27 + 2;
        *(v23 + 32) = v27 + 2;
        if (v27 + 2 == *(v23 + 48))
        {
          v33 = *(v23 + 40);
          *(v23 + 32) = v33;
          v32 = v33;
          if (*(v23 + 56) == 1)
          {
            v32 = v33 + 2;
            *(v23 + 32) = v33 + 2;
            if (v27 == v33)
            {
              *(v23 + 32) = v33;
              v32 = v33;
            }
          }
        }

        v27 = v32;
        if (!sub_10000B2C4(v29, v28, *v32, v32[1]))
        {
          goto LABEL_19;
        }
      }
    }

    v32 = v27;
LABEL_19:
    *(v23 + 64) = *v32;
    *(v23 + 80) = 1;
  }

  result = sub_10000DCA4(v24, v25, (v23 + 64));
  v35 = result;
  if (v21 + result)
  {
    v36 = *(v4 + 16);
    v37 = *(v36 + 16);
    v38 = *(v36 + 24);
    v71 = v4;
    if ((*(v36 + 80) & 1) == 0)
    {
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v36 + 32);
      if (sub_10000B2C4(*v38, v39, *v41, v41[1]))
      {
        v42 = *(*v36 + 88);
        v43 = -1;
        while (++v43 < v42)
        {
          v44 = v41 + 2;
          *(v36 + 32) = v41 + 2;
          if (v41 + 2 == *(v36 + 48))
          {
            v45 = *(v36 + 40);
            *(v36 + 32) = v45;
            v44 = v45;
            if (*(v36 + 56) == 1)
            {
              v44 = v45 + 2;
              *(v36 + 32) = v45 + 2;
              if (v41 == v45)
              {
                *(v36 + 32) = v45;
                v44 = v45;
              }
            }
          }

          v41 = v44;
          if (!sub_10000B2C4(v40, v39, *v44, v44[1]))
          {
            goto LABEL_33;
          }
        }
      }

      v44 = v41;
LABEL_33:
      *(v36 + 64) = *v44;
      *(v36 + 80) = 1;
      v4 = v71;
    }

    v46 = sub_10000DCA4(v37, v38, (v36 + 64));
    v47 = *(v4 + 16);
    v48 = *(v47 + 24);
    if ((*(v47 + 80) & 1) == 0)
    {
      v50 = *v48;
      v49 = v48[1];
      v51 = *(v47 + 32);
      if (sub_10000B2C4(*v48, v49, *v51, v51[1]))
      {
        v52 = *(*v47 + 88);
        v53 = -1;
        while (++v53 < v52)
        {
          v54 = v51 + 2;
          *(v47 + 32) = v51 + 2;
          if (v51 + 2 == *(v47 + 48))
          {
            v55 = *(v47 + 40);
            *(v47 + 32) = v55;
            v54 = v55;
            if (*(v47 + 56) == 1)
            {
              v54 = v55 + 2;
              *(v47 + 32) = v55 + 2;
              if (v51 == v55)
              {
                *(v47 + 32) = v55;
                v54 = v55;
              }
            }
          }

          v51 = v54;
          if (!sub_10000B2C4(v50, v49, *v54, v54[1]))
          {
            goto LABEL_45;
          }
        }
      }

      v54 = v51;
LABEL_45:
      *(v47 + 64) = *v54;
      *(v47 + 80) = 1;
      v4 = v71;
    }

    result = sub_10000DCA4(v48, (v47 + 64), *(*(v4 + 8) + 24));
    v56 = result;
    if ((v35 & v21) == 0xFFFFFFFF && v46 == 1)
    {
      *(a1 + 40) = 2;
      *(a1 + 120) = 2;
      *(a1 + 20) = 1;
    }

    else if (v21 == 1 && v35 == 1 && v46 == -1)
    {
      *(a1 + 40) = 1;
      if (result == -1)
      {
        v57 = 1;
      }

      else
      {
        v57 = 3;
      }

      *(a1 + 120) = v57;
      *(a1 + 20) = 1;
    }

    else if (v21 == v35 && v21 == v46)
    {
      v58 = (v46 == 1) ^ (result == 0);
      if (result * v21 == -1)
      {
        v59 = sub_10000DCA4(*(*(v4 + 8) + 16), *(*(v4 + 8) + 24), *(*(v4 + 16) + 24));
        v60 = *(v4 + 8);
        v61 = *(v60 + 24);
        if ((*(v60 + 80) & 1) == 0)
        {
          v63 = *v61;
          v62 = v61[1];
          v64 = *(v60 + 32);
          if (sub_10000B2C4(*v61, v62, *v64, v64[1]))
          {
            v65 = *(*v60 + 88) + 1;
            while (--v65)
            {
              v66 = v64 + 2;
              *(v60 + 32) = v64 + 2;
              if (v64 + 2 == *(v60 + 48))
              {
                v67 = *(v60 + 40);
                *(v60 + 32) = v67;
                v66 = v67;
                if (*(v60 + 56) == 1)
                {
                  v66 = v67 + 2;
                  *(v60 + 32) = v67 + 2;
                  if (v64 == v67)
                  {
                    *(v60 + 32) = v67;
                    v66 = v67;
                  }
                }
              }

              v64 = v66;
              if (!sub_10000B2C4(v63, v62, *v66, v66[1]))
              {
                goto LABEL_79;
              }
            }
          }

          v66 = v64;
LABEL_79:
          *(v60 + 64) = *v66;
          *(v60 + 80) = 1;
          v4 = v71;
        }

        result = sub_10000DCA4(v61, (v60 + 64), *(*(v4 + 16) + 24));
        if (result * v59 == 1)
        {
          result = sub_10000DCA4(*(*(v4 + 16) + 16), *(*(v4 + 16) + 24), *(*(v4 + 8) + 24));
          if (result * v56 == -1)
          {
            v58 ^= 1u;
          }
        }
      }

      *(v6 + 80 * v58) = 1;
      *(v6 + 80 * (v58 ^ 1)) = 2;
      *(a1 + 20) = 1;
    }

    else if (v35)
    {
      *(a1 + 16) = 8;
    }

    else
    {
      if (v21 == v46)
      {
        v68 = 4;
        v69 = a1;
        *(a1 + 40) = 4;
      }

      else
      {
        if (v46 == 1)
        {
          v70 = 2;
        }

        else
        {
          v70 = 1;
        }

        v69 = a1;
        *(a1 + 40) = v70;
        v68 = 3;
      }

      *(v69 + 120) = v68;
    }
  }

  else
  {
    *(v6 + 80 * (result != -1)) = 1;
    *(v6 + 80 * (result == -1)) = 2;
  }

  return result;
}

uint64_t sub_10003097C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = 0;
  *(a1 + 16) = 4;
  *a1 = *(a2 + 8);
  v6 = a1 + 40;
  v7 = 1;
  v8 = 40;
  __asm { FMOV            V1.2D, #1.0 }

  do
  {
    v14 = v7;
    v15 = *(a3 + 36 + 4 * v5);
    if (v15 == -1)
    {
      v17 = v6 + 80 * v5;
      *(v17 + 48) = xmmword_100092590;
      *(v17 + 64) = 0;
    }

    else if (v15 == 1)
    {
      v16 = v6 + 80 * v5;
      *(v16 + 48) = _Q1;
      *(v16 + 64) = 0x412E848000000000;
    }

    else
    {
      v18 = (a2 + v8);
      v19 = *v18;
      v20 = v6 + 80 * v5;
      *(v20 + 64) = *(v18 + 2);
      *(v20 + 48) = v19;
    }

    v7 = 0;
    v8 = 64;
    v5 = 1;
  }

  while ((v14 & 1) != 0);
  v21 = *(a3 + 20);
  v22 = *(a4 + 8);
  v23 = *(a4 + 16);
  v24 = *(v22 + 16);
  v25 = *(v22 + 24);
  if ((*(v23 + 80) & 1) == 0)
  {
    v26 = *(v23 + 24);
    v27 = *(v23 + 32);
    v29 = *v26;
    v28 = v26[1];
    if (sub_10000B2C4(*v26, v28, *v27, v27[1]))
    {
      v30 = *(*v23 + 88);
      v31 = -1;
      while (++v31 < v30)
      {
        v32 = v27 + 2;
        *(v23 + 32) = v27 + 2;
        if (v27 + 2 == *(v23 + 48))
        {
          v33 = *(v23 + 40);
          *(v23 + 32) = v33;
          v32 = v33;
          if (*(v23 + 56) == 1)
          {
            v32 = v33 + 2;
            *(v23 + 32) = v33 + 2;
            if (v27 == v33)
            {
              *(v23 + 32) = v33;
              v32 = v33;
            }
          }
        }

        v27 = v32;
        if (!sub_10000B2C4(v29, v28, *v32, v32[1]))
        {
          goto LABEL_19;
        }
      }
    }

    v32 = v27;
LABEL_19:
    *(v23 + 64) = *v32;
    *(v23 + 80) = 1;
  }

  result = sub_10000DCA4(v24, v25, (v23 + 64));
  v35 = result;
  if (!(v21 + result))
  {
    *(v6 + 80 * (result == -1)) = 1;
    *(v6 + 80 * (result != -1)) = 2;
    return result;
  }

  v36 = *(v4 + 16);
  v37 = *(v36 + 16);
  v38 = *(v36 + 24);
  v70 = v4;
  if ((*(v36 + 80) & 1) == 0)
  {
    v40 = *v38;
    v39 = v38[1];
    v41 = *(v36 + 32);
    if (sub_10000B2C4(*v38, v39, *v41, v41[1]))
    {
      v42 = *(*v36 + 88);
      v43 = -1;
      while (++v43 < v42)
      {
        v44 = v41 + 2;
        *(v36 + 32) = v41 + 2;
        if (v41 + 2 == *(v36 + 48))
        {
          v45 = *(v36 + 40);
          *(v36 + 32) = v45;
          v44 = v45;
          if (*(v36 + 56) == 1)
          {
            v44 = v45 + 2;
            *(v36 + 32) = v45 + 2;
            if (v41 == v45)
            {
              *(v36 + 32) = v45;
              v44 = v45;
            }
          }
        }

        v41 = v44;
        if (!sub_10000B2C4(v40, v39, *v44, v44[1]))
        {
          goto LABEL_33;
        }
      }
    }

    v44 = v41;
LABEL_33:
    *(v36 + 64) = *v44;
    *(v36 + 80) = 1;
    v4 = v70;
  }

  v46 = sub_10000DCA4(v37, v38, (v36 + 64));
  v47 = *(v4 + 16);
  v48 = *(v47 + 24);
  if ((*(v47 + 80) & 1) == 0)
  {
    v50 = *v48;
    v49 = v48[1];
    v51 = *(v47 + 32);
    if (sub_10000B2C4(*v48, v49, *v51, v51[1]))
    {
      v52 = *(*v47 + 88);
      v53 = -1;
      while (++v53 < v52)
      {
        v54 = v51 + 2;
        *(v47 + 32) = v51 + 2;
        if (v51 + 2 == *(v47 + 48))
        {
          v55 = *(v47 + 40);
          *(v47 + 32) = v55;
          v54 = v55;
          if (*(v47 + 56) == 1)
          {
            v54 = v55 + 2;
            *(v47 + 32) = v55 + 2;
            if (v51 == v55)
            {
              *(v47 + 32) = v55;
              v54 = v55;
            }
          }
        }

        v51 = v54;
        if (!sub_10000B2C4(v50, v49, *v54, v54[1]))
        {
          goto LABEL_45;
        }
      }
    }

    v54 = v51;
LABEL_45:
    *(v47 + 64) = *v54;
    *(v47 + 80) = 1;
    v4 = v70;
  }

  result = sub_10000DCA4(v48, (v47 + 64), *(*(v4 + 8) + 24));
  v56 = result;
  if ((v35 & v21) == 0xFFFFFFFF && v46 == 1)
  {
    v57 = a1;
    *(a1 + 40) = 2;
    *(a1 + 120) = 2;
LABEL_56:
    *(v57 + 20) = 1;
    return result;
  }

  if (v21 == 1 && v35 == 1 && v46 == -1)
  {
    if (result == -1)
    {
      v58 = 1;
    }

    else
    {
      v58 = 3;
    }

    v57 = a1;
    *(a1 + 40) = v58;
    *(a1 + 120) = 1;
    goto LABEL_56;
  }

  if (v21 == v35 && v21 == v46)
  {
    v59 = (v46 == 1) ^ (result != 0);
    if (result * v21 == -1)
    {
      v60 = sub_10000DCA4(*(*(v4 + 8) + 16), *(*(v4 + 8) + 24), *(*(v4 + 16) + 24));
      v61 = *(v4 + 8);
      v62 = *(v61 + 24);
      if ((*(v61 + 80) & 1) == 0)
      {
        v64 = *v62;
        v63 = v62[1];
        v65 = *(v61 + 32);
        if (sub_10000B2C4(*v62, v63, *v65, v65[1]))
        {
          v66 = *(*v61 + 88) + 1;
          while (--v66)
          {
            v67 = v65 + 2;
            *(v61 + 32) = v65 + 2;
            if (v65 + 2 == *(v61 + 48))
            {
              v68 = *(v61 + 40);
              *(v61 + 32) = v68;
              v67 = v68;
              if (*(v61 + 56) == 1)
              {
                v67 = v68 + 2;
                *(v61 + 32) = v68 + 2;
                if (v65 == v68)
                {
                  *(v61 + 32) = v68;
                  v67 = v68;
                }
              }
            }

            v65 = v67;
            if (!sub_10000B2C4(v64, v63, *v67, v67[1]))
            {
              goto LABEL_79;
            }
          }
        }

        v67 = v65;
LABEL_79:
        *(v61 + 64) = *v67;
        *(v61 + 80) = 1;
        v4 = v70;
      }

      result = sub_10000DCA4(v62, (v61 + 64), *(*(v4 + 16) + 24));
      if (result * v60 == 1)
      {
        result = sub_10000DCA4(*(*(v4 + 16) + 16), *(*(v4 + 16) + 24), *(*(v4 + 8) + 24));
        if (result * v56 == -1)
        {
          v59 ^= 1u;
        }
      }
    }

    *(v6 + 80 * v59) = 1;
    *(v6 + 80 * (v59 ^ 1)) = 2;
    *(a1 + 20) = 1;
  }

  else if (v35)
  {
    *(a1 + 16) = 8;
  }

  else if (v21 == v46)
  {
    *(a1 + 40) = 4;
    *(a1 + 120) = 4;
  }

  else
  {
    if (v46 == 1)
    {
      v69 = 2;
    }

    else
    {
      v69 = 1;
    }

    *(a1 + 120) = v69;
    *(a1 + 40) = 3;
  }

  return result;
}

uint64_t sub_100030F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = 0;
  *(a1 + 16) = 3;
  *a1 = *(a2 + 8);
  v8 = a1 + 40;
  v9 = 1;
  v10 = 40;
  __asm { FMOV            V1.2D, #1.0 }

  do
  {
    v15 = v9;
    v16 = *(a3 + 36 + 4 * v7);
    if (v16 == -1)
    {
      v18 = v8 + 80 * v7;
      *(v18 + 48) = xmmword_100092590;
      *(v18 + 64) = 0;
    }

    else if (v16 == 1)
    {
      v17 = v8 + 80 * v7;
      *(v17 + 48) = _Q1;
      *(v17 + 64) = 0x412E848000000000;
    }

    else
    {
      v19 = (a2 + v10);
      v20 = *v19;
      v21 = v8 + 80 * v7;
      *(v21 + 64) = *(v19 + 2);
      *(v21 + 48) = v20;
    }

    v9 = 0;
    v10 = 64;
    v7 = 1;
  }

  while ((v15 & 1) != 0);
  v23 = *(a4 + 8);
  v22 = *(a4 + 16);
  v24 = *(v22 + 16);
  v25 = *(v22 + 24);
  if ((*(v23 + 80) & 1) == 0)
  {
    v26 = *(v23 + 24);
    v27 = *(v23 + 32);
    v29 = *v26;
    v28 = v26[1];
    if (sub_10000B2C4(*v26, v28, *v27, v27[1]))
    {
      v30 = *(*v23 + 88);
      v31 = -1;
      while (++v31 < v30)
      {
        v32 = v27 + 2;
        *(v23 + 32) = v27 + 2;
        if (v27 + 2 == *(v23 + 48))
        {
          v33 = *(v23 + 40);
          *(v23 + 32) = v33;
          v32 = v33;
          if (*(v23 + 56) == 1)
          {
            v32 = v33 + 2;
            *(v23 + 32) = v33 + 2;
            if (v27 == v33)
            {
              *(v23 + 32) = v33;
              v32 = v33;
            }
          }
        }

        v27 = v32;
        if (!sub_10000B2C4(v29, v28, *v32, v32[1]))
        {
          goto LABEL_19;
        }
      }
    }

    v32 = v27;
LABEL_19:
    *(v23 + 64) = *v32;
    *(v23 + 80) = 1;
  }

  v96 = sub_10000DCA4(v24, v25, (v23 + 64));
  v34 = *(a3 + 28);
  v35 = *(a4 + 8);
  v36 = *(a4 + 16);
  v37 = *(v35 + 16);
  v38 = *(v35 + 24);
  if ((*(v36 + 80) & 1) == 0)
  {
    v39 = *(v36 + 24);
    v40 = *(v36 + 32);
    v42 = *v39;
    v41 = v39[1];
    if (sub_10000B2C4(*v39, v41, *v40, v40[1]))
    {
      v43 = *(*v36 + 88);
      v44 = -1;
      while (++v44 < v43)
      {
        v45 = v40 + 2;
        *(v36 + 32) = v40 + 2;
        if (v40 + 2 == *(v36 + 48))
        {
          v46 = *(v36 + 40);
          *(v36 + 32) = v46;
          v45 = v46;
          if (*(v36 + 56) == 1)
          {
            v45 = v46 + 2;
            *(v36 + 32) = v46 + 2;
            if (v40 == v46)
            {
              *(v36 + 32) = v46;
              v45 = v46;
            }
          }
        }

        v40 = v45;
        if (!sub_10000B2C4(v42, v41, *v45, v45[1]))
        {
          goto LABEL_31;
        }
      }
    }

    v45 = v40;
LABEL_31:
    *(v36 + 64) = *v45;
    *(v36 + 80) = 1;
  }

  v47 = sub_10000DCA4(v37, v38, (v36 + 64));
  if (v47 * v34 == -1)
  {
    v58 = *(a4 + 8);
    v59 = *(v58 + 16);
    v60 = *(v58 + 24);
    if ((*(v58 + 80) & 1) == 0)
    {
      v98 = v6;
      v62 = *v60;
      v61 = v60[1];
      v63 = *(v58 + 32);
      if (sub_10000B2C4(*v60, v61, *v63, v63[1]))
      {
        v64 = *(*v58 + 88);
        v65 = -1;
        while (++v65 < v64)
        {
          v66 = v63 + 2;
          *(v58 + 32) = v63 + 2;
          if (v63 + 2 == *(v58 + 48))
          {
            v67 = *(v58 + 40);
            *(v58 + 32) = v67;
            v66 = v67;
            if (*(v58 + 56) == 1)
            {
              v66 = v67 + 2;
              *(v58 + 32) = v67 + 2;
              if (v63 == v67)
              {
                *(v58 + 32) = v67;
                v66 = v67;
              }
            }
          }

          v63 = v66;
          if (!sub_10000B2C4(v62, v61, *v66, v66[1]))
          {
            goto LABEL_104;
          }
        }
      }

      v66 = v63;
LABEL_104:
      *(v58 + 64) = *v66;
      *(v58 + 80) = 1;
      v6 = v98;
    }

    result = sub_10000DCA4(v59, v60, (v58 + 64));
    if (result == v34)
    {
      if (!v96)
      {
        *(v6 + 40) = 3;
        v90 = v47 == 1;
        goto LABEL_141;
      }

      if (v96 == v47)
      {
        if (v47 == 1)
        {
          v88 = 1;
        }

        else
        {
          v88 = 2;
        }

        *(v6 + 40) = v88;
        goto LABEL_139;
      }
    }

    if (result == v47)
    {
      result = sub_10003310C(a4);
      if (!result)
      {
        goto LABEL_121;
      }

      if (result == v47)
      {
        if (v47 == 1)
        {
          v89 = 1;
        }

        else
        {
          v89 = 2;
        }

        *(v6 + 40) = v89;
        if (v47 == 1)
        {
          v88 = 2;
        }

        else
        {
          v88 = 1;
        }

        goto LABEL_139;
      }
    }

    v90 = v47 == 1;
    if (v47 == 1)
    {
      v91 = 2;
    }

    else
    {
      v91 = 1;
    }

    *(v6 + 40) = v91;
LABEL_141:
    if (v90)
    {
      v84 = 1;
    }

    else
    {
      v84 = 2;
    }

    goto LABEL_144;
  }

  v95 = sub_10003310C(a4);
  v48 = *(a4 + 8);
  v49 = *(v48 + 16);
  v50 = *(v48 + 24);
  v97 = v6;
  if ((*(v48 + 80) & 1) == 0)
  {
    v52 = *v50;
    v51 = v50[1];
    v53 = *(v48 + 32);
    if (sub_10000B2C4(*v50, v51, *v53, v53[1]))
    {
      v54 = *(*v48 + 88);
      v55 = -1;
      while (++v55 < v54)
      {
        v56 = v53 + 2;
        *(v48 + 32) = v53 + 2;
        if (v53 + 2 == *(v48 + 48))
        {
          v57 = *(v48 + 40);
          *(v48 + 32) = v57;
          v56 = v57;
          if (*(v48 + 56) == 1)
          {
            v56 = v57 + 2;
            *(v48 + 32) = v57 + 2;
            if (v53 == v57)
            {
              *(v48 + 32) = v57;
              v56 = v57;
            }
          }
        }

        v53 = v56;
        if (!sub_10000B2C4(v52, v51, *v56, v56[1]))
        {
          goto LABEL_54;
        }
      }
    }

    v56 = v53;
LABEL_54:
    *(v48 + 64) = *v56;
    *(v48 + 80) = 1;
    v6 = v97;
  }

  v68 = sub_10000DCA4(v49, v50, (v48 + 64));
  v69 = *(a4 + 16);
  v70 = *(v69 + 16);
  v71 = *(v69 + 24);
  if ((*(v69 + 80) & 1) == 0)
  {
    v73 = *v71;
    v72 = v71[1];
    v74 = *(v69 + 32);
    if (sub_10000B2C4(*v71, v72, *v74, v74[1]))
    {
      v75 = *(*v69 + 88);
      v76 = -1;
      while (++v76 < v75)
      {
        v77 = v74 + 2;
        *(v69 + 32) = v74 + 2;
        if (v74 + 2 == *(v69 + 48))
        {
          v78 = *(v69 + 40);
          *(v69 + 32) = v78;
          v77 = v78;
          if (*(v69 + 56) == 1)
          {
            v77 = v78 + 2;
            *(v69 + 32) = v78 + 2;
            if (v74 == v78)
            {
              *(v69 + 32) = v78;
              v77 = v78;
            }
          }
        }

        v74 = v77;
        if (!sub_10000B2C4(v73, v72, *v77, v77[1]))
        {
          goto LABEL_66;
        }
      }
    }

    v77 = v74;
LABEL_66:
    *(v69 + 64) = *v77;
    *(v69 + 80) = 1;
    v6 = v97;
  }

  result = sub_10000DCA4(v70, v71, (v69 + 64));
  if (v47)
  {
    _ZF = 1;
  }

  else
  {
    _ZF = result * v34 == 1;
  }

  v81 = !_ZF;
  if (v68 != v34 && v68 != v47 && (v47 | v34 || v68 == -1))
  {
    if (result == 1)
    {
      v85 = 2;
    }

    else
    {
      v85 = 1;
    }

    *(v6 + 40) = v85;
    if (v47 == 1 || v34 == 1)
    {
      v87 = 1;
    }

    else
    {
      v87 = 2;
    }

    if (v81)
    {
      v87 = 3;
    }

    *(v6 + 120) = v87;
    if ((v81 & 1) == 0)
    {
      goto LABEL_102;
    }

    return result;
  }

  if (!((v95 != 0) | v81 & 1))
  {
LABEL_121:
    v84 = 4;
    *(v6 + 40) = 4;
LABEL_144:
    *(v6 + 120) = v84;
    return result;
  }

  if (!v96)
  {
    *(v6 + 40) = 3;
    if (result == 1)
    {
      v92 = 2;
    }

    else
    {
      v92 = 1;
    }

    if (v81)
    {
      v84 = 3;
    }

    else
    {
      v84 = v92;
    }

    goto LABEL_144;
  }

  if (v96 == v95 && result * v96 != -1)
  {
    if (result == 1)
    {
      v82 = 1;
    }

    else
    {
      v82 = 2;
    }

    *(v6 + 40) = v82;
    if (result == 1)
    {
      v83 = 2;
    }

    else
    {
      v83 = 1;
    }

    if (v81)
    {
      v84 = 3;
    }

    else
    {
      v84 = v83;
    }

    goto LABEL_144;
  }

  if (!(v95 + result))
  {
    if (result == 1)
    {
      v93 = 2;
    }

    else
    {
      v93 = 1;
    }

    *(v6 + 40) = v93;
    if (result == 1)
    {
      v88 = 1;
    }

    else
    {
      v88 = 2;
    }

LABEL_139:
    *(v6 + 120) = v88;
    *(v6 + 20) = 1;
    return result;
  }

  if (v96 == -result)
  {
    if (result == 1)
    {
      v94 = 2;
    }

    else
    {
      v94 = 1;
    }

    *(v6 + 40) = v94;
    *(v6 + 120) = v94;
    if (v81)
    {
      v84 = 3;
      goto LABEL_144;
    }

LABEL_102:
    *(v6 + 20) = 1;
  }

  return result;
}

double sub_100031614(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  v10 = a4[10];
  v11 = a4[17];
  if (vabdd_f64(v10, v11) >= 50.0)
  {
    v15 = v10 < v11;
  }

  else
  {
    v12 = a4[8] / a4[9];
    v13 = a4[16];
    v14 = a4[15] / v13;
    if (v12 == v14)
    {
      v15 = 0;
    }

    else if (COERCE_UNSIGNED_INT64(fabs(a4[8] / a4[9])) <= 0x7FEFFFFFFFFFFFFFLL && COERCE_UNSIGNED_INT64(fabs(a4[15] / v13)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v16 = fabs(v12);
      v17 = fabs(v14);
      v18 = vabdd_f64(v12, v14);
      if (v16 < v17)
      {
        v16 = v17;
      }

      if (v16 < 1.0)
      {
        v16 = 1.0;
      }

      v15 = v18 > v16 * 2.22044605e-16;
    }

    else
    {
      v15 = 1;
    }

    if (v12 >= v14)
    {
      v15 = 0;
    }
  }

  *(a3 + 16) = 5;
  *a3 = *&a4[2 * v15 + 1];
  v19 = &a4[7 * v15];
  v20 = *(v19 + 5);
  *(a3 + 104) = v19[7];
  *(a3 + 88) = v20;
  v21 = *(v19 + 4);
  *(a3 + 184) = v19[10];
  *(a3 + 168) = v21;
  v22 = *(a5 + 36);
  v23 = *(a6 + 8);
  v24 = *(v23 + 16);
  v25 = *(v23 + 24);
  v78 = v22;
  if ((*(v23 + 80) & 1) == 0)
  {
    v27 = *v25;
    v26 = v25[1];
    v28 = *(v23 + 32);
    if (sub_10000B2C4(*v25, v26, *v28, v28[1]))
    {
      v29 = *(*v23 + 88);
      v30 = -1;
      while (++v30 < v29)
      {
        v31 = v28 + 2;
        *(v23 + 32) = v28 + 2;
        if (v28 + 2 == *(v23 + 48))
        {
          v32 = *(v23 + 40);
          *(v23 + 32) = v32;
          v31 = v32;
          if (*(v23 + 56) == 1)
          {
            v31 = v32 + 2;
            *(v23 + 32) = v32 + 2;
            if (v28 == v32)
            {
              *(v23 + 32) = v32;
              v31 = v32;
            }
          }
        }

        v28 = v31;
        if (!sub_10000B2C4(v27, v26, *v31, v31[1]))
        {
          goto LABEL_26;
        }
      }
    }

    v31 = v28;
LABEL_26:
    *(v23 + 64) = *v31;
    *(v23 + 80) = 1;
    v8 = a2;
    v22 = v78;
  }

  v33 = sub_10000DCA4(v24, v25, (v23 + 64));
  v34 = *(a6 + 16);
  v35 = *(v34 + 16);
  v36 = *(v34 + 24);
  if ((*(v34 + 80) & 1) == 0)
  {
    v38 = *v36;
    v37 = v36[1];
    v39 = *(v34 + 32);
    if (sub_10000B2C4(*v36, v37, *v39, v39[1]))
    {
      v40 = *(*v34 + 88);
      v41 = -1;
      while (++v41 < v40)
      {
        v42 = v39 + 2;
        *(v34 + 32) = v39 + 2;
        if (v39 + 2 == *(v34 + 48))
        {
          v43 = *(v34 + 40);
          *(v34 + 32) = v43;
          v42 = v43;
          if (*(v34 + 56) == 1)
          {
            v42 = v43 + 2;
            *(v34 + 32) = v43 + 2;
            if (v39 == v43)
            {
              *(v34 + 32) = v43;
              v42 = v43;
            }
          }
        }

        v39 = v42;
        if (!sub_10000B2C4(v38, v37, *v42, v42[1]))
        {
          goto LABEL_38;
        }
      }
    }

    v42 = v39;
LABEL_38:
    *(v34 + 64) = *v42;
    *(v34 + 80) = 1;
    v8 = a2;
    v22 = v78;
  }

  v44 = sub_10000DCA4(v35, v36, (v34 + 64));
  v45 = v44;
  if (v22 == 1)
  {
    v46 = v33;
  }

  else
  {
    v46 = v44;
  }

  v47 = v46 * v22;
  if (v47 == 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = 2;
  }

  if (v47 == 1)
  {
    v49 = 2;
  }

  else
  {
    v49 = 1;
  }

  if (v47)
  {
    v50 = v49;
  }

  else
  {
    v48 = 4;
    v50 = 4;
  }

  *(a3 + 40) = v48;
  *(a3 + 120) = v50;
  if (v33)
  {
    v51 = *(a1 + 24);
    v52 = *a3;
    v53 = *(a3 + 8);
    v54 = *v51;
    v55 = v51[1];
  }

  else
  {
    if ((*(a1 + 80) & 1) == 0)
    {
      v56 = *(a1 + 24);
      v57 = *(a1 + 32);
      v59 = *v56;
      v58 = v56[1];
      if (sub_10000B2C4(*v56, v58, *v57, v57[1]))
      {
        v61 = *(a1 + 40);
        v60 = *(a1 + 48);
        v62 = *(a1 + 56);
        v63 = *(*a1 + 88) + 1;
        while (--v63)
        {
          v64 = v57 + 2;
          *(a1 + 32) = v57 + 2;
          if (v57 + 2 == v60)
          {
            *(a1 + 32) = v61;
            v64 = v61;
            if (v62)
            {
              *(a1 + 32) = v61 + 2;
              v64 = v61 + 2;
              if (v57 == v61)
              {
                *(a1 + 32) = v61;
                v64 = v61;
              }
            }
          }

          v57 = v64;
          if (!sub_10000B2C4(v59, v58, *v64, v64[1]))
          {
            goto LABEL_64;
          }
        }
      }

      v64 = v57;
LABEL_64:
      *(a1 + 64) = *v64;
      *(a1 + 80) = 1;
      v8 = a2;
    }

    v52 = *a3;
    v53 = *(a3 + 8);
    v54 = *(a1 + 64);
    v55 = *(a1 + 72);
  }

  *(a3 + 112) = (v53 - v55) * (v53 - v55) + (v52 - v54) * (v52 - v54);
  if (v45)
  {
    v65 = *(v8 + 24);
    v66 = *v65;
    v67 = v65[1];
  }

  else
  {
    if ((*(v8 + 80) & 1) == 0)
    {
      v68 = *(v8 + 24);
      v69 = *(v8 + 32);
      v71 = *v68;
      v70 = v68[1];
      if (sub_10000B2C4(*v68, v70, *v69, v69[1]))
      {
        v73 = *(v8 + 40);
        v72 = *(v8 + 48);
        v74 = *(v8 + 56);
        v75 = *(*v8 + 88) + 1;
        while (--v75)
        {
          v76 = v69 + 2;
          *(v8 + 32) = v69 + 2;
          if (v69 + 2 == v72)
          {
            *(v8 + 32) = v73;
            v76 = v73;
            if (v74)
            {
              *(v8 + 32) = v73 + 2;
              v76 = v73 + 2;
              if (v69 == v73)
              {
                *(v8 + 32) = v73;
                v76 = v73;
              }
            }
          }

          v69 = v76;
          if (!sub_10000B2C4(v71, v70, *v76, v76[1]))
          {
            goto LABEL_79;
          }
        }
      }

      v76 = v69;
LABEL_79:
      *(v8 + 64) = *v76;
      *(v8 + 80) = 1;
      v52 = *a3;
      v53 = *(a3 + 8);
    }

    v66 = *(v8 + 64);
    v67 = *(v8 + 72);
  }

  result = (v53 - v67) * (v53 - v67) + (v52 - v66) * (v52 - v66);
  *(a3 + 192) = result;
  return result;
}

uint64_t sub_100031AF4(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = a2[10];
  v6 = a2[17];
  if (vabdd_f64(v5, v6) >= 50.0)
  {
    v10 = v5 < v6;
  }

  else
  {
    v7 = a2[8] / a2[9];
    v8 = a2[16];
    v9 = a2[15] / v8;
    if (v7 == v9)
    {
      v10 = 0;
    }

    else if (COERCE_UNSIGNED_INT64(fabs(a2[8] / a2[9])) <= 0x7FEFFFFFFFFFFFFFLL && COERCE_UNSIGNED_INT64(fabs(a2[15] / v8)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v11 = fabs(v7);
      v12 = fabs(v9);
      v13 = vabdd_f64(v7, v9);
      if (v11 < v12)
      {
        v11 = v12;
      }

      if (v11 < 1.0)
      {
        v11 = 1.0;
      }

      v10 = v13 > v11 * 2.22044605e-16;
    }

    else
    {
      v10 = 1;
    }

    if (v7 >= v9)
    {
      v10 = 0;
    }
  }

  *(a1 + 16) = 6;
  *a1 = *&a2[2 * v10 + 1];
  v14 = &a2[7 * v10];
  v15 = *(v14 + 5);
  *(a1 + 104) = v14[7];
  *(a1 + 88) = v15;
  v16 = *(v14 + 4);
  *(a1 + 184) = v14[10];
  *(a1 + 168) = v16;
  v17 = sub_10003310C(a3);
  v18 = *(a3 + 8);
  v19 = *(v18 + 16);
  v20 = *(v18 + 24);
  if ((*(v18 + 80) & 1) == 0)
  {
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v18 + 32);
    if (sub_10000B2C4(*v20, v21, *v23, v23[1]))
    {
      v24 = *(*v18 + 88);
      v25 = -1;
      while (++v25 < v24)
      {
        v26 = v23 + 2;
        *(v18 + 32) = v23 + 2;
        if (v23 + 2 == *(v18 + 48))
        {
          v27 = *(v18 + 40);
          *(v18 + 32) = v27;
          v26 = v27;
          if (*(v18 + 56) == 1)
          {
            v26 = v27 + 2;
            *(v18 + 32) = v27 + 2;
            if (v23 == v27)
            {
              *(v18 + 32) = v27;
              v26 = v27;
            }
          }
        }

        v23 = v26;
        if (!sub_10000B2C4(v22, v21, *v26, v26[1]))
        {
          goto LABEL_26;
        }
      }
    }

    v26 = v23;
LABEL_26:
    *(v18 + 64) = *v26;
    *(v18 + 80) = 1;
  }

  v28 = sub_10000DCA4(v19, v20, (v18 + 64));
  v29 = *(a3 + 8);
  v30 = *(a3 + 16);
  v31 = *(v29 + 16);
  v32 = *(v29 + 24);
  if ((*(v30 + 80) & 1) == 0)
  {
    v33 = *(v30 + 24);
    v34 = *(v30 + 32);
    v36 = *v33;
    v35 = v33[1];
    if (sub_10000B2C4(*v33, v35, *v34, v34[1]))
    {
      v37 = *(*v30 + 88);
      v38 = -1;
      while (++v38 < v37)
      {
        v39 = v34 + 2;
        *(v30 + 32) = v34 + 2;
        if (v34 + 2 == *(v30 + 48))
        {
          v40 = *(v30 + 40);
          *(v30 + 32) = v40;
          v39 = v40;
          if (*(v30 + 56) == 1)
          {
            v39 = v40 + 2;
            *(v30 + 32) = v40 + 2;
            if (v34 == v40)
            {
              *(v30 + 32) = v40;
              v39 = v40;
            }
          }
        }

        v34 = v39;
        if (!sub_10000B2C4(v36, v35, *v39, v39[1]))
        {
          goto LABEL_38;
        }
      }
    }

    v39 = v34;
LABEL_38:
    *(v30 + 64) = *v39;
    *(v30 + 80) = 1;
  }

  result = sub_10000DCA4(v31, v32, (v30 + 64));
  if (v17 || v28 != result)
  {
    if (result * v28 == -1)
    {
      v43 = v28 == -1;
    }

    else
    {
      v43 = v17 == -1;
    }

    if (v43)
    {
      v44 = 2;
    }

    else
    {
      v44 = 1;
    }

    *(a1 + 40) = v44;
    if (v43)
    {
      v42 = 1;
    }

    else
    {
      v42 = 2;
    }
  }

  else
  {
    v42 = 4;
    *(a1 + 40) = 4;
  }

  *(a1 + 120) = v42;
  return result;
}

double sub_100031E10(uint64_t a1)
{
  v1 = 0;
  *&v9[0] = 0;
  do
  {
    v2 = v9 + v1;
    *(v2 + 40) = xmmword_100092590;
    *(v2 + 7) = 0;
    *(v2 + 8) = 0;
    *(v2 + 72) = xmmword_1000925A0;
    v1 += 56;
    v2[88] = 0;
  }

  while (v1 != 112);
  memset(&v11[2], 0, 32);
  v3 = v9[7];
  *(a1 + 96) = v9[6];
  *(a1 + 112) = v3;
  *(a1 + 128) = v9[8];
  v4 = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = v4;
  v5 = v9[5];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v5;
  v6 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v6;
  v7 = *&v11[16];
  *(a1 + 154) = *v11;
  *&v11[34] = 0;
  *(a1 + 144) = v10;
  *(a1 + 152) = 100;
  *(a1 + 170) = v7;
  result = *&v11[26];
  *(a1 + 180) = *&v11[26];
  return result;
}

BOOL sub_100031EF4(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, char a10)
{
  v33 = 1;
  v17 = sub_10001A0C0(a5, a4, a6, &v33);
  v18 = 1.0;
  v19 = 1.0 - v17;
  *a9 = 1.0 - v17;
  if ((v33 & 1) == 0)
  {
    v19 = -v19;
    *a9 = v19;
  }

  if (v19 <= -2.0)
  {
    v19 = v19 + 4.0;
    *a9 = v19;
  }

  v20 = fabs(v19);
  if (v20 <= 0.00000001)
  {
    if (v19 == 0.0)
    {
      goto LABEL_31;
    }

    if (v20 >= 1.0)
    {
      v18 = v20;
    }

    if (v20 <= v18 * 2.22044605e-16 || sub_10000B2C4(*a1, a1[1], *a3, a3[1]))
    {
      goto LABEL_31;
    }
  }

  v21 = *a8;
  v22 = vabdd_f64(*a8, v19);
  if (v22 <= 0.00000001)
  {
    if (v21 - v19 == 0.0)
    {
      goto LABEL_37;
    }

    v31 = 1.0;
    if (v22 >= 1.0)
    {
      v31 = v22;
    }

    if (v22 <= v31 * 2.22044605e-16 || sub_10000B2C4(*a2, a2[1], *a3, a3[1]))
    {
      goto LABEL_37;
    }
  }

  if (a10)
  {
    v34 = 1;
    v23 = 1.0 - sub_10001A0C0(a5, a4, a7, &v34);
    if (!v34)
    {
      v23 = -v23;
    }

    if (v23 <= -2.0)
    {
      v23 = v23 + 4.0;
    }

    if (v23 == 0.0)
    {
      goto LABEL_31;
    }

    if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v24 = fabs(v23);
      v25 = 1.0;
      if (v24 >= 1.0)
      {
        v25 = v24;
      }

      if (v24 <= v25 * 2.22044605e-16)
      {
LABEL_31:
        *a9 = 0.0;
        return 1;
      }
    }

    v26 = v21 - v23;
    if (v26 == 0.0)
    {
      goto LABEL_37;
    }

    if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v27 = fabs(v26);
      v28 = 1.0;
      if (v27 >= 1.0)
      {
        v28 = v27;
      }

      if (v27 <= v28 * 2.22044605e-16)
      {
LABEL_37:
        *a9 = v21;
        return 1;
      }
    }
  }

  v29 = -v19;
  if (v21 >= 0.0)
  {
    v29 = v19;
  }

  if (v29 < 0.0)
  {
    return 0;
  }

  v32 = -v21;
  if (v21 >= 0.0)
  {
    v32 = v21;
  }

  return v29 <= v32;
}

uint64_t sub_100032158(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 *a11, __int128 *a12)
{
  v12 = 0;
  v13 = a11;
  v14 = a12;
  v15 = a9;
  v16 = a10;
  *v154 = 0;
  do
  {
    v17 = &v154[v12];
    *(v17 + 40) = xmmword_100092590;
    *(v17 + 7) = 0;
    *(v17 + 8) = 0;
    *(v17 + 72) = xmmword_1000925A0;
    v12 += 56;
    v17[88] = 0;
  }

  while (v12 != 112);
  *v159 = xmmword_100092590;
  *&v159[16] = 0;
  *&v159[24] = 0;
  *&v159[32] = xmmword_1000925A0;
  p_name = &OBJC_PROTOCOL___RTDaemonProtocol.name;
  if ((a5 - 1) > 2)
  {
    v20 = 0;
  }

  else
  {
    *&v154[8] = **a2;
    if ((atomic_load_explicit(&qword_1000B2C00, memory_order_acquire) & 1) == 0)
    {
      v143 = result;
      v121 = a8;
      v126 = a4;
      v132 = a7;
      v137 = a5;
      v115 = a6;
      v109 = a3;
      v91 = a2;
      v76 = __cxa_guard_acquire(&qword_1000B2C00);
      v13 = a11;
      v15 = a9;
      p_name = (&OBJC_PROTOCOL___RTDaemonProtocol + 8);
      v16 = a10;
      a3 = v109;
      a2 = v91;
      a7 = v132;
      a5 = v137;
      a6 = v115;
      a8 = v121;
      a4 = v126;
      v77 = v76;
      result = v143;
      v14 = a12;
      if (v77)
      {
        qword_1000B2BF8 = 0x3FF0000000000000;
        __cxa_guard_release(&qword_1000B2C00);
        v13 = a11;
        v15 = a9;
        p_name = (&OBJC_PROTOCOL___RTDaemonProtocol + 8);
        v16 = a10;
        a3 = v109;
        result = v143;
        v14 = a12;
        a2 = v91;
        a7 = v132;
        a5 = v137;
        a6 = v115;
        a8 = v121;
        a4 = v126;
      }
    }

    v154[88] = 1;
    *&v154[40] = 0;
    *&v154[48] = qword_1000B2BF8;
    *&v154[56] = 0;
    *&v154[64] = *v15;
    *&v154[80] = *(v15 + 16);
    if ((atomic_load_explicit(&qword_1000B2C00, memory_order_acquire) & 1) == 0)
    {
      v144 = result;
      v149 = v14;
      v122 = a8;
      v127 = a4;
      v133 = a7;
      v138 = a5;
      v116 = a6;
      v105 = v16;
      v110 = a3;
      v92 = a2;
      v96 = v13;
      v78 = __cxa_guard_acquire(&qword_1000B2C00);
      p_name = (&OBJC_PROTOCOL___RTDaemonProtocol + 8);
      a2 = v92;
      v13 = v96;
      v16 = v105;
      a3 = v110;
      a7 = v133;
      a5 = v138;
      a6 = v116;
      a8 = v122;
      a4 = v127;
      v79 = v78;
      result = v144;
      v14 = v149;
      if (v79)
      {
        qword_1000B2BF8 = 0x3FF0000000000000;
        __cxa_guard_release(&qword_1000B2C00);
        p_name = (&OBJC_PROTOCOL___RTDaemonProtocol + 8);
        a2 = v92;
        v13 = v96;
        v16 = v105;
        a3 = v110;
        result = v144;
        v14 = v149;
        a7 = v133;
        a5 = v138;
        a6 = v116;
        a8 = v122;
        a4 = v127;
      }
    }

    v19 = p_name[383];
    *v159 = 0;
    *&v159[8] = v19;
    *&v159[16] = 0;
    v20 = 1;
  }

  if (a7 == 2)
  {
    v21 = v20;
    *&v154[16 * v20 + 8] = **a3;
    v22 = &v154[56 * v20];
    if ((atomic_load_explicit(&qword_1000B2C00, memory_order_acquire) & 1) == 0)
    {
      v145 = result;
      v150 = v14;
      v123 = a8;
      v128 = a4;
      v139 = a5;
      v117 = a6;
      v106 = v16;
      v111 = a3;
      v93 = a2;
      v97 = v13;
      v101 = v20;
      v88 = v20;
      v89 = &v154[56 * v20];
      v80 = __cxa_guard_acquire(&qword_1000B2C00);
      v21 = v88;
      v22 = v89;
      p_name = (&OBJC_PROTOCOL___RTDaemonProtocol + 8);
      a2 = v93;
      v13 = v97;
      v16 = v106;
      a3 = v111;
      v20 = v101;
      a7 = 2;
      a5 = v139;
      a6 = v117;
      a8 = v123;
      a4 = v128;
      v81 = v80;
      result = v145;
      v14 = v150;
      if (v81)
      {
        qword_1000B2BF8 = 0x3FF0000000000000;
        __cxa_guard_release(&qword_1000B2C00);
        v21 = v88;
        v22 = v89;
        p_name = (&OBJC_PROTOCOL___RTDaemonProtocol + 8);
        a2 = v93;
        v13 = v97;
        v16 = v106;
        a3 = v111;
        result = v145;
        v14 = v150;
        v20 = v101;
        a7 = 2;
        a5 = v139;
        a6 = v117;
        a8 = v123;
        a4 = v128;
      }
    }

    v23 = p_name[383];
    v22[88] = 1;
    v24 = *v13;
    *(v22 + 40) = *v13;
    v25 = *(v13 + 2);
    *(v22 + 7) = v25;
    *(v22 + 8) = 0;
    *(v22 + 9) = v23;
    *(v22 + 10) = 0;
    v26 = &v159[24 * v21];
    *v26 = v24;
    *(v26 + 2) = v25;
    ++v20;
  }

  v27 = a6 - 1;
  if ((a6 - 1) <= 2 && v20 <= 1)
  {
    v28 = v20;
    *&v154[16 * v20 + 8] = **(a2 + 8);
    v29 = &v154[56 * v20];
    if ((atomic_load_explicit(&qword_1000B2C20, memory_order_acquire) & 1) == 0)
    {
      v146 = result;
      v151 = v14;
      v124 = a8;
      v129 = a4;
      v134 = a7;
      v140 = a5;
      v118 = a6;
      v107 = v16;
      v112 = a3;
      v102 = v20;
      v98 = a6 - 1;
      v90 = &v154[56 * v20];
      v94 = v20;
      v82 = __cxa_guard_acquire(&qword_1000B2C20);
      v29 = v90;
      v28 = v94;
      v16 = v107;
      a3 = v112;
      v27 = v98;
      v20 = v102;
      a7 = v134;
      a5 = v140;
      a6 = v118;
      a8 = v124;
      a4 = v129;
      v83 = v82;
      result = v146;
      v14 = v151;
      if (v83)
      {
        *&xmmword_1000B2C08 = 0x3FF0000000000000;
        *(&xmmword_1000B2C08 + 1) = 0x3FF0000000000000;
        qword_1000B2C18 = 0x412E848000000000;
        __cxa_guard_release(&qword_1000B2C20);
        v29 = v90;
        v28 = v94;
        v16 = v107;
        a3 = v112;
        v27 = v98;
        result = v146;
        v14 = v151;
        v20 = v102;
        a7 = v134;
        a5 = v140;
        a6 = v118;
        a8 = v124;
        a4 = v129;
      }
    }

    v30 = xmmword_1000B2C08;
    v31 = qword_1000B2C18;
    v29[88] = 1;
    *(v29 + 40) = v30;
    *(v29 + 7) = v31;
    *(v29 + 4) = *v16;
    *(v29 + 10) = *(v16 + 16);
    if ((atomic_load_explicit(&qword_1000B2C20, memory_order_acquire) & 1) == 0)
    {
      v147 = result;
      v152 = v14;
      v125 = a8;
      v130 = a4;
      v135 = a7;
      v141 = a5;
      v119 = a6;
      v113 = a3;
      v103 = v20;
      v99 = v27;
      v95 = v28;
      v84 = __cxa_guard_acquire(&qword_1000B2C20);
      v28 = v95;
      v27 = v99;
      v20 = v103;
      a3 = v113;
      a7 = v135;
      a5 = v141;
      a6 = v119;
      a8 = v125;
      a4 = v130;
      v85 = v84;
      result = v147;
      v14 = v152;
      if (v85)
      {
        *&xmmword_1000B2C08 = 0x3FF0000000000000;
        *(&xmmword_1000B2C08 + 1) = 0x3FF0000000000000;
        qword_1000B2C18 = 0x412E848000000000;
        __cxa_guard_release(&qword_1000B2C20);
        v28 = v95;
        v27 = v99;
        result = v147;
        v14 = v152;
        v20 = v103;
        a3 = v113;
        a7 = v135;
        a5 = v141;
        a6 = v119;
        a8 = v125;
        a4 = v130;
      }
    }

    v32 = qword_1000B2C18;
    v33 = &v159[24 * v28];
    *v33 = xmmword_1000B2C08;
    *(v33 + 2) = v32;
    ++v20;
  }

  if (a8 == 2 && v20 <= 1)
  {
    v34 = v20;
    *&v154[16 * v20 + 8] = **(a3 + 8);
    v35 = &v154[56 * v20];
    if ((atomic_load_explicit(&qword_1000B2C20, memory_order_acquire) & 1) == 0)
    {
      v148 = result;
      v153 = v14;
      v131 = a4;
      v136 = a7;
      v142 = a5;
      v120 = a6;
      v104 = v20;
      v100 = v27;
      v108 = v20;
      v114 = &v154[56 * v20];
      v86 = __cxa_guard_acquire(&qword_1000B2C20);
      v34 = v108;
      v35 = v114;
      v27 = v100;
      v20 = v104;
      a7 = v136;
      a5 = v142;
      a6 = v120;
      a8 = 2;
      a4 = v131;
      v87 = v86;
      result = v148;
      v14 = v153;
      if (v87)
      {
        *&xmmword_1000B2C08 = 0x3FF0000000000000;
        *(&xmmword_1000B2C08 + 1) = 0x3FF0000000000000;
        qword_1000B2C18 = 0x412E848000000000;
        __cxa_guard_release(&qword_1000B2C20);
        v34 = v108;
        v35 = v114;
        v27 = v100;
        result = v148;
        v14 = v153;
        v20 = v104;
        a7 = v136;
        a5 = v142;
        a6 = v120;
        a8 = 2;
        a4 = v131;
      }
    }

    v36 = xmmword_1000B2C08;
    v37 = qword_1000B2C18;
    v35[88] = 1;
    v38 = *v14;
    *(v35 + 40) = *v14;
    v39 = *(v14 + 2);
    *(v35 + 7) = v39;
    *(v35 + 4) = v36;
    *(v35 + 10) = v37;
    v40 = &v159[24 * v34];
    *v40 = v38;
    *(v40 + 2) = v39;
    ++v20;
  }

  if (v20 == 2)
  {
    if (vabdd_f64(*&v159[40], *&v159[16]) >= 50.0)
    {
      if (*&v159[40] < *&v159[16])
      {
LABEL_35:
        v47 = v154[88];
        v48 = *&v154[40];
        v49 = *&v154[56];
        *&v154[40] = v155;
        *&v154[56] = v156;
        v50 = *&v154[72];
        *&v154[72] = v157;
        v154[88] = v158;
        v157 = v50;
        v156 = v49;
        v155 = v48;
        LOBYTE(v158) = v47;
        v51 = *&v154[8];
        v160 = *&v154[8];
        *&v154[8] = *&v154[24];
        *&v154[24] = v51;
      }
    }

    else
    {
      v41 = *&v159[24] / *&v159[32];
      v42 = *v159 / *&v159[8];
      if (*&v159[24] / *&v159[32] != *v159 / *&v159[8])
      {
        if (COERCE_UNSIGNED_INT64(fabs(*&v159[24] / *&v159[32])) <= 0x7FEFFFFFFFFFFFFFLL && COERCE_UNSIGNED_INT64(fabs(*v159 / *&v159[8])) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v44 = fabs(v41);
          v45 = fabs(v42);
          v46 = vabdd_f64(v41, v42);
          if (v44 < v45)
          {
            v44 = v45;
          }

          if (v44 < 1.0)
          {
            v44 = 1.0;
          }

          v43 = v46 > v44 * 2.22044605e-16;
        }

        else
        {
          v43 = 1;
        }

        if (v41 < v42 && v43)
        {
          goto LABEL_35;
        }
      }
    }
  }

  if ((a6 & 0xFFFFFFFD) == 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = -1;
  }

  v53 = (a5 & 0xFFFFFFFD) != 1;
  v54 = (a5 & 0xFFFFFFFD) != 1 || (a5 - 4) < 0xFFFFFFFD;
  if ((a5 - 4) <= 0xFFFFFFFC)
  {
    v53 = 0;
  }

  if (a6 == 2)
  {
    v52 = 1;
  }

  else
  {
    v53 = (a5 - 4) < 0xFFFFFFFD;
  }

  v55 = !v54;
  if ((a6 & 0xFFFFFFFD) == 1)
  {
    v56 = !v54;
  }

  else
  {
    v56 = v53;
  }

  v57 = (a6 & 0xFFFFFFFD) != 1 || v27 >= 3;
  *v154 = v20;
  memset(&v159[2], 0, 32);
  v58 = a8 & 0xFFFFFFFD;
  if (!v57)
  {
    v55 = v56 + 1;
  }

  v59 = (a7 & 0xFFFFFFFD) != 1;
  v60 = (a7 & 0xFFFFFFFD) != 1 || (a7 - 4) < 0xFFFFFFFD;
  if ((a7 - 4) <= 0xFFFFFFFC)
  {
    v59 = 0;
  }

  v61 = !v60;
  if (a8 != 2)
  {
    v59 = (a7 - 4) < 0xFFFFFFFD;
  }

  v62 = a8 - 1;
  if (v58 == 1)
  {
    v63 = v61;
  }

  else
  {
    v63 = v59;
  }

  if (v58 != 1 || v62 >= 3)
  {
    v65 = v61;
  }

  else
  {
    v65 = v63 + 1;
  }

  v66 = v56 == 0;
  if (v27 >= 3)
  {
    v67 = v66;
  }

  else
  {
    v67 = (a5 - 4) < 0xFFFFFFFD;
  }

  v68 = v63 == 0;
  if (v62 < 3)
  {
    v68 = (a7 - 4) < 0xFFFFFFFD;
  }

  if (v55 == 1 && v65 == 1 && v67 && v68)
  {
    if (a4)
    {
      if (v52)
      {
        v69 = 102;
      }

      else
      {
        v69 = 116;
      }
    }

    else
    {
      v69 = 97;
    }
  }

  else
  {
    v69 = 99;
    if (v55 == 2 && v65 == 2)
    {
      v69 = 101;
    }
  }

  v70 = v156;
  *(result + 96) = v155;
  *(result + 112) = v70;
  *(result + 128) = v157;
  v71 = *&v154[48];
  *(result + 32) = *&v154[32];
  *(result + 48) = v71;
  v72 = *&v154[80];
  *(result + 64) = *&v154[64];
  *(result + 80) = v72;
  v73 = *&v154[16];
  *result = *v154;
  *(result + 16) = v73;
  v74 = *&v159[16];
  *(result + 154) = *v159;
  if (v58 == 1)
  {
    v75 = 0;
  }

  else
  {
    v75 = -1;
  }

  if (a8 == 2)
  {
    v75 = 1;
  }

  *(result + 144) = v158;
  *(result + 152) = v69;
  *(result + 153) = a4;
  *(result + 170) = v74;
  *(result + 186) = *&v159[32];
  *(result + 188) = v52;
  *(result + 192) = v75;
  return result;
}

double sub_100032A70(double *a1, double *a2, double *a3, double *a4)
{
  v6 = 1;
  result = 1.0 - sub_10001A0C0(a2, a1, a3, &v6);
  *a4 = result;
  if ((v6 & 1) == 0)
  {
    result = -result;
    *a4 = result;
  }

  if (result <= -2.0)
  {
    result = result + 4.0;
    *a4 = result;
  }

  return result;
}

__n128 sub_100032AE8(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 20 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x14)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v5 - v4 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      sub_1000330C4(v12);
    }

    a1[4] = v7 - 20;
    v23 = *v4;
    a1[1] = v4 + 8;
    sub_100032FC0(a1, &v23);
    v4 = a1[1];
    v8 = a1[5] + a1[4];
  }

  v13 = *&v4[8 * (v8 / 0x14)] + 200 * (v8 % 0x14);
  *v13 = *a2;
  v14 = *(a2 + 16);
  v15 = *(a2 + 32);
  v16 = *(a2 + 64);
  *(v13 + 48) = *(a2 + 48);
  *(v13 + 64) = v16;
  *(v13 + 16) = v14;
  *(v13 + 32) = v15;
  v17 = *(a2 + 80);
  v18 = *(a2 + 96);
  v19 = *(a2 + 128);
  *(v13 + 112) = *(a2 + 112);
  *(v13 + 128) = v19;
  *(v13 + 80) = v17;
  *(v13 + 96) = v18;
  result = *(a2 + 144);
  v21 = *(a2 + 160);
  v22 = *(a2 + 176);
  *(v13 + 192) = *(a2 + 192);
  *(v13 + 160) = v21;
  *(v13 + 176) = v22;
  *(v13 + 144) = result;
  ++a1[5];
  return result;
}

void sub_100032F94(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *sub_100032FC0(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1000330C4(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void sub_1000330C4(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_10001A5DC();
}

uint64_t sub_10003310C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 24);
  if ((*(v2 + 80) & 1) == 0)
  {
    v5 = *v3;
    v4 = v3[1];
    v6 = *(v2 + 32);
    if (sub_10000B2C4(*v3, v4, *v6, v6[1]))
    {
      v7 = *(*v2 + 88) + 1;
      while (--v7)
      {
        v8 = v6 + 2;
        *(v2 + 32) = v6 + 2;
        if (v6 + 2 == *(v2 + 48))
        {
          v9 = *(v2 + 40);
          *(v2 + 32) = v9;
          v8 = v9;
          if (*(v2 + 56) == 1)
          {
            v8 = v9 + 2;
            *(v2 + 32) = v9 + 2;
            if (v6 == v9)
            {
              *(v2 + 32) = v9;
              v8 = v9;
            }
          }
        }

        v6 = v8;
        if (!sub_10000B2C4(v5, v4, *v8, v8[1]))
        {
          goto LABEL_12;
        }
      }
    }

    v8 = v6;
LABEL_12:
    *(v2 + 64) = *v8;
    *(v2 + 80) = 1;
  }

  v10 = *(a1 + 8);
  if ((*(v10 + 80) & 1) == 0)
  {
    v11 = *(v10 + 24);
    v12 = *(v10 + 32);
    v14 = *v11;
    v13 = v11[1];
    if (sub_10000B2C4(*v11, v13, *v12, v12[1]))
    {
      v15 = *(*v10 + 88);
      v16 = -1;
      while (++v16 < v15)
      {
        v17 = v12 + 2;
        *(v10 + 32) = v12 + 2;
        if (v12 + 2 == *(v10 + 48))
        {
          v18 = *(v10 + 40);
          *(v10 + 32) = v18;
          v17 = v18;
          if (*(v10 + 56) == 1)
          {
            v17 = v18 + 2;
            *(v10 + 32) = v18 + 2;
            if (v12 == v18)
            {
              *(v10 + 32) = v18;
              v17 = v18;
            }
          }
        }

        v12 = v17;
        if (!sub_10000B2C4(v14, v13, *v17, v17[1]))
        {
          goto LABEL_24;
        }
      }
    }

    v17 = v12;
LABEL_24:
    *(v10 + 64) = *v17;
    *(v10 + 80) = 1;
  }

  return sub_10000DCA4(v3, (v2 + 64), (v10 + 64));
}

uint64_t sub_1000332D0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_100033390(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_10000A9B0(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_1000333E8(double *a1, uint64_t **a2, unint64_t a3, uint64_t a4)
{
  v6 = (*a1 + a1[2]) * 0.5;
  v7 = *(a1 + 1);
  v54 = *a1;
  v56 = *(&v7 + 1);
  v52[1] = *(&v54 + 1);
  v53 = v7;
  v55 = v6;
  v52[0] = v6;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  __p = 0;
  v47 = 0;
  v48 = 0;
  v44 = 0uLL;
  v45 = 0;
  v8 = *a2;
  if (*a2 == a2[1])
  {
    v15 = 0;
  }

  else
  {
    do
    {
      v10 = sub_100033CF0(&v54, *v8);
      v11 = sub_100033CF0(v52, *v8);
      if (v10 || v11)
      {
        if (v10 && v11)
        {
          v12 = &v44;
        }

        else
        {
          v12 = &v49;
        }

        if (v10)
        {
          p_p = v12;
        }

        else
        {
          p_p = &__p;
        }

        sub_100019324(p_p, v8);
      }

      ++v8;
    }

    while (v8 != a2[1]);
    v14 = *(&v44 + 1);
    v15 = v44;
    if (v44 != *(&v44 + 1))
    {
      v57 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v58 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v16 = v44;
      do
      {
        v17 = sub_100033918(*v16);
        sub_10001911C(&v57, v17);
        ++v16;
      }

      while (v16 != v14);
      v43[0] = v57;
      v43[1] = v58;
      v18 = v15;
      if (a3 > 0x63 || (v18 = v15, (v14 - v15) < 0x79))
      {
        do
        {
          v24 = v18 + 1;
          if (v18 + 1 == v14)
          {
            break;
          }

          v19 = v18 + 1;
          do
          {
            if ((*a4 & 1) == 0)
            {
              v20 = **v18;
              v21 = **v19;
              v22 = *(a4 + 8);
              strcpy(v57.i8, "FFFFFFFFF");
              sub_100035B80(v20, v21, &v57, v22);
              if (v57.u8[9] != 1)
              {
                v23 = v57.u8[0] != 84 && v57.u8[0] - 48 >= 0xA;
                if (!v23 || v57.u8[1] == 84 || v57.u8[1] - 48 <= 9 || v57.u8[3] == 84 || v57.u8[3] - 48 < 0xA)
                {
                  *a4 = 1;
                  goto LABEL_62;
                }
              }
            }

            ++v19;
          }

          while (v19 != v14);
          ++v18;
        }

        while (v24 != v14);
      }

      else if (!sub_100033EE4(v43, &v44, a3 + 1, a4))
      {
        goto LABEL_62;
      }

      if (!sub_100033B24(v43, &v44, &v49, a3, a4) || (sub_100033B24(v43, &v44, &__p, a3, a4) & 1) == 0)
      {
LABEL_62:
        v35 = 0;
        if (!v15)
        {
          goto LABEL_84;
        }

LABEL_83:
        *(&v44 + 1) = v15;
        operator delete(v15);
        goto LABEL_84;
      }
    }
  }

  v26 = v49;
  v25 = v50;
  if (a3 > 0x63 || (v50 - v49) < 0x79)
  {
    if (v49 != v50)
    {
LABEL_42:
      v27 = v26 + 1;
      if (v26 + 1 != v25)
      {
        v28 = v26 + 1;
        while (1)
        {
          if ((*a4 & 1) == 0)
          {
            v29 = **v26;
            v30 = **v28;
            v31 = *(a4 + 8);
            strcpy(v57.i8, "FFFFFFFFF");
            sub_100035B80(v29, v30, &v57, v31);
            if (v57.u8[9] != 1)
            {
              v32 = v57.u8[0] != 84 && v57.u8[0] - 48 >= 0xA;
              if (!v32 || v57.u8[1] == 84 || v57.u8[1] - 48 <= 9 || v57.u8[3] == 84 || v57.u8[3] - 48 < 0xA)
              {
                break;
              }
            }
          }

          if (++v28 == v25)
          {
            ++v26;
            if (v27 != v25)
            {
              goto LABEL_42;
            }

            goto LABEL_57;
          }
        }

LABEL_81:
        v35 = 0;
        *a4 = 1;
LABEL_82:
        if (v15)
        {
          goto LABEL_83;
        }

        goto LABEL_84;
      }
    }
  }

  else if (!sub_100033EE4(&v54, &v49, a3 + 1, a4))
  {
    goto LABEL_62;
  }

LABEL_57:
  v34 = __p;
  v33 = v47;
  if (a3 <= 0x63 && (v47 - __p) >= 0x79)
  {
    v35 = sub_100033EE4(v52, &__p, a3 + 1, a4);
    if (!v15)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  if (__p != v47)
  {
LABEL_65:
    v36 = v34 + 1;
    if (v34 + 1 != v33)
    {
      v37 = v34 + 1;
      while (1)
      {
        if ((*a4 & 1) == 0)
        {
          v38 = **v34;
          v39 = **v37;
          v40 = *(a4 + 8);
          strcpy(v57.i8, "FFFFFFFFF");
          sub_100035B80(v38, v39, &v57, v40);
          if (v57.u8[9] != 1)
          {
            v41 = v57.u8[0] != 84 && v57.u8[0] - 48 >= 0xA;
            if (!v41 || v57.u8[1] == 84 || v57.u8[1] - 48 <= 9 || v57.u8[3] == 84 || v57.u8[3] - 48 < 0xA)
            {
              goto LABEL_81;
            }
          }
        }

        if (++v37 == v33)
        {
          v35 = 1;
          ++v34;
          if (v36 != v33)
          {
            goto LABEL_65;
          }

          goto LABEL_82;
        }
      }
    }
  }

  v35 = 1;
  if (v15)
  {
    goto LABEL_83;
  }

LABEL_84:
  if (__p)
  {
    operator delete(__p);
  }

  if (v49)
  {
    operator delete(v49);
  }

  return v35;
}

void sub_1000338C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100033918(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = **a1;
    v3 = *(*a1 + 8);
    v4 = v3 - v2;
    v5 = -16;
    if ((v3 - v2) < 0x11)
    {
      v5 = 0;
    }

    v6 = (v3 + v5);
    v21 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v22 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    if (v2 != (v3 + v5))
    {
      v7 = v2 + 2;
      v8 = v4 >= 0x11 ? v2 + 2 : v2;
      sub_100006DA8(v21.f64, *v2, v2[1], *v8, v8[1]);
      if (v7 != v6)
      {
        v9 = v7;
        do
        {
          if (v4 >= 0x11)
          {
            v10 = v7 + 2;
          }

          else
          {
            v10 = v7;
          }

          sub_100006DA8(v27, *v9, v9[1], *v10, v10[1]);
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v21, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)), vceqq_f64(v22, vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL)))))))
          {
            v25 = v21.f64[1];
            v26 = v21.f64[0];
            v23 = v22.f64[1];
            v24 = v22.f64[0];
            v11 = vabdd_f64(v21.f64[0], v22.f64[0]);
            if (v11 < 360.0)
            {
              v17 = vabdd_f64(360.0, v11);
              v18 = fmax(v11, 360.0);
              if (v18 < 1.0)
              {
                v18 = 1.0;
              }

              v12 = v17 <= v18 * 2.22044605e-16;
            }

            else
            {
              v12 = 1;
            }

            v13 = v21.f64[1];
            v14 = v22.f64[1];
            sub_1000076E4(&v26, &v25, &v24, &v23, v12);
            v16 = v26;
            v15 = v24;
          }

          else
          {
            v13 = 1.79769313e308;
            v14 = -1.79769313e308;
            v15 = -1.79769313e308;
            v16 = 1.79769313e308;
          }

          v27[4] = v16;
          v27[5] = v13;
          v27[6] = v15;
          v27[7] = v14;
          sub_100007B10(v27, v21.f64);
          v9 += 2;
          v7 += 2;
        }

        while (v9 != v6);
      }
    }

    v19 = v22;
    *(a1 + 8) = v21;
    *(a1 + 24) = v19;
    *(a1 + 40) = 1;
  }

  return a1 + 8;
}

uint64_t sub_100033B24(uint64_t a1, uint64_t **a2, uint64_t **a3, unint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v8 = a2[1];
  if ((v8 - *a2) < 0x80 || a4 > 0x63 || (a3[1] - *a3) < 0x79)
  {
    if (v9 == v8)
    {
      return 1;
    }

    v10 = a3[1];
    if (*a3 == v10)
    {
      return 1;
    }

    else
    {
      while (1)
      {
        v11 = *a3;
        if (*a3 != v10)
        {
          break;
        }

LABEL_18:
        if (++v9 == v8)
        {
          return 1;
        }
      }

      while (1)
      {
        if ((*a5 & 1) == 0)
        {
          v12 = **v9;
          v13 = **v11;
          v14 = *(a5 + 8);
          strcpy(v18, "FFFFFFFFF");
          sub_100035B80(v12, v13, v18, v14);
          if (v18[9] != 1)
          {
            v15 = v18[0] != 84 && v18[0] - 48 >= 0xA;
            if (!v15 || v18[1] == 84 || v18[1] - 48 <= 9 || v18[3] == 84 || v18[3] - 48 <= 9)
            {
              break;
            }
          }
        }

        ++v11;
        v10 = a3[1];
        if (v11 == v10)
        {
          v8 = a2[1];
          goto LABEL_18;
        }
      }

      result = 0;
      *a5 = 1;
    }
  }

  else
  {
    v17 = a4 + 1;

    return sub_1000350B0(a1, a2, a3, v17, a5);
  }

  return result;
}

BOOL sub_100033CF0(double *a1, uint64_t a2)
{
  v3 = sub_100033918(a2);
  v4 = *v3;
  v5 = v3[2];
  if (v5 - *v3 >= 360.0)
  {
    return v3[3] >= a1[1] && v3[1] <= a1[3];
  }

  v6 = *a1;
  v7 = a1[2];
  v8 = v7 - *a1;
  if (v8 >= 360.0)
  {
    return v3[3] >= a1[1] && v3[1] <= a1[3];
  }

  v9 = vabdd_f64(v6, v4);
  v10 = 180.0;
  if (v9 == 180.0)
  {
    goto LABEL_4;
  }

  v11 = v6 - v4;
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v15 = fabs(v9 + -180.0);
    v10 = 180.0;
    if (v9 < 180.0)
    {
      v9 = 180.0;
    }

    if (v9 < 1.0)
    {
      v9 = 1.0;
    }

    if (v15 <= v9 * 2.22044605e-16)
    {
      goto LABEL_4;
    }
  }

  v10 = 180.0;
  if (v11 <= 180.0)
  {
    if (v11 >= -180.0)
    {
      goto LABEL_5;
    }

    v10 = fmod(v11 + -180.0, 360.0) + 180.0;
LABEL_4:
    v11 = v10;
    goto LABEL_5;
  }

  v11 = fmod(v11 + 180.0, 360.0) + -180.0;
  if (v11 == -180.0)
  {
    goto LABEL_4;
  }

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v16 = fabs(v11);
    v10 = 180.0;
    v17 = fabs(v11 + 180.0);
    if (v16 < 180.0)
    {
      v16 = 180.0;
    }

    if (v16 < 1.0)
    {
      v16 = 1.0;
    }

    if (v17 <= v16 * 2.22044605e-16)
    {
      goto LABEL_4;
    }
  }

LABEL_5:
  if (v11 < 0.0)
  {
    v11 = v11 + 360.0;
  }

  v12 = v4 + v11;
  v13 = v8 + v4 + v11 + -360.0;
  if (vabdd_f64(v13, v7) < 180.0)
  {
    v13 = v7;
  }

  if (v12 > v5 && v13 < v4)
  {
    return 0;
  }

  return v3[3] >= a1[1] && v3[1] <= a1[3];
}

uint64_t sub_100033EE4(double *a1, uint64_t **a2, unint64_t a3, uint64_t a4)
{
  v6 = (a1[1] + a1[3]) * 0.5;
  v56 = *(a1 + 2);
  v8 = *a1;
  v7 = *(a1 + 1);
  v53[0] = *a1;
  v54 = v7;
  v55 = v8;
  v57 = v6;
  v53[1] = v6;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  __p = 0;
  v48 = 0;
  v49 = 0;
  v45 = 0uLL;
  v46 = 0;
  v9 = *a2;
  if (*a2 == a2[1])
  {
    v16 = 0;
  }

  else
  {
    do
    {
      v11 = sub_100033CF0(&v55, *v9);
      v12 = sub_100033CF0(v53, *v9);
      if (v11 || v12)
      {
        if (v11 && v12)
        {
          v13 = &v45;
        }

        else
        {
          v13 = &v50;
        }

        if (v11)
        {
          p_p = v13;
        }

        else
        {
          p_p = &__p;
        }

        sub_100019324(p_p, v9);
      }

      ++v9;
    }

    while (v9 != a2[1]);
    v15 = *(&v45 + 1);
    v16 = v45;
    if (v45 != *(&v45 + 1))
    {
      v58 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v59 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v17 = v45;
      do
      {
        v18 = sub_100033918(*v17);
        sub_10001911C(&v58, v18);
        ++v17;
      }

      while (v17 != v15);
      v44[0] = v58;
      v44[1] = v59;
      v19 = v16;
      if (a3 > 0x63 || (v19 = v16, (v15 - v16) < 0x79))
      {
        do
        {
          v25 = v19 + 1;
          if (v19 + 1 == v15)
          {
            break;
          }

          v20 = v19 + 1;
          do
          {
            if ((*a4 & 1) == 0)
            {
              v21 = **v19;
              v22 = **v20;
              v23 = *(a4 + 8);
              strcpy(v58.i8, "FFFFFFFFF");
              sub_100035B80(v21, v22, &v58, v23);
              if (v58.u8[9] != 1)
              {
                v24 = v58.u8[0] != 84 && v58.u8[0] - 48 >= 0xA;
                if (!v24 || v58.u8[1] == 84 || v58.u8[1] - 48 <= 9 || v58.u8[3] == 84 || v58.u8[3] - 48 < 0xA)
                {
                  *a4 = 1;
                  goto LABEL_62;
                }
              }
            }

            ++v20;
          }

          while (v20 != v15);
          ++v19;
        }

        while (v25 != v15);
      }

      else if (!sub_1000333E8(v44, &v45, a3 + 1, a4))
      {
        goto LABEL_62;
      }

      if (!sub_10003441C(v44, &v45, &v50, a3, a4) || (sub_10003441C(v44, &v45, &__p, a3, a4) & 1) == 0)
      {
LABEL_62:
        v36 = 0;
        if (!v16)
        {
          goto LABEL_84;
        }

LABEL_83:
        *(&v45 + 1) = v16;
        operator delete(v16);
        goto LABEL_84;
      }
    }
  }

  v27 = v50;
  v26 = v51;
  if (a3 > 0x63 || (v51 - v50) < 0x79)
  {
    if (v50 != v51)
    {
LABEL_42:
      v28 = v27 + 1;
      if (v27 + 1 != v26)
      {
        v29 = v27 + 1;
        while (1)
        {
          if ((*a4 & 1) == 0)
          {
            v30 = **v27;
            v31 = **v29;
            v32 = *(a4 + 8);
            strcpy(v58.i8, "FFFFFFFFF");
            sub_100035B80(v30, v31, &v58, v32);
            if (v58.u8[9] != 1)
            {
              v33 = v58.u8[0] != 84 && v58.u8[0] - 48 >= 0xA;
              if (!v33 || v58.u8[1] == 84 || v58.u8[1] - 48 <= 9 || v58.u8[3] == 84 || v58.u8[3] - 48 < 0xA)
              {
                break;
              }
            }
          }

          if (++v29 == v26)
          {
            ++v27;
            if (v28 != v26)
            {
              goto LABEL_42;
            }

            goto LABEL_57;
          }
        }

LABEL_81:
        v36 = 0;
        *a4 = 1;
LABEL_82:
        if (v16)
        {
          goto LABEL_83;
        }

        goto LABEL_84;
      }
    }
  }

  else if (!sub_1000333E8(&v55, &v50, a3 + 1, a4))
  {
    goto LABEL_62;
  }

LABEL_57:
  v35 = __p;
  v34 = v48;
  if (a3 <= 0x63 && (v48 - __p) >= 0x79)
  {
    v36 = sub_1000333E8(v53, &__p, a3 + 1, a4);
    if (!v16)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  if (__p != v48)
  {
LABEL_65:
    v37 = v35 + 1;
    if (v35 + 1 != v34)
    {
      v38 = v35 + 1;
      while (1)
      {
        if ((*a4 & 1) == 0)
        {
          v39 = **v35;
          v40 = **v38;
          v41 = *(a4 + 8);
          strcpy(v58.i8, "FFFFFFFFF");
          sub_100035B80(v39, v40, &v58, v41);
          if (v58.u8[9] != 1)
          {
            v42 = v58.u8[0] != 84 && v58.u8[0] - 48 >= 0xA;
            if (!v42 || v58.u8[1] == 84 || v58.u8[1] - 48 <= 9 || v58.u8[3] == 84 || v58.u8[3] - 48 < 0xA)
            {
              goto LABEL_81;
            }
          }
        }

        if (++v38 == v34)
        {
          v36 = 1;
          ++v35;
          if (v37 != v34)
          {
            goto LABEL_65;
          }

          goto LABEL_82;
        }
      }
    }
  }

  v36 = 1;
  if (v16)
  {
    goto LABEL_83;
  }

LABEL_84:
  if (__p)
  {
    operator delete(__p);
  }

  if (v50)
  {
    operator delete(v50);
  }

  return v36;
}

void sub_1000343C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10003441C(double *a1, uint64_t **a2, uint64_t **a3, unint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v8 = a2[1];
  if ((v8 - *a2) < 0x80 || a4 > 0x63 || (a3[1] - *a3) < 0x79)
  {
    if (v9 == v8)
    {
      return 1;
    }

    v10 = a3[1];
    if (*a3 == v10)
    {
      return 1;
    }

    else
    {
      while (1)
      {
        v11 = *a3;
        if (*a3 != v10)
        {
          break;
        }

LABEL_18:
        if (++v9 == v8)
        {
          return 1;
        }
      }

      while (1)
      {
        if ((*a5 & 1) == 0)
        {
          v12 = **v9;
          v13 = **v11;
          v14 = *(a5 + 8);
          strcpy(v18, "FFFFFFFFF");
          sub_100035B80(v12, v13, v18, v14);
          if (v18[9] != 1)
          {
            v15 = v18[0] != 84 && v18[0] - 48 >= 0xA;
            if (!v15 || v18[1] == 84 || v18[1] - 48 <= 9 || v18[3] == 84 || v18[3] - 48 <= 9)
            {
              break;
            }
          }
        }

        ++v11;
        v10 = a3[1];
        if (v11 == v10)
        {
          v8 = a2[1];
          goto LABEL_18;
        }
      }

      result = 0;
      *a5 = 1;
    }
  }

  else
  {
    v17 = a4 + 1;

    return sub_1000345E8(a1, a2, a3, v17, a5);
  }

  return result;
}

uint64_t sub_1000345E8(double *a1, uint64_t **a2, uint64_t **a3, unint64_t a4, uint64_t a5)
{
  v8 = (*a1 + a1[2]) * 0.5;
  v9 = *(a1 + 1);
  v117 = *a1;
  v119 = *(&v9 + 1);
  v115[1] = *(&v117 + 1);
  v116 = v9;
  v118 = v8;
  v115[0] = v8;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  __p = 0;
  v101 = 0;
  v102 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  for (i = *a2; i != a2[1]; ++i)
  {
    v12 = sub_100033CF0(&v117, *i);
    v13 = sub_100033CF0(v115, *i);
    if (v12 || v13)
    {
      if (v12 && v13)
      {
        v14 = &v106;
      }

      else
      {
        v14 = &v112;
      }

      if (v12)
      {
        v15 = v14;
      }

      else
      {
        v15 = &v109;
      }

      sub_100019324(v15, i);
    }
  }

  v16 = *a3;
  if (*a3 == a3[1])
  {
    v21 = 0;
  }

  else
  {
    do
    {
      v17 = sub_100033CF0(&v117, *v16);
      v18 = sub_100033CF0(v115, *v16);
      if (v17 || v18)
      {
        if (v17 && v18)
        {
          v19 = &v97;
        }

        else
        {
          v19 = &v103;
        }

        if (v17)
        {
          p_p = v19;
        }

        else
        {
          p_p = &__p;
        }

        sub_100019324(p_p, v16);
      }

      ++v16;
    }

    while (v16 != a3[1]);
    v21 = v97;
  }

  v22 = v106;
  v23 = v107;
  v94 = a4;
  if (v106 == v107)
  {
    v25 = v98;
  }

  else
  {
    v24 = v107 - v106;
    v25 = v98;
    if ((v107 - v106) < 0x80 || a4 > 0x63 || (v98 - v21) < 0x79)
    {
      if (v21 != v98)
      {
        v26 = v106;
        while (2)
        {
          v27 = v21;
          do
          {
            if ((*a5 & 1) == 0)
            {
              v28 = **v26;
              v29 = **v27;
              v30 = *(a5 + 8);
              strcpy(v120.i8, "FFFFFFFFF");
              sub_100035B80(v28, v29, &v120, v30);
              if (v120.u8[9] != 1)
              {
                v31 = v120.u8[0] != 84 && v120.u8[0] - 48 >= 0xA;
                if (!v31 || v120.u8[1] == 84 || v120.u8[1] - 48 <= 9 || v120.u8[3] == 84 || v120.u8[3] - 48 < 0xA)
                {
                  v69 = 0;
                  *a5 = 1;
                  goto LABEL_184;
                }
              }
            }

            ++v27;
          }

          while (v27 != v25);
          if (++v26 != v23)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v95 = 0u;
      v96 = 0u;
      v120 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v121 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v47 = v106;
      do
      {
        v48 = sub_100033918(*v22);
        sub_10001911C(&v120, v48);
        ++v22;
      }

      while (v22 != v23);
      v49 = v120;
      v50 = v121;
      if (v21 != v25)
      {
        v51 = v21;
        do
        {
          v52 = sub_100033918(*v51);
          sub_10001911C(&v120, v52);
          ++v51;
        }

        while (v51 != v25);
        v49 = v120;
        v50 = v121;
      }

      v95 = v49;
      v96 = v50;
      v22 = v47;
      if ((sub_1000350B0(&v95, &v106, &v97, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_155;
      }
    }

    v93 = v22;
    v53 = v103;
    v54 = v104;
    if ((v104 - v103) < 0x80 || (v101 - __p) < 0x80 || v94 > 0x63 || v24 < 0x79)
    {
      if (v103 != v104)
      {
        v55 = v93;
LABEL_91:
        v56 = v53;
        while (1)
        {
          if ((*a5 & 1) == 0)
          {
            v57 = **v55;
            v58 = **v56;
            v59 = *(a5 + 8);
            strcpy(v120.i8, "FFFFFFFFF");
            sub_100035B80(v57, v58, &v120, v59);
            if (v120.u8[9] != 1)
            {
              v60 = v120.u8[0] != 84 && v120.u8[0] - 48 >= 0xA;
              if (!v60 || v120.u8[1] == 84 || v120.u8[1] - 48 <= 9 || v120.u8[3] == 84 || v120.u8[3] - 48 < 0xA)
              {
                goto LABEL_122;
              }
            }
          }

          if (++v56 == v54)
          {
            if (++v55 != v23)
            {
              goto LABEL_91;
            }

            break;
          }
        }
      }

      v61 = __p;
      v62 = v101;
      if (__p != v101)
      {
        v63 = v93;
LABEL_107:
        v64 = v61;
        while (1)
        {
          if ((*a5 & 1) == 0)
          {
            v65 = **v63;
            v66 = **v64;
            v67 = *(a5 + 8);
            strcpy(v120.i8, "FFFFFFFFF");
            sub_100035B80(v65, v66, &v120, v67);
            if (v120.u8[9] != 1)
            {
              v68 = v120.u8[0] != 84 && v120.u8[0] - 48 >= 0xA;
              if (!v68 || v120.u8[1] == 84 || v120.u8[1] - 48 <= 9 || v120.u8[3] == 84 || v120.u8[3] - 48 < 0xA)
              {
                goto LABEL_122;
              }
            }
          }

          if (++v64 == v62)
          {
            if (++v63 != v23)
            {
              goto LABEL_107;
            }

            break;
          }
        }
      }

      v22 = v93;
    }

    else
    {
      v120 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v121 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v70 = v93;
      do
      {
        v71 = sub_100033918(*v70);
        sub_10001911C(&v120, v71);
        ++v70;
      }

      while (v70 != v23);
      v95 = v120;
      v96 = v121;
      v22 = v93;
      if (!sub_1000350B0(&v95, &v106, &v103, v94 + 1, a5) || (sub_1000350B0(&v95, &v106, &__p, v94 + 1, a5) & 1) == 0)
      {
        goto LABEL_155;
      }
    }
  }

  v33 = v112;
  v32 = v113;
  v34 = v113 - v112;
  if (v21 == v25)
  {
    goto LABEL_137;
  }

  v93 = v22;
  if (v34 < 0x80 || (v110 - v109) < 0x80 || v94 > 0x63 || (v25 - v21) < 0x79)
  {
    if (v112 == v113)
    {
LABEL_62:
      v41 = v109;
      v92 = v110;
      v22 = v93;
      if (v109 == v110)
      {
        goto LABEL_137;
      }

LABEL_63:
      v42 = v21;
      while (1)
      {
        if ((*a5 & 1) == 0)
        {
          v43 = **v41;
          v44 = **v42;
          v45 = *(a5 + 8);
          strcpy(v120.i8, "FFFFFFFFF");
          sub_100035B80(v43, v44, &v120, v45);
          if (v120.u8[9] != 1)
          {
            v46 = v120.u8[0] != 84 && v120.u8[0] - 48 >= 0xA;
            if (!v46 || v120.u8[1] == 84 || v120.u8[1] - 48 <= 9 || v120.u8[3] == 84 || v120.u8[3] - 48 < 0xA)
            {
              break;
            }
          }
        }

        if (++v42 == v25)
        {
          ++v41;
          v22 = v93;
          if (v41 != v92)
          {
            goto LABEL_63;
          }

          goto LABEL_137;
        }
      }
    }

    else
    {
      v35 = v112;
LABEL_48:
      v36 = v21;
      while (1)
      {
        if ((*a5 & 1) == 0)
        {
          v37 = **v35;
          v38 = **v36;
          v39 = *(a5 + 8);
          strcpy(v120.i8, "FFFFFFFFF");
          sub_100035B80(v37, v38, &v120, v39);
          if (v120.u8[9] != 1)
          {
            v40 = v120.u8[0] != 84 && v120.u8[0] - 48 >= 0xA;
            if (!v40 || v120.u8[1] == 84 || v120.u8[1] - 48 <= 9 || v120.u8[3] == 84 || v120.u8[3] - 48 < 0xA)
            {
              break;
            }
          }
        }

        if (++v36 == v25)
        {
          if (++v35 != v32)
          {
            goto LABEL_48;
          }

          goto LABEL_62;
        }
      }
    }

LABEL_122:
    v69 = 0;
    *a5 = 1;
    v22 = v93;
    goto LABEL_184;
  }

  v120 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v121 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v72 = v21;
  do
  {
    v73 = sub_100033918(*v72);
    sub_10001911C(&v120, v73);
    ++v72;
  }

  while (v72 != v25);
  v95 = v120;
  v96 = v121;
  v22 = v93;
  if (!sub_1000350B0(&v95, &v112, &v97, v94 + 1, a5) || (sub_1000350B0(&v95, &v109, &v97, v94 + 1, a5) & 1) == 0)
  {
LABEL_155:
    v69 = 0;
    goto LABEL_184;
  }

LABEL_137:
  v74 = v22;
  if (v34 < 0x80 || v94 > 0x63 || (v104 - v103) < 0x79)
  {
    if (v33 != v32)
    {
      v75 = v103;
      v76 = v104;
      if (v103 != v104)
      {
LABEL_140:
        v77 = v75;
        while (1)
        {
          if ((*a5 & 1) == 0)
          {
            v78 = **v33;
            v79 = **v77;
            v80 = *(a5 + 8);
            strcpy(v120.i8, "FFFFFFFFF");
            sub_100035B80(v78, v79, &v120, v80);
            if (v120.u8[9] != 1)
            {
              v81 = v120.u8[0] != 84 && v120.u8[0] - 48 >= 0xA;
              if (!v81 || v120.u8[1] == 84 || v120.u8[1] - 48 <= 9 || v120.u8[3] == 84 || v120.u8[3] - 48 < 0xA)
              {
                goto LABEL_177;
              }
            }
          }

          if (++v77 == v76)
          {
            if (++v33 != v32)
            {
              goto LABEL_140;
            }

            break;
          }
        }
      }
    }
  }

  else if ((sub_1000350B0(&v117, &v112, &v103, v94 + 1, a5) & 1) == 0)
  {
    goto LABEL_182;
  }

  v83 = v109;
  v82 = v110;
  if ((v110 - v109) >= 0x80 && v94 <= 0x63 && (v101 - __p) >= 0x79)
  {
    if (sub_1000350B0(v115, &v109, &__p, v94 + 1, a5))
    {
LABEL_181:
      v69 = 1;
      goto LABEL_183;
    }

LABEL_182:
    v69 = 0;
    goto LABEL_183;
  }

  if (v109 == v110)
  {
    goto LABEL_181;
  }

  v84 = __p;
  v85 = v101;
  if (__p == v101)
  {
    goto LABEL_181;
  }

LABEL_162:
  v86 = v84;
  while (1)
  {
    if ((*a5 & 1) == 0)
    {
      v87 = **v83;
      v88 = **v86;
      v89 = *(a5 + 8);
      strcpy(v120.i8, "FFFFFFFFF");
      sub_100035B80(v87, v88, &v120, v89);
      if (v120.u8[9] != 1)
      {
        v90 = v120.u8[0] != 84 && v120.u8[0] - 48 >= 0xA;
        if (!v90 || v120.u8[1] == 84 || v120.u8[1] - 48 <= 9 || v120.u8[3] == 84 || v120.u8[3] - 48 < 0xA)
        {
          break;
        }
      }
    }

    if (++v86 == v85)
    {
      if (++v83 != v82)
      {
        goto LABEL_162;
      }

      goto LABEL_181;
    }
  }

LABEL_177:
  v69 = 0;
  *a5 = 1;
LABEL_183:
  v22 = v74;
LABEL_184:
  if (v21)
  {
    operator delete(v21);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v103)
  {
    operator delete(v103);
  }

  if (v22)
  {
    operator delete(v22);
  }

  if (v109)
  {
    operator delete(v109);
  }

  if (v112)
  {
    operator delete(v112);
  }

  return v69;
}

void sub_10003501C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000350B0(uint64_t a1, uint64_t **a2, uint64_t **a3, unint64_t a4, uint64_t a5)
{
  v8 = (*(a1 + 8) + *(a1 + 24)) * 0.5;
  v117 = *(a1 + 16);
  v9 = *(a1 + 16);
  v115[0] = *a1;
  v115[1] = v9;
  v116 = v115[0];
  v118 = v8;
  *(v115 + 1) = v8;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  __p = 0;
  v101 = 0;
  v102 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  for (i = *a2; i != a2[1]; ++i)
  {
    v12 = sub_100033CF0(&v116, *i);
    v13 = sub_100033CF0(v115, *i);
    if (v12 || v13)
    {
      if (v12 && v13)
      {
        v14 = &v106;
      }

      else
      {
        v14 = &v112;
      }

      if (v12)
      {
        v15 = v14;
      }

      else
      {
        v15 = &v109;
      }

      sub_100019324(v15, i);
    }
  }

  v16 = *a3;
  if (*a3 == a3[1])
  {
    v21 = 0;
  }

  else
  {
    do
    {
      v17 = sub_100033CF0(&v116, *v16);
      v18 = sub_100033CF0(v115, *v16);
      if (v17 || v18)
      {
        if (v17 && v18)
        {
          v19 = &v97;
        }

        else
        {
          v19 = &v103;
        }

        if (v17)
        {
          p_p = v19;
        }

        else
        {
          p_p = &__p;
        }

        sub_100019324(p_p, v16);
      }

      ++v16;
    }

    while (v16 != a3[1]);
    v21 = v97;
  }

  v22 = v106;
  v23 = v107;
  v94 = a4;
  if (v106 == v107)
  {
    v25 = v98;
  }

  else
  {
    v24 = v107 - v106;
    v25 = v98;
    if ((v107 - v106) < 0x80 || a4 > 0x63 || (v98 - v21) < 0x79)
    {
      if (v21 != v98)
      {
        v26 = v106;
        while (2)
        {
          v27 = v21;
          do
          {
            if ((*a5 & 1) == 0)
            {
              v28 = **v26;
              v29 = **v27;
              v30 = *(a5 + 8);
              strcpy(v119.i8, "FFFFFFFFF");
              sub_100035B80(v28, v29, &v119, v30);
              if (v119.u8[9] != 1)
              {
                v31 = v119.u8[0] != 84 && v119.u8[0] - 48 >= 0xA;
                if (!v31 || v119.u8[1] == 84 || v119.u8[1] - 48 <= 9 || v119.u8[3] == 84 || v119.u8[3] - 48 < 0xA)
                {
                  v69 = 0;
                  *a5 = 1;
                  goto LABEL_184;
                }
              }
            }

            ++v27;
          }

          while (v27 != v25);
          if (++v26 != v23)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v95 = 0u;
      v96 = 0u;
      v119 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v120 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v47 = v106;
      do
      {
        v48 = sub_100033918(*v22);
        sub_10001911C(&v119, v48);
        ++v22;
      }

      while (v22 != v23);
      v49 = v119;
      v50 = v120;
      if (v21 != v25)
      {
        v51 = v21;
        do
        {
          v52 = sub_100033918(*v51);
          sub_10001911C(&v119, v52);
          ++v51;
        }

        while (v51 != v25);
        v49 = v119;
        v50 = v120;
      }

      v95 = v49;
      v96 = v50;
      v22 = v47;
      if ((sub_1000345E8(v95.f64, &v106, &v97, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_155;
      }
    }

    v93 = v22;
    v53 = v103;
    v54 = v104;
    if ((v104 - v103) < 0x80 || (v101 - __p) < 0x80 || v94 > 0x63 || v24 < 0x79)
    {
      if (v103 != v104)
      {
        v55 = v93;
LABEL_91:
        v56 = v53;
        while (1)
        {
          if ((*a5 & 1) == 0)
          {
            v57 = **v55;
            v58 = **v56;
            v59 = *(a5 + 8);
            strcpy(v119.i8, "FFFFFFFFF");
            sub_100035B80(v57, v58, &v119, v59);
            if (v119.u8[9] != 1)
            {
              v60 = v119.u8[0] != 84 && v119.u8[0] - 48 >= 0xA;
              if (!v60 || v119.u8[1] == 84 || v119.u8[1] - 48 <= 9 || v119.u8[3] == 84 || v119.u8[3] - 48 < 0xA)
              {
                goto LABEL_122;
              }
            }
          }

          if (++v56 == v54)
          {
            if (++v55 != v23)
            {
              goto LABEL_91;
            }

            break;
          }
        }
      }

      v61 = __p;
      v62 = v101;
      if (__p != v101)
      {
        v63 = v93;
LABEL_107:
        v64 = v61;
        while (1)
        {
          if ((*a5 & 1) == 0)
          {
            v65 = **v63;
            v66 = **v64;
            v67 = *(a5 + 8);
            strcpy(v119.i8, "FFFFFFFFF");
            sub_100035B80(v65, v66, &v119, v67);
            if (v119.u8[9] != 1)
            {
              v68 = v119.u8[0] != 84 && v119.u8[0] - 48 >= 0xA;
              if (!v68 || v119.u8[1] == 84 || v119.u8[1] - 48 <= 9 || v119.u8[3] == 84 || v119.u8[3] - 48 < 0xA)
              {
                goto LABEL_122;
              }
            }
          }

          if (++v64 == v62)
          {
            if (++v63 != v23)
            {
              goto LABEL_107;
            }

            break;
          }
        }
      }

      v22 = v93;
    }

    else
    {
      v119 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v120 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v70 = v93;
      do
      {
        v71 = sub_100033918(*v70);
        sub_10001911C(&v119, v71);
        ++v70;
      }

      while (v70 != v23);
      v95 = v119;
      v96 = v120;
      v22 = v93;
      if (!sub_1000345E8(v95.f64, &v106, &v103, v94 + 1, a5) || (sub_1000345E8(v95.f64, &v106, &__p, v94 + 1, a5) & 1) == 0)
      {
        goto LABEL_155;
      }
    }
  }

  v33 = v112;
  v32 = v113;
  v34 = v113 - v112;
  if (v21 == v25)
  {
    goto LABEL_137;
  }

  v93 = v22;
  if (v34 < 0x80 || (v110 - v109) < 0x80 || v94 > 0x63 || (v25 - v21) < 0x79)
  {
    if (v112 == v113)
    {
LABEL_62:
      v41 = v109;
      v92 = v110;
      v22 = v93;
      if (v109 == v110)
      {
        goto LABEL_137;
      }

LABEL_63:
      v42 = v21;
      while (1)
      {
        if ((*a5 & 1) == 0)
        {
          v43 = **v41;
          v44 = **v42;
          v45 = *(a5 + 8);
          strcpy(v119.i8, "FFFFFFFFF");
          sub_100035B80(v43, v44, &v119, v45);
          if (v119.u8[9] != 1)
          {
            v46 = v119.u8[0] != 84 && v119.u8[0] - 48 >= 0xA;
            if (!v46 || v119.u8[1] == 84 || v119.u8[1] - 48 <= 9 || v119.u8[3] == 84 || v119.u8[3] - 48 < 0xA)
            {
              break;
            }
          }
        }

        if (++v42 == v25)
        {
          ++v41;
          v22 = v93;
          if (v41 != v92)
          {
            goto LABEL_63;
          }

          goto LABEL_137;
        }
      }
    }

    else
    {
      v35 = v112;
LABEL_48:
      v36 = v21;
      while (1)
      {
        if ((*a5 & 1) == 0)
        {
          v37 = **v35;
          v38 = **v36;
          v39 = *(a5 + 8);
          strcpy(v119.i8, "FFFFFFFFF");
          sub_100035B80(v37, v38, &v119, v39);
          if (v119.u8[9] != 1)
          {
            v40 = v119.u8[0] != 84 && v119.u8[0] - 48 >= 0xA;
            if (!v40 || v119.u8[1] == 84 || v119.u8[1] - 48 <= 9 || v119.u8[3] == 84 || v119.u8[3] - 48 < 0xA)
            {
              break;
            }
          }
        }

        if (++v36 == v25)
        {
          if (++v35 != v32)
          {
            goto LABEL_48;
          }

          goto LABEL_62;
        }
      }
    }

LABEL_122:
    v69 = 0;
    *a5 = 1;
    v22 = v93;
    goto LABEL_184;
  }

  v119 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v120 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v72 = v21;
  do
  {
    v73 = sub_100033918(*v72);
    sub_10001911C(&v119, v73);
    ++v72;
  }

  while (v72 != v25);
  v95 = v119;
  v96 = v120;
  v22 = v93;
  if (!sub_1000345E8(v95.f64, &v112, &v97, v94 + 1, a5) || (sub_1000345E8(v95.f64, &v109, &v97, v94 + 1, a5) & 1) == 0)
  {
LABEL_155:
    v69 = 0;
    goto LABEL_184;
  }

LABEL_137:
  v74 = v22;
  if (v34 < 0x80 || v94 > 0x63 || (v104 - v103) < 0x79)
  {
    if (v33 != v32)
    {
      v75 = v103;
      v76 = v104;
      if (v103 != v104)
      {
LABEL_140:
        v77 = v75;
        while (1)
        {
          if ((*a5 & 1) == 0)
          {
            v78 = **v33;
            v79 = **v77;
            v80 = *(a5 + 8);
            strcpy(v119.i8, "FFFFFFFFF");
            sub_100035B80(v78, v79, &v119, v80);
            if (v119.u8[9] != 1)
            {
              v81 = v119.u8[0] != 84 && v119.u8[0] - 48 >= 0xA;
              if (!v81 || v119.u8[1] == 84 || v119.u8[1] - 48 <= 9 || v119.u8[3] == 84 || v119.u8[3] - 48 < 0xA)
              {
                goto LABEL_177;
              }
            }
          }

          if (++v77 == v76)
          {
            if (++v33 != v32)
            {
              goto LABEL_140;
            }

            break;
          }
        }
      }
    }
  }

  else if ((sub_1000345E8(&v116, &v112, &v103, v94 + 1, a5) & 1) == 0)
  {
    goto LABEL_182;
  }

  v83 = v109;
  v82 = v110;
  if ((v110 - v109) >= 0x80 && v94 <= 0x63 && (v101 - __p) >= 0x79)
  {
    if (sub_1000345E8(v115, &v109, &__p, v94 + 1, a5))
    {
LABEL_181:
      v69 = 1;
      goto LABEL_183;
    }

LABEL_182:
    v69 = 0;
    goto LABEL_183;
  }

  if (v109 == v110)
  {
    goto LABEL_181;
  }

  v84 = __p;
  v85 = v101;
  if (__p == v101)
  {
    goto LABEL_181;
  }

LABEL_162:
  v86 = v84;
  while (1)
  {
    if ((*a5 & 1) == 0)
    {
      v87 = **v83;
      v88 = **v86;
      v89 = *(a5 + 8);
      strcpy(v119.i8, "FFFFFFFFF");
      sub_100035B80(v87, v88, &v119, v89);
      if (v119.u8[9] != 1)
      {
        v90 = v119.u8[0] != 84 && v119.u8[0] - 48 >= 0xA;
        if (!v90 || v119.u8[1] == 84 || v119.u8[1] - 48 <= 9 || v119.u8[3] == 84 || v119.u8[3] - 48 < 0xA)
        {
          break;
        }
      }
    }

    if (++v86 == v85)
    {
      if (++v83 != v82)
      {
        goto LABEL_162;
      }

      goto LABEL_181;
    }
  }

LABEL_177:
  v69 = 0;
  *a5 = 1;
LABEL_183:
  v22 = v74;
LABEL_184:
  if (v21)
  {
    operator delete(v21);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v103)
  {
    operator delete(v103);
  }

  if (v22)
  {
    operator delete(v22);
  }

  if (v109)
  {
    operator delete(v109);
  }

  if (v112)
  {
    operator delete(v112);
  }

  return v69;
}

void sub_100035AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

void sub_100035B80(double **a1, double **a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a3[9])
  {
    return;
  }

  v8 = 0;
  v9 = 0;
  __p = 0;
  v133 = 0;
  v134 = 0;
  v131[0] = a3;
  v131[1] = a1;
  v131[2] = a2;
  v135 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v143 = 0;
  v144 = 0;
  v10 = *a1;
  v11 = a1[1];
  v12 = v11 - *a1;
  v145 = 0;
  if (v12 >= 0x11)
  {
    *&v136 = 0;
    *(&v136 + 1) = -1;
    v137 = -1;
    sub_10000E174(&v146, v10, v11, &v136);
    v9 = v146;
    v8 = v147;
    if (v146 != v147)
    {
      __asm { FMOV            V0.2D, #1.0 }

      v17 = v146;
      do
      {
        v18 = v17[2];
        v19 = v17[3];
        v20 = vabsq_f64(v18);
        v21 = vsubq_f64(v18, vmulq_f64(vbslq_s8(vcgtq_f64(_Q0, v20), _Q0, v20), xmmword_100092570));
        v22 = vabsq_f64(v19);
        v17[2] = v21;
        v17[3] = vaddq_f64(v19, vmulq_f64(vbslq_s8(vcgtq_f64(_Q0, v22), _Q0, v22), xmmword_100092570));
        v17 = (v17 + 120);
      }

      while (v17 != v8);
    }
  }

  v23 = 0;
  v24 = 0;
  v144 = 0;
  v25 = *a2;
  v26 = a2[1];
  if ((v26 - *a2) >= 0x11)
  {
    *&v136 = 1;
    *(&v136 + 1) = -1;
    v137 = -1;
    sub_10000E174(&v143, v25, v26, &v136);
    v24 = v143;
    v23 = v144;
    if (v143 != v144)
    {
      __asm { FMOV            V0.2D, #1.0 }

      v28 = v143;
      do
      {
        v29 = v28[2];
        v30 = v28[3];
        v31 = vabsq_f64(v29);
        v32 = vsubq_f64(v29, vmulq_f64(vbslq_s8(vcgtq_f64(_Q0, v31), _Q0, v31), xmmword_100092570));
        v33 = vabsq_f64(v30);
        v28[2] = v32;
        v28[3] = vaddq_f64(v30, vmulq_f64(vbslq_s8(vcgtq_f64(_Q0, v33), _Q0, v33), xmmword_100092570));
        v28 = (v28 + 120);
      }

      while (v28 != v23);
    }
  }

  LODWORD(v136) = 0;
  *(&v136 + 1) = a1;
  LODWORD(v137) = 1;
  v138 = a2;
  v139 = a4;
  v140 = &v135;
  p_p = &__p;
  v142 = v131;
  v130 = a4;
  if (0xEEEEEEEEEEEEEEEFLL * ((v8 - v9) >> 3) < 0x11 || 0xEEEEEEEEEEEEEEEFLL * ((v23 - v24) >> 3) < 0x11)
  {
    if (v9 != v8)
    {
      v36 = v9;
      while (1)
      {
        v37 = v24;
        if (v24 != v23)
        {
          break;
        }

LABEL_27:
        v36 += 120;
        if (v36 == v8)
        {
          goto LABEL_28;
        }
      }

      while ((sub_100037714(&v136, v36, v37) & 1) != 0)
      {
        v37 += 120;
        if (v37 == v23)
        {
          goto LABEL_27;
        }
      }
    }
  }

  else
  {
    memset(v151, 0, sizeof(v151));
    v152[0] = v9;
    memset(v150, 0, sizeof(v150));
    v149[0] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v149[1] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    if (v9 != v8)
    {
      v34 = v9;
      do
      {
        sub_10001911C(v149, v34 + 2);
        sub_100019324(v151, v152);
        v34 = (v34 + 120);
        v152[0] = v34;
      }

      while (v34 != v8);
    }

    v152[0] = v24;
    if (v24 != v23)
    {
      v35 = v24;
      do
      {
        sub_10001911C(v149, v35 + 2);
        sub_100019324(v150, v152);
        v35 = (v35 + 120);
        v152[0] = v35;
      }

      while (v35 != v23);
    }

    sub_1000370D4(v149[0].i64, v151, v150, 0, &v136);
    if (v150[0])
    {
      operator delete(v150[0]);
    }

    if (v151[0])
    {
      operator delete(v151[0]);
    }
  }

LABEL_28:
  if (v24)
  {
    operator delete(v24);
  }

  if (v9)
  {
    operator delete(v9);
  }

  v38 = __p;
  if (a3[9])
  {
    goto LABEL_254;
  }

  v39 = *a3;
  v40 = v133;
  if (__p == v133)
  {
    v41 = *a1;
    if (v39 != 70 && a3[3] != 70)
    {
LABEL_53:
      v39 = *a3;
      v40 = v133;
      goto LABEL_54;
    }

    if (v41 != a1[1])
    {
      v149[0] = *v41;
      v43 = *a2;
      v42 = a2[1];
      if ((v42 - *a2) >= 0x40)
      {
        v136 = 0uLL;
        LOBYTE(v137) = 0;
        if (v43 + 2 != v42)
        {
          do
          {
            if (!sub_100016EF0(v149[0].i64, v43, v43 + 2, &v136))
            {
              break;
            }

            v44 = v43 + 4;
            v43 += 2;
          }

          while (v44 != v42);
          if ((v137 & 1) == 0)
          {
            if (DWORD2(v136) && HIDWORD(v136) && SDWORD2(v136) >= 1)
            {
              if (!(v136 + DWORD1(v136)))
              {
                goto LABEL_52;
              }
            }

            else if (!v136)
            {
              goto LABEL_52;
            }

            if (*a3 - 58 <= 0xFFFFFFF7)
            {
              *a3 = 50;
            }

            if (a3[3] - 58 <= 0xFFFFFFF6)
            {
              a3[3] = 49;
            }
          }
        }
      }
    }

LABEL_52:
    v38 = __p;
    if (a3[9])
    {
      goto LABEL_254;
    }

    goto LABEL_53;
  }

LABEL_54:
  if (v38 == v40)
  {
    v45 = *a2;
    if (v39 != 70 && a3[1] != 70)
    {
LABEL_74:
      v38 = __p;
      v40 = v133;
      goto LABEL_75;
    }

    if (v45 != a2[1])
    {
      v149[0] = *v45;
      v47 = *a1;
      v46 = a1[1];
      if ((v46 - *a1) >= 0x40)
      {
        v136 = 0uLL;
        LOBYTE(v137) = 0;
        if (v47 + 2 != v46)
        {
          do
          {
            if (!sub_100016EF0(v149[0].i64, v47, v47 + 2, &v136))
            {
              break;
            }

            v48 = v47 + 4;
            v47 += 2;
          }

          while (v48 != v46);
          if ((v137 & 1) == 0)
          {
            if (DWORD2(v136) && HIDWORD(v136) && SDWORD2(v136) >= 1)
            {
              if (!(v136 + DWORD1(v136)))
              {
                goto LABEL_73;
              }
            }

            else if (!v136)
            {
              goto LABEL_73;
            }

            if (*a3 - 58 <= 0xFFFFFFF7)
            {
              *a3 = 50;
            }

            if (a3[1] - 58 <= 0xFFFFFFF6)
            {
              a3[1] = 49;
            }
          }
        }
      }
    }

LABEL_73:
    if (a3[9])
    {
      goto LABEL_253;
    }

    goto LABEL_74;
  }

LABEL_75:
  if (v38 == v40)
  {
    goto LABEL_253;
  }

  if (*a3 != 70 && a3[3] != 70)
  {
LABEL_78:
    if (a3[1] != 70)
    {
      goto LABEL_253;
    }

    goto LABEL_79;
  }

  sub_100038BBC(v38, v40, 126 - 2 * __clz(0x8F5C28F5C28F5C29 * ((v40 - v38) >> 3)), 1);
  v38 = __p;
  v40 = v133;
  v78 = a3[9];
  if (__p == v133)
  {
    goto LABEL_224;
  }

  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = *a3;
  v84 = a3[3];
  v85 = __p;
  do
  {
    v86 = *(v85 + 10);
    if ((v86 - 5) < 0xFFFFFFFC)
    {
      goto LABEL_202;
    }

    v87 = !v80 || *(v85 + 7) != *(v80 + 1) || *(v85 + 8) != *(v80 + 2);
    v80 = v85 + 48;
    if (v81)
    {
      if (v82)
      {
        if (v87)
        {
          v82 = 0;
          if ((v79 & 1) == 0)
          {
            goto LABEL_196;
          }

          goto LABEL_192;
        }

        if (*(v81 + 7) == *(v85 + 7) && *(v81 + 8) == *(v85 + 8))
        {
          v88 = *(v81 + 9);
          v89 = *(v85 + 9);
          if (v88 != v89)
          {
            v90 = *(v85 + 11);
            if (v90 == 0.0)
            {
              if (v88 + 1 != v89)
              {
                goto LABEL_182;
              }
            }

            else
            {
              if ((*&v90 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_182;
              }

              v91 = fabs(v90);
              v92 = v91 >= 1.0 ? v91 : 1.0;
              v93 = v88 + 1;
              if (v91 > v92 * 2.22044605e-16 || v93 != v89)
              {
                goto LABEL_182;
              }
            }
          }

          v116 = v78;
          v124 = v83;
          v128 = v84;
          v120 = v79;
          v95 = sub_10000B2C4(*v81, *(v81 + 1), *v85, *(v85 + 1));
          v79 = v120;
          v83 = v124;
          v84 = v128;
          v78 = v116;
          if (v86 == 1 && v95)
          {
            v82 = 1;
            if ((v120 & 1) == 0)
            {
              goto LABEL_201;
            }

            goto LABEL_186;
          }
        }
      }

LABEL_182:
      if ((v79 & 1) == 0)
      {
        v82 = 0;
        goto LABEL_196;
      }

      if (v87 || *(v81 + 7) != *(v85 + 7))
      {
        v82 = 0;
        goto LABEL_192;
      }

      v82 = 0;
      if (*(v81 + 8) != *(v85 + 8))
      {
LABEL_192:
        if ((v83 - 58) <= 0xFFFFFFF7)
        {
          v83 = 50;
          *a3 = 50;
        }

        v79 = 0;
        if ((v84 - 58) <= 0xFFFFFFF6)
        {
          v84 = 49;
          a3[3] = 49;
        }

        goto LABEL_196;
      }

LABEL_186:
      v96 = *(v81 + 9);
      v97 = *(v85 + 9);
      if (v96 == v97)
      {
LABEL_214:
        v117 = v82;
        v121 = v79;
        v125 = v83;
        v129 = v84;
        v103 = v78;
        if (sub_10000B2C4(*v81, *(v81 + 1), *v85, *(v85 + 1)))
        {
          v78 = v103;
          v84 = v129;
          v79 = v121;
          v82 = v117;
          if (v86 == 2)
          {
            v83 = v125;
LABEL_198:
            if (*(v85 + 30) != 2)
            {
              v79 = 1;
            }

            goto LABEL_201;
          }

          v79 = 0;
          v83 = v125;
          goto LABEL_196;
        }

        v78 = v103;
        v83 = v125;
        v84 = v129;
        v82 = v117;
        goto LABEL_192;
      }

      v98 = *(v85 + 11);
      if (v98 == 0.0)
      {
        if (v96 + 1 == v97)
        {
          goto LABEL_214;
        }
      }

      else if ((*&v98 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v99 = fabs(v98);
        v100 = v99 >= 1.0 ? v99 : 1.0;
        v101 = v96 + 1;
        if (v99 <= v100 * 2.22044605e-16 && v101 == v97)
        {
          goto LABEL_214;
        }
      }

      goto LABEL_192;
    }

LABEL_196:
    if (v86 == 1)
    {
      v82 = 1;
    }

    else if (v86 == 2)
    {
      goto LABEL_198;
    }

LABEL_201:
    v81 = v85;
LABEL_202:
    if (v78)
    {
      goto LABEL_224;
    }

    v85 += 200;
  }

  while (v85 != v40);
  if (v79)
  {
    if ((v83 - 58) <= 0xFFFFFFF7)
    {
      *a3 = 50;
    }

    if ((v84 - 58) <= 0xFFFFFFF6)
    {
      a3[3] = 49;
    }
  }

LABEL_224:
  if (v78)
  {
    goto LABEL_253;
  }

  v104 = *a3;
  v105 = a3[3];
  if (v104 != 70 && v105 != 70)
  {
    goto LABEL_78;
  }

  *&v136 = a1;
  *(&v136 + 1) = a2;
  LOBYTE(v137) = v78;
  v138 = a3;
  v139 = v130;
  if (v105 == 70)
  {
    v106 = 2;
  }

  else
  {
    v106 = 6;
  }

  if (v104 == 70)
  {
    v107 = v106;
  }

  else
  {
    v107 = v106 + 1;
  }

  LODWORD(v140) = v107;
  sub_1000368AC(&v136, v38, v40);
  if ((a3[9] & 1) != 0 || *a3 != 70 && a3[1] != 70)
  {
    goto LABEL_253;
  }

  v38 = __p;
  v40 = v133;
LABEL_79:
  v49 = 126 - 2 * __clz(0x8F5C28F5C28F5C29 * ((v40 - v38) >> 3));
  if (v40 == v38)
  {
    v50 = 0;
  }

  else
  {
    v50 = v49;
  }

  sub_10003C274(v38, v40, v50, 1);
  v51 = __p;
  v52 = v133;
  v53 = a3[9];
  if (__p == v133)
  {
    if ((v53 & 1) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_253;
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = *a3;
  v59 = a3[1];
  v60 = __p;
  while (2)
  {
    v61 = *(v60 + 30);
    if ((v61 - 5) >= 0xFFFFFFFC)
    {
      v62 = !v54 || *(v60 + 17) != *(v54 + 1) || *(v60 + 18) != *(v54 + 2);
      v54 = v60 + 128;
      if (!v55)
      {
        goto LABEL_128;
      }

      if (v57)
      {
        if (v62)
        {
          v57 = 0;
          if ((v56 & 1) == 0)
          {
            goto LABEL_128;
          }

LABEL_124:
          if ((v58 - 58) <= 0xFFFFFFF7)
          {
            v58 = 50;
            *a3 = 50;
          }

          v56 = 0;
          if ((v59 - 58) <= 0xFFFFFFF6)
          {
            v59 = 49;
            a3[1] = 49;
          }

LABEL_128:
          if (v61 == 1)
          {
            v57 = 1;
          }

          else if (v61 == 2)
          {
            goto LABEL_130;
          }

          goto LABEL_133;
        }

        if (*(v55 + 17) == *(v60 + 17) && *(v55 + 18) == *(v60 + 18))
        {
          v63 = *(v55 + 19);
          v64 = *(v60 + 19);
          if (v63 == v64)
          {
            goto LABEL_109;
          }

          v65 = *(v60 + 21);
          if (v65 == 0.0)
          {
            if (v63 + 1 != v64)
            {
              goto LABEL_113;
            }

LABEL_109:
            v113 = *(v60 + 19);
            v114 = v51;
            v69 = v53;
            v122 = v59;
            v126 = v58;
            v118 = v56;
            v112 = *(v55 + 19);
            v70 = sub_10000B2C4(*v55, *(v55 + 1), *v60, *(v60 + 1));
            v72 = v112;
            v71 = v113;
            v56 = v118;
            v59 = v122;
            v58 = v126;
            v53 = v69;
            v51 = v114;
            if (v61 == 1 && v70)
            {
              v57 = 1;
              if ((v118 & 1) == 0)
              {
                goto LABEL_133;
              }

              goto LABEL_118;
            }
          }

          else if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v66 = fabs(v65);
            v67 = v66 >= 1.0 ? v66 : 1.0;
            if (v66 <= v67 * 2.22044605e-16 && v63 + 1 == v64)
            {
              goto LABEL_109;
            }
          }
        }
      }

LABEL_113:
      if ((v56 & 1) == 0)
      {
        v57 = 0;
        goto LABEL_128;
      }

      if (v62 || *(v55 + 17) != *(v60 + 17) || *(v55 + 18) != *(v60 + 18))
      {
        v57 = 0;
        goto LABEL_124;
      }

      v57 = 0;
      v72 = *(v55 + 19);
      v71 = *(v60 + 19);
LABEL_118:
      if (v72 != v71)
      {
        v73 = *(v60 + 21);
        if (v73 == 0.0)
        {
          if (v72 + 1 != v71)
          {
            goto LABEL_124;
          }
        }

        else
        {
          if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_124;
          }

          v74 = fabs(v73);
          v75 = v74 >= 1.0 ? v74 : 1.0;
          if (v74 > v75 * 2.22044605e-16 || v72 + 1 != v71)
          {
            goto LABEL_124;
          }
        }
      }

      v119 = v56;
      v123 = v59;
      v127 = v58;
      v115 = v53;
      v77 = v51;
      if (!sub_10000B2C4(*v55, *(v55 + 1), *v60, *(v60 + 1)))
      {
        v51 = v77;
        v53 = v115;
        v59 = v123;
        v58 = v127;
        goto LABEL_124;
      }

      v51 = v77;
      v53 = v115;
      v59 = v123;
      if (v61 != 2)
      {
        v56 = 0;
        v58 = v127;
        goto LABEL_128;
      }

      v58 = v127;
      v56 = v119;
LABEL_130:
      if (*(v60 + 10) != 2)
      {
        v56 = 1;
      }

LABEL_133:
      v55 = v60;
    }

    if (v53)
    {
      goto LABEL_253;
    }

    v60 += 200;
    if (v60 != v52)
    {
      continue;
    }

    break;
  }

  if (v56)
  {
    if ((v58 - 58) <= 0xFFFFFFF7)
    {
      *a3 = 50;
    }

    if ((v59 - 58) <= 0xFFFFFFF6)
    {
      a3[1] = 49;
    }
  }

LABEL_244:
  v108 = *a3;
  v109 = a3[1];
  if (v108 == 70 || v109 == 70)
  {
    *&v136 = a2;
    *(&v136 + 1) = a1;
    LOBYTE(v137) = v53;
    v138 = a3;
    v139 = v130;
    if (v109 == 70)
    {
      v110 = 2;
    }

    else
    {
      v110 = 6;
    }

    if (v108 == 70)
    {
      v111 = v110;
    }

    else
    {
      v111 = v110 + 1;
    }

    LODWORD(v140) = v111;
    sub_100036CC0(&v136, v51, v52);
  }

LABEL_253:
  v38 = __p;
LABEL_254:
  if (v38)
  {
    v133 = v38;
    operator delete(v38);
  }
}

void sub_100036844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p)
{
  v37 = *(v35 - 168);
  if (v37)
  {
    operator delete(v37);
  }

  v38 = *(v35 - 144);
  if (v38)
  {
    operator delete(v38);
  }

  if (v34)
  {
    operator delete(v34);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000368AC(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    v6 = a2[8];
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = v6 + 1;
      do
      {
        result = sub_10003C118(v5);
        --v7;
      }

      while (v7);
    }

    v8 = v4 + 25;
    if (v4 + 25 == a3)
    {
      v9 = v4;
LABEL_70:
      v35 = *(v5 + 40);
      if ((~v35 & 6) != 0)
      {
        if (v9 == a3)
        {
          goto LABEL_92;
        }

        LOBYTE(v36) = 0;
        v37 = 0;
        v38 = v9;
        do
        {
          while (1)
          {
            v39 = *(v38 + 10);
            if (v39 != 2)
            {
              break;
            }

            if (*(v38 + 30) != 2)
            {
              goto LABEL_94;
            }

            v37 = 1;
            v17 = v38 == v4;
            v38 += 25;
            if (v17)
            {
              goto LABEL_84;
            }
          }

          if (v39 != 1)
          {
            goto LABEL_94;
          }

          v36 = *(v38 + 30);
          if (v36 != 1)
          {
            goto LABEL_94;
          }

          v17 = v38 == v4;
          v38 += 25;
        }

        while (!v17);
        if ((v37 & 1) == 0)
        {
          goto LABEL_89;
        }

        LOBYTE(v36) = 1;
LABEL_84:
        v40 = *(v5 + 24);
        if (*v40 - 58 <= 0xFFFFFFF7)
        {
          *v40 = 50;
          v35 = *(v5 + 40);
          v40 = *(v5 + 24);
        }

        v41 = v35 | 1;
        *(v5 + 40) = v41;
        if (v40[3] - 58 <= 0xFFFFFFF6)
        {
          v40[3] = 49;
          v41 = *(v5 + 40);
        }

        v35 = v41 | 4;
        if (v36)
        {
LABEL_89:
          v35 |= 2u;
        }

        *(v5 + 40) = v35;
        if (v35 != 7)
        {
LABEL_92:
          v42 = *(*(v5 + 24) + 9);
        }

        else
        {
          v42 = 1;
        }

        *(v5 + 16) = v42 & 1;
      }

LABEL_94:
      v43 = v9[8];
      if (v43 <= -2)
      {
        v44 = v43 + 1;
        do
        {
          result = sub_10003C118(v5);
          v31 = __CFADD__(v44++, 1);
        }

        while (!v31);
      }
    }

    else
    {
      v9 = v4;
      while (1)
      {
        v4 = v8;
        if (v9[7] == v9[32])
        {
          v10 = v9[8];
          v11 = v9[33];
          if (v10 != v11)
          {
            v12 = *(v5 + 40);
            if ((~v12 & 6) != 0)
            {
              LOBYTE(v13) = 0;
              v14 = 0;
              v15 = v9;
              do
              {
                while (1)
                {
                  v16 = *(v15 + 10);
                  if (v16 != 2)
                  {
                    break;
                  }

                  if (*(v15 + 30) != 2)
                  {
                    goto LABEL_63;
                  }

                  v14 = 1;
                  v17 = v15 == v9;
                  v15 += 25;
                  if (v17)
                  {
                    goto LABEL_22;
                  }
                }

                if (v16 != 1)
                {
                  goto LABEL_63;
                }

                v13 = *(v15 + 30);
                if (v13 != 1)
                {
                  goto LABEL_63;
                }

                v17 = v15 == v9;
                v15 += 25;
              }

              while (!v17);
              if ((v14 & 1) == 0)
              {
                goto LABEL_27;
              }

              LOBYTE(v13) = 1;
LABEL_22:
              v18 = *(v5 + 24);
              if (*v18 - 58 <= 0xFFFFFFF7)
              {
                *v18 = 50;
                v12 = *(v5 + 40);
                v18 = *(v5 + 24);
              }

              v19 = v12 | 1;
              *(v5 + 40) = v19;
              if (v18[3] - 58 <= 0xFFFFFFF6)
              {
                v18[3] = 49;
                v19 = *(v5 + 40);
              }

              v12 = v19 | 4;
              if (v13)
              {
LABEL_27:
                v12 |= 2u;
              }

              *(v5 + 40) = v12;
              if (v12 == 7)
              {
                v20 = 1;
              }

              else
              {
                v20 = *(*(v5 + 24) + 9);
              }

              *(v5 + 16) = v20 & 1;
              v10 = v9[8];
              v11 = v9[33];
            }

LABEL_63:
            if (v10 + 1 < v11)
            {
              v34 = ~v10 + v11;
              do
              {
                result = sub_10003C118(v5);
                --v34;
              }

              while (v34);
            }
          }
        }

        else
        {
          v21 = *(v5 + 40);
          if ((~v21 & 6) != 0)
          {
            LOBYTE(v22) = 0;
            v23 = 0;
            v24 = v9;
            do
            {
              while (1)
              {
                v25 = *(v24 + 10);
                if (v25 != 2)
                {
                  break;
                }

                if (*(v24 + 30) != 2)
                {
                  goto LABEL_53;
                }

                v23 = 1;
                v17 = v24 == v9;
                v24 += 25;
                if (v17)
                {
                  goto LABEL_43;
                }
              }

              if (v25 != 1)
              {
                goto LABEL_53;
              }

              v22 = *(v24 + 30);
              if (v22 != 1)
              {
                goto LABEL_53;
              }

              v17 = v24 == v9;
              v24 += 25;
            }

            while (!v17);
            if ((v23 & 1) == 0)
            {
              goto LABEL_48;
            }

            LOBYTE(v22) = 1;
LABEL_43:
            v26 = *(v5 + 24);
            if (*v26 - 58 <= 0xFFFFFFF7)
            {
              *v26 = 50;
              v21 = *(v5 + 40);
              v26 = *(v5 + 24);
            }

            v27 = v21 | 1;
            *(v5 + 40) = v27;
            if (v26[3] - 58 <= 0xFFFFFFF6)
            {
              v26[3] = 49;
              v27 = *(v5 + 40);
            }

            v21 = v27 | 4;
            if (v22)
            {
LABEL_48:
              v21 |= 2u;
            }

            *(v5 + 40) = v21;
            if (v21 == 7)
            {
              v28 = 1;
            }

            else
            {
              v28 = *(*(v5 + 24) + 9);
            }

            *(v5 + 16) = v28 & 1;
          }

LABEL_53:
          v29 = v9[8];
          if (v29 <= -2)
          {
            v30 = v29 + 1;
            do
            {
              result = sub_10003C118(v5);
              v31 = __CFADD__(v30++, 1);
            }

            while (!v31);
          }

          v32 = v9[33];
          if ((v32 & 0x8000000000000000) == 0)
          {
            v33 = v32 + 1;
            do
            {
              result = sub_10003C118(v5);
              --v33;
            }

            while (v33);
          }
        }

        if (*(v5 + 16))
        {
          break;
        }

        v9 += 25;
        v8 = v4 + 25;
        if (v4 + 25 == a3)
        {
          goto LABEL_70;
        }
      }
    }
  }

  return result;
}