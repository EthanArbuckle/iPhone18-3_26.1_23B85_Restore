@interface MNDisplayETAInfo
+ (BOOL)isDisplayDate:(id)a3 equalTo:(id)a4;
+ (id)dateFormatter;
+ (id)displayETAInfoForRouteInfo:(id)a3 routeCoordinate:(id)a4;
- (BOOL)isEqual:(id)a3;
- (MNDisplayETAInfo)initWithCoder:(id)a3;
- (MNDisplayETAInfo)initWithDisplayETAToEndOfLeg:(id)a3 displayRemainingMinutesToEndOfLeg:(unint64_t)a4 displayETAToEndOfRoute:(id)a5 displayRemainingMinutesToEndOfRoute:(unint64_t)a6;
- (NSDate)displayETAToEndOfLeg;
- (NSDate)etaToEndOfRoute;
- (id)description;
- (unint64_t)displayRemainingMinutesToEndOfLeg;
- (unint64_t)legIndex;
- (unint64_t)remainingMinutesToEndOfRoute;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNDisplayETAInfo

- (unint64_t)displayRemainingMinutesToEndOfLeg
{
  v2 = [(MNDisplayETAInfo *)self legInfos];
  v3 = [v2 firstObject];
  v4 = [v3 remainingMinutes];

  return v4;
}

- (NSDate)displayETAToEndOfLeg
{
  v2 = [(MNDisplayETAInfo *)self legInfos];
  v3 = [v2 firstObject];
  v4 = [v3 eta];

  return v4;
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = +[MNDisplayETAInfo dateFormatter];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_legInfos, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_legInfos;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v18 + 1) + 8 * i) description];
        [v4 addObject:v10];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v4 componentsJoinedByString:{@", "}];
  v13 = [(MNDisplayETAInfo *)self etaToEndOfRoute];
  v14 = [v3 stringFromDate:v13];
  v15 = [v11 stringWithFormat:@"%@ | endOfRoute: %@ / %d min", v12, v14, -[MNDisplayETAInfo remainingMinutesToEndOfRoute](self, "remainingMinutesToEndOfRoute")];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)dateFormatter
{
  if (dateFormatter_once != -1)
  {
    dispatch_once(&dateFormatter_once, &__block_literal_global_17306);
  }

  v3 = dateFormatter_singleton;

  return v3;
}

- (NSDate)etaToEndOfRoute
{
  v2 = [(NSArray *)self->_legInfos lastObject];
  v3 = [v2 eta];

  return v3;
}

- (unint64_t)remainingMinutesToEndOfRoute
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_legInfos;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) remainingMinutes];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5[2];
    v7 = self->_routeID;
    v8 = v6;
    if (v7 | v8 && (v9 = v8, v10 = [v7 isEqual:v8], v9, v7, !v10))
    {
      v15 = 0;
    }

    else
    {
      legInfos = self->_legInfos;
      v12 = v5[1];
      v13 = legInfos;
      v14 = v13;
      if (v13 | v12)
      {
        v15 = [v13 isEqual:v12];
      }

      else
      {
        v15 = 1;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  routeID = self->_routeID;
  v5 = a3;
  [v5 encodeObject:routeID forKey:@"_routeID"];
  [v5 encodeObject:self->_legInfos forKey:@"_legInfos"];
  [v5 encodeBool:self->_isUsingServerDisplayETA forKey:@"_isUsingServerDisplayETA"];
}

- (MNDisplayETAInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MNDisplayETAInfo;
  v5 = [(MNDisplayETAInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_routeID"];
    routeID = v5->_routeID;
    v5->_routeID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_legInfos"];
    legInfos = v5->_legInfos;
    v5->_legInfos = v11;

    v5->_isUsingServerDisplayETA = [v4 decodeBoolForKey:@"_isUsingServerDisplayETA"];
    v13 = v5;
  }

  return v5;
}

uint64_t __33__MNDisplayETAInfo_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = dateFormatter_singleton;
  dateFormatter_singleton = v0;

  [dateFormatter_singleton setDateStyle:0];
  v2 = dateFormatter_singleton;

  return [v2 setTimeStyle:1];
}

+ (BOOL)isDisplayDate:(id)a3 equalTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      v9 = [MEMORY[0x1E695DEE8] currentCalendar];
      v10 = [v9 compareDate:v5 toDate:v7 toUnitGranularity:64];

      v8 = v10 == 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)displayETAInfoForRouteInfo:(id)a3 routeCoordinate:(id)a4
{
  v103 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 route];
  v7 = [v6 legIndexForRouteCoordinate:a4];

  v92 = -1;
  v8 = [v5 etaRoute];
  v9 = [v8 serverDisplayETA];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  v11 = [v8 legs];
  v12 = [v11 firstObject];
  v13 = [v12 originalLegIndex];

  if (v13 != v7)
  {
    goto LABEL_6;
  }

  GEOConfigGetDouble();
  v15 = v14;
  v16 = [MEMORY[0x1E695DF00] now];
  [v16 timeIntervalSinceReferenceDate];
  v18 = v17;

  v19 = [v8 responseDate];
  [v19 timeIntervalSinceReferenceDate];
  v21 = v20 + v15;

  if (v18 < v21)
  {
    v22 = [v8 serverDisplayETA];
    [v22 timeIntervalSinceNow];
    v24 = v23;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v26 = floor(v25 * 0.0166666667);
    [v22 timeIntervalSinceReferenceDate];
    v28 = (floor(v27 * 0.0166666667) - v26);
    v92 = v28;
    v29 = 1;
    if (!v22)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_6:
    v30 = [v5 route];
    v31 = [v5 etaRoute];
    [v30 remainingTimeToEndOfCurrentLegFrom:a4 etaRoute:v31];
    v24 = v32;

    v91 = 0;
    MNDisplayETAAndRemainingMinutes(&v91, &v92, v24);
    v22 = v91;
    v29 = 0;
    v28 = v92;
    if (!v22)
    {
LABEL_12:
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Got an invalid display ETA to end of leg : %@ %llu", v22, v28];
      v65 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v94 = "+[MNDisplayETAInfo displayETAInfoForRouteInfo:routeCoordinate:]";
        v95 = 2080;
        v96 = "/Library/Caches/com.apple.xbs/Sources/Navigation/TrafficETA/MNDisplayETAInfo.m";
        v97 = 1024;
        v98 = 141;
        v99 = 2080;
        v100 = "NO";
        v101 = 2112;
        v102 = v64;
        _os_log_impl(&dword_1D311E000, v65, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
      }

      v66 = 0;
      goto LABEL_18;
    }
  }

  if (v28 == -1)
  {
    goto LABEL_12;
  }

  v83 = v29;
  v33 = [v5 route];
  v34 = [v33 legs];
  v35 = [v34 objectAtIndexedSubscript:v7];

  v36 = [v35 destination];
  v37 = [v36 timezone];

  v38 = [MEMORY[0x1E695DF70] array];
  v39 = objc_alloc_init(MNDisplayETALegInfo);
  v85 = v35;
  [v35 destination];
  v41 = v40 = v8;
  v42 = [v41 uniqueID];
  [(MNDisplayETALegInfo *)v39 setWaypointID:v42];

  [(MNDisplayETALegInfo *)v39 setLegIndex:v7];
  [(MNDisplayETALegInfo *)v39 setRemainingMinutes:v92];
  v86 = v22;
  [(MNDisplayETALegInfo *)v39 setEta:v22];
  v84 = v37;
  [(MNDisplayETALegInfo *)v39 setTimeZone:v37];
  [v38 addObject:v39];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__MNDisplayETAInfo_displayETAInfoForRouteInfo_routeCoordinate___block_invoke;
  aBlock[3] = &unk_1E8430098;
  v43 = v5;
  v89 = v43;
  v82 = v38;
  v90 = v82;
  v44 = _Block_copy(aBlock);
  v87 = v40;
  if (v40)
  {
    v45 = [v43 route];
    v46 = [v45 legs];
    v81 = [v46 count];
    v47 = [v43 etaRoute];
    v48 = [v47 legs];
    v49 = v39;
    v50 = v5;
    v51 = [v48 count];

    v52 = v7 - v81 + v51;
    v5 = v50;
    v39 = v49;
    v53 = v52 + 1;
    v54 = [v43 etaRoute];
    v55 = [v54 legs];
    v56 = [v55 count];

    if (v53 < v56)
    {
      do
      {
        v57 = [v43 etaRoute];
        v58 = [v57 legs];
        v59 = [v58 objectAtIndexedSubscript:v53];

        [v59 travelDuration];
        v24 = v60 + v24;
        v44[2](v44, [v59 originalLegIndex], v24);

        ++v53;
        v61 = [v43 etaRoute];
        v62 = [v61 legs];
        v63 = [v62 count];
      }

      while (v53 < v63);
    }
  }

  else
  {
    v67 = v7 + 1;
    v68 = [v43 route];
    v69 = [v68 legs];
    v70 = [v69 count];

    if (v67 < v70)
    {
      do
      {
        v71 = [v43 route];
        v72 = [v71 legs];
        v73 = [v72 objectAtIndexedSubscript:v67];

        [v73 travelDuration];
        v24 = v74 + v24;
        v44[2](v44, v67, v24);

        ++v67;
        v75 = [v43 route];
        v76 = [v75 legs];
        v77 = [v76 count];
      }

      while (v67 < v77);
    }
  }

  v66 = objc_alloc_init(MNDisplayETAInfo);
  v78 = [v43 routeID];
  [(MNDisplayETAInfo *)v66 setRouteID:v78];

  [(MNDisplayETAInfo *)v66 setLegInfos:v82];
  v66->_isUsingServerDisplayETA = v83;

  v22 = v86;
  v8 = v87;
  v65 = v84;
  v64 = v85;
LABEL_18:

  v79 = *MEMORY[0x1E69E9840];

  return v66;
}

void __63__MNDisplayETAInfo_displayETAInfoForRouteInfo_routeCoordinate___block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  v14 = 0;
  v15 = -1;
  MNDisplayETAAndRemainingMinutes(&v14, &v15, a3);
  v5 = v14;
  v6 = [*(a1 + 32) route];
  v7 = [v6 legs];
  v8 = [v7 objectAtIndexedSubscript:a2];

  v9 = [v8 destination];
  v10 = [v9 timezone];

  v11 = objc_alloc_init(MNDisplayETALegInfo);
  v12 = [v8 destination];
  v13 = [v12 uniqueID];
  [(MNDisplayETALegInfo *)v11 setWaypointID:v13];

  [(MNDisplayETALegInfo *)v11 setLegIndex:a2];
  [(MNDisplayETALegInfo *)v11 setRemainingMinutes:v15];
  [(MNDisplayETALegInfo *)v11 setEta:v5];
  [(MNDisplayETALegInfo *)v11 setTimeZone:v10];
  [*(a1 + 40) addObject:v11];
}

- (MNDisplayETAInfo)initWithDisplayETAToEndOfLeg:(id)a3 displayRemainingMinutesToEndOfLeg:(unint64_t)a4 displayETAToEndOfRoute:(id)a5 displayRemainingMinutesToEndOfRoute:(unint64_t)a6
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v16.receiver = self;
  v16.super_class = MNDisplayETAInfo;
  v9 = [(MNDisplayETAInfo *)&v16 init];
  if (v9)
  {
    v10 = objc_opt_new();
    [v10 setRemainingMinutes:a6];
    [v10 setEta:v8];
    v17[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    legInfos = v9->_legInfos;
    v9->_legInfos = v11;

    v13 = v9;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (unint64_t)legIndex
{
  v3 = [(MNDisplayETAInfo *)self legInfos];
  if ([v3 count])
  {
    v4 = [(MNDisplayETAInfo *)self legInfos];
    v5 = [v4 firstObject];
    v6 = [v5 legIndex];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

@end