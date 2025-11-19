@interface CLLocation(MNExtras)
+ (__CFString)_navigation_stringWithType:()MNExtras;
+ (uint64_t)_navigation_isLocation:()MNExtras equalTo:;
- (double)_navigation_geoCoordinate;
- (double)_navigation_geoCoordinate3D;
- (double)_navigation_rawShiftedCoordinate;
- (id)_navigation_geoLocation;
- (id)initWithCoordinate:()MNExtras rawCoordinate:course:rawCourse:courseAccuracy:speed:speedAccuracy:altitude:timestamp:horizontalAccuracy:verticalAccuracy:type:referenceFrame:serializedCoarseMetaData:;
- (uint64_t)_navigation_gtLog;
- (uint64_t)_navigation_hasValidCourse;
- (uint64_t)_navigation_locationDescription;
- (uint64_t)initWithGeoLocation:()MNExtras;
- (void)_navigation_setGtLog:()MNExtras;
@end

@implementation CLLocation(MNExtras)

- (uint64_t)_navigation_gtLog
{
  v1 = objc_getAssociatedObject(a1, &_navigation_gtLogKey);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)_navigation_hasValidCourse
{
  [a1 course];
  if (v2 < 0.0)
  {
    return 0;
  }

  [a1 courseAccuracy];
  if ((v4 & 0x80000000) == 0)
  {
    [a1 courseAccuracy];
    if (v5 < 180.0)
    {
      return 1;
    }
  }

  return GEOConfigGetBOOL();
}

- (double)_navigation_geoCoordinate
{
  [a1 coordinate];
  v3 = v2;
  [a1 coordinate];
  return v3;
}

- (double)_navigation_geoCoordinate3D
{
  [a1 coordinate];
  v3 = v2;
  [a1 coordinate];
  [a1 altitude];
  return v3;
}

- (id)_navigation_geoLocation
{
  v2 = objc_alloc(MEMORY[0x1E69A1E70]);
  [a1 coordinate];
  v4 = v3;
  [a1 coordinate];
  v5 = [v2 initWithLatitude:v4 longitude:?];

  return v5;
}

- (void)_navigation_setGtLog:()MNExtras
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, &_navigation_gtLogKey, v2, 1);
}

- (double)_navigation_rawShiftedCoordinate
{
  result = *MEMORY[0x1E6985CC0];
  v1 = *(MEMORY[0x1E6985CC0] + 8);
  return result;
}

- (uint64_t)_navigation_locationDescription
{
  v2 = MEMORY[0x1E696AEC0];
  [a1 coordinate];
  v4 = v3;
  [a1 coordinate];
  v6 = v5;
  [a1 horizontalAccuracy];
  return [v2 stringWithFormat:@"(%+.5f, %+.5f) ±%.2fm", v4, v6, v7];
}

- (uint64_t)initWithGeoLocation:()MNExtras
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 latLng];
  [v5 lat];
  v7 = v6;
  v8 = [v4 latLng];
  [v8 lng];
  v10 = CLLocationCoordinate2DMake(v7, v9);

  v11 = [v4 rawCoordinate];
  [v11 lat];
  v13 = v12;
  v14 = [v4 rawCoordinate];
  [v14 lng];
  v16 = CLLocationCoordinate2DMake(v13, v15);

  if ([v4 hasCoarseMetadata])
  {
    v17 = MEMORY[0x1E696ACC8];
    v18 = [v4 coarseMetadata];
    v45 = 0;
    v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v45];
    v20 = v45;

    if (!v19 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v47 = v20;
      _os_log_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to encode coarse location metadata: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v19 = 0;
  }

  [v4 course];
  v44 = v21;
  [v4 rawCourse];
  v23 = v22;
  [v4 courseAccuracy];
  v25 = v24;
  [v4 speed];
  v27 = v26;
  [v4 speedAccuracy];
  v29 = v28;
  v30 = [v4 altitude];
  [v4 timestamp];
  v32 = v31;
  [v4 horizontalAccuracy];
  v34 = v33;
  [v4 verticalAccuracy];
  v36 = v35;
  v37 = [v4 type] - 1;
  if (v37 > 2)
  {
    v38 = 0;
  }

  else
  {
    v38 = dword_1D328D4B0[v37];
  }

  v39 = [v4 referenceFrame];
  if (v39 == 1)
  {
    v40 = 1;
  }

  else
  {
    v40 = 2 * (v39 == 2);
  }

  v41 = [a1 initWithCoordinate:v38 rawCoordinate:v40 course:v19 rawCourse:v10.latitude courseAccuracy:v10.longitude speed:v16.latitude speedAccuracy:v16.longitude altitude:v44 timestamp:v23 horizontalAccuracy:v25 verticalAccuracy:v27 type:v29 referenceFrame:v30 serializedCoarseMetaData:{v32, v34, v36}];

  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

- (id)initWithCoordinate:()MNExtras rawCoordinate:course:rawCourse:courseAccuracy:speed:speedAccuracy:altitude:timestamp:horizontalAccuracy:verticalAccuracy:type:referenceFrame:serializedCoarseMetaData:
{
  v24 = 0xFFFF;
  v25 = a2;
  v26 = a3;
  v27 = a20;
  v28 = a18;
  v29 = a21;
  v30 = a9;
  v31 = a17;
  v32 = a6;
  v33 = a8;
  v34 = a19;
  v35 = 0;
  v36 = 0xBFF0000000000000;
  v37 = a11;
  v38 = a4;
  v39 = a5;
  v40 = a7;
  v41 = 0;
  v42 = a12;
  v44 = 0;
  v43 = 0;
  v45 = 0;
  if (a13)
  {
    v21 = [a1 initWithClientLocation:&v24 coarseMetaData:a13];
  }

  else
  {
    v21 = [a1 initWithClientLocation:&v24];
  }

  v22 = v21;

  return v22;
}

+ (uint64_t)_navigation_isLocation:()MNExtras equalTo:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!(v5 | v6))
  {
LABEL_2:
    v8 = 1;
    goto LABEL_7;
  }

  v8 = 0;
  if (v5 && v6)
  {
    if (v5 != v6)
    {
      [v6 coordinate];
      v8 = [v5 _navigation_isEqualToLocationCoordinate:?];
      goto LABEL_7;
    }

    goto LABEL_2;
  }

LABEL_7:

  return v8;
}

+ (__CFString)_navigation_stringWithType:()MNExtras
{
  if ((a3 - 1) > 0xC)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E842EEB8[a3 - 1];
  }
}

@end