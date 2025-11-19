@interface FMFLocation
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMoreRecentThan:(id)a3;
- (BOOL)isValid;
- (CLLocationCoordinate2D)coordinate;
- (FMFLocation)initWithCoder:(id)a3;
- (FMFLocation)initWithDictionary:(id)a3 forHandle:(id)a4 maxLocatingInterval:(double)a5 TTL:(double)a6;
- (FMFLocation)initWithLatitude:(double)a3 longitude:(double)a4;
- (NSString)description;
- (NSString)shortAddress;
- (NSString)title;
- (id)copyWithZone:(_NSZone *)a3;
- (id)locationAge;
- (id)locationShortAddressWithAge;
- (id)locationShortAddressWithAgeIncludeLocating;
- (int64_t)distanceThenNameCompare:(id)a3;
- (unint64_t)hash;
- (void)_updateLocation:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)resetLocateInProgress:(id)a3;
- (void)resetLocateInProgressTimer;
- (void)setLocatingInProgress:(BOOL)a3;
- (void)updateHandle:(id)a3;
- (void)updateLocation:(id)a3;
- (void)updateLocationForCache:(id)a3;
@end

@implementation FMFLocation

- (FMFLocation)initWithDictionary:(id)a3 forHandle:(id)a4 maxLocatingInterval:(double)a5 TTL:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = objc_alloc_init(objc_opt_class());
  [(FMFLocation *)v12 setHandle:v11];

  [(FMFLocation *)v12 setMaxLocatingInterval:a5];
  [(FMFLocation *)v12 setTTL:a6];
  v13 = [v10 objectForKeyedSubscript:@"location"];
  v14 = [MEMORY[0x277CBEB68] null];
  v15 = v14;
  if (v13 == v14)
  {

    goto LABEL_6;
  }

  v16 = [v10 objectForKeyedSubscript:@"location"];

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
  v21 = [MEMORY[0x277CBEB68] null];
  if (v20 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = [v16 objectForKeyedSubscript:@"latitude"];
  }

  v23 = [v16 objectForKeyedSubscript:@"longitude"];
  v24 = [MEMORY[0x277CBEB68] null];
  if (v23 == v24)
  {
    v91 = 0;
  }

  else
  {
    v91 = [v16 objectForKeyedSubscript:@"longitude"];
  }

  v25 = [v16 objectForKeyedSubscript:@"horizontalAccuracy"];
  v26 = [MEMORY[0x277CBEB68] null];
  if (v25 == v26)
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
  v44 = [(FMFLocation *)v12 location];
  [v44 coordinate];
  [(FMFLocation *)v12 setCoordinate:?];

  v45 = [v16 objectForKeyedSubscript:@"address"];
  v46 = 0x277CBE000uLL;
  v47 = [MEMORY[0x277CBEB68] null];
  v48 = v47;
  v88 = v22;
  if (v45 == v47)
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
  v51 = [MEMORY[0x277CBEB68] null];
  if (v50 == v51)
  {
    v52 = 0;
  }

  else
  {
    v52 = [v49 objectForKeyedSubscript:@"locality"];
  }

  v55 = [v49 objectForKeyedSubscript:@"stateCode"];
  v56 = [MEMORY[0x277CBEB68] null];
  if (v55 == v56)
  {
    v54 = 0;
  }

  else
  {
    v54 = [v49 objectForKeyedSubscript:@"stateCode"];
  }

  v57 = [v49 objectForKeyedSubscript:@"administrativeArea"];
  v58 = [MEMORY[0x277CBEB68] null];
  v81 = self;
  if (v57 == v58)
  {
    v84 = 0;
  }

  else
  {
    v84 = [v49 objectForKeyedSubscript:@"administrativeArea"];
  }

  v59 = [v49 objectForKeyedSubscript:@"formattedAddressLines"];
  v60 = [MEMORY[0x277CBEB68] null];
  if (v59 == v60)
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
    self = v81;
    goto LABEL_40;
  }

  self = v81;
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
  v68 = [*(v46 + 2920) null];
  v69 = v68;
  if (v67 == v68)
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

      v82 = self;
      v71 = [v70 firstObject];
      v72 = [v71 objectForKeyedSubscript:@"label"];
      v73 = [*(v46 + 2920) null];
      v74 = v73;
      if (v72 == v73)
      {
      }

      else
      {
        v75 = [v71 objectForKeyedSubscript:@"label"];

        if (!v75)
        {
LABEL_56:

          self = v82;
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

- (FMFLocation)initWithLatitude:(double)a3 longitude:(double)a4
{
  v7 = objc_alloc_init(objc_opt_class());
  v8 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:a3 longitude:a4];
  [(FMFLocation *)v7 setLocationType:0];
  [(FMFLocation *)v7 setLocation:v8];
  [(FMFLocation *)v7 setActivityState:0];
  [v8 coordinate];
  [(FMFLocation *)v7 setCoordinate:?];

  return v7;
}

- (NSString)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = +[FMFLocationDateFormatter sharedInstance];
  v51 = [(FMFLocation *)v2 handle];
  if ([(FMFLocation *)v2 locationType])
  {
    if ([(FMFLocation *)v2 locationType]== 2)
    {
      v4 = @"live";
    }

    else
    {
      v6 = [(FMFLocation *)v2 locationType];
      v4 = @"shallow";
      if (v6 == 3)
      {
        v4 = @"stewie";
      }
    }
  }

  else
  {
    v5 = [(FMFLocation *)v2 isLocatingInProgress];
    v4 = @"legacy";
    if (v5)
    {
      v4 = @"legacy in progress";
    }
  }

  v50 = v4;
  v7 = [(FMFLocation *)v2 timestamp];
  v47 = v3;
  if (v7)
  {
    v8 = [(FMFLocation *)v2 timestamp];
    v49 = [v3 stringFromDate:v8];
  }

  else
  {
    v49 = &stru_285D7AA10;
  }

  v9 = 0x277CCA000;
  v10 = MEMORY[0x277CCACA8];
  [(FMFLocation *)v2 coordinate];
  v12 = v11;
  [(FMFLocation *)v2 coordinate];
  v52 = [v10 stringWithFormat:@"%01.6lf°, %01.6lf°", v12, v13];
  v14 = [(FMFLocation *)v2 location];
  [v14 coordinate];
  v16 = v15;
  [(FMFLocation *)v2 coordinate];
  if (v16 != v17)
  {

    goto LABEL_16;
  }

  v18 = [(FMFLocation *)v2 location];
  [v18 coordinate];
  v20 = v19;
  [(FMFLocation *)v2 coordinate];
  v22 = v21;

  if (v20 != v22)
  {
LABEL_16:
    v23 = MEMORY[0x277CCACA8];
    [(FMFLocation *)v2 coordinate];
    v25 = v24;
    [(FMFLocation *)v2 coordinate];
    v27 = v26;
    v28 = [(FMFLocation *)v2 location];
    [v28 coordinate];
    v30 = v29;
    v3 = [(FMFLocation *)v2 location];
    [v3 coordinate];
    v32 = [v23 stringWithFormat:@"%01.6lf°, %01.6lf°/%01.6lf°, %01.6lf°", v25, v27, v30, v31];

    v52 = v32;
  }

  v33 = MEMORY[0x277CCACA8];
  v34 = objc_opt_class();
  v48 = NSStringFromClass(v34);
  v35 = [(FMFLocation *)v2 label];
  if (v35)
  {
    v36 = MEMORY[0x277CCACA8];
    v46 = [(FMFLocation *)v2 label];
    v37 = [v36 stringWithFormat:@" - labl: '%@'", v46];
  }

  else
  {
    v37 = &stru_285D7AA10;
  }

  v38 = [(FMFLocation *)v2 shortAddressString];
  if (v38)
  {
    v39 = MEMORY[0x277CCACA8];
    v3 = [(FMFLocation *)v2 shortAddressString];
    v40 = [v39 stringWithFormat:@" - sadr: '%@'", v3];
  }

  else
  {
    v40 = &stru_285D7AA10;
  }

  v41 = [(FMFLocation *)v2 longAddress];
  if (v41)
  {
    v42 = MEMORY[0x277CCACA8];
    v9 = [(FMFLocation *)v2 longAddress];
    v43 = [v42 stringWithFormat:@" - ladr: '%@'", v9];
  }

  else
  {
    v43 = &stru_285D7AA10;
  }

  v44 = [v33 stringWithFormat:@"%@(0x%lx): %@ - %@: {%@@%@}%@%@%@", v48, v2, v51, v50, v52, v49, v37, v40, v43];
  if (v41)
  {
  }

  if (v38)
  {
  }

  if (v35)
  {
  }

  objc_sync_exit(v2);

  return v44;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(FMFLocation *)self handle];
  [v4 setHandle:v5];

  [v4 setLocationType:{-[FMFLocation locationType](self, "locationType")}];
  v6 = [(FMFLocation *)self location];
  [v4 setLocation:v6];

  [v4 setActivityState:{-[FMFLocation activityState](self, "activityState")}];
  v7 = [(FMFLocation *)self label];
  [v4 setLabel:v7];

  v8 = [(FMFLocation *)self shortAddressString];
  [v4 setShortAddressString:v8];

  v9 = [(FMFLocation *)self longAddress];
  [v4 setLongAddress:v9];

  v10 = [(FMFLocation *)self timestamp];
  [v4 setTimestamp:v10];

  [v4 setLocatingInProgress:{-[FMFLocation isLocatingInProgress](self, "isLocatingInProgress")}];
  [(FMFLocation *)self maxLocatingInterval];
  [v4 setMaxLocatingInterval:?];
  [(FMFLocation *)self TTL];
  [v4 setTTL:?];
  v11 = [(FMFLocation *)self placemark];
  [v4 setPlacemark:v11];

  v12 = [v4 location];
  [v12 coordinate];
  [v4 setCoordinate:?];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(FMFLocation *)self handle];
    v7 = [v6 serverId];
    v8 = [v5 handle];

    v9 = [v8 serverId];
    v10 = [v7 isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(FMFLocation *)self handle];
  v3 = [v2 serverId];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:protocol_getName(v4)];
  if ([v5 isEqualToString:@"MKAnnotation"])
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = FMFLocation;
    v6 = [(FMFLocation *)&v8 conformsToProtocol:v4];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v20 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(FMFLocation *)v4 handle];
  [v20 encodeObject:v5 forKey:@"handle"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FMFLocation locationType](v4, "locationType")}];
  [v20 encodeObject:v6 forKey:@"locationType"];

  v7 = [(FMFLocation *)v4 location];
  [v20 encodeObject:v7 forKey:@"location"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FMFLocation activityState](v4, "activityState")}];
  [v20 encodeObject:v8 forKey:@"activityState"];

  v9 = [(FMFLocation *)v4 label];
  [v20 encodeObject:v9 forKey:@"label"];

  v10 = [(FMFLocation *)v4 shortAddressString];
  [v20 encodeObject:v10 forKey:@"shortAddressString"];

  v11 = [(FMFLocation *)v4 longAddress];
  [v20 encodeObject:v11 forKey:@"longAddress"];

  v12 = [(FMFLocation *)v4 timestamp];
  [v20 encodeObject:v12 forKey:@"timestamp"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[FMFLocation isLocatingInProgress](v4, "isLocatingInProgress")}];
  [v20 encodeObject:v13 forKey:@"isLocatingInProgress"];

  v14 = MEMORY[0x277CCABB0];
  [(FMFLocation *)v4 maxLocatingInterval];
  v15 = [v14 numberWithDouble:?];
  [v20 encodeObject:v15 forKey:@"maxLocatingInterval"];

  v16 = MEMORY[0x277CCABB0];
  [(FMFLocation *)v4 TTL];
  v17 = [v16 numberWithDouble:?];
  [v20 encodeObject:v17 forKey:@"TTL"];

  [(FMFLocation *)v4 coordinate];
  [v20 encodeDouble:@"latitude" forKey:?];
  [(FMFLocation *)v4 coordinate];
  [v20 encodeDouble:@"longitude" forKey:v18];
  v19 = [(FMFLocation *)v4 placemark];
  [v20 encodeObject:v19 forKey:@"placemark"];

  objc_sync_exit(v4);
}

- (FMFLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
  [(FMFLocation *)v5 setHandle:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placemark"];
  [(FMFLocation *)v5 setPlacemark:v7];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationType"];
  -[FMFLocation setLocationType:](v5, "setLocationType:", [v8 integerValue]);

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  [(FMFLocation *)v5 setLocation:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityState"];
  -[FMFLocation setActivityState:](v5, "setActivityState:", [v10 integerValue]);

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
  [(FMFLocation *)v5 setLabel:v11];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortAddressString"];
  [(FMFLocation *)v5 setShortAddressString:v12];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"longAddress"];
  [(FMFLocation *)v5 setLongAddress:v13];

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  [(FMFLocation *)v5 setTimestamp:v14];

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isLocatingInProgress"];
  -[FMFLocation setLocatingInProgress:](v5, "setLocatingInProgress:", [v15 BOOLValue]);

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxLocatingInterval"];
  [v16 doubleValue];
  [(FMFLocation *)v5 setMaxLocatingInterval:?];

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TTL"];
  [v17 doubleValue];
  [(FMFLocation *)v5 setTTL:?];

  [v4 decodeDoubleForKey:@"latitude"];
  v19 = v18;
  [v4 decodeDoubleForKey:@"longitude"];
  v21 = v20;

  v22 = CLLocationCoordinate2DMake(v19, v21);
  [(FMFLocation *)v5 setCoordinate:v22.latitude, v22.longitude];

  return v5;
}

- (NSString)shortAddress
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FMFLocation *)v2 label];
  if ([v3 length])
  {
    [(FMFLocation *)v2 label];
  }

  else
  {
    [(FMFLocation *)v2 shortAddressString];
  }
  v4 = ;

  objc_sync_exit(v2);

  return v4;
}

- (NSString)title
{
  v2 = [(FMFLocation *)self handle];
  v3 = [v2 identifier];

  return v3;
}

- (id)locationAge
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FMFLocation *)v2 timestamp];
  [v3 timeIntervalSinceNow];
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  if ([(FMFLocation *)v2 locationType]== 3)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"LOCATION_AGE_STEWIE" value:&stru_285D7AA10 table:@"Localizable-STEWIE"];
LABEL_13:
    v13 = v7;
    goto LABEL_14;
  }

  if ([(FMFLocation *)v2 locationType]== 2)
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
  objc_sync_exit(v2);

  return v13;
}

- (id)locationShortAddressWithAge
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FMFLocation *)v2 shortAddress];
  v4 = [(FMFLocation *)v2 locationAge];
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"LOCATION_LABEL_WITH_AGE" value:&stru_285D7AA10 table:0];
    v8 = [v5 stringWithFormat:v7, v3, v4];

    v3 = v8;
  }

  objc_sync_exit(v2);

  return v3;
}

- (id)locationShortAddressWithAgeIncludeLocating
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(FMFLocation *)v2 isLocatingInProgress])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"LOCATING" value:&stru_285D7AA10 table:0];
  }

  else
  {
    v3 = [(FMFLocation *)v2 locationShortAddressWithAge];
    if (![v3 length])
    {
      v7 = [(FMFLocation *)v2 location];

      [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v7)
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

    v4 = v3;
    v3 = v4;
  }

  v5 = v4;
LABEL_6:

  objc_sync_exit(v2);

  return v5;
}

- (void)setLocatingInProgress:(BOOL)a3
{
  v3 = a3;
  locatingInProgress = self->_locatingInProgress;
  if (locatingInProgress != a3 && a3)
  {
    [(FMFLocation *)self resetLocateInProgressTimer];
  }

  self->_locatingInProgress = v3;
  if (locatingInProgress != v3)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"locatingInProgressChanged" object:self];
  }
}

- (void)resetLocateInProgress:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = LogCategory_Daemon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(FMFLocation *)self handle];
    v7 = 138412290;
    v8 = v5;
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
      v6 = [(FMFLocation *)self handle];
      *buf = 134218498;
      v12 = v4;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = self;
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

- (int64_t)distanceThenNameCompare:(id)a3
{
  v4 = a3;
  [(FMFLocation *)self distance];
  if (v5 <= 0.0 || ([v4 distance], v6 <= 0.0))
  {
    [(FMFLocation *)self distance];
    if (v17 <= 0.0)
    {
      [v4 distance];
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
  [v4 distance];
  if (v8 < v9)
  {
    goto LABEL_8;
  }

  [(FMFLocation *)self distance];
  v11 = v10;
  [v4 distance];
  if (v11 > v12)
  {
    goto LABEL_10;
  }

  [(FMFLocation *)self distance];
  v14 = v13;
  [v4 distance];
  if (v14 != v15)
  {
LABEL_11:
    v19 = [(FMFLocation *)self handle];
    v20 = [v4 handle];
    v16 = [v19 prettyNameCompare:v20];

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

- (void)_updateLocation:(id)a3
{
  v4 = a3;
  v5 = [v4 location];
  [(FMFLocation *)self setLocation:v5];

  -[FMFLocation setLocationType:](self, "setLocationType:", [v4 locationType]);
  v6 = [v4 label];
  [(FMFLocation *)self setLabel:v6];

  v7 = [v4 shortAddressString];
  [(FMFLocation *)self setShortAddressString:v7];

  v8 = [v4 longAddress];
  [(FMFLocation *)self setLongAddress:v8];

  v9 = [v4 timestamp];
  [(FMFLocation *)self setTimestamp:v9];

  -[FMFLocation setLocatingInProgress:](self, "setLocatingInProgress:", [v4 isLocatingInProgress]);
  v10 = [v4 placemark];

  [(FMFLocation *)self setPlacemark:v10];
}

- (void)updateLocationForCache:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(FMFLocation *)v4 _updateLocation:v5];
  objc_sync_exit(v4);
}

- (void)updateLocation:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(FMFLocation *)v4 _updateLocation:v5];
  [(CLLocation *)v4->_location coordinate];
  [(FMFLocation *)v4 setCoordinate:?];
  objc_sync_exit(v4);
}

- (void)updateHandle:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(FMFLocation *)v4 setHandle:v5];
  objc_sync_exit(v4);
}

- (BOOL)isValid
{
  v3 = [(FMFLocation *)self timestamp];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  [(FMFLocation *)self TTL];
  v6 = v5;

  if (v6 <= 0.0)
  {
    return 1;
  }

  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [(FMFLocation *)self timestamp];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  [(FMFLocation *)self TTL];
  return v10 < v11;
}

- (BOOL)isMoreRecentThan:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 timestamp], v6 = objc_claimAutoreleasedReturnValue(), v6, v6) && (-[FMFLocation timestamp](self, "timestamp"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [(FMFLocation *)self timestamp];
    v9 = [v5 timestamp];
    v10 = [v8 compare:v9] != -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end