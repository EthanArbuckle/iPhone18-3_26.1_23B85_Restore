@interface MNLocation
+ (BOOL)puckLocationTracing;
- (BOOL)_canProjectAlongRoute;
- (BOOL)_navigation_hasValidCourse;
- (BOOL)_navigation_isStale;
- (BOOL)isEqualToLocation:(id)a3;
- (BOOL)isProjected;
- (CLLocationCoordinate2D)_navigation_rawShiftedCoordinate;
- (CLLocationCoordinate2D)rawShiftedCoordinate;
- (MNLocation)initWithCLLocation:(id)a3;
- (MNLocation)initWithClientLocation:(id *)a3;
- (MNLocation)initWithClientLocation:(id *)a3 matchInfo:(id)a4;
- (MNLocation)initWithCoder:(id)a3;
- (MNLocation)initWithRawLocation:(id)a3 locationFixType:(unint64_t)a4;
- (MNLocation)initWithRoadMatch:(id)a3 rawLocation:(id)a4 locationFixType:(unint64_t)a5;
- (MNLocation)initWithRouteMatch:(id)a3 rawLocation:(id)a4 locationFixType:(unint64_t)a5;
- (NSDate)originalDate;
- (NSString)roadName;
- (double)distanceToEndOfCurrentLeg;
- (double)distanceToEndOfRoute;
- (id)_referenceFrameAsString:(int)a3;
- (id)_roadFeature;
- (id)description;
- (id)propagatedLocationForTimeInterval:(double)a3 shouldProjectAlongRoute:(BOOL)a4;
- (unint64_t)stepIndex;
- (void)_readFromRoadFeature:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setRouteMatch:(id)a3;
@end

@implementation MNLocation

- (unint64_t)stepIndex
{
  routeMatch = self->_routeMatch;
  if (routeMatch)
  {
    return [(GEORouteMatch *)routeMatch stepIndex];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UUID: %@", self->_uuid];
  [v3 addObject:v4];

  state = self->_state;
  if (state > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&off_1E842FD28 + state);
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Match type: %@", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  [(MNLocation *)self coordinate];
  v10 = v9;
  [(MNLocation *)self coordinate];
  v12 = v11;
  [(MNLocation *)self horizontalAccuracy];
  v14 = v13;
  [(MNLocation *)self rawCoordinate];
  v16 = v15;
  [(MNLocation *)self rawCoordinate];
  v18 = [v8 stringWithFormat:@"Coordinate: %f, %f ±%0.2f (raw: %f, %f)", v10, v12, v14, v16, v17];
  [v3 addObject:v18];

  v19 = MEMORY[0x1E696AEC0];
  [(MNLocation *)self course];
  v21 = v20;
  [(MNLocation *)self courseAccuracy];
  v23 = v22;
  [(MNLocation *)self rawCourse];
  v25 = [v19 stringWithFormat:@"Course: %0.2f° ±%0.2f (raw: %0.2f°)", v21, v23, v24];
  [v3 addObject:v25];

  v26 = MEMORY[0x1E696AEC0];
  [(MNLocation *)self speed];
  v28 = v27;
  [(CLLocation *)self _navigation_speedAccuracy];
  v30 = [v26 stringWithFormat:@"Speed: %0.2f m/s ±%0.2f", v28, v29];
  [v3 addObject:v30];

  v31 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v31 setDateFormat:@"yyyy-MM-dd h:mm:ss.SSS a"];
  v32 = [(MNLocation *)self timestamp];
  v33 = [v31 stringFromDate:v32];

  v34 = MEMORY[0x1E696AEC0];
  v35 = [(MNLocation *)self timestamp];
  [v35 timeIntervalSinceReferenceDate];
  v37 = [v34 stringWithFormat:@"Date: %@ (%0.3f)", v33, v36];
  [v3 addObject:v37];

  v38 = MEMORY[0x1E69A1E80];
  [(MNLocation *)self coordinate];
  if ([v38 isLocationShiftRequiredForCoordinate:?])
  {
    v39 = MEMORY[0x1E696AEC0];
    v40 = [(MNLocation *)self _referenceFrameAsString:[(MNLocation *)self referenceFrame]];
    [(MNLocation *)self clientLocation];
    v41 = [(MNLocation *)self _referenceFrameAsString:v45];
    v42 = [v39 stringWithFormat:@"Reference frame: %@ (raw: %@)", v40, v41];
    [v3 addObject:v42];
  }

  v43 = [v3 componentsJoinedByString:@"\n"];

  return v43;
}

- (BOOL)_canProjectAlongRoute
{
  v3 = [(GEORouteMatch *)self->_routeMatch shouldProjectLocationAlongRoute];
  if (self->_state == 1)
  {
    v4 = [(GEORouteMatch *)self->_routeMatch isGoodMatch];
  }

  else
  {
    v4 = 0;
  }

  [(MNLocation *)self speed];
  if (v5 >= 0.0)
  {
    [(MNLocation *)self speedAccuracy];
    v6 = v8 >= 0.0;
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    v6 = 0;
    if (!v3)
    {
      return 0;
    }
  }

  return v4 & v6;
}

- (CLLocationCoordinate2D)_navigation_rawShiftedCoordinate
{
  latitude = self->_rawShiftedCoordinate.latitude;
  longitude = self->_rawShiftedCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (NSString)roadName
{
  v14 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (!state)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  if (state != 2)
  {
    if (state == 1)
    {
      roadName = self->_roadName;
      if (!roadName)
      {
        roadName = self->_shieldText;
      }

      goto LABEL_7;
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "[MNLocation roadName]";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/MNLocation.m";
      v12 = 1024;
      v13 = 388;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v8, 0x1Cu);
    }

    goto LABEL_11;
  }

  roadName = self->_roadName;
  if (roadName)
  {
LABEL_7:
    v4 = roadName;
    goto LABEL_12;
  }

  v4 = [(GEORoadMatch *)self->_roadMatch roadName];
LABEL_12:
  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)_navigation_isStale
{
  if ([(MNLocation *)self isProjected]|| [(MNLocation *)self locationUnreliable])
  {
    LOBYTE(expirationDate) = 1;
  }

  else
  {
    expirationDate = self->_expirationDate;
    if (expirationDate)
    {
      v5 = [MEMORY[0x1E695DF00] date];
      LOBYTE(expirationDate) = [(NSDate *)expirationDate compare:v5]!= NSOrderedDescending;
    }
  }

  return expirationDate;
}

- (BOOL)isProjected
{
  if (!self->_routeMatch || [(MNLocation *)self state]!= 1)
  {
    return 0;
  }

  routeMatch = self->_routeMatch;

  return [(GEORouteMatch *)routeMatch isTunnelProjection];
}

- (BOOL)_navigation_hasValidCourse
{
  v4.receiver = self;
  v4.super_class = MNLocation;
  return [(CLLocation *)&v4 _navigation_hasValidCourse]|| [(MNLocation *)self state]!= 0;
}

- (CLLocationCoordinate2D)rawShiftedCoordinate
{
  latitude = self->_rawShiftedCoordinate.latitude;
  longitude = self->_rawShiftedCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MNLocation;
  v4 = a3;
  [(MNLocation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_uuid forKey:{@"_uuid", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_state forKey:@"_state"];
  [v4 encodeObject:self->_routeID forKey:@"_routeID"];
  [v4 encodeObject:self->_rawLocation forKey:@"_rawLocation"];
  [v4 encodeBytes:&self->_rawShiftedCoordinate length:16 forKey:@"_rawShiftedCoordinate"];
  [v4 encodeObject:self->_roadName forKey:@"_roadName"];
  [v4 encodeObject:self->_shieldText forKey:@"_shieldText"];
  [v4 encodeInteger:self->_shieldType forKey:@"_shieldType"];
  [v4 encodeInteger:self->_roadLineType forKey:@"_roadLineType"];
  [v4 encodeInteger:self->_rampType forKey:@"_rampType"];
  [v4 encodeInteger:self->_speedLimit forKey:@"_speedLimit"];
  [v4 encodeBool:self->_speedLimitIsMPH forKey:@"_speedLimitIsMPH"];
  [v4 encodeInteger:self->_speedLimitShieldType forKey:@"_speedLimitShieldType"];
  [v4 encodeBool:self->_isDirectional forKey:@"_isDirectional"];
  [v4 encodeBool:self->_locationUnreliable forKey:@"_locationUnreliable"];
  [v4 encodeObject:self->_expirationDate forKey:@"_expirationDate"];
  [v4 encodeObject:self->_originalDate forKey:@"_originalDate"];
  [v4 encodeObject:self->_routeMatch forKey:@"_routeMatch"];
  [v4 encodeObject:self->_roadMatch forKey:@"_roadMatch"];
}

- (MNLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = MNLocation;
  v5 = [(MNLocation *)&v32 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_state = [v4 decodeIntegerForKey:@"_state"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_routeID"];
    routeID = v5->_routeID;
    v5->_routeID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_rawLocation"];
    rawLocation = v5->_rawLocation;
    v5->_rawLocation = v10;

    v31[0] = 0;
    v12 = [v4 decodeBytesForKey:@"_rawShiftedCoordinate" returnedLength:v31];
    if (v31[0] && v12)
    {
      if (v31[0] >= 0x10uLL)
      {
        v13 = 16;
      }

      else
      {
        v13 = v31[0];
      }

      memcpy(&v5->_rawShiftedCoordinate, v12, v13);
    }

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_roadName"];
    roadName = v5->_roadName;
    v5->_roadName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_shieldText"];
    shieldText = v5->_shieldText;
    v5->_shieldText = v16;

    v5->_shieldType = [v4 decodeIntegerForKey:@"_shieldType"];
    v5->_roadLineType = [v4 decodeIntegerForKey:@"_roadLineType"];
    v5->_rampType = [v4 decodeIntegerForKey:@"_rampType"];
    v5->_speedLimit = [v4 decodeIntegerForKey:@"_speedLimit"];
    v5->_speedLimitIsMPH = [v4 decodeBoolForKey:@"_speedLimitIsMPH"];
    v5->_speedLimitShieldType = [v4 decodeIntegerForKey:@"_speedLimitShieldType"];
    v5->_isDirectional = [v4 decodeBoolForKey:@"_isDirectional"];
    v5->_locationUnreliable = [v4 decodeBoolForKey:@"_locationUnreliable"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_originalDate"];
    originalDate = v5->_originalDate;
    v5->_originalDate = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_routeMatch"];
    routeMatch = v5->_routeMatch;
    v5->_routeMatch = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_roadMatch"];
    roadMatch = v5->_roadMatch;
    v5->_roadMatch = v24;

    if (!v5->_rawLocation)
    {
      v26 = objc_alloc(MEMORY[0x1E6985C40]);
      [(MNLocation *)v5 clientLocation];
      v27 = [v26 initWithClientLocation:v31];
      v28 = v5->_rawLocation;
      v5->_rawLocation = v27;
    }

    v5->_traceIndex = 0x7FFFFFFFFFFFFFFFLL;
    v29 = v5;
  }

  return v5;
}

- (id)_referenceFrameAsString:(int)a3
{
  v3 = @"Unknown";
  if (a3 == 2)
  {
    v3 = @"ChinaShifted";
  }

  if (a3 == 1)
  {
    return @"WGS84";
  }

  else
  {
    return v3;
  }
}

- (void)_readFromRoadFeature:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 feature];
    v6 = [v5 attributes];
    self->_roadLineType = [v6 lineType];

    v7 = [v4 feature];
    v8 = [v7 attributes];
    self->_rampType = [v8 rampType];

    self->_speedLimit = [v4 displaySpeedLimit];
    self->_speedLimitIsMPH = [v4 displaySpeedLimitIsMPH];
    LODWORD(v7) = [v4 speedLimitShieldId];

    self->_speedLimitShieldType = v7;
  }
}

- (id)_roadFeature
{
  if (self->_state == 2)
  {
    v2 = [(GEORoadMatch *)self->_roadMatch roadFeature];
  }

  else
  {
    v3 = [(GEORouteMatch *)self->_routeMatch road];
    v2 = [v3 feature];
  }

  return v2;
}

- (double)distanceToEndOfCurrentLeg
{
  routeMatch = self->_routeMatch;
  if (!routeMatch)
  {
    return -1.0;
  }

  v4 = [(GEORouteMatch *)routeMatch routeCoordinate];
  v5 = [(GEORouteMatch *)self->_routeMatch leg];
  v6 = [v5 endRouteCoordinate];

  if (GEOPolylineCoordinateIsABeforeB())
  {
    return -1.0;
  }

  v8 = [(GEORouteMatch *)self->_routeMatch route];
  [v8 distanceBetweenRouteCoordinate:v4 andRouteCoordinate:v6];
  v10 = v9;

  return v10;
}

- (double)distanceToEndOfRoute
{
  routeMatch = self->_routeMatch;
  if (!routeMatch)
  {
    return -1.0;
  }

  v4 = [(GEORouteMatch *)routeMatch routeCoordinate];
  v5 = [(GEORouteMatch *)self->_routeMatch route];
  [v5 distanceToEndFromRouteCoordinate:v4];
  v7 = v6;

  return v7;
}

- (NSDate)originalDate
{
  originalDate = self->_originalDate;
  if (originalDate)
  {
    v3 = originalDate;
  }

  else
  {
    v3 = [(CLLocation *)self->_rawLocation timestamp];
  }

  return v3;
}

- (void)setRouteMatch:(id)a3
{
  v4 = a3;
  v5 = [v4 route];
  v6 = [v5 uniqueRouteID];
  routeID = self->_routeID;
  self->_routeID = v6;

  routeMatch = self->_routeMatch;
  self->_routeMatch = v4;
}

- (BOOL)isEqualToLocation:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_74;
  }

  v5 = *MEMORY[0x1E69A19F8];
  v6 = *(MEMORY[0x1E69A19F8] + 8);
  if (GEOConfigGetBOOL())
  {
    v7 = v4[2];
    v8 = self->_uuid;
    v9 = v8;
    if (v8 | v7)
    {
      LOBYTE(v7) = [v8 isEqual:v7];
    }

    else
    {
      LOBYTE(v7) = 1;
    }

    goto LABEL_75;
  }

  [(MNLocation *)self coordinate];
  v11 = v10;
  v13 = v12;
  [v4 coordinate];
  LOBYTE(v7) = 0;
  if (vabdd_f64(v11, v15) >= 0.000001)
  {
    goto LABEL_75;
  }

  if (vabdd_f64(v13, v14) >= 0.000001)
  {
    goto LABEL_75;
  }

  [(MNLocation *)self rawCoordinate];
  v17 = v16;
  v19 = v18;
  [v4 rawCoordinate];
  LOBYTE(v7) = 0;
  if (vabdd_f64(v17, v21) >= 0.000001 || vabdd_f64(v19, v20) >= 0.000001)
  {
    goto LABEL_75;
  }

  [(MNLocation *)self altitude];
  v23 = v22;
  [v4 altitude];
  if (vabdd_f64(v23, v24) >= 0.000001)
  {
    goto LABEL_74;
  }

  [(MNLocation *)self horizontalAccuracy];
  v26 = v25;
  [v4 horizontalAccuracy];
  if (vabdd_f64(v26, v27) >= 0.000001)
  {
    goto LABEL_74;
  }

  [(MNLocation *)self verticalAccuracy];
  v29 = v28;
  [v4 verticalAccuracy];
  if (vabdd_f64(v29, v30) >= 0.000001)
  {
    goto LABEL_74;
  }

  [(MNLocation *)self course];
  v32 = v31;
  [v4 course];
  if (vabdd_f64(v32, v33) >= 0.000001)
  {
    goto LABEL_74;
  }

  [(MNLocation *)self rawCourse];
  v35 = v34;
  [v4 rawCourse];
  if (vabdd_f64(v35, v36) >= 0.000001)
  {
    goto LABEL_74;
  }

  [(MNLocation *)self courseAccuracy];
  v38 = v37;
  [v4 courseAccuracy];
  if (vabdd_f64(v38, v39) >= 0.000001)
  {
    goto LABEL_74;
  }

  [(MNLocation *)self speed];
  v41 = v40;
  [v4 speed];
  if (vabdd_f64(v41, v42) >= 0.000001)
  {
    goto LABEL_74;
  }

  [(MNLocation *)self speedAccuracy];
  v44 = v43;
  [v4 speedAccuracy];
  if (vabdd_f64(v44, v45) >= 0.000001)
  {
    goto LABEL_74;
  }

  v7 = [(MNLocation *)self timestamp];
  v46 = [v4 timestamp];
  if (![v7 isEqualToDate:v46])
  {
    goto LABEL_72;
  }

  v47 = [(MNLocation *)self type];
  if (v47 != [v4 type])
  {
    goto LABEL_72;
  }

  v48 = [(MNLocation *)self integrity];
  if (v48 != [v4 integrity])
  {
    goto LABEL_72;
  }

  v49 = [(MNLocation *)self referenceFrame];
  if (v49 != [v4 referenceFrame])
  {
    goto LABEL_72;
  }

  [(MNLocation *)self clientLocation];
  [v4 clientLocation];
  if (v132 != v131)
  {
    goto LABEL_72;
  }

  [(MNLocation *)self rawShiftedCoordinate];
  v51 = v50;
  v53 = v52;
  [v4 rawShiftedCoordinate];
  v55 = v54;
  v57 = vabdd_f64(v51, v56);

  LOBYTE(v7) = 0;
  if (v57 >= 0.000001 || vabdd_f64(v53, v55) >= 0.000001)
  {
    goto LABEL_75;
  }

  if (self->_state != v4[3])
  {
    goto LABEL_74;
  }

  v58 = v4[4];
  v59 = self->_routeID;
  v60 = v58;
  if (v59 | v60)
  {
    v61 = v60;
    v62 = [v59 isEqual:v60];

    if (!v62)
    {
      goto LABEL_74;
    }
  }

  v63 = v4[11];
  v64 = self->_roadName;
  v65 = v63;
  if (v64 | v65)
  {
    v66 = v65;
    v67 = [v64 isEqual:v65];

    if (!v67)
    {
      goto LABEL_74;
    }
  }

  v68 = v4[12];
  v69 = self->_shieldText;
  v70 = v68;
  if (v69 | v70)
  {
    v71 = v70;
    v72 = [v69 isEqual:v70];

    if (!v72)
    {
      goto LABEL_74;
    }
  }

  if (self->_shieldType != v4[13])
  {
    goto LABEL_74;
  }

  if (self->_roadLineType != *(v4 + 28))
  {
    goto LABEL_74;
  }

  if (self->_rampType != *(v4 + 29))
  {
    goto LABEL_74;
  }

  if (self->_speedLimit != v4[15])
  {
    goto LABEL_74;
  }

  if (self->_speedLimitIsMPH != *(v4 + 128))
  {
    goto LABEL_74;
  }

  if (self->_isDirectional != *(v4 + 144))
  {
    goto LABEL_74;
  }

  if (self->_locationUnreliable != *(v4 + 145))
  {
    goto LABEL_74;
  }

  v73 = v4[19];
  v74 = self->_expirationDate;
  v75 = v73;
  if (v74 | v75)
  {
    v76 = v75;
    v77 = [v74 isEqual:v75];

    if (!v77)
    {
      goto LABEL_74;
    }
  }

  v78 = v4[20];
  v79 = self->_originalDate;
  v80 = v78;
  if (v79 | v80)
  {
    v81 = v80;
    v82 = [v79 isEqual:v80];

    if (!v82)
    {
LABEL_74:
      LOBYTE(v7) = 0;
      goto LABEL_75;
    }
  }

  v83 = self->_routeMatch != 0;
  v84 = [v4 routeMatch];
  LODWORD(v7) = v83 ^ (v84 == 0);

  routeMatch = self->_routeMatch;
  if (!routeMatch)
  {
    if (!v7)
    {
      goto LABEL_75;
    }

    goto LABEL_57;
  }

  if (!v7)
  {
    goto LABEL_75;
  }

  v86 = [(GEORouteMatch *)routeMatch routeCoordinate];
  v7 = [v4 routeMatch];
  if (v86 != [v7 routeCoordinate])
  {
    goto LABEL_73;
  }

  LODWORD(v87) = [(GEORouteMatch *)self->_routeMatch routeCoordinate]>> 32;
  v46 = [v4 routeMatch];
  if (vabds_f32(v87, COERCE_FLOAT([v46 routeCoordinate] >> 32)) >= 0.000001)
  {
LABEL_72:

LABEL_73:
    goto LABEL_74;
  }

  [(GEORouteMatch *)self->_routeMatch locationCoordinate];
  v89 = v88;
  v90 = [v4 routeMatch];
  [v90 locationCoordinate];
  if (vabdd_f64(v89, v91) >= 0.000001)
  {
LABEL_71:

    goto LABEL_72;
  }

  [(GEORouteMatch *)self->_routeMatch locationCoordinate];
  v93 = v92;
  v94 = [v4 routeMatch];
  [v94 locationCoordinate];
  if (vabdd_f64(v93, v95) >= 0.000001)
  {
LABEL_70:

    goto LABEL_71;
  }

  [(GEORouteMatch *)self->_routeMatch matchedCourse];
  v97 = v96;
  v98 = [v4 routeMatch];
  [v98 matchedCourse];
  if (vabdd_f64(v97, v99) >= 0.000001)
  {
LABEL_69:

    goto LABEL_70;
  }

  v100 = [(GEORouteMatch *)self->_routeMatch isGoodMatch];
  v101 = [v4 routeMatch];
  if (v100 != [v101 isGoodMatch])
  {
LABEL_68:

    goto LABEL_69;
  }

  [(GEORouteMatch *)self->_routeMatch distanceFromRoute];
  v103 = v102;
  v104 = [v4 routeMatch];
  [v104 distanceFromRoute];
  if (vabdd_f64(v103, v105) >= 0.000001)
  {
LABEL_67:

    goto LABEL_68;
  }

  [(GEORouteMatch *)self->_routeMatch modifiedHorizontalAccuracy];
  v107 = v106;
  v130 = [v4 routeMatch];
  [v130 modifiedHorizontalAccuracy];
  if (vabdd_f64(v107, v108) >= 0.000001)
  {

    goto LABEL_67;
  }

  [(GEORouteMatch *)self->_routeMatch modifiedCourseAccuracy];
  v110 = v109;
  v111 = [v4 routeMatch];
  [v111 modifiedCourseAccuracy];
  v113 = vabdd_f64(v110, v112);

  if (v113 >= 0.000001)
  {
    goto LABEL_74;
  }

LABEL_57:
  LODWORD(v7) = self->_roadMatch != 0;
  v114 = [v4 roadMatch];
  v115 = v7 ^ (v114 == 0);

  roadMatch = self->_roadMatch;
  LOBYTE(v7) = (roadMatch == 0) & v115;
  if (roadMatch && v115)
  {
    [(GEORoadMatch *)roadMatch coordinateOnRoad];
    v118 = v117;
    v119 = [v4 roadMatch];
    [v119 coordinateOnRoad];
    if (vabdd_f64(v118, v120) >= 0.000001)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      [(GEORoadMatch *)self->_roadMatch coordinateOnRoad];
      v122 = v121;
      v123 = [v4 roadMatch];
      [v123 coordinateOnRoad];
      if (vabdd_f64(v122, v124) >= 0.000001)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        [(GEORoadMatch *)self->_roadMatch courseOnRoad];
        v126 = v125;
        v127 = [v4 roadMatch];
        [v127 courseOnRoad];
        LOBYTE(v7) = vabdd_f64(v126, v128) < 0.000001;
      }
    }
  }

LABEL_75:

  return v7;
}

- (id)propagatedLocationForTimeInterval:(double)a3 shouldProjectAlongRoute:(BOOL)a4
{
  v4 = a4;
  v41 = 0u;
  memset(v42, 0, 28);
  v39 = 0u;
  v40 = 0u;
  memset(v38, 0, sizeof(v38));
  v37 = 0u;
  memset(&v36[2], 0, 32);
  [(MNLocation *)self clientLocation];
  v7 = self->_routeMatch;
  if (v4 && [(MNLocation *)self _canProjectAlongRoute])
  {
    [(MNLocation *)self speed];
    v9 = v8 * a3;
    v10 = [(GEORouteMatch *)self->_routeMatch route];
    v11 = [(GEORouteMatch *)self->_routeMatch step];
    v12 = [v10 routeCoordinateForDistance:-[GEORouteMatch routeCoordinate](self->_routeMatch afterRouteCoordinate:{"routeCoordinate"), v9}];
    v13 = [v11 endRouteCoordinate];
    v14 = *MEMORY[0x1E69A19E8];
    v15 = *(MEMORY[0x1E69A19E8] + 8);
    if ((GEOConfigGetBOOL() & 1) == 0 && GEOPolylineCoordinateIsABeforeB())
    {
      v12 = v13;
    }

    [v10 pointAtRouteCoordinate:v12];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [v10 courseAtRouteCoordinateIndex:v12];
    v23 = v22;
    *(&v36[2] + 4) = v17;
    *(&v36[2] + 12) = v19;
    *(v38 + 12) = v22;
    v24 = objc_alloc(MEMORY[0x1E69A2540]);
    v25 = [(GEORouteMatch *)self->_routeMatch stepIndex];
    v26 = [(MNLocation *)self timestamp];
    v27 = [v24 initWithRoute:v10 routeCoordinate:v12 locationCoordinate:v25 stepIndex:v26 matchedCourse:v17 timestamp:{v19, v21, v23}];

    [v27 setIsGoodMatch:{-[GEORouteMatch isGoodMatch](self->_routeMatch, "isGoodMatch")}];
    [v27 setShouldProjectLocationAlongRoute:{-[GEORouteMatch shouldProjectLocationAlongRoute](self->_routeMatch, "shouldProjectLocationAlongRoute")}];
    [(GEORouteMatch *)self->_routeMatch distanceFromRoute];
    [v27 setDistanceFromRoute:?];
    [(GEORouteMatch *)self->_routeMatch modifiedHorizontalAccuracy];
    [v27 setModifiedHorizontalAccuracy:?];
    [(GEORouteMatch *)self->_routeMatch modifiedCourseAccuracy];
    [v27 setModifiedCourseAccuracy:?];
    [v27 setIsTunnelProjection:{-[GEORouteMatch isTunnelProjection](self->_routeMatch, "isTunnelProjection")}];
    [v27 setProjectedFrom:self->_routeMatch];

    v7 = v27;
  }

  else
  {
    v10 = [(MNLocation *)self propagateLocationToTime:a3];
    [v10 coordinate];
    v29 = v28;
    [v10 coordinate];
    *(&v36[2] + 4) = v29;
    *(&v36[2] + 12) = v30;
    [v10 course];
    *(v38 + 12) = v31;
  }

  v32 = [MNLocation alloc];
  v35[6] = v40;
  v35[7] = v41;
  v36[0] = v42[0];
  *(v36 + 12) = *(v42 + 12);
  v35[2] = v37;
  v35[3] = v38[0];
  v35[4] = v38[1];
  v35[5] = v39;
  v35[0] = v36[2];
  v35[1] = v36[3];
  v33 = [(MNLocation *)v32 initWithClientLocation:v35];
  [(MNLocation *)v33 setState:self->_state];
  [(MNLocation *)v33 setRouteMatch:v7];
  [(MNLocation *)v33 setRoadMatch:self->_roadMatch];
  [(MNLocation *)v33 setRawLocation:self->_rawLocation];
  [(MNLocation *)v33 setRoadName:self->_roadName];
  [(MNLocation *)v33 setShieldText:self->_shieldText];
  [(MNLocation *)v33 setShieldType:self->_shieldType];
  [(MNLocation *)v33 setRoadLineType:self->_roadLineType];
  [(MNLocation *)v33 setRampType:self->_rampType];
  [(MNLocation *)v33 setSpeedLimit:self->_speedLimit];
  [(MNLocation *)v33 setSpeedLimitIsMPH:self->_speedLimitIsMPH];
  [(MNLocation *)v33 setSpeedLimitShieldType:self->_speedLimitShieldType];
  [(MNLocation *)v33 setIsDirectional:self->_isDirectional];
  [(MNLocation *)v33 setLocationUnreliable:self->_locationUnreliable];
  [(MNLocation *)v33 setExpirationDate:self->_expirationDate];
  [(MNLocation *)v33 setOriginalDate:self->_originalDate];
  [(MNLocation *)v33 setRawShiftedCoordinate:self->_rawShiftedCoordinate.latitude, self->_rawShiftedCoordinate.longitude];
  [(MNLocation *)v33 setTraceIndex:self->_traceIndex];
  [(MNLocation *)v33 setTraceTimestamp:self->_traceTimestamp];

  return v33;
}

- (MNLocation)initWithRawLocation:(id)a3 locationFixType:(unint64_t)a4
{
  v7 = a3;
  v8 = v7;
  v22 = 0u;
  memset(v23, 0, 60);
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  memset(&v19[12], 0, 32);
  if (!v7)
  {
    if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      goto LABEL_9;
    }

    memset(&v19[2], 0, 156);
    goto LABEL_7;
  }

  [v7 clientLocation];
  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    goto LABEL_9;
  }

  [v8 clientLocation];
  if (DWORD2(v19[10]) != 2)
  {
LABEL_7:
    *(&v19[12] + 4) = *(v23 + 4);
    goto LABEL_8;
  }

  [v8 _navigation_rawShiftedCoordinate];
  *(&v19[12] + 4) = v9;
  [v8 _navigation_rawShiftedCoordinate];
  *(&v19[12] + 12) = v10;
LABEL_8:
  [v8 rawCourse];
  *(v21 + 12) = v11;
LABEL_9:
  v18[6] = v23[0];
  v18[7] = v23[1];
  v19[0] = v23[2];
  *(v19 + 12) = *(&v23[2] + 12);
  v18[2] = v20;
  v18[3] = v21[0];
  v18[4] = v21[1];
  v18[5] = v22;
  v18[0] = v19[12];
  v18[1] = v19[13];
  v12 = [(MNLocation *)self initWithClientLocation:v18];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_rawLocation, a3);
    v13->_state = 0;
    [v8 _navigation_rawShiftedCoordinate];
    v13->_rawShiftedCoordinate.latitude = v14;
    v13->_rawShiftedCoordinate.longitude = v15;
    v16 = v13;
  }

  return v13;
}

- (MNLocation)initWithRoadMatch:(id)a3 rawLocation:(id)a4 locationFixType:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v28 = 0u;
  memset(v29, 0, 28);
  v26 = 0u;
  v27 = 0u;
  memset(&v25[22], 0, 80);
  if (v10)
  {
    [v10 clientLocation];
  }

  if (a5 != 2)
  {
    if (a5)
    {
      goto LABEL_14;
    }

    if (v11)
    {
      [v11 clientLocation];
      if (DWORD2(v25[20]) == 2)
      {
        [v11 _navigation_rawShiftedCoordinate];
        *(&v25[22] + 4) = v12;
        [v11 _navigation_rawShiftedCoordinate];
        *(&v25[22] + 12) = v13;
LABEL_12:
        [v11 rawCourse];
        goto LABEL_13;
      }

      [v11 clientLocation];
    }

    else
    {
      memset(&v25[12], 0, 156);
      memset(&v25[2], 0, 156);
    }

    *(&v25[22] + 4) = *(&v25[8] + 4);
    goto LABEL_12;
  }

  [v9 coordinateOnRoad];
  *(&v25[22] + 4) = v14;
  [v9 coordinateOnRoad];
  *(&v25[22] + 12) = v15;
  [v9 coordinateOnRoad];
  *(&v25[23] + 12) = v16;
  [v9 courseOnRoad];
LABEL_13:
  *(&v25[25] + 12) = v17;
LABEL_14:
  v24[6] = v27;
  v24[7] = v28;
  v25[0] = v29[0];
  *(v25 + 12) = *(v29 + 12);
  v24[2] = v25[24];
  v24[3] = v25[25];
  v24[4] = v25[26];
  v24[5] = v26;
  v24[0] = v25[22];
  v24[1] = v25[23];
  v18 = [(MNLocation *)self initWithClientLocation:v24];
  if (v18)
  {
    v19 = [v9 roadFeature];
    [(MNLocation *)v18 _readFromRoadFeature:v19];
    objc_storeStrong(&v18->_rawLocation, a4);
    objc_storeStrong(&v18->_roadMatch, a3);
    v18->_state = 2;
    [v11 _navigation_rawShiftedCoordinate];
    v18->_rawShiftedCoordinate.latitude = v20;
    v18->_rawShiftedCoordinate.longitude = v21;
    v22 = v18;
  }

  return v18;
}

- (MNLocation)initWithRouteMatch:(id)a3 rawLocation:(id)a4 locationFixType:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v32 = 0u;
  memset(v33, 0, 28);
  v30 = 0u;
  v31 = 0u;
  memset(&v29[22], 0, 80);
  if (v10)
  {
    [v10 clientLocation];
  }

  if (a5 != 2)
  {
    if (a5)
    {
      goto LABEL_14;
    }

    if (v11)
    {
      [v11 clientLocation];
      if (DWORD2(v29[20]) == 2)
      {
        [v11 _navigation_rawShiftedCoordinate];
        *(&v29[22] + 4) = v12;
        [v11 _navigation_rawShiftedCoordinate];
        *(&v29[22] + 12) = v13;
LABEL_12:
        [v11 rawCourse];
        goto LABEL_13;
      }

      [v11 clientLocation];
    }

    else
    {
      memset(&v29[12], 0, 156);
      memset(&v29[2], 0, 156);
    }

    *(&v29[22] + 4) = *(&v29[8] + 4);
    goto LABEL_12;
  }

  [v9 locationCoordinate3D];
  *(&v29[22] + 4) = v14;
  [v9 locationCoordinate3D];
  *(&v29[22] + 12) = v15;
  [v9 locationCoordinate3D];
  *(&v29[23] + 12) = v16;
  [v9 matchedCourse];
LABEL_13:
  *(&v29[25] + 12) = v17;
LABEL_14:
  v28[6] = v31;
  v28[7] = v32;
  v29[0] = v33[0];
  *(v29 + 12) = *(v33 + 12);
  v28[2] = v29[24];
  v28[3] = v29[25];
  v28[4] = v29[26];
  v28[5] = v30;
  v28[0] = v29[22];
  v28[1] = v29[23];
  v18 = [(MNLocation *)self initWithClientLocation:v28];
  if (v18)
  {
    v19 = [v9 road];
    v20 = [v19 feature];

    [(MNLocation *)v18 _readFromRoadFeature:v20];
    v21 = [v9 route];
    v22 = [v21 uniqueRouteID];
    routeID = v18->_routeID;
    v18->_routeID = v22;

    objc_storeStrong(&v18->_rawLocation, a4);
    objc_storeStrong(&v18->_routeMatch, a3);
    v18->_state = 1;
    [v11 _navigation_rawShiftedCoordinate];
    v18->_rawShiftedCoordinate.latitude = v24;
    v18->_rawShiftedCoordinate.longitude = v25;
    v26 = v18;
  }

  return v18;
}

- (MNLocation)initWithClientLocation:(id *)a3 matchInfo:(id)a4
{
  v6 = a4;
  v32.receiver = self;
  v32.super_class = MNLocation;
  var13 = a3->var13;
  v29 = *&a3->var11;
  v30 = var13;
  v31[0] = *&a3->var14;
  *(v31 + 12) = *&a3->var16;
  v8 = *&a3->var5;
  v25 = *&a3->var3;
  v26 = v8;
  v9 = *&a3->var9;
  v27 = *&a3->var7;
  v28 = v9;
  v10 = *&a3->var1.var1;
  v23 = *&a3->var0;
  v24 = v10;
  v11 = [(MNLocation *)&v32 initWithClientLocation:&v23];
  if (v11)
  {
    if (+[MNLocation puckLocationTracing])
    {
      v12 = [MEMORY[0x1E696AFB0] UUID];
      uuid = v11->_uuid;
      v11->_uuid = v12;
    }

    if (a3->var15 == 2)
    {
      v11->_rawShiftedCoordinate = *(&a3->var11 + 4);
    }

    v14 = objc_alloc(MEMORY[0x1E6985C40]);
    v15 = a3->var13;
    v29 = *&a3->var11;
    v30 = v15;
    v31[0] = *&a3->var14;
    *(v31 + 12) = *&a3->var16;
    v16 = *&a3->var5;
    v25 = *&a3->var3;
    v26 = v16;
    v17 = *&a3->var9;
    v27 = *&a3->var7;
    v28 = v17;
    v18 = *&a3->var1.var1;
    v23 = *&a3->var0;
    v24 = v18;
    v19 = [v14 initWithClientLocation:&v23 matchInfo:v6];
    rawLocation = v11->_rawLocation;
    v11->_rawLocation = v19;

    v11->_traceIndex = 0x7FFFFFFFFFFFFFFFLL;
    v21 = v11;
  }

  return v11;
}

- (MNLocation)initWithClientLocation:(id *)a3
{
  var13 = a3->var13;
  v8[6] = *&a3->var11;
  v8[7] = var13;
  v9[0] = *&a3->var14;
  *(v9 + 12) = *&a3->var16;
  v4 = *&a3->var5;
  v8[2] = *&a3->var3;
  v8[3] = v4;
  v5 = *&a3->var9;
  v8[4] = *&a3->var7;
  v8[5] = v5;
  v6 = *&a3->var1.var1;
  v8[0] = *&a3->var0;
  v8[1] = v6;
  return [(MNLocation *)self initWithClientLocation:v8 matchInfo:0];
}

- (MNLocation)initWithCLLocation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 clientLocation];
  }

  else
  {
    v16 = 0u;
    memset(v17, 0, 28);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
  }

  v6 = [v5 matchInfo];
  v7 = [(MNLocation *)self initWithClientLocation:&v9 matchInfo:v6];

  return v7;
}

+ (BOOL)puckLocationTracing
{
  if (puckLocationTracing_onceToken != -1)
  {
    dispatch_once(&puckLocationTracing_onceToken, &__block_literal_global_15347);
  }

  return puckLocationTracing__puckLocationTracing;
}

uint64_t __33__MNLocation_puckLocationTracing__block_invoke()
{
  v0 = *MEMORY[0x1E69A19F8];
  v1 = *(MEMORY[0x1E69A19F8] + 8);
  result = GEOConfigGetBOOL();
  puckLocationTracing__puckLocationTracing = result;
  return result;
}

@end