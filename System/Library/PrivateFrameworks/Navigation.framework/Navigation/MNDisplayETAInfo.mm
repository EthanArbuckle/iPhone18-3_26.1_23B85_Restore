@interface MNDisplayETAInfo
+ (BOOL)isDisplayDate:(id)date equalTo:(id)to;
+ (id)dateFormatter;
+ (id)displayETAInfoForRouteInfo:(id)info routeCoordinate:(id)coordinate;
- (BOOL)isEqual:(id)equal;
- (MNDisplayETAInfo)initWithCoder:(id)coder;
- (MNDisplayETAInfo)initWithDisplayETAToEndOfLeg:(id)leg displayRemainingMinutesToEndOfLeg:(unint64_t)ofLeg displayETAToEndOfRoute:(id)route displayRemainingMinutesToEndOfRoute:(unint64_t)ofRoute;
- (NSDate)displayETAToEndOfLeg;
- (NSDate)etaToEndOfRoute;
- (id)description;
- (unint64_t)displayRemainingMinutesToEndOfLeg;
- (unint64_t)legIndex;
- (unint64_t)remainingMinutesToEndOfRoute;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNDisplayETAInfo

- (unint64_t)displayRemainingMinutesToEndOfLeg
{
  legInfos = [(MNDisplayETAInfo *)self legInfos];
  firstObject = [legInfos firstObject];
  remainingMinutes = [firstObject remainingMinutes];

  return remainingMinutes;
}

- (NSDate)displayETAToEndOfLeg
{
  legInfos = [(MNDisplayETAInfo *)self legInfos];
  firstObject = [legInfos firstObject];
  v4 = [firstObject eta];

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
  etaToEndOfRoute = [(MNDisplayETAInfo *)self etaToEndOfRoute];
  v14 = [v3 stringFromDate:etaToEndOfRoute];
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
  lastObject = [(NSArray *)self->_legInfos lastObject];
  v3 = [lastObject eta];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  routeID = self->_routeID;
  coderCopy = coder;
  [coderCopy encodeObject:routeID forKey:@"_routeID"];
  [coderCopy encodeObject:self->_legInfos forKey:@"_legInfos"];
  [coderCopy encodeBool:self->_isUsingServerDisplayETA forKey:@"_isUsingServerDisplayETA"];
}

- (MNDisplayETAInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MNDisplayETAInfo;
  v5 = [(MNDisplayETAInfo *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_routeID"];
    routeID = v5->_routeID;
    v5->_routeID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_legInfos"];
    legInfos = v5->_legInfos;
    v5->_legInfos = v11;

    v5->_isUsingServerDisplayETA = [coderCopy decodeBoolForKey:@"_isUsingServerDisplayETA"];
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

+ (BOOL)isDisplayDate:(id)date equalTo:(id)to
{
  dateCopy = date;
  toCopy = to;
  v7 = toCopy;
  if (dateCopy | toCopy)
  {
    v8 = 0;
    if (dateCopy && toCopy)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v10 = [currentCalendar compareDate:dateCopy toDate:v7 toUnitGranularity:64];

      v8 = v10 == 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)displayETAInfoForRouteInfo:(id)info routeCoordinate:(id)coordinate
{
  v103 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  route = [infoCopy route];
  v7 = [route legIndexForRouteCoordinate:coordinate];

  v92 = -1;
  etaRoute = [infoCopy etaRoute];
  serverDisplayETA = [etaRoute serverDisplayETA];
  if (!serverDisplayETA)
  {
    goto LABEL_6;
  }

  v10 = serverDisplayETA;
  legs = [etaRoute legs];
  firstObject = [legs firstObject];
  originalLegIndex = [firstObject originalLegIndex];

  if (originalLegIndex != v7)
  {
    goto LABEL_6;
  }

  GEOConfigGetDouble();
  v15 = v14;
  v16 = [MEMORY[0x1E695DF00] now];
  [v16 timeIntervalSinceReferenceDate];
  v18 = v17;

  responseDate = [etaRoute responseDate];
  [responseDate timeIntervalSinceReferenceDate];
  v21 = v20 + v15;

  if (v18 < v21)
  {
    serverDisplayETA2 = [etaRoute serverDisplayETA];
    [serverDisplayETA2 timeIntervalSinceNow];
    v24 = v23;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v26 = floor(v25 * 0.0166666667);
    [serverDisplayETA2 timeIntervalSinceReferenceDate];
    v28 = (floor(v27 * 0.0166666667) - v26);
    v92 = v28;
    v29 = 1;
    if (!serverDisplayETA2)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_6:
    route2 = [infoCopy route];
    etaRoute2 = [infoCopy etaRoute];
    [route2 remainingTimeToEndOfCurrentLegFrom:coordinate etaRoute:etaRoute2];
    v24 = v32;

    v91 = 0;
    MNDisplayETAAndRemainingMinutes(&v91, &v92, v24);
    serverDisplayETA2 = v91;
    v29 = 0;
    v28 = v92;
    if (!serverDisplayETA2)
    {
LABEL_12:
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Got an invalid display ETA to end of leg : %@ %llu", serverDisplayETA2, v28];
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
  route3 = [infoCopy route];
  legs2 = [route3 legs];
  v35 = [legs2 objectAtIndexedSubscript:v7];

  destination = [v35 destination];
  timezone = [destination timezone];

  array = [MEMORY[0x1E695DF70] array];
  v39 = objc_alloc_init(MNDisplayETALegInfo);
  v85 = v35;
  [v35 destination];
  v41 = v40 = etaRoute;
  uniqueID = [v41 uniqueID];
  [(MNDisplayETALegInfo *)v39 setWaypointID:uniqueID];

  [(MNDisplayETALegInfo *)v39 setLegIndex:v7];
  [(MNDisplayETALegInfo *)v39 setRemainingMinutes:v92];
  v86 = serverDisplayETA2;
  [(MNDisplayETALegInfo *)v39 setEta:serverDisplayETA2];
  v84 = timezone;
  [(MNDisplayETALegInfo *)v39 setTimeZone:timezone];
  [array addObject:v39];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__MNDisplayETAInfo_displayETAInfoForRouteInfo_routeCoordinate___block_invoke;
  aBlock[3] = &unk_1E8430098;
  v43 = infoCopy;
  v89 = v43;
  v82 = array;
  v90 = v82;
  v44 = _Block_copy(aBlock);
  v87 = v40;
  if (v40)
  {
    route4 = [v43 route];
    legs3 = [route4 legs];
    v81 = [legs3 count];
    etaRoute3 = [v43 etaRoute];
    legs4 = [etaRoute3 legs];
    v49 = v39;
    v50 = infoCopy;
    v51 = [legs4 count];

    v52 = v7 - v81 + v51;
    infoCopy = v50;
    v39 = v49;
    v53 = v52 + 1;
    etaRoute4 = [v43 etaRoute];
    legs5 = [etaRoute4 legs];
    v56 = [legs5 count];

    if (v53 < v56)
    {
      do
      {
        etaRoute5 = [v43 etaRoute];
        legs6 = [etaRoute5 legs];
        v59 = [legs6 objectAtIndexedSubscript:v53];

        [v59 travelDuration];
        v24 = v60 + v24;
        v44[2](v44, [v59 originalLegIndex], v24);

        ++v53;
        etaRoute6 = [v43 etaRoute];
        legs7 = [etaRoute6 legs];
        v63 = [legs7 count];
      }

      while (v53 < v63);
    }
  }

  else
  {
    v67 = v7 + 1;
    route5 = [v43 route];
    legs8 = [route5 legs];
    v70 = [legs8 count];

    if (v67 < v70)
    {
      do
      {
        route6 = [v43 route];
        legs9 = [route6 legs];
        v73 = [legs9 objectAtIndexedSubscript:v67];

        [v73 travelDuration];
        v24 = v74 + v24;
        v44[2](v44, v67, v24);

        ++v67;
        route7 = [v43 route];
        legs10 = [route7 legs];
        v77 = [legs10 count];
      }

      while (v67 < v77);
    }
  }

  v66 = objc_alloc_init(MNDisplayETAInfo);
  routeID = [v43 routeID];
  [(MNDisplayETAInfo *)v66 setRouteID:routeID];

  [(MNDisplayETAInfo *)v66 setLegInfos:v82];
  v66->_isUsingServerDisplayETA = v83;

  serverDisplayETA2 = v86;
  etaRoute = v87;
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

- (MNDisplayETAInfo)initWithDisplayETAToEndOfLeg:(id)leg displayRemainingMinutesToEndOfLeg:(unint64_t)ofLeg displayETAToEndOfRoute:(id)route displayRemainingMinutesToEndOfRoute:(unint64_t)ofRoute
{
  v17[1] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v16.receiver = self;
  v16.super_class = MNDisplayETAInfo;
  v9 = [(MNDisplayETAInfo *)&v16 init];
  if (v9)
  {
    v10 = objc_opt_new();
    [v10 setRemainingMinutes:ofRoute];
    [v10 setEta:routeCopy];
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
  legInfos = [(MNDisplayETAInfo *)self legInfos];
  if ([legInfos count])
  {
    legInfos2 = [(MNDisplayETAInfo *)self legInfos];
    firstObject = [legInfos2 firstObject];
    legIndex = [firstObject legIndex];
  }

  else
  {
    legIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return legIndex;
}

@end