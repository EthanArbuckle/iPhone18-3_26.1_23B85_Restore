@interface SGEventGeocode
+ (BOOL)isGeocodeCandidate:(id)candidate;
+ (BOOL)isGeocodeCandidateLocation:(id)location forEvent:(id)event;
+ (BOOL)locationIsAirport:(id)airport;
+ (BOOL)locationIsGeocoded:(id)geocoded;
+ (id)_serialQueue;
+ (id)addressStringFromPIRStructuredAddress:(id)address;
+ (id)appendToAddress:(id)address addressComponentToAppend:(id)append withSeparator:(id)separator;
+ (id)dateForUTCDate:(id)date withTimeZone:(id)zone;
+ (id)geocodeEvent:(id)event;
+ (id)pirResultFromData:(id)data withDistance:(double)distance fromCoordinates:(id)coordinates;
+ (id)pirResultWithHighestScoreFromData:(id)data;
+ (id)poiCategoriesFromString:(id)string;
+ (void)geocodeAddress:(id)address withCallback:(id)callback;
+ (void)geocodeAddressUsingPIR:(id)r withCallback:(id)callback;
+ (void)geocodeAddressWithCanonicalSearch:(id)search withCallback:(id)callback;
+ (void)geocodeEvent:(id)event withCallback:(id)callback;
+ (void)geocodeLocation:(id)location usingMode:(unint64_t)mode withGeoFilters:(id)filters withCallback:(id)callback;
+ (void)geocodePOIWithName:(id)name ofTypes:(id)types inRegion:(id)region withCallback:(id)callback;
@end

@implementation SGEventGeocode

+ (id)poiCategoriesFromString:(id)string
{
  v37 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  context = objc_autoreleasePoolPush();
  v27 = stringCopy;
  v4 = [stringCopy componentsSeparatedByString:{@", "}];
  v5 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    v28 = *MEMORY[0x1E69A1800];
    v29 = *MEMORY[0x1E69A1868];
    v30 = *MEMORY[0x1E69A17C0];
    v31 = *MEMORY[0x1E69A1740];
    v10 = *MEMORY[0x1E69A16B8];
    v11 = *MEMORY[0x1E69A1880];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v14 = [v13 isEqualToString:@"restaurant"];
        v15 = v11;
        if (v14)
        {
          goto LABEL_21;
        }

        v16 = [v13 isEqualToString:@"airport"];
        v15 = v10;
        if (v16)
        {
          goto LABEL_21;
        }

        v17 = [v13 isEqualToString:@"car-rental"];
        v15 = v31;
        if ((v17 & 1) == 0)
        {
          v18 = [v13 isEqualToString:@"hotel"];
          v15 = v30;
          if ((v18 & 1) == 0)
          {
            v19 = [v13 isEqualToString:@"public-transport"];
            v15 = v29;
            if ((v19 & 1) == 0)
            {
              v20 = [v13 isEqualToString:@"movie-theater"];
              v15 = v28;
              if (!v20)
              {
                continue;
              }
            }
          }
        }

LABEL_21:
        v21 = v15;
        if (v21)
        {
          v22 = v21;
          [v5 addObject:v21];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  v23 = [v5 copy];
  objc_autoreleasePoolPop(context);

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (void)geocodeEvent:(id)event withCallback:(id)callback
{
  callbackCopy = callback;
  v7 = [self geocodeEvent:event];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__SGEventGeocode_geocodeEvent_withCallback___block_invoke;
  v9[3] = &unk_1E7EFB0F0;
  v10 = callbackCopy;
  v8 = callbackCopy;
  [v7 wait:v9];
}

+ (id)geocodeEvent:(id)event
{
  eventCopy = event;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __31__SGEventGeocode_geocodeEvent___block_invoke;
  v9[3] = &unk_1E7EFB0C8;
  v10 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  v7 = [SGFuture futureForObject:v6 withKey:a2 onCreate:v9];

  return v7;
}

void __31__SGEventGeocode_geocodeEvent___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v3 = dispatch_group_create();
  v4 = [*(a1 + 32) geocodeLocations];
  v5 = [v4 mutableCopy];

  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__1359;
  v45[4] = __Block_byref_object_dispose__1360;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__1359;
  v43[4] = __Block_byref_object_dispose__1360;
  v44 = 0;
  v6 = [*(a1 + 32) geocodingMode];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) poiFilters];
  v9 = [v7 poiCategoriesFromString:v8];

  for (i = 0; [v5 count] > i; ++i)
  {
    v11 = [v5 objectAtIndexedSubscript:i];
    if ([*(a1 + 40) isGeocodeCandidateLocation:v11 forEvent:*(a1 + 32)])
    {
      dispatch_group_enter(v3);
      v12 = sgEventsLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) loggingIdentifier];
        *buf = 67109378;
        v50 = i;
        v51 = 2114;
        v52 = v13;
        _os_log_impl(&dword_1BA729000, v12, OS_LOG_TYPE_DEFAULT, "SGEventGeocode geocodeEvent: Starting geocoding location at index %d. [SGEvent (%{public}@)]", buf, 0x12u);
      }

      v14 = *(a1 + 40);
      v15 = objc_opt_class();
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __31__SGEventGeocode_geocodeEvent___block_invoke_106;
      v33[3] = &unk_1E7EFB078;
      v34 = *(a1 + 32);
      v38 = v45;
      v16 = v11;
      v35 = v16;
      v39 = v43;
      v17 = *(a1 + 40);
      v40 = v47;
      v41 = v17;
      v36 = v5;
      v42 = i;
      v37 = v3;
      [v15 geocodeLocation:v16 usingMode:v6 withGeoFilters:v9 withCallback:v33];
    }
  }

  v18 = [*(a1 + 40) _serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SGEventGeocode_geocodeEvent___block_invoke_2;
  block[3] = &unk_1E7EFB0A0;
  v29 = v43;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v31 = v47;
  v32 = v20;
  v26 = v19;
  v27 = v5;
  v30 = v45;
  v28 = v24;
  v21 = v24;
  v22 = v5;
  dispatch_group_notify(v3, v18, block);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v47, 8);
  v23 = *MEMORY[0x1E69E9840];
}

void __31__SGEventGeocode_geocodeEvent___block_invoke_106(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = [*(a1 + 32) geocodeStartTimeZone];
  if (!v6)
  {
    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v6 = 0;
    }

    else
    {
      if (![*(a1 + 40) geocodeIsStart])
      {
        goto LABEL_8;
      }

      v7 = *(*(a1 + 64) + 8);
      v8 = v5;
      v6 = *(v7 + 40);
      *(v7 + 40) = v8;
    }
  }

LABEL_8:
  v9 = [*(a1 + 32) geocodeEndTimeZone];
  if (!v9)
  {
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v9 = 0;
    }

    else
    {
      if (![*(a1 + 40) geocodeIsEnd])
      {
        goto LABEL_14;
      }

      v10 = *(*(a1 + 72) + 8);
      v11 = v5;
      v9 = *(v10 + 40);
      *(v10 + 40) = v11;
    }
  }

LABEL_14:
  if (v12 && (![*(a1 + 88) locationIsGeocoded:*(a1 + 40)] || objc_msgSend(*(a1 + 88), "locationIsAirport:", *(a1 + 40))) && objc_msgSend(*(a1 + 88), "locationIsGeocoded:", v12))
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
    [*(a1 + 48) setObject:v12 atIndexedSubscript:*(a1 + 96)];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __31__SGEventGeocode_geocodeEvent___block_invoke_2(uint64_t a1)
{
  v2 = a1;
  v65 = *MEMORY[0x1E69E9840];
  v58 = a1 + 56;
  v3 = *(*(*(a1 + 56) + 8) + 40);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [*(a1 + 32) geocodeEndTimeZone];
  }

  v5 = v4;
  v56 = v2;
  v57 = v2 + 64;
  v6 = *(*(*(v2 + 64) + 8) + 40);
  if (v6)
  {
    v7 = v6;
    goto LABEL_34;
  }

  v8 = [*(v2 + 32) geocodeStartTimeZone];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v7 = v10;

  if (!v7)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v11 = [*(v2 + 32) geocodeLocations];
    v12 = [v11 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (!v12)
    {
      v7 = 0;
      goto LABEL_33;
    }

    v13 = v12;
    v7 = 0;
    v14 = *v61;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v61 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v1 = *(*(&v60 + 1) + 8 * i);
        if ([v1 geocodeIsStart])
        {
          v16 = [v1 geocodeAddress];
          v17 = [SGTimeZone timeZoneForAddress:v16];

          if (v17)
          {
            objc_storeStrong((*(*v57 + 8) + 40), v17);
            v7 = v17;
            if (([v1 geocodeIsEnd]& 1) != 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          if ([v1 geocodeIsEnd])
          {
            v18 = v5 == 0;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            v1 = [v1 geocodeAddress];
            v17 = [SGTimeZone timeZoneForAddress:v1];

            if (v17)
            {
              v5 = v17;
LABEL_26:
              objc_storeStrong((*(*v58 + 8) + 40), v17);
              continue;
            }

            v5 = 0;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (!v13)
      {
LABEL_33:

        break;
      }
    }
  }

LABEL_34:
  v19 = [*(v2 + 32) geocodeEndTimeZone];
  if (v19)
  {
  }

  else if (!*(*(*v58 + 8) + 40))
  {
    v21 = [*(v2 + 32) geocodeStartTimeZone];
    v22 = v21;
    v24 = v2 + 64;
    v23 = v58;
LABEL_41:
    v20 = v21;
    if (!v21)
    {
      v20 = v22;
      v22 = *(*(*v24 + 8) + 40);
    }

    objc_storeStrong((*(*v23 + 8) + 40), v22);
    goto LABEL_44;
  }

  v20 = [*(v2 + 32) geocodeStartTimeZone];
  if (!v20)
  {
    if (*(*(*v57 + 8) + 40))
    {
      goto LABEL_45;
    }

    v21 = [*(v2 + 32) geocodeEndTimeZone];
    v22 = v21;
    v23 = v2 + 64;
    v24 = v58;
    goto LABEL_41;
  }

LABEL_44:

LABEL_45:
  v25 = *(*(*(v2 + 64) + 8) + 40);
  if (*(*(*(v2 + 72) + 8) + 24))
  {
    if (!v25)
    {
      goto LABEL_57;
    }

LABEL_49:
    [*(v2 + 32) geocodeStartTimeZone];
    if (objc_claimAutoreleasedReturnValue())
    {
      __assert_rtn("+[SGEventGeocode geocodeEvent:]_block_invoke_2", "SGEventGeocode.m", 648, "![event geocodeStartTimeZone]");
    }

    v26 = [*(v2 + 32) geocodeStartDate];

    if (v26)
    {
      v27 = *(v2 + 80);
      v28 = [*(v2 + 32) geocodeStartDate];
      v29 = [v27 dateForUTCDate:v28 withTimeZone:*(*(*(v2 + 64) + 8) + 40)];
    }

    else
    {
      v28 = sgEventsLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA729000, v28, OS_LOG_TYPE_ERROR, "SGGeocodeEvent: event geocodeStartDate is nil", buf, 2u);
      }

      v29 = 0;
    }

LABEL_58:
    if (*(*(*v58 + 8) + 40))
    {
      [*(v2 + 32) geocodeEndTimeZone];
      if (objc_claimAutoreleasedReturnValue())
      {
        __assert_rtn("+[SGEventGeocode geocodeEvent:]_block_invoke", "SGEventGeocode.m", 662, "![event geocodeEndTimeZone]");
      }

      v30 = [*(v2 + 32) geocodeEndDate];

      if (v30)
      {
        v31 = *(v2 + 80);
        v1 = [*(v2 + 32) geocodeEndDate];
        v32 = [v31 dateForUTCDate:v1 withTimeZone:*(*(*(v2 + 56) + 8) + 40)];
      }

      else
      {
        v1 = sgEventsLogHandle();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1BA729000, v1, OS_LOG_TYPE_ERROR, "SGGeocodeEvent: event geocodeEndDate is nil", buf, 2u);
        }

        v32 = 0;
      }

      if (v29)
      {
        if (v32)
        {
          v53 = 0;
          v33 = 0;
          v34 = *(v2 + 32);
LABEL_80:
          v54 = v29;
          v55 = v29;
LABEL_81:
          v38 = *(*(*v57 + 8) + 40);
          v39 = v38;
          if (!v38)
          {
            v39 = [*(v2 + 32) geocodeStartTimeZone];
          }

          v40 = v32;
          if (v33)
          {
            v32 = [*(v2 + 32) geocodeEndDate];
          }

          v41 = *(*(*v58 + 8) + 40);
          v42 = v41;
          if (!v41)
          {
            v42 = [*(v56 + 32) geocodeEndTimeZone];
          }

          v43 = [v34 geocodedEventWithStartDate:v55 startTimeZone:v39 endDate:v32 endTimeZone:v42 locations:*(v56 + 40)];
          if (v41)
          {
            if (!v33)
            {
LABEL_90:
              v2 = v56;
              if (!v38)
              {
              }

              v32 = v40;
              if (v53)
              {
              }

              v29 = v54;
LABEL_101:

              goto LABEL_102;
            }
          }

          else
          {

            if (!v33)
            {
              goto LABEL_90;
            }
          }

          goto LABEL_90;
        }

        goto LABEL_70;
      }
    }

    else
    {
      if (v29)
      {
LABEL_70:
        v35 = 0;
        goto LABEL_71;
      }

      v32 = 0;
    }

    v37 = [*(v2 + 32) geocodeStartDate];
    if (!v37)
    {
      goto LABEL_98;
    }

    v1 = v37;
    if (v32)
    {

      v33 = 0;
      goto LABEL_77;
    }

    v35 = 1;
LABEL_71:
    v36 = [*(v2 + 32) geocodeEndDate];

    if (v35)
    {

      v32 = 0;
      if (v36)
      {
        v33 = 1;
LABEL_77:
        v54 = v29;
        v34 = *(v2 + 32);
        v55 = [v34 geocodeStartDate];
        v53 = 1;
        goto LABEL_81;
      }
    }

    else
    {
      if (v36)
      {
        v53 = 0;
        v32 = 0;
        v34 = *(v2 + 32);
        v33 = 1;
        goto LABEL_80;
      }

      v32 = 0;
    }

LABEL_98:
    v44 = sgEventsLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA729000, v44, OS_LOG_TYPE_FAULT, "SGGeocodeEvent: Missing start or end date, going with existing event to avoid creating a new faulty event", buf, 2u);
    }

    v43 = *(v2 + 32);
    goto LABEL_101;
  }

  if (v25)
  {
    goto LABEL_49;
  }

  if (*(*(*v58 + 8) + 40))
  {
LABEL_57:
    v29 = 0;
    goto LABEL_58;
  }

  v43 = *(v2 + 32);
LABEL_102:
  v45 = *(v2 + 32);
  if (v43 == v45)
  {
    v46 = [*(v2 + 32) geocodeStartDate];
    v47 = [*(v2 + 32) geocodeStartTimeZone];
    v48 = [*(v2 + 32) geocodeEndDate];
    v49 = [*(v2 + 32) geocodeEndTimeZone];
    v50 = [*(v2 + 32) geocodeLocations];
    v51 = [v45 geocodedEventWithStartDate:v46 startTimeZone:v47 endDate:v48 endTimeZone:v49 locations:v50];

    v2 = v56;
    v43 = v51;
  }

  [*(v2 + 48) succeed:v43];

  v52 = *MEMORY[0x1E69E9840];
}

+ (id)dateForUTCDate:(id)date withTimeZone:(id)zone
{
  v5 = MEMORY[0x1E695DEE8];
  zoneCopy = zone;
  dateCopy = date;
  v8 = [v5 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v10 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v9 setTimeZone:v10];

  v11 = [v9 components:1048828 fromDate:dateCopy];

  [v11 setTimeZone:zoneCopy];
  v12 = [v9 dateFromComponents:v11];

  return v12;
}

+ (void)geocodeLocation:(id)location usingMode:(unint64_t)mode withGeoFilters:(id)filters withCallback:(id)callback
{
  locationCopy = location;
  filtersCopy = filters;
  callbackCopy = callback;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy__1359;
  v57[4] = __Block_byref_object_dispose__1360;
  v58 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__1359;
  v55[4] = __Block_byref_object_dispose__1360;
  v56 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = __Block_byref_object_copy__1359;
  v53[4] = __Block_byref_object_dispose__1360;
  v54 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy__1359;
  v51[4] = __Block_byref_object_dispose__1360;
  v52 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__1359;
  v49[4] = __Block_byref_object_dispose__1360;
  v50 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__1359;
  v47[4] = __Block_byref_object_dispose__1360;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__1359;
  v45[4] = __Block_byref_object_dispose__1360;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__1359;
  v43[4] = __Block_byref_object_dispose__1360;
  v44 = 0;
  v13 = [self locationIsAirport:locationCopy];
  v14 = v13;
  modeCopy = v13;
  if (mode)
  {
    modeCopy = mode;
  }

  switch(modeCopy)
  {
    case 1uLL:
      if (v13)
      {
        v21 = objc_alloc(MEMORY[0x1E696AEC0]);
        geocodeAirportCode = [locationCopy geocodeAirportCode];
        geocodeAddress2 = [v21 initWithFormat:@"%@ airport", geocodeAirportCode];
      }

      else
      {
        geocodeAirportCode = [locationCopy geocodeLabel];
        geocodeAddress = [locationCopy geocodeAddress];
        geocodeAddress2 = commaSeparated(geocodeAirportCode, geocodeAddress);
      }

      v29 = objc_opt_class();
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __72__SGEventGeocode_geocodeLocation_usingMode_withGeoFilters_withCallback___block_invoke_101;
      v36[3] = &unk_1E7EFB028;
      v38[1] = v55;
      v38[2] = v53;
      v38[3] = v49;
      v38[4] = v51;
      v38[5] = v47;
      v38[6] = v45;
      v38[7] = v43;
      v38[9] = self;
      v37 = locationCopy;
      v38[8] = v57;
      v39 = v14;
      v38[0] = callbackCopy;
      [v29 geocodeAddress:geocodeAddress2 withCallback:v36];
      v26 = &v37;
      v27 = v38;
      break;
    case 2uLL:
      if (v13)
      {
        geocodeAirportCode2 = [locationCopy geocodeAirportCode];
        [locationCopy geocodeLabel];
      }

      else
      {
        geocodeAirportCode2 = [locationCopy geocodeLabel];
        [locationCopy geocodeAddress];
      }
      v20 = ;
      geocodeAddress2 = commaSeparated(geocodeAirportCode2, v20);

      v18 = v41;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __72__SGEventGeocode_geocodeLocation_usingMode_withGeoFilters_withCallback___block_invoke;
      v41[3] = &unk_1E7EFAFB0;
      v41[7] = v55;
      v42 = v14;
      v25 = filtersCopy;
      v41[4] = v25;
      v41[8] = v53;
      v41[9] = v49;
      v41[10] = v51;
      v41[11] = v47;
      v41[12] = v45;
      v41[13] = v43;
      v41[14] = v57;
      v41[5] = locationCopy;
      v41[6] = callbackCopy;
      [self geocodePOIWithName:geocodeAddress2 ofTypes:v25 inRegion:0 withCallback:v41];
      goto LABEL_15;
    case 3uLL:
      geocodeAddress2 = [locationCopy geocodeAddress];
      v17 = objc_opt_class();
      v18 = v40;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __72__SGEventGeocode_geocodeLocation_usingMode_withGeoFilters_withCallback___block_invoke_95;
      v40[3] = &unk_1E7EFB000;
      v40[7] = v55;
      v40[8] = v53;
      v40[9] = v49;
      v40[10] = v51;
      v40[11] = v47;
      v40[12] = v45;
      v40[13] = v43;
      v40[14] = v57;
      v40[4] = locationCopy;
      v40[5] = filtersCopy;
      v40[15] = self;
      v40[6] = callbackCopy;
      [v17 geocodeAddress:geocodeAddress2 withCallback:v40];
LABEL_15:
      v26 = (v18 + 4);
      v27 = (v18 + 5);

      break;
    default:
      if (v13)
      {
        v23 = objc_alloc(MEMORY[0x1E696AEC0]);
        geocodeAirportCode3 = [locationCopy geocodeAirportCode];
        geocodeAddress2 = [v23 initWithFormat:@"%@ airport", geocodeAirportCode3];
      }

      else
      {
        geocodeAirportCode3 = [locationCopy geocodeLabel];
        geocodeAddress3 = [locationCopy geocodeAddress];
        geocodeAddress2 = commaSeparated(geocodeAirportCode3, geocodeAddress3);
      }

      v31 = objc_opt_class();
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __72__SGEventGeocode_geocodeLocation_usingMode_withGeoFilters_withCallback___block_invoke_102;
      v32[3] = &unk_1E7EFB050;
      v34[1] = v55;
      v34[2] = v53;
      v34[3] = v49;
      v34[4] = v51;
      v34[5] = v47;
      v34[6] = v45;
      v34[7] = v43;
      v34[8] = v57;
      v33 = locationCopy;
      v35 = v14;
      v34[0] = callbackCopy;
      [v31 geocodeAddressWithCanonicalSearch:geocodeAddress2 withCallback:v32];
      v26 = &v33;
      v27 = v34;
      break;
  }

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(v53, 8);

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v57, 8);
}

void __72__SGEventGeocode_geocodeLocation_usingMode_withGeoFilters_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 coordinate];
  v5 = v4;
  v7 = v6;
  v8 = [v3 timezone];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = sgEventsLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 120))
    {
      v56 = @"Yes";
    }

    else
    {
      v56 = @"No";
    }

    v57 = [*(a1 + 32) _pas_componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v59 = v56;
    v60 = 2112;
    v61 = v57;
    _os_log_debug_impl(&dword_1BA729000, v11, OS_LOG_TYPE_DEBUG, "SGEventGeocode geocodeLocation: Found POI using mode SGGeocodingModePOIOnly (isAirport? : %@, filters: %@)", buf, 0x16u);
  }

  v12 = [v3 geoAddress];
  v13 = [v12 structuredAddress];
  v14 = [v13 country];
  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = [v3 geoAddress];
  v18 = [v17 structuredAddress];
  v19 = [v18 administrativeArea];
  v20 = *(*(a1 + 72) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = [v3 geoAddress];
  v23 = [v22 structuredAddress];
  v24 = [v23 locality];
  v25 = *(*(a1 + 80) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;

  v27 = [v3 geoAddress];
  v28 = [v27 structuredAddress];
  v29 = [v28 thoroughfare];
  v30 = *(*(a1 + 88) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v29;

  v32 = [v3 geoAddress];
  v33 = [v32 structuredAddress];
  v34 = [v33 subThoroughfare];
  v35 = *(*(a1 + 96) + 8);
  v36 = *(v35 + 40);
  *(v35 + 40) = v34;

  v37 = [v3 geoAddress];
  v38 = [v37 structuredAddress];
  v39 = [v38 postCode];
  v40 = *(*(a1 + 104) + 8);
  v41 = *(v40 + 40);
  *(v40 + 40) = v39;

  v42 = *(a1 + 40);
  v43 = [v3 name];
  v44 = [v3 geoAddress];
  v45 = [v44 formattedAddressLines];
  v46 = [v45 _pas_componentsJoinedByString:{@", "}];
  v47 = [MEMORY[0x1E69A2208] sharedService];
  v48 = [v47 handleForMapItem:v3];
  v49 = *(*(*(a1 + 96) + 8) + 40);
  v50 = [v42 geocodedLocationWithLabel:v43 address:v46 latitude:v48 longitude:*(*(*(a1 + 64) + 8) + 40) accuracy:*(*(*(a1 + 72) + 8) + 40) handle:*(*(*(a1 + 80) + 8) + 40) country:v5 state:v7 city:1.0 thoroughfare:*(*(*(a1 + 88) + 8) + 40) subThoroughfare:v49 postalCode:*(*(*(a1 + 104) + 8) + 40)];
  v51 = *(*(a1 + 112) + 8);
  v52 = *(v51 + 40);
  *(v51 + 40) = v50;

  v53 = *(*(*(a1 + 112) + 8) + 40);
  v54 = *(*(*(a1 + 56) + 8) + 40);
  (*(*(a1 + 48) + 16))();

  v55 = *MEMORY[0x1E69E9840];
}

void __72__SGEventGeocode_geocodeLocation_usingMode_withGeoFilters_withCallback___block_invoke_95(uint64_t a1, void *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 timezone];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [v4 coordinate];
    v9 = v8;
    v11 = v10;
    v12 = [v4 geoAddress];
    v13 = [v12 structuredAddress];
    v14 = [v13 country];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = [v4 geoAddress];
    v18 = [v17 structuredAddress];
    v19 = [v18 administrativeArea];
    v20 = *(*(a1 + 72) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v22 = [v4 geoAddress];
    v23 = [v22 structuredAddress];
    v24 = [v23 locality];
    v25 = *(*(a1 + 80) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    v27 = [v4 geoAddress];
    v28 = [v27 structuredAddress];
    v29 = [v28 thoroughfare];
    v30 = *(*(a1 + 88) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;

    v32 = [v4 geoAddress];
    v33 = [v32 structuredAddress];
    v34 = [v33 subThoroughfare];
    v35 = *(*(a1 + 96) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;

    v37 = [v4 geoAddress];
    v38 = [v37 structuredAddress];
    v39 = [v38 postCode];
    v40 = *(*(a1 + 104) + 8);
    v41 = *(v40 + 40);
    *(v40 + 40) = v39;

    v42 = *(a1 + 32);
    v43 = [MEMORY[0x1E69A2208] sharedService];
    v44 = [v43 handleForMapItem:v4];
    v45 = [v42 geocodedLocationWithLatitude:v44 longitude:*(*(*(a1 + 64) + 8) + 40) accuracy:*(*(*(a1 + 72) + 8) + 40) handle:*(*(*(a1 + 80) + 8) + 40) country:*(*(*(a1 + 88) + 8) + 40) state:*(*(*(a1 + 96) + 8) + 40) city:v9 thoroughfare:v11 subThoroughfare:1.0 postalCode:*(*(*(a1 + 104) + 8) + 40)];
    v46 = *(*(a1 + 112) + 8);
    v47 = *(v46 + 40);
    *(v46 + 40) = v45;

    v48 = sgEventsLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v69 = [*(a1 + 40) _pas_componentsJoinedByString:{@", "}];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v69;
      _os_log_debug_impl(&dword_1BA729000, v48, OS_LOG_TYPE_DEBUG, "SGEventGeocode geocodeLocation: Found address using mode SGGeocodingModeAddressThenPOI. Now trying to refine and look for a relevant POI w/ filters: %@", &buf, 0xCu);
    }

    v49 = [*(a1 + 32) geocodeLabel];
    if (v49)
    {
      v50 = [*(a1 + 32) geocodeLabel];
      if ([v50 isEqualToString:&stru_1F385B250])
      {
      }

      else
      {
        v53 = [*(a1 + 32) geocodeLabel];
        v54 = [*(a1 + 32) geocodeAddress];
        v55 = [v53 isEqualToString:v54];

        if ((v55 & 1) == 0)
        {
          v59 = [*(a1 + 32) geocodeLabel];
          v60 = objc_alloc(MEMORY[0x1E69A2200]);
          GEOCoordinateRegionMakeWithDistance();
          v61 = [v60 initWithCoordinateRegion:?];
          *&buf = 0;
          *(&buf + 1) = &buf;
          v82 = 0x3032000000;
          v83 = __Block_byref_object_copy__1359;
          v84 = __Block_byref_object_dispose__1360;
          v85 = [*(a1 + 32) geocodeLabel];
          v62 = *(a1 + 120);
          v63 = objc_opt_class();
          v70[0] = MEMORY[0x1E69E9820];
          v70[1] = 3221225472;
          v70[2] = __72__SGEventGeocode_geocodeLocation_usingMode_withGeoFilters_withCallback___block_invoke_97;
          v70[3] = &unk_1E7EFAFD8;
          v79 = v9;
          v80 = v11;
          v64 = *(a1 + 40);
          v65 = *(a1 + 48);
          v67 = *(a1 + 104);
          v66 = *(a1 + 112);
          v72 = v65;
          v73 = v66;
          v68 = *(a1 + 72);
          v74 = *(a1 + 56);
          v75 = v68;
          v76 = *(a1 + 88);
          v77 = v67;
          p_buf = &buf;
          v71 = *(a1 + 32);
          [v63 geocodePOIWithName:v59 ofTypes:v64 inRegion:v61 withCallback:v70];

          _Block_object_dispose(&buf, 8);
          goto LABEL_10;
        }
      }
    }

    v56 = *(*(*(a1 + 112) + 8) + 40);
    v57 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v51 = *(*(*(a1 + 112) + 8) + 40);
    v52 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }

LABEL_10:

  v58 = *MEMORY[0x1E69E9840];
}

void __72__SGEventGeocode_geocodeLocation_usingMode_withGeoFilters_withCallback___block_invoke_101(uint64_t a1, void *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 timezone];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v4 geoAddress];
    v9 = [v8 structuredAddress];
    v10 = [v9 country];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [v4 geoAddress];
    v14 = [v13 structuredAddress];
    v15 = [v14 administrativeArea];
    v16 = *(*(a1 + 64) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = [v4 geoAddress];
    v19 = [v18 structuredAddress];
    v20 = [v19 locality];
    v21 = *(*(a1 + 72) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v23 = [v4 geoAddress];
    v24 = [v23 structuredAddress];
    v25 = [v24 thoroughfare];
    v26 = *(*(a1 + 80) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    v28 = [v4 geoAddress];
    v29 = [v28 structuredAddress];
    v30 = [v29 subThoroughfare];
    v31 = *(*(a1 + 88) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    v33 = [v4 geoAddress];
    v34 = [v33 structuredAddress];
    v35 = [v34 postCode];
    v36 = *(*(a1 + 96) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = v35;

    [v4 coordinate];
    v39 = v38;
    v41 = v40;
    if ([*(a1 + 112) locationIsGeocoded:*(a1 + 32)] && (objc_msgSend(*(a1 + 32), "geocodeAirportCode"), v42 = objc_claimAutoreleasedReturnValue(), v42, v42))
    {
      [*(a1 + 32) geocodeLatitude];
      [*(a1 + 32) geocodeLongitude];
      GEOMapPointForCoordinate();
      GEOMapPointForCoordinate();
      GEOMetersBetweenMapPoints();
      v43 = *(a1 + 32);
      if (v44 <= 10000.0)
      {
        v55 = [v4 name];
        v65 = [v4 geoAddress];
        v66 = [v65 formattedAddressLines];
        v67 = [v66 _pas_componentsJoinedByString:{@", "}];
        v68 = [MEMORY[0x1E69A2208] sharedService];
        v69 = [v68 handleForMapItem:v4];
        v70 = *(*(*(a1 + 88) + 8) + 40);
        v71 = [v43 geocodedLocationWithLabel:v55 address:v67 latitude:v69 longitude:*(*(*(a1 + 56) + 8) + 40) accuracy:*(*(*(a1 + 64) + 8) + 40) handle:*(*(*(a1 + 72) + 8) + 40) country:v39 state:v41 city:1.0 thoroughfare:*(*(*(a1 + 80) + 8) + 40) subThoroughfare:v70 postalCode:*(*(*(a1 + 96) + 8) + 40)];
        v72 = *(*(a1 + 104) + 8);
        v73 = *(v72 + 40);
        *(v72 + 40) = v71;
      }

      else
      {
        v45 = [*(a1 + 32) geocodeLabel];
        v46 = [*(a1 + 32) geocodeAddress];
        [*(a1 + 32) geocodeLatitude];
        v48 = v47;
        [*(a1 + 32) geocodeLongitude];
        v49 = *(*(*(a1 + 88) + 8) + 40);
        v51 = [v43 geocodedLocationWithLabel:v45 address:v46 latitude:0 longitude:*(*(*(a1 + 56) + 8) + 40) accuracy:*(*(*(a1 + 64) + 8) + 40) handle:*(*(*(a1 + 72) + 8) + 40) country:v48 state:v50 city:1.0 thoroughfare:*(*(*(a1 + 80) + 8) + 40) subThoroughfare:v49 postalCode:*(*(*(a1 + 96) + 8) + 40)];
        v52 = *(*(a1 + 104) + 8);
        v53 = *(v52 + 40);
        *(v52 + 40) = v51;

        v54 = *(*(a1 + 48) + 8);
        v55 = *(v54 + 40);
        *(v54 + 40) = 0;
      }
    }

    else
    {
      v56 = *(a1 + 32);
      v55 = [MEMORY[0x1E69A2208] sharedService];
      v57 = [v55 handleForMapItem:v4];
      v58 = [v56 geocodedLocationWithLatitude:v57 longitude:*(*(*(a1 + 56) + 8) + 40) accuracy:*(*(*(a1 + 64) + 8) + 40) handle:*(*(*(a1 + 72) + 8) + 40) country:*(*(*(a1 + 80) + 8) + 40) state:*(*(*(a1 + 88) + 8) + 40) city:v39 thoroughfare:v41 subThoroughfare:1.0 postalCode:*(*(*(a1 + 96) + 8) + 40)];
      v59 = *(*(a1 + 104) + 8);
      v60 = *(v59 + 40);
      *(v59 + 40) = v58;
    }

    v61 = sgEventsLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 120))
      {
        v74 = @"Yes";
      }

      else
      {
        v74 = @"No";
      }

      *buf = 138412290;
      v76 = v74;
      _os_log_debug_impl(&dword_1BA729000, v61, OS_LOG_TYPE_DEBUG, "SGEventGeocode geocodeLocation: Found address using mode SGGecodingModeAddressOnly. (isAirport? : %@)", buf, 0xCu);
    }
  }

  v62 = *(*(*(a1 + 104) + 8) + 40);
  v63 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();

  v64 = *MEMORY[0x1E69E9840];
}

uint64_t __72__SGEventGeocode_geocodeLocation_usingMode_withGeoFilters_withCallback___block_invoke_102(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2;
    [v3 coordinate];
    v5 = v4;
    v7 = v6;
    v8 = [v3 timezone];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [v3 geoAddress];
    v12 = [v11 structuredAddress];
    v13 = [v12 country];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = [v3 geoAddress];
    v17 = [v16 structuredAddress];
    v18 = [v17 administrativeArea];
    v19 = *(*(a1 + 64) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = [v3 geoAddress];
    v22 = [v21 structuredAddress];
    v23 = [v22 locality];
    v24 = *(*(a1 + 72) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    v26 = [v3 geoAddress];
    v27 = [v26 structuredAddress];
    v28 = [v27 thoroughfare];
    v29 = *(*(a1 + 80) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    v31 = [v3 geoAddress];
    v32 = [v31 structuredAddress];
    v33 = [v32 subThoroughfare];
    v34 = *(*(a1 + 88) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v33;

    v36 = [v3 geoAddress];
    v37 = [v36 structuredAddress];
    v38 = [v37 postCode];
    v39 = *(*(a1 + 96) + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = v38;

    v41 = *(a1 + 32);
    v42 = [MEMORY[0x1E69A2208] sharedService];
    v43 = [v42 handleForMapItem:v3];

    v44 = [v41 geocodedLocationWithLatitude:v43 longitude:*(*(*(a1 + 56) + 8) + 40) accuracy:*(*(*(a1 + 64) + 8) + 40) handle:*(*(*(a1 + 72) + 8) + 40) country:*(*(*(a1 + 80) + 8) + 40) state:*(*(*(a1 + 88) + 8) + 40) city:v5 thoroughfare:v7 subThoroughfare:1.0 postalCode:*(*(*(a1 + 96) + 8) + 40)];
    v45 = *(*(a1 + 104) + 8);
    v46 = *(v45 + 40);
    *(v45 + 40) = v44;

    v47 = sgEventsLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 112))
      {
        v52 = @"Yes";
      }

      else
      {
        v52 = @"No";
      }

      *buf = 138412290;
      v54 = v52;
      _os_log_debug_impl(&dword_1BA729000, v47, OS_LOG_TYPE_DEBUG, "SGEventGeocode geocodeLocation: Found address using mode SGGeocodingModeAddressWithCanonicalSearch. (isAirport? : %@)", buf, 0xCu);
    }
  }

  v48 = *(*(*(a1 + 104) + 8) + 40);
  v49 = *(*(*(a1 + 48) + 8) + 40);
  result = (*(*(a1 + 40) + 16))();
  v51 = *MEMORY[0x1E69E9840];
  return result;
}

void __72__SGEventGeocode_geocodeLocation_usingMode_withGeoFilters_withCallback___block_invoke_97(void *a1, void *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 coordinate];
    v6 = v5;
    v8 = v7;
    v9 = a1[15];
    v10 = a1[16];
    GEOMapPointForCoordinate();
    GEOMapPointForCoordinate();
    GEOMetersBetweenMapPoints();
    if (v11 <= 500.0)
    {
      v12 = [v4 timezone];
      v13 = *(a1[7] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v15 = [v4 geoAddress];
      v16 = [v15 structuredAddress];
      v17 = [v16 country];
      v18 = *(a1[8] + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v20 = [v4 geoAddress];
      v21 = [v20 structuredAddress];
      v22 = [v21 administrativeArea];
      v23 = *(a1[9] + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      v25 = [v4 geoAddress];
      v26 = [v25 structuredAddress];
      v27 = [v26 locality];
      v28 = *(a1[10] + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;

      v30 = [v4 geoAddress];
      v31 = [v30 structuredAddress];
      v32 = [v31 thoroughfare];
      v33 = *(a1[11] + 8);
      v34 = *(v33 + 40);
      *(v33 + 40) = v32;

      v35 = [v4 geoAddress];
      v36 = [v35 structuredAddress];
      v37 = [v36 subThoroughfare];
      v38 = *(a1[12] + 8);
      v39 = *(v38 + 40);
      *(v38 + 40) = v37;

      v40 = [v4 geoAddress];
      v41 = [v40 structuredAddress];
      v42 = [v41 postCode];
      v43 = *(a1[13] + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v42;

      v45 = [v4 name];
      v46 = [v45 lowercaseString];
      v47 = [*(*(a1[14] + 8) + 40) lowercaseString];
      v48 = [v46 isEqualToString:v47];

      if (v48)
      {
        v49 = a1[4];
        v50 = [v4 name];
        v51 = [v4 geoAddress];
        v52 = [v51 formattedAddressLines];
        v53 = [v52 _pas_componentsJoinedByString:{@", "}];
        v54 = [MEMORY[0x1E69A2208] sharedService];
        v55 = [v54 handleForMapItem:v4];
        v56 = *(*(a1[12] + 8) + 40);
        v57 = [v49 geocodedLocationWithLabel:v50 address:v53 latitude:v55 longitude:*(*(a1[8] + 8) + 40) accuracy:*(*(a1[9] + 8) + 40) handle:*(*(a1[10] + 8) + 40) country:v6 state:v8 city:1.0 thoroughfare:*(*(a1[11] + 8) + 40) subThoroughfare:v56 postalCode:*(*(a1[13] + 8) + 40)];
        v58 = *(a1[6] + 8);
        v59 = *(v58 + 40);
        *(v58 + 40) = v57;

        v60 = sgEventsLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          v61 = [v4 name];
          *buf = 138739971;
          v70 = v61;
          v62 = "SGEventGeocode geocodeLocation: Found POI using mode SGGeocodingModeAddressThenPOI %{sensitive}@";
          v63 = v60;
          v64 = 12;
LABEL_10:
          _os_log_debug_impl(&dword_1BA729000, v63, OS_LOG_TYPE_DEBUG, v62, buf, v64);
        }
      }

      else
      {
        v60 = sgEventsLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          v61 = [v4 name];
          v68 = *(*(a1[14] + 8) + 40);
          *buf = 138740227;
          v70 = v61;
          v71 = 2117;
          v72 = v68;
          v62 = "SGEventGeocode geocodeLocation: Found POI using mode SGGeocodingModeAddressThenPOI: %{sensitive}@, but didn't match exactly the extracted label (%{sensitive}@). Falling back on address location only";
          v63 = v60;
          v64 = 22;
          goto LABEL_10;
        }
      }
    }
  }

  v65 = *(*(a1[6] + 8) + 40);
  v66 = *(*(a1[7] + 8) + 40);
  (*(a1[5] + 16))();

  v67 = *MEMORY[0x1E69E9840];
}

+ (id)pirResultWithHighestScoreFromData:(id)data
{
  v26 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [[SGAspireResult alloc] initWithData:dataCopy];

  v6 = sgEventsLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&dword_1BA729000, v6, OS_LOG_TYPE_DEFAULT, "extracted location: %@", buf, 0xCu);
  }

  if ([(SGAspireResult *)v5 hasGeoList])
  {
    geoList = [(SGAspireResult *)v5 geoList];
    pois = [geoList pois];
    v9 = [pois copy];

    if ([v9 count])
    {
      firstObject = [v9 firstObject];
      if ([firstObject hasTitle])
      {
        title = [firstObject title];
      }

      else
      {
        title = 0;
      }

      if ([firstObject hasPrefGeocode])
      {
        prefGeocode = [firstObject prefGeocode];
      }

      else
      {
        prefGeocode = 0;
      }

      if ([firstObject hasAddress])
      {
        address = [firstObject address];
      }

      else
      {
        address = 0;
      }

      v14 = [self addressStringFromPIRStructuredAddress:{address, geoList}];
      v15 = [SGPIRResult alloc];
      v16 = MEMORY[0x1E696AD98];
      [prefGeocode lat];
      v17 = [v16 numberWithDouble:?];
      v18 = MEMORY[0x1E696AD98];
      [prefGeocode lng];
      v19 = [v18 numberWithDouble:?];
      v11 = [(SGPIRResult *)v15 initWithLabel:title address:v14 latitude:v17 longitude:v19 timezone:0];

      geoList = v22;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)pirResultFromData:(id)data withDistance:(double)distance fromCoordinates:(id)coordinates
{
  v45 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = [[SGAspireResult alloc] initWithData:dataCopy];
  v8 = sgEventsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v7;
    _os_log_impl(&dword_1BA729000, v8, OS_LOG_TYPE_DEFAULT, "extracted location: %@", buf, 0xCu);
  }

  GEOMapPointForCoordinate();
  if ([(SGAspireResult *)v7 hasGeoList])
  {
    v33 = v7;
    v34 = dataCopy;
    geoList = [(SGAspireResult *)v7 geoList];
    pois = [geoList pois];
    v10 = [pois copy];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v39;
      v35 = v11;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          if ([v17 hasPrefGeocode])
          {
            prefGeocode = [v17 prefGeocode];
            v19 = prefGeocode;
            if (prefGeocode)
            {
              [prefGeocode lat];
              [v19 lng];
              GEOMapPointForCoordinate();
              GEOMetersBetweenMapPoints();
              if (v20 <= distance)
              {
                if ([v17 hasTitle])
                {
                  title = [v17 title];
                }

                else
                {
                  title = 0;
                }

                v37 = v14;
                if ([v17 hasAddress])
                {
                  address = [v17 address];
                }

                else
                {
                  address = 0;
                }

                v23 = [self addressStringFromPIRStructuredAddress:address];
                v24 = [SGPIRResult alloc];
                v25 = MEMORY[0x1E696AD98];
                [v19 lat];
                v26 = [v25 numberWithDouble:?];
                v27 = MEMORY[0x1E696AD98];
                [v19 lng];
                v28 = [v27 numberWithDouble:?];
                v29 = [(SGPIRResult *)v24 initWithLabel:title address:v23 latitude:v26 longitude:v28 timezone:0];

                v14 = v29;
                v11 = v35;
              }
            }
          }

          else
          {
            v19 = 0;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    v7 = v33;
    dataCopy = v34;
  }

  else
  {
    v14 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)addressStringFromPIRStructuredAddress:(id)address
{
  addressCopy = address;
  v5 = addressCopy;
  if (addressCopy)
  {
    subThroughfare = [addressCopy subThroughfare];
    v7 = [self appendToAddress:0 addressComponentToAppend:subThroughfare withSeparator:&stru_1F385B250];

    thoroughfare = [v5 thoroughfare];
    v9 = [self appendToAddress:v7 addressComponentToAppend:thoroughfare withSeparator:@" "];

    locality = [v5 locality];
    v11 = [self appendToAddress:v9 addressComponentToAppend:locality withSeparator:{@", "}];

    administrativeArea = [v5 administrativeArea];
    v13 = [self appendToAddress:v11 addressComponentToAppend:administrativeArea withSeparator:{@", "}];

    country = [v5 country];
    v15 = [self appendToAddress:v13 addressComponentToAppend:country withSeparator:{@", "}];

    postCode = [v5 postCode];

    if (postCode && v15 && [v15 length])
    {
      postCode2 = [v5 postCode];
      v18 = [v15 stringByAppendingFormat:@", %@", postCode2];

      v15 = v18;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)appendToAddress:(id)address addressComponentToAppend:(id)append withSeparator:(id)separator
{
  addressCopy = address;
  appendCopy = append;
  separatorCopy = separator;
  if (!addressCopy || ![addressCopy length])
  {
    if (!appendCopy || ![appendCopy length])
    {
      v11 = 0;
      goto LABEL_14;
    }

    if (!addressCopy)
    {
      goto LABEL_11;
    }
  }

  if ([addressCopy length])
  {
    if (appendCopy && [appendCopy length])
    {
      appendCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@%@", addressCopy, separatorCopy, appendCopy];
    }

    else
    {
      appendCopy = addressCopy;
    }
  }

  else
  {
LABEL_11:
    appendCopy = appendCopy;
  }

  v11 = appendCopy;
LABEL_14:

  return v11;
}

+ (void)geocodeAddressUsingPIR:(id)r withCallback:(id)callback
{
  rCopy = r;
  callbackCopy = callback;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v8 = getDUFoundInEventClass_softClass;
  v18 = getDUFoundInEventClass_softClass;
  if (!getDUFoundInEventClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getDUFoundInEventClass_block_invoke;
    v14[3] = &unk_1E7EFB118;
    v14[4] = &v15;
    __getDUFoundInEventClass_block_invoke(v14);
    v8 = v16[3];
  }

  v9 = v8;
  _Block_object_dispose(&v15, 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__SGEventGeocode_geocodeAddressUsingPIR_withCallback___block_invoke;
  v11[3] = &unk_1E7EFAF88;
  v12 = callbackCopy;
  selfCopy = self;
  v10 = callbackCopy;
  [v8 geocodeAddress:rCopy withTimeout:v11 completionHandler:10.0];
}

void __54__SGEventGeocode_geocodeAddressUsingPIR_withCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 40) _serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SGEventGeocode_geocodeAddressUsingPIR_withCallback___block_invoke_2;
  block[3] = &unk_1E7EFAF60;
  v12 = v6;
  v8 = *(a1 + 32);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __54__SGEventGeocode_geocodeAddressUsingPIR_withCallback___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1[5];
  }

  return (*(v3 + 16))(v3, v4);
}

+ (void)geocodePOIWithName:(id)name ofTypes:(id)types inRegion:(id)region withCallback:(id)callback
{
  v30[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  typesCopy = types;
  regionCopy = region;
  callbackCopy = callback;
  v13 = nameCopy;
  v14 = objc_autoreleasePoolPush();
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208] defaultTraits];

  objc_autoreleasePoolPop(v14);
  if (regionCopy)
  {
    [defaultTraits setMapRegion:regionCopy];
  }

  v17 = [objc_alloc(MEMORY[0x1E69A2328]) initWithCategoriesToInclude:typesCopy categoriesToExclude:0];
  v18 = [objc_alloc(MEMORY[0x1E69A2498]) initWithResultTypes:2];
  v19 = objc_autoreleasePoolPush();
  [MEMORY[0x1E69A2208] sharedService];
  v20 = v25 = typesCopy;
  v30[0] = v17;
  v30[1] = v18;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v22 = [v20 ticketForSearchQuery:v13 filters:v21 maxResults:5 traits:defaultTraits];

  objc_autoreleasePoolPop(v19);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__SGEventGeocode_geocodePOIWithName_ofTypes_inRegion_withCallback___block_invoke;
  v27[3] = &unk_1E7EFAF38;
  v28 = callbackCopy;
  selfCopy = self;
  v23 = callbackCopy;
  [v22 submitWithHandler:v27 networkActivity:0];

  v24 = *MEMORY[0x1E69E9840];
}

void __67__SGEventGeocode_geocodePOIWithName_ofTypes_inRegion_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 40) _serialQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__SGEventGeocode_geocodePOIWithName_ofTypes_inRegion_withCallback___block_invoke_2;
  v6[3] = &unk_1E7EFAF10;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __67__SGEventGeocode_geocodePOIWithName_ofTypes_inRegion_withCallback___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:0];

  if (v2)
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:0];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

+ (void)geocodeAddressWithCanonicalSearch:(id)search withCallback:(id)callback
{
  searchCopy = search;
  callbackCopy = callback;
  v8 = objc_autoreleasePoolPush();
  v9 = objc_autoreleasePoolPush();
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208] defaultTraits];

  objc_autoreleasePoolPop(v9);
  v12 = objc_autoreleasePoolPush();
  mEMORY[0x1E69A2208]2 = [MEMORY[0x1E69A2208] sharedService];
  v14 = [mEMORY[0x1E69A2208]2 ticketForCanonicalLocationSearchQueryString:searchCopy traits:defaultTraits];

  objc_autoreleasePoolPop(v12);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__SGEventGeocode_geocodeAddressWithCanonicalSearch_withCallback___block_invoke;
  v16[3] = &unk_1E7EFAF38;
  selfCopy = self;
  v15 = callbackCopy;
  v17 = v15;
  [v14 submitWithHandler:v16 networkActivity:0];

  objc_autoreleasePoolPop(v8);
}

void __65__SGEventGeocode_geocodeAddressWithCanonicalSearch_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 40) _serialQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__SGEventGeocode_geocodeAddressWithCanonicalSearch_withCallback___block_invoke_2;
  v6[3] = &unk_1E7EFAF10;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __65__SGEventGeocode_geocodeAddressWithCanonicalSearch_withCallback___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:0];

  if (v2)
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:0];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

+ (void)geocodeAddress:(id)address withCallback:(id)callback
{
  addressCopy = address;
  callbackCopy = callback;
  v8 = objc_autoreleasePoolPush();
  v9 = objc_autoreleasePoolPush();
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208] defaultTraits];

  objc_autoreleasePoolPop(v9);
  v12 = objc_autoreleasePoolPush();
  mEMORY[0x1E69A2208]2 = [MEMORY[0x1E69A2208] sharedService];
  v14 = [mEMORY[0x1E69A2208]2 ticketForSearchQuery:addressCopy completionItem:0 maxResults:5 traits:defaultTraits];

  objc_autoreleasePoolPop(v12);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__SGEventGeocode_geocodeAddress_withCallback___block_invoke;
  v16[3] = &unk_1E7EFAF38;
  selfCopy = self;
  v15 = callbackCopy;
  v17 = v15;
  [v14 submitWithHandler:v16 networkActivity:0];

  objc_autoreleasePoolPop(v8);
}

void __46__SGEventGeocode_geocodeAddress_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 40) _serialQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__SGEventGeocode_geocodeAddress_withCallback___block_invoke_2;
  v6[3] = &unk_1E7EFAF10;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __46__SGEventGeocode_geocodeAddress_withCallback___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:0];

  if (v2)
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:0];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

+ (BOOL)isGeocodeCandidate:(id)candidate
{
  v18 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  geocodeLocations = [candidateCopy geocodeLocations];
  v6 = [geocodeLocations countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(geocodeLocations);
        }

        if ([self isGeocodeCandidateLocation:*(*(&v13 + 1) + 8 * i) forEvent:candidateCopy])
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [geocodeLocations countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)isGeocodeCandidateLocation:(id)location forEvent:(id)event
{
  v22 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  eventCopy = event;
  v8 = [self locationIsGeocoded:locationCopy];
  if (!v8 || ([locationCopy geocodeAirportCode], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    geocodeAddress = [locationCopy geocodeAddress];

    if (!geocodeAddress)
    {
      v13 = sgEventsLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
LABEL_14:

        v17 = 0;
        goto LABEL_15;
      }

      loggingIdentifier = [eventCopy loggingIdentifier];
      v20 = 138543362;
      v21 = loggingIdentifier;
      v15 = "SGEventGeocode isGeocodeCandidateLocation: Returning NO, event has no address. [SGEvent (%{public}@)]";
LABEL_17:
      _os_log_debug_impl(&dword_1BA729000, v13, OS_LOG_TYPE_DEBUG, v15, &v20, 0xCu);

      goto LABEL_14;
    }

    if (v8)
    {
      geocodeStartTimeZone = [eventCopy geocodeStartTimeZone];
      if (geocodeStartTimeZone || ([locationCopy geocodeIsStart] & 1) == 0)
      {
        geocodeEndTimeZone = [eventCopy geocodeEndTimeZone];
        if (geocodeEndTimeZone)
        {

LABEL_13:
          v13 = sgEventsLogHandle();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_14;
          }

          loggingIdentifier = [eventCopy loggingIdentifier];
          v20 = 138543362;
          v21 = loggingIdentifier;
          v15 = "SGEventGeocode isGeocodeCandidateLocation: Returning NO, nothing to work with. [SGEvent (%{public}@)]";
          goto LABEL_17;
        }

        geocodeIsEnd = [locationCopy geocodeIsEnd];

        if ((geocodeIsEnd & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }
  }

  v17 = 1;
LABEL_15:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)locationIsGeocoded:(id)geocoded
{
  geocodedCopy = geocoded;
  [geocodedCopy geocodeLatitude];
  [geocodedCopy geocodeLongitude];

  return 1;
}

+ (BOOL)locationIsAirport:(id)airport
{
  airportCopy = airport;
  geocodeAirportCode = [airportCopy geocodeAirportCode];
  if (geocodeAirportCode)
  {
    v6 = [self locationIsGeocoded:airportCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_serialQueue
{
  if (_serialQueue_onceToken != -1)
  {
    dispatch_once(&_serialQueue_onceToken, &__block_literal_global_1384);
  }

  v3 = _serialQueue_queue;

  return v3;
}

void __30__SGEventGeocode__serialQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.suggestions.SGEventGeocode", attr);
  v2 = _serialQueue_queue;
  _serialQueue_queue = v1;
}

@end