@interface FMFLocation
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMoreRecentThan:(id)than;
- (BOOL)isValid;
- (CLLocationCoordinate2D)coordinate;
- (FMFLocation)initWithCoder:(id)coder;
- (FMFLocation)initWithDictionary:(id)dictionary forHandle:(id)handle maxLocatingInterval:(double)interval TTL:(double)l;
- (FMFLocation)initWithLatitude:(double)latitude longitude:(double)longitude;
- (NSString)description;
- (NSString)shortAddress;
- (NSString)title;
- (id)copyWithZone:(_NSZone *)zone;
- (id)locationAge;
- (id)locationShortAddressWithAge;
- (id)locationShortAddressWithAgeIncludeLocating;
- (int64_t)distanceThenNameCompare:(id)compare;
- (unint64_t)hash;
- (void)_updateLocation:(id)location;
- (void)encodeWithCoder:(id)coder;
- (void)resetLocateInProgress:(id)progress;
- (void)resetLocateInProgressTimer;
- (void)setLocatingInProgress:(BOOL)progress;
- (void)updateHandle:(id)handle;
- (void)updateLocation:(id)location;
- (void)updateLocationForCache:(id)cache;
@end

@implementation FMFLocation

- (FMFLocation)initWithDictionary:(id)dictionary forHandle:(id)handle maxLocatingInterval:(double)interval TTL:(double)l
{
  dictionaryCopy = dictionary;
  handleCopy = handle;
  v12 = objc_alloc_init(objc_opt_class());
  [(FMFLocation *)v12 setHandle:handleCopy];

  [(FMFLocation *)v12 setMaxLocatingInterval:interval];
  [(FMFLocation *)v12 setTTL:l];
  v13 = [dictionaryCopy objectForKeyedSubscript:@"location"];
  null = [MEMORY[0x277CBEB68] null];
  v15 = null;
  if (v13 == null)
  {

    goto LABEL_6;
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:@"location"];

  if (!v16)
  {
LABEL_6:
    [(FMFLocation *)v12 setLocation:0];
    goto LABEL_61;
  }

  v17 = [v16 objectForKey:@"timestamp"];
  v18 = MEMORY[0x277CBEAA8];
  v90 = v17;
  [v17 doubleValue];
  v89 = [v18 dateWithTimeIntervalSince1970:v19 / 1000.0];
  [(FMFLocation *)v12 setTimestamp:?];
  v20 = [v16 objectForKeyedSubscript:@"latitude"];
  null2 = [MEMORY[0x277CBEB68] null];
  if (v20 == null2)
  {
    v22 = 0;
  }

  else
  {
    v22 = [v16 objectForKeyedSubscript:@"latitude"];
  }

  v23 = [v16 objectForKeyedSubscript:@"longitude"];
  null3 = [MEMORY[0x277CBEB68] null];
  if (v23 == null3)
  {
    v91 = 0;
  }

  else
  {
    v91 = [v16 objectForKeyedSubscript:@"longitude"];
  }

  v25 = [v16 objectForKeyedSubscript:@"horizontalAccuracy"];
  null4 = [MEMORY[0x277CBEB68] null];
  if (v25 == null4)
  {
    v27 = 0;
  }

  else
  {
    v27 = [v16 objectForKeyedSubscript:@"horizontalAccuracy"];
  }

  v28 = MEMORY[0x277CCABB0];
  v29 = MEMORY[0x277CBEAA8];
  v30 = [v16 objectForKeyedSubscript:@"timestamp"];
  [v30 doubleValue];
  v32 = [v29 dateWithTimeIntervalSince1970:v31 / 1000.0];
  [v32 timeIntervalSinceReferenceDate];
  v33 = [v28 numberWithDouble:?];

  [v22 doubleValue];
  v35 = v34;
  [v91 doubleValue];
  v37 = v36;
  [(FMFLocation *)v12 setLocationType:0];
  v38 = objc_alloc(MEMORY[0x277CE41F8]);
  v87 = v27;
  [v27 doubleValue];
  v40 = v39;
  v41 = MEMORY[0x277CBEAA8];
  v86 = v33;
  [v33 doubleValue];
  v42 = [v41 dateWithTimeIntervalSinceReferenceDate:?];
  v43 = [v38 initWithCoordinate:v42 altitude:v35 horizontalAccuracy:v37 verticalAccuracy:0.0 course:v40 speed:0.0 timestamp:{-1.0, 0.0}];
  [(FMFLocation *)v12 setLocation:v43];

  [(FMFLocation *)v12 setActivityState:0];
  location = [(FMFLocation *)v12 location];
  [location coordinate];
  [(FMFLocation *)v12 setCoordinate:?];

  v45 = [v16 objectForKeyedSubscript:@"address"];
  v46 = 0x277CBE000uLL;
  null5 = [MEMORY[0x277CBEB68] null];
  v48 = null5;
  v88 = v22;
  if (v45 == null5)
  {

    v53 = 0;
    v54 = 0;
    v49 = 0;
LABEL_20:
    v83 = 1;
    goto LABEL_21;
  }

  v49 = [v16 objectForKeyedSubscript:@"address"];

  if (!v49)
  {
    v53 = 0;
    v54 = 0;
    goto LABEL_20;
  }

  v50 = [v49 objectForKeyedSubscript:@"locality"];
  null6 = [MEMORY[0x277CBEB68] null];
  if (v50 == null6)
  {
    v52 = 0;
  }

  else
  {
    v52 = [v49 objectForKeyedSubscript:@"locality"];
  }

  v55 = [v49 objectForKeyedSubscript:@"stateCode"];
  null7 = [MEMORY[0x277CBEB68] null];
  if (v55 == null7)
  {
    v54 = 0;
  }

  else
  {
    v54 = [v49 objectForKeyedSubscript:@"stateCode"];
  }

  v57 = [v49 objectForKeyedSubscript:@"administrativeArea"];
  null8 = [MEMORY[0x277CBEB68] null];
  selfCopy = self;
  if (v57 == null8)
  {
    v84 = 0;
  }

  else
  {
    v84 = [v49 objectForKeyedSubscript:@"administrativeArea"];
  }

  v59 = [v49 objectForKeyedSubscript:@"formattedAddressLines"];
  null9 = [MEMORY[0x277CBEB68] null];
  if (v59 == null9)
  {
    v53 = 0;
  }

  else
  {
    v53 = [v49 objectForKeyedSubscript:@"formattedAddressLines"];
  }

  if (v52 && v54)
  {
    v61 = MEMORY[0x277CCACA8];
    v62 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v62 localizedStringForKey:@"CITY_STATE_LABEL" value:&stru_285D7AA10 table:0];
    v64 = v63 = v54;
    v65 = [v61 stringWithFormat:v64, v52, v63];
    [(FMFLocation *)v12 setShortAddressString:v65];

    v54 = v63;
    v46 = 0x277CBE000;

    v83 = 0;
    self = selfCopy;
    goto LABEL_40;
  }

  self = selfCopy;
  if (!v52)
  {
    if (v84)
    {
      [(FMFLocation *)v12 setShortAddressString:v84];

      goto LABEL_39;
    }

    v83 = 0;
LABEL_21:
    [(FMFLocation *)v12 setShortAddressString:v54];
    goto LABEL_40;
  }

  [(FMFLocation *)v12 setShortAddressString:v52];

LABEL_39:
  v83 = 0;
LABEL_40:
  v85 = v54;
  if (v53)
  {
    v66 = [v53 componentsJoinedByString:@"\n"];
    [(FMFLocation *)v12 setLongAddress:v66];
  }

  v67 = [v16 objectForKeyedSubscript:@"labels"];
  null10 = [*(v46 + 2920) null];
  v69 = null10;
  if (v67 == null10)
  {

    v70 = 0;
  }

  else
  {
    v70 = [v16 objectForKeyedSubscript:@"labels"];

    if (v70)
    {
      if (![v70 count])
      {
        v78 = v88;
        if (![v70 count])
        {
          [(FMFLocation *)v12 setLabel:0];
        }

        goto LABEL_58;
      }

      selfCopy2 = self;
      firstObject = [v70 firstObject];
      v72 = [firstObject objectForKeyedSubscript:@"label"];
      null11 = [*(v46 + 2920) null];
      v74 = null11;
      if (v72 == null11)
      {
      }

      else
      {
        v75 = [firstObject objectForKeyedSubscript:@"label"];

        if (!v75)
        {
LABEL_56:

          self = selfCopy2;
          goto LABEL_57;
        }

        if ([FMFLabelUtil isDefaultLabel:v75])
        {
          v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v77 = [v76 localizedStringForKey:v75 value:&stru_285D7AA10 table:0];
          [(FMFLocation *)v12 setLabel:v77];
        }

        else
        {
          [(FMFLocation *)v12 setLabel:v75];
        }

        v72 = v75;
      }

      goto LABEL_56;
    }
  }

LABEL_57:
  v78 = v88;
LABEL_58:
  if ((v83 & 1) == 0)
  {
    v79 = [[FMFPlacemark alloc] initWithDictionary:v49];
    [(FMFLocation *)v12 setPlacemark:v79];
  }

LABEL_61:
  return v12;
}

- (FMFLocation)initWithLatitude:(double)latitude longitude:(double)longitude
{
  v7 = objc_alloc_init(objc_opt_class());
  v8 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
  [(FMFLocation *)v7 setLocationType:0];
  [(FMFLocation *)v7 setLocation:v8];
  [(FMFLocation *)v7 setActivityState:0];
  [v8 coordinate];
  [(FMFLocation *)v7 setCoordinate:?];

  return v7;
}

- (NSString)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  location4 = +[FMFLocationDateFormatter sharedInstance];
  handle = [(FMFLocation *)selfCopy handle];
  if ([(FMFLocation *)selfCopy locationType])
  {
    if ([(FMFLocation *)selfCopy locationType]== 2)
    {
      v4 = @"live";
    }

    else
    {
      locationType = [(FMFLocation *)selfCopy locationType];
      v4 = @"shallow";
      if (locationType == 3)
      {
        v4 = @"stewie";
      }
    }
  }

  else
  {
    isLocatingInProgress = [(FMFLocation *)selfCopy isLocatingInProgress];
    v4 = @"legacy";
    if (isLocatingInProgress)
    {
      v4 = @"legacy in progress";
    }
  }

  v50 = v4;
  timestamp = [(FMFLocation *)selfCopy timestamp];
  v47 = location4;
  if (timestamp)
  {
    timestamp2 = [(FMFLocation *)selfCopy timestamp];
    v49 = [location4 stringFromDate:timestamp2];
  }

  else
  {
    v49 = &stru_285D7AA10;
  }

  longAddress2 = 0x277CCA000;
  v10 = MEMORY[0x277CCACA8];
  [(FMFLocation *)selfCopy coordinate];
  v12 = v11;
  [(FMFLocation *)selfCopy coordinate];
  v52 = [v10 stringWithFormat:@"%01.6lf°, %01.6lf°", v12, v13];
  location = [(FMFLocation *)selfCopy location];
  [location coordinate];
  v16 = v15;
  [(FMFLocation *)selfCopy coordinate];
  if (v16 != v17)
  {

    goto LABEL_16;
  }

  location2 = [(FMFLocation *)selfCopy location];
  [location2 coordinate];
  v20 = v19;
  [(FMFLocation *)selfCopy coordinate];
  v22 = v21;

  if (v20 != v22)
  {
LABEL_16:
    v23 = MEMORY[0x277CCACA8];
    [(FMFLocation *)selfCopy coordinate];
    v25 = v24;
    [(FMFLocation *)selfCopy coordinate];
    v27 = v26;
    location3 = [(FMFLocation *)selfCopy location];
    [location3 coordinate];
    v30 = v29;
    location4 = [(FMFLocation *)selfCopy location];
    [location4 coordinate];
    v32 = [v23 stringWithFormat:@"%01.6lf°, %01.6lf°/%01.6lf°, %01.6lf°", v25, v27, v30, v31];

    v52 = v32;
  }

  v33 = MEMORY[0x277CCACA8];
  v34 = objc_opt_class();
  v48 = NSStringFromClass(v34);
  label = [(FMFLocation *)selfCopy label];
  if (label)
  {
    v36 = MEMORY[0x277CCACA8];
    label2 = [(FMFLocation *)selfCopy label];
    v37 = [v36 stringWithFormat:@" - labl: '%@'", label2];
  }

  else
  {
    v37 = &stru_285D7AA10;
  }

  shortAddressString = [(FMFLocation *)selfCopy shortAddressString];
  if (shortAddressString)
  {
    v39 = MEMORY[0x277CCACA8];
    location4 = [(FMFLocation *)selfCopy shortAddressString];
    v40 = [v39 stringWithFormat:@" - sadr: '%@'", location4];
  }

  else
  {
    v40 = &stru_285D7AA10;
  }

  longAddress = [(FMFLocation *)selfCopy longAddress];
  if (longAddress)
  {
    v42 = MEMORY[0x277CCACA8];
    longAddress2 = [(FMFLocation *)selfCopy longAddress];
    v43 = [v42 stringWithFormat:@" - ladr: '%@'", longAddress2];
  }

  else
  {
    v43 = &stru_285D7AA10;
  }

  v44 = [v33 stringWithFormat:@"%@(0x%lx): %@ - %@: {%@@%@}%@%@%@", v48, selfCopy, handle, v50, v52, v49, v37, v40, v43];
  if (longAddress)
  {
  }

  if (shortAddressString)
  {
  }

  if (label)
  {
  }

  objc_sync_exit(selfCopy);

  return v44;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  handle = [(FMFLocation *)self handle];
  [v4 setHandle:handle];

  [v4 setLocationType:{-[FMFLocation locationType](self, "locationType")}];
  location = [(FMFLocation *)self location];
  [v4 setLocation:location];

  [v4 setActivityState:{-[FMFLocation activityState](self, "activityState")}];
  label = [(FMFLocation *)self label];
  [v4 setLabel:label];

  shortAddressString = [(FMFLocation *)self shortAddressString];
  [v4 setShortAddressString:shortAddressString];

  longAddress = [(FMFLocation *)self longAddress];
  [v4 setLongAddress:longAddress];

  timestamp = [(FMFLocation *)self timestamp];
  [v4 setTimestamp:timestamp];

  [v4 setLocatingInProgress:{-[FMFLocation isLocatingInProgress](self, "isLocatingInProgress")}];
  [(FMFLocation *)self maxLocatingInterval];
  [v4 setMaxLocatingInterval:?];
  [(FMFLocation *)self TTL];
  [v4 setTTL:?];
  placemark = [(FMFLocation *)self placemark];
  [v4 setPlacemark:placemark];

  location2 = [v4 location];
  [location2 coordinate];
  [v4 setCoordinate:?];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    handle = [(FMFLocation *)self handle];
    serverId = [handle serverId];
    handle2 = [v5 handle];

    serverId2 = [handle2 serverId];
    v10 = [serverId isEqualToString:serverId2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  handle = [(FMFLocation *)self handle];
  serverId = [handle serverId];
  v4 = [serverId hash];

  return v4;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:protocol_getName(protocolCopy)];
  if ([v5 isEqualToString:@"MKAnnotation"])
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = FMFLocation;
    v6 = [(FMFLocation *)&v8 conformsToProtocol:protocolCopy];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  handle = [(FMFLocation *)selfCopy handle];
  [coderCopy encodeObject:handle forKey:@"handle"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FMFLocation locationType](selfCopy, "locationType")}];
  [coderCopy encodeObject:v6 forKey:@"locationType"];

  location = [(FMFLocation *)selfCopy location];
  [coderCopy encodeObject:location forKey:@"location"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FMFLocation activityState](selfCopy, "activityState")}];
  [coderCopy encodeObject:v8 forKey:@"activityState"];

  label = [(FMFLocation *)selfCopy label];
  [coderCopy encodeObject:label forKey:@"label"];

  shortAddressString = [(FMFLocation *)selfCopy shortAddressString];
  [coderCopy encodeObject:shortAddressString forKey:@"shortAddressString"];

  longAddress = [(FMFLocation *)selfCopy longAddress];
  [coderCopy encodeObject:longAddress forKey:@"longAddress"];

  timestamp = [(FMFLocation *)selfCopy timestamp];
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[FMFLocation isLocatingInProgress](selfCopy, "isLocatingInProgress")}];
  [coderCopy encodeObject:v13 forKey:@"isLocatingInProgress"];

  v14 = MEMORY[0x277CCABB0];
  [(FMFLocation *)selfCopy maxLocatingInterval];
  v15 = [v14 numberWithDouble:?];
  [coderCopy encodeObject:v15 forKey:@"maxLocatingInterval"];

  v16 = MEMORY[0x277CCABB0];
  [(FMFLocation *)selfCopy TTL];
  v17 = [v16 numberWithDouble:?];
  [coderCopy encodeObject:v17 forKey:@"TTL"];

  [(FMFLocation *)selfCopy coordinate];
  [coderCopy encodeDouble:@"latitude" forKey:?];
  [(FMFLocation *)selfCopy coordinate];
  [coderCopy encodeDouble:@"longitude" forKey:v18];
  placemark = [(FMFLocation *)selfCopy placemark];
  [coderCopy encodeObject:placemark forKey:@"placemark"];

  objc_sync_exit(selfCopy);
}

- (FMFLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
  [(FMFLocation *)v5 setHandle:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placemark"];
  [(FMFLocation *)v5 setPlacemark:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationType"];
  -[FMFLocation setLocationType:](v5, "setLocationType:", [v8 integerValue]);

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  [(FMFLocation *)v5 setLocation:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityState"];
  -[FMFLocation setActivityState:](v5, "setActivityState:", [v10 integerValue]);

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
  [(FMFLocation *)v5 setLabel:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortAddressString"];
  [(FMFLocation *)v5 setShortAddressString:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"longAddress"];
  [(FMFLocation *)v5 setLongAddress:v13];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  [(FMFLocation *)v5 setTimestamp:v14];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isLocatingInProgress"];
  -[FMFLocation setLocatingInProgress:](v5, "setLocatingInProgress:", [v15 BOOLValue]);

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxLocatingInterval"];
  [v16 doubleValue];
  [(FMFLocation *)v5 setMaxLocatingInterval:?];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TTL"];
  [v17 doubleValue];
  [(FMFLocation *)v5 setTTL:?];

  [coderCopy decodeDoubleForKey:@"latitude"];
  v19 = v18;
  [coderCopy decodeDoubleForKey:@"longitude"];
  v21 = v20;

  v22 = CLLocationCoordinate2DMake(v19, v21);
  [(FMFLocation *)v5 setCoordinate:v22.latitude, v22.longitude];

  return v5;
}

- (NSString)shortAddress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  label = [(FMFLocation *)selfCopy label];
  if ([label length])
  {
    [(FMFLocation *)selfCopy label];
  }

  else
  {
    [(FMFLocation *)selfCopy shortAddressString];
  }
  v4 = ;

  objc_sync_exit(selfCopy);

  return v4;
}

- (NSString)title
{
  handle = [(FMFLocation *)self handle];
  identifier = [handle identifier];

  return identifier;
}

- (id)locationAge
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  timestamp = [(FMFLocation *)selfCopy timestamp];
  [timestamp timeIntervalSinceNow];
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  if ([(FMFLocation *)selfCopy locationType]== 3)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"LOCATION_AGE_STEWIE" value:&stru_285D7AA10 table:@"Localizable-STEWIE"];
LABEL_13:
    v13 = v7;
    goto LABEL_14;
  }

  if ([(FMFLocation *)selfCopy locationType]== 2)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"LOCATION_AGE_LIVE" value:&stru_285D7AA10 table:0];
    goto LABEL_13;
  }

  v8 = v5 / 60.0;
  if (v8 <= 0.5)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"LOCATION_AGE_NOW" value:&stru_285D7AA10 table:0];
    goto LABEL_13;
  }

  if (v8 < 1.0)
  {
    v15 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v6 localizedStringForKey:@"LOCATION_AGE_LESS_THAN_30SECONDS" value:&stru_285D7AA10 table:0];
    v16 = [v15 localizedStringWithFormat:v10, &unk_285D807A8];
  }

  else
  {
    if (v8 < 60.0)
    {
      v9 = MEMORY[0x277CCACA8];
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v6 localizedStringForKey:@"LOCATION_AGE_MINUTES" value:&stru_285D7AA10 table:0];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:vcvtmd_u64_f64(v8)];
      v12 = [v9 localizedStringWithFormat:v10, v11];
LABEL_22:
      v13 = v12;

      goto LABEL_23;
    }

    if (v8 >= 120.0)
    {
      v18 = MEMORY[0x277CCACA8];
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v6 localizedStringForKey:@"LOCATION_AGE_MORE_THAN_1HR" value:&stru_285D7AA10 table:0];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:vcvtmd_u64_f64(v8 / 60.0)];
      v12 = [v18 localizedStringWithFormat:v10, v11];
      goto LABEL_22;
    }

    v17 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v6 localizedStringForKey:@"LOCATION_AGE_LESS_THAN_1HR" value:&stru_285D7AA10 table:0];
    v16 = [v17 localizedStringWithFormat:v10, &unk_285D807C0];
  }

  v13 = v16;
LABEL_23:

LABEL_14:
  objc_sync_exit(selfCopy);

  return v13;
}

- (id)locationShortAddressWithAge
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  shortAddress = [(FMFLocation *)selfCopy shortAddress];
  locationAge = [(FMFLocation *)selfCopy locationAge];
  if ([shortAddress length] && objc_msgSend(locationAge, "length"))
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"LOCATION_LABEL_WITH_AGE" value:&stru_285D7AA10 table:0];
    v8 = [v5 stringWithFormat:v7, shortAddress, locationAge];

    shortAddress = v8;
  }

  objc_sync_exit(selfCopy);

  return shortAddress;
}

- (id)locationShortAddressWithAgeIncludeLocating
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(FMFLocation *)selfCopy isLocatingInProgress])
  {
    locationShortAddressWithAge = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [locationShortAddressWithAge localizedStringForKey:@"LOCATING" value:&stru_285D7AA10 table:0];
  }

  else
  {
    locationShortAddressWithAge = [(FMFLocation *)selfCopy locationShortAddressWithAge];
    if (![locationShortAddressWithAge length])
    {
      location = [(FMFLocation *)selfCopy location];

      [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (location)
        v8 = {;
        [v8 localizedStringForKey:@"ADDRESS_UNAVAILABLE" value:&stru_285D7AA10 table:0];
      }

      else
        v8 = {;
        [v8 localizedStringForKey:@"LOCATION_NOT_AVAILABLE" value:&stru_285D7AA10 table:0];
      }
      v5 = ;

      goto LABEL_6;
    }

    v4 = locationShortAddressWithAge;
    locationShortAddressWithAge = v4;
  }

  v5 = v4;
LABEL_6:

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)setLocatingInProgress:(BOOL)progress
{
  progressCopy = progress;
  locatingInProgress = self->_locatingInProgress;
  if (locatingInProgress != progress && progress)
  {
    [(FMFLocation *)self resetLocateInProgressTimer];
  }

  self->_locatingInProgress = progressCopy;
  if (locatingInProgress != progressCopy)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"locatingInProgressChanged" object:self];
  }
}

- (void)resetLocateInProgress:(id)progress
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = LogCategory_Daemon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    handle = [(FMFLocation *)self handle];
    v7 = 138412290;
    v8 = handle;
    _os_log_impl(&dword_24A33F000, v4, OS_LOG_TYPE_DEFAULT, "resetLocateInProgress_fired: %@", &v7, 0xCu);
  }

  [(FMFLocation *)self setLocatingInProgress:0];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)resetLocateInProgressTimer
{
  v17 = *MEMORY[0x277D85DE8];
  [(FMFLocation *)self maxLocatingInterval];
  if (v3 > 0.0)
  {
    v4 = v3;
    v5 = LogCategory_Daemon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      handle = [(FMFLocation *)self handle];
      *buf = 134218498;
      v12 = v4;
      v13 = 2112;
      v14 = handle;
      v15 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_24A33F000, v5, OS_LOG_TYPE_DEFAULT, "resetLocateInProgressTimerForSeconds: %f forHandle: %@ location: %@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    v7 = dispatch_time(0, (v4 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__FMFLocation_resetLocateInProgressTimer__block_invoke;
    block[3] = &unk_278FDE498;
    objc_copyWeak(&v10, buf);
    dispatch_after(v7, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __41__FMFLocation_resetLocateInProgressTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetLocateInProgress:0];
}

- (int64_t)distanceThenNameCompare:(id)compare
{
  compareCopy = compare;
  [(FMFLocation *)self distance];
  if (v5 <= 0.0 || ([compareCopy distance], v6 <= 0.0))
  {
    [(FMFLocation *)self distance];
    if (v17 <= 0.0)
    {
      [compareCopy distance];
      if (v18 <= 0.0)
      {
        goto LABEL_11;
      }

LABEL_10:
      v16 = 1;
      goto LABEL_12;
    }

LABEL_8:
    v16 = -1;
    goto LABEL_12;
  }

  [(FMFLocation *)self distance];
  v8 = v7;
  [compareCopy distance];
  if (v8 < v9)
  {
    goto LABEL_8;
  }

  [(FMFLocation *)self distance];
  v11 = v10;
  [compareCopy distance];
  if (v11 > v12)
  {
    goto LABEL_10;
  }

  [(FMFLocation *)self distance];
  v14 = v13;
  [compareCopy distance];
  if (v14 != v15)
  {
LABEL_11:
    handle = [(FMFLocation *)self handle];
    handle2 = [compareCopy handle];
    v16 = [handle prettyNameCompare:handle2];

    goto LABEL_12;
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)_updateLocation:(id)location
{
  locationCopy = location;
  location = [locationCopy location];
  [(FMFLocation *)self setLocation:location];

  -[FMFLocation setLocationType:](self, "setLocationType:", [locationCopy locationType]);
  label = [locationCopy label];
  [(FMFLocation *)self setLabel:label];

  shortAddressString = [locationCopy shortAddressString];
  [(FMFLocation *)self setShortAddressString:shortAddressString];

  longAddress = [locationCopy longAddress];
  [(FMFLocation *)self setLongAddress:longAddress];

  timestamp = [locationCopy timestamp];
  [(FMFLocation *)self setTimestamp:timestamp];

  -[FMFLocation setLocatingInProgress:](self, "setLocatingInProgress:", [locationCopy isLocatingInProgress]);
  placemark = [locationCopy placemark];

  [(FMFLocation *)self setPlacemark:placemark];
}

- (void)updateLocationForCache:(id)cache
{
  cacheCopy = cache;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(FMFLocation *)selfCopy _updateLocation:cacheCopy];
  objc_sync_exit(selfCopy);
}

- (void)updateLocation:(id)location
{
  locationCopy = location;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(FMFLocation *)selfCopy _updateLocation:locationCopy];
  [(CLLocation *)selfCopy->_location coordinate];
  [(FMFLocation *)selfCopy setCoordinate:?];
  objc_sync_exit(selfCopy);
}

- (void)updateHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(FMFLocation *)selfCopy setHandle:handleCopy];
  objc_sync_exit(selfCopy);
}

- (BOOL)isValid
{
  timestamp = [(FMFLocation *)self timestamp];
  if (!timestamp)
  {
    return 1;
  }

  v4 = timestamp;
  [(FMFLocation *)self TTL];
  v6 = v5;

  if (v6 <= 0.0)
  {
    return 1;
  }

  date = [MEMORY[0x277CBEAA8] date];
  timestamp2 = [(FMFLocation *)self timestamp];
  [date timeIntervalSinceDate:timestamp2];
  v10 = v9;

  [(FMFLocation *)self TTL];
  return v10 < v11;
}

- (BOOL)isMoreRecentThan:(id)than
{
  thanCopy = than;
  v5 = thanCopy;
  if (thanCopy && ([thanCopy timestamp], v6 = objc_claimAutoreleasedReturnValue(), v6, v6) && (-[FMFLocation timestamp](self, "timestamp"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    timestamp = [(FMFLocation *)self timestamp];
    timestamp2 = [v5 timestamp];
    v10 = [timestamp compare:timestamp2] != -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end