@interface GEOLocation(MNExtras)
+ (id)locationWithCLLocation:()MNExtras course:;
- (id)initWithCLLocation:()MNExtras useMatchInfo:;
- (uint64_t)clientLocation;
- (void)initWithCLLocation:()MNExtras course:;
@end

@implementation GEOLocation(MNExtras)

- (uint64_t)clientLocation
{
  *(a2 + 140) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  [a1 timestamp];
  *(a2 + 76) = v4;
  v5 = [a1 latLng];
  [v5 lat];
  *(a2 + 4) = v6;

  v7 = [a1 latLng];
  [v7 lng];
  *(a2 + 12) = v8;

  [a1 horizontalAccuracy];
  *(a2 + 20) = v9;
  *(a2 + 28) = [a1 altitude];
  [a1 verticalAccuracy];
  *(a2 + 36) = v10;
  [a1 speed];
  *(a2 + 44) = v11;
  [a1 speedAccuracy];
  *(a2 + 52) = v12;
  [a1 course];
  *(a2 + 60) = v13;
  [a1 courseAccuracy];
  *(a2 + 68) = v14;
  v15 = [a1 type] - 1;
  if (v15 > 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = dword_1D328D4B0[v15];
  }

  *(a2 + 96) = v16;
  v17 = [a1 rawCoordinate];
  [v17 lat];
  *(a2 + 100) = v18;

  v19 = [a1 rawCoordinate];
  [v19 lng];
  *(a2 + 108) = v20;

  [a1 rawCourse];
  *(a2 + 116) = v21;
  *(a2 + 84) = 0;
  *(a2 + 88) = 0xBFF0000000000000;
  *a2 = 0xFFFF;
  result = [a1 referenceFrame];
  v23 = 2 * (result == 2);
  if (result == 1)
  {
    v23 = 1;
  }

  *(a2 + 132) = v23;
  return result;
}

- (id)initWithCLLocation:()MNExtras useMatchInfo:
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v52.receiver = a1;
  v52.super_class = &off_1F4F09D58;
  v7 = objc_msgSendSuper2(&v52, sel_init);
  if (v7)
  {
    if (v6)
    {
      [v6 rawCoordinate];
      v9 = v8;
      v11 = v10;
      if ([MEMORY[0x1E69A1E80] isLocationShiftRequiredForCoordinate:?])
      {
        [v6 _navigation_rawShiftedCoordinate];
        if (CLLocationCoordinate2DIsValid(v56))
        {
          [v6 _navigation_rawShiftedCoordinate];
          if (v12 != 0.0 || ([v6 _navigation_rawShiftedCoordinate], v13 != 0.0))
          {
            [v6 _navigation_rawShiftedCoordinate];
            v9 = v14;
            v11 = v15;
          }
        }
      }

      v16 = v11;
      v17 = v9;
      if (a4)
      {
        [v6 coordinate];
        v17 = v18;
        v16 = v19;
      }

      if (fabs(v16) <= 180.0 && v17 >= -90.0 && v17 <= 90.0)
      {
        v20 = [objc_alloc(MEMORY[0x1E69A1E50]) initWithCoordinate:{v17, v16}];
        [v7 setLatLng:v20];

        v21 = [v6 _navigation_gtLog];
        v22 = [v7 latLng];
        [v22 setGtLog:v21];
      }

      if (fabs(v11) <= 180.0 && v9 >= -90.0 && v9 <= 90.0)
      {
        v23 = [objc_alloc(MEMORY[0x1E69A1E50]) initWithCoordinate:{v9, v11}];
        [v7 setRawCoordinate:v23];

        v24 = [v6 _navigation_gtLog];
        v25 = [v7 rawCoordinate];
        [v25 setGtLog:v24];
      }

      v26 = [v6 timestamp];
      [v26 timeIntervalSinceReferenceDate];
      [v7 setTimestamp:?];

      [v6 altitude];
      [v7 setAltitude:v27];
      [v6 horizontalAccuracy];
      [v7 setHorizontalAccuracy:?];
      [v6 verticalAccuracy];
      [v7 setVerticalAccuracy:?];
      if (a4)
      {
        [v6 course];
      }

      else
      {
        [v6 clientLocation];
        v28 = v51[35];
      }

      [v7 setCourse:*&v28];
      [v6 clientLocation];
      [v7 setRawCourse:*(&v51[15] + 4)];
      [v6 courseAccuracy];
      [v7 setCourseAccuracy:?];
      [v6 speed];
      if (v29 >= 0.0)
      {
        [v6 speed];
        [v7 setSpeed:?];
      }

      [v6 _navigation_speedAccuracy];
      if (v30 >= 0.0)
      {
        [v6 _navigation_speedAccuracy];
        [v7 setSpeedAccuracy:?];
      }

      v31 = [v6 type] - 1;
      if (v31 <= 0xA && ((0x5EFu >> v31) & 1) != 0)
      {
        [v7 setType:dword_1D328D438[v31]];
      }

      if (a4)
      {
        v32 = [v6 _navigation_hasMatch];
      }

      else
      {
        v32 = 0;
      }

      [v7 setIsMatchedLocation:v32];
      v33 = [v6 matchInfo];
      if (v33)
      {
        v34 = [v6 matchInfo];
        [v7 setIsShifted:{objc_msgSend(v34, "isMatchShifted")}];
      }

      else
      {
        [v7 setIsShifted:0];
      }

      v35 = [v6 referenceFrame];
      if (v35 == 1)
      {
        v36 = 1;
      }

      else
      {
        v36 = 2 * (v35 == 2);
      }

      [v7 setReferenceFrame:v36];
      v37 = [v6 matchInfo];

      if (v37)
      {
        v38 = [v6 matchInfo];
        [v7 setFormOfWay:{objc_msgSend(v38, "matchFormOfWay")}];

        v39 = [v6 matchInfo];
        [v7 setRoadClass:{objc_msgSend(v39, "matchRoadClass")}];

        v40 = [v6 matchInfo];
        v41 = [v40 matchQuality];

        if ((v41 - 1) <= 2)
        {
          [v7 setMatchQuality:?];
        }
      }

      v42 = [v6 coarseMetaData];

      if (v42)
      {
        v43 = MEMORY[0x1E696ACD0];
        v44 = objc_opt_class();
        v45 = [v6 coarseMetaData];
        v51[0] = 0;
        v46 = [v43 unarchivedObjectOfClass:v44 fromData:v45 error:v51];
        v47 = v51[0];

        if (v46)
        {
          [v7 setCoarseMetadata:v46];
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v54 = v47;
          _os_log_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to decode coarse location metadata: %{public}@", buf, 0xCu);
        }
      }
    }

    v48 = v7;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)initWithCLLocation:()MNExtras course:
{
  v3 = [a1 initWithCLLocation:?];
  v4 = v3;
  if (v3)
  {
    if (a2 >= 0.0)
    {
      [v3 setCourse:a2];
    }

    else
    {
      [v3 setHasCourse:0];
    }

    v5 = v4;
  }

  return v4;
}

+ (id)locationWithCLLocation:()MNExtras course:
{
  v5 = MEMORY[0x1E69A1E70];
  v6 = a4;
  v7 = [[v5 alloc] initWithCLLocation:v6 course:a1];

  return v7;
}

@end