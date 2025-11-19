@interface MOEventRoutine
+ (id)descriptionOfMode:(unint64_t)a3;
+ (id)stringOfMapItemPlaceType:(unint64_t)a3;
+ (id)stringOfPlaceInferencePlaceType:(unint64_t)a3;
+ (id)stringOfPlaceUserType:(unint64_t)a3;
- (BOOL)fallbackToAddressFormattingWithFormatOption:(id)a3 preferredCategories:(id)a4 poiCategoryBlocklist:(id)a5 mediumConfidenceThreshold:(double)a6 aoiConfidenceThreshold:(double)a7;
- (MOEventRoutine)init;
- (MOEventRoutine)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)formatAddressParkingDisplayNameWithFallback:(BOOL)a3;
- (id)formatAddressWithFormatOption:(id)a3;
- (id)formatAdministrativeAreaWithFormatOption:(id)a3;
- (id)formatCountryWithFormatOption:(id)a3;
- (id)formatLocalityWithFormatOption:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventRoutine

- (MOEventRoutine)init
{
  v3.receiver = self;
  v3.super_class = MOEventRoutine;
  result = [(MOEventRoutine *)&v3 init];
  if (result)
  {
    result->_isInvalid = 0;
  }

  return result;
}

+ (id)descriptionOfMode:(unint64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"Local";
  }

  if (a3 == 2)
  {
    return @"Tourist";
  }

  else
  {
    return v3;
  }
}

+ (id)stringOfPlaceUserType:(unint64_t)a3
{
  v3 = @"Unknown";
  v4 = @"School";
  v5 = @"Gym";
  v6 = @"Outing";
  if (a3 != 100)
  {
    v6 = @"Unknown";
  }

  if (a3 != 4)
  {
    v5 = v6;
  }

  if (a3 != 3)
  {
    v4 = v5;
  }

  if (a3 == 2)
  {
    v3 = @"Work";
  }

  if (a3 == 1)
  {
    v3 = @"Home";
  }

  if (a3 <= 2)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

+ (id)stringOfPlaceInferencePlaceType:(unint64_t)a3
{
  v3 = @"Unknown";
  v4 = @"City";
  v5 = @"State";
  v6 = @"Country";
  if (a3 != 102)
  {
    v6 = @"Unknown";
  }

  if (a3 != 101)
  {
    v5 = v6;
  }

  if (a3 != 100)
  {
    v4 = v5;
  }

  v7 = @"Custom";
  if (a3 != 6)
  {
    v7 = @"Unknown";
  }

  if (a3 == 5)
  {
    v7 = @"CoarseAddress";
  }

  if (a3 <= 99)
  {
    v4 = v7;
  }

  v8 = @"PointOfInterest";
  v9 = @"Address";
  if (a3 != 4)
  {
    v9 = @"Unknown";
  }

  if (a3 != 3)
  {
    v8 = v9;
  }

  if (a3 == 2)
  {
    v3 = @"AreaOfInterest";
  }

  if (a3 == 1)
  {
    v3 = @"NonClassified";
  }

  if (a3 > 2)
  {
    v3 = v8;
  }

  if (a3 <= 4)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

+ (id)stringOfMapItemPlaceType:(unint64_t)a3
{
  result = @"AreaOfInterest";
  switch(a3)
  {
    case 0uLL:
      result = @"Unknown";
      break;
    case 1uLL:
      return result;
    case 2uLL:
      result = @"PointOfInterest";
      break;
    case 3uLL:
      result = @"Address";
      break;
    case 4uLL:
      result = @"Country";
      break;
    case 5uLL:
      result = @"AdministrativeArea";
      break;
    case 6uLL:
      result = @"SubAdministrativeArea";
      break;
    case 7uLL:
      result = @"Locality";
      break;
    case 8uLL:
      result = @"TimeZone";
      break;
    case 9uLL:
      result = @"SubLocality";
      break;
    case 0xAuLL:
      result = @"Ocean";
      break;
    case 0xBuLL:
      result = @"InlandWater";
      break;
    case 0xCuLL:
      result = @"Island";
      break;
    case 0xDuLL:
      result = @"Street";
      break;
    case 0xEuLL:
      result = @"Admin";
      break;
    case 0xFuLL:
      result = @"Postal";
      break;
    case 0x10uLL:
      result = @"Intersection";
      break;
    case 0x11uLL:
      result = @"Building";
      break;
    case 0x12uLL:
      result = @"Continent";
      break;
    case 0x13uLL:
      result = @"Region";
      break;
    case 0x14uLL:
      result = @"Division";
      break;
    default:
      if (a3 == 1000)
      {
        result = @"Undefined";
      }

      break;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  isInvalid = self->_isInvalid;
  v6 = a3;
  [v6 encodeBool:isInvalid forKey:@"isInvalid"];
  [v6 encodeBool:self->_isHighConfidence forKey:@"isHighConfidence"];
  [v6 encodeObject:self->_placeName forKey:@"placeName"];
  [v6 encodeObject:self->_location forKey:@"location"];
  [v6 encodeInteger:self->_mapItemPlaceType forKey:@"mapItemPlaceType"];
  [v6 encodeInteger:self->_placeType forKey:@"placeType"];
  [v6 encodeInteger:self->_placeUserType forKey:@"placeUserType"];
  [v6 encodeInteger:self->_mode forKey:@"mode"];
  [v6 encodeInteger:self->_placeDiscovery forKey:@"placeDiscovery"];
  [v6 encodeObject:self->_address forKey:@"address"];
  [v6 encodeObject:self->_geoAddressObject forKey:@"geoAddressObject"];
  placeNameConfidence = self->_placeNameConfidence;
  *&placeNameConfidence = placeNameConfidence;
  [v6 encodeFloat:@"placeNameConfidence" forKey:placeNameConfidence];
  [v6 encodeObject:self->_placeMapItem forKey:@"placeMapItem"];
  [v6 encodeObject:self->_poiCategory forKey:@"poiCategory"];
  [v6 encodeObject:self->_categoryMuid forKey:@"categoryMuid"];
  [v6 encodeDouble:@"familiarityIndexLOI" forKey:self->_familiarityIndexLOI];
  [v6 encodeInteger:self->_placeSource forKey:@"placeSource"];
  [v6 encodeObject:self->_predominantWeather forKey:@"predominantWeather"];
  [v6 encodeBool:self->_isPreOnboardedVisit forKey:@"isPreOnboardedVisit"];
  [v6 encodeObject:self->_mapItemLocation forKey:@"mapItemLocation"];
  [v6 encodeDouble:@"distanceFromVisitToPlace" forKey:self->_distanceFromVisitToPlace];
  [v6 encodeInteger:self->_mapItemID forKey:@"mapItemID"];
}

- (MOEventRoutine)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = MOEventRoutine;
  v5 = [(MOEventRoutine *)&v28 init];
  if (v5)
  {
    v5->_isInvalid = [v4 decodeBoolForKey:@"isInvalid"];
    v5->_isHighConfidence = [v4 decodeBoolForKey:@"isHighConfidence"];
    v5->_isPreOnboardedVisit = [v4 decodeBoolForKey:@"isPreOnboardedVisit"];
    v5->_mapItemPlaceType = [v4 decodeIntegerForKey:@"mapItemPlaceType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeName"];
    placeName = v5->_placeName;
    v5->_placeName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v8;

    v5->_placeType = [v4 decodeIntegerForKey:@"placeType"];
    v5->_placeUserType = [v4 decodeIntegerForKey:@"placeUserType"];
    v5->_mode = [v4 decodeIntegerForKey:@"mode"];
    v5->_placeDiscovery = [v4 decodeIntForKey:@"placeDiscovery"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    address = v5->_address;
    v5->_address = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"geoAddressObject"];
    geoAddressObject = v5->_geoAddressObject;
    v5->_geoAddressObject = v12;

    [v4 decodeFloatForKey:@"placeNameConfidence"];
    v5->_placeNameConfidence = v14;
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeMapItem"];
    placeMapItem = v5->_placeMapItem;
    v5->_placeMapItem = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"poiCategory"];
    poiCategory = v5->_poiCategory;
    v5->_poiCategory = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"categoryMuid"];
    categoryMuid = v5->_categoryMuid;
    v5->_categoryMuid = v19;

    [v4 decodeDoubleForKey:@"familiarityIndexLOI"];
    v5->_familiarityIndexLOI = v21;
    v5->_placeSource = [v4 decodeIntegerForKey:@"placeSource"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predominantWeather"];
    predominantWeather = v5->_predominantWeather;
    v5->_predominantWeather = v22;

    [v4 decodeDoubleForKey:@"distanceFromVisitToPlace"];
    v5->_distanceFromVisitToPlace = v24;
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapItemLocation"];
    mapItemLocation = v5->_mapItemLocation;
    v5->_mapItemLocation = v25;

    v5->_mapItemID = [v4 decodeIntegerForKey:@"mapItemID"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOEventRoutine);
  v4->_isInvalid = self->_isInvalid;
  v4->_isHighConfidence = self->_isHighConfidence;
  objc_storeStrong(&v4->_address, self->_address);
  objc_storeStrong(&v4->_geoAddressObject, self->_geoAddressObject);
  v4->_mode = self->_mode;
  objc_storeStrong(&v4->_location, self->_location);
  v4->_mapItemPlaceType = self->_mapItemPlaceType;
  objc_storeStrong(&v4->_placeName, self->_placeName);
  v4->_placeType = self->_placeType;
  v4->_placeSource = self->_placeSource;
  objc_storeStrong(&v4->_poiCategory, self->_poiCategory);
  objc_storeStrong(&v4->_categoryMuid, self->_categoryMuid);
  v4->_placeDiscovery = self->_placeDiscovery;
  objc_storeStrong(&v4->_placeMapItem, self->_placeMapItem);
  v4->_placeUserType = self->_placeUserType;
  objc_storeStrong(&v4->_predominantWeather, self->_predominantWeather);
  v4->_familiarityIndexLOI = self->_familiarityIndexLOI;
  v4->_placeNameConfidence = self->_placeNameConfidence;
  v4->_isPreOnboardedVisit = self->_isPreOnboardedVisit;
  objc_storeStrong(&v4->_mapItemLocation, self->_mapItemLocation);
  v4->_mapItemID = self->_mapItemID;
  v4->_distanceFromVisitToPlace = self->_distanceFromVisitToPlace;
  return v4;
}

- (id)description
{
  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [(NSString *)self->_placeName mask];
  placeNameConfidence = self->_placeNameConfidence;
  v5 = [MOEventRoutine descriptionOfMode:[(MOEventRoutine *)self mode]];
  placeDiscovery = self->_placeDiscovery;
  isHighConfidence = self->_isHighConfidence;
  isInvalid = self->_isInvalid;
  isPreOnboardedVisit = self->_isPreOnboardedVisit;
  v16 = *&self->_poiCategory;
  placeSource = self->_placeSource;
  v11 = [objc_opt_class() stringOfPlaceInferencePlaceType:self->_placeType];
  v12 = [objc_opt_class() stringOfMapItemPlaceType:self->_mapItemPlaceType];
  placeUserType = self->_placeUserType;
  v14 = [v17 initWithFormat:@"placeName, %@, confidence, %f, locationMode, %@, new place, %lu, isHighConfidence, %d, isInvalid, %d, isPreOnboardedVisit, %d, poiCategory, %@, categoryMuid, %@, placeSource, %lu, placeType, %@, mapItemPlaceType, %@, userType, %lu, predominantWeather %@, familiarityIndexLOI, %.2f, mapItem, %lu", v3, *&placeNameConfidence, v5, placeDiscovery, isHighConfidence, isInvalid, isPreOnboardedVisit, v16, placeSource, v11, v12, placeUserType, self->_predominantWeather, *&self->_familiarityIndexLOI, self->_mapItemID];

  return v14;
}

- (BOOL)fallbackToAddressFormattingWithFormatOption:(id)a3 preferredCategories:(id)a4 poiCategoryBlocklist:(id)a5 mediumConfidenceThreshold:(double)a6 aoiConfidenceThreshold:(double)a7
{
  v11 = a4;
  v12 = a5;
  v13 = [(MOEventRoutine *)self poiCategory];
  v14 = [v12 containsObject:v13];

  if ([(MOEventRoutine *)self placeType]== 3)
  {
    v15 = [(MOEventRoutine *)self poiCategory];
    if (([v11 containsObject:v15] & 1) != 0 || (-[MOEventRoutine placeNameConfidence](self, "placeNameConfidence"), v16 > a6))
    {
    }

    else
    {
      v18 = [(MOEventRoutine *)self placeSource];

      if ((v18 & 0x40000) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  if ([(MOEventRoutine *)self placeType]!= 2)
  {
    if ([(MOEventRoutine *)self placeType]!= 4 && [(MOEventRoutine *)self placeType]!= 5 && ([(MOEventRoutine *)self placeSource]& 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    v14 = 1;
    goto LABEL_14;
  }

  [(MOEventRoutine *)self placeNameConfidence];
  if (v17 <= a7)
  {
    v14 |= ([(MOEventRoutine *)self placeSource]& 1) == 0;
  }

LABEL_14:

  return v14 & 1;
}

- (id)formatAddressParkingDisplayNameWithFallback:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v6 = [(GEOAddressObject *)self->_geoAddressObject parkingDisplayName];
  v7 = _mo_log_facility_get_os_log(MOLogFacilityEventData);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v15 = NSStringFromSelector(a2);
    v17 = 138412802;
    v18 = v15;
    v19 = 2112;
    v20 = v6;
    v21 = 1024;
    v22 = v3;
    _os_log_debug_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_DEBUG, "%@, parkingDisplayName output string, %@, fallback, %i", &v17, 0x1Cu);
  }

  if ([v6 length])
  {
    v8 = 1;
  }

  else
  {
    v8 = !v3;
  }

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = [(GEOAddressObject *)self->_geoAddressObject shortAddress];

    v10 = _mo_log_facility_get_os_log(MOLogFacilityEventData);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(MOEventRoutine *)a2 formatAddressParkingDisplayNameWithFallback:v9, v10];
    }
  }

  v12 = _mo_log_facility_get_os_log(MOLogFacilityEventData);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = NSStringFromSelector(a2);
    v17 = 138412802;
    v18 = v16;
    v19 = 2112;
    v20 = v9;
    v21 = 1024;
    v22 = v3;
    _os_log_debug_impl(&dword_22D8C5000, v12, OS_LOG_TYPE_DEBUG, "%@, output string, %@, fallback, %i", &v17, 0x1Cu);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)formatAddressWithFormatOption:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(GEOAddressObject *)self->_geoAddressObject address];
  v7 = [v6 structuredAddress];
  v8 = [v7 areaOfInterests];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(GEOAddressObject *)self->_geoAddressObject address];
    v11 = [v10 structuredAddress];
    v12 = [v11 areaOfInterests];
    v13 = [v12 objectAtIndexedSubscript:0];

    goto LABEL_3;
  }

  if ([(MOEventRoutine *)self mapItemPlaceType]== 15)
  {
    v14 = [(MOEventRoutine *)self formatLocalityWithFormatOption:v5];
LABEL_11:
    v13 = v14;
    goto LABEL_12;
  }

  if ([v5 isEqualToString:@"shortAddress"])
  {
    v14 = [(GEOAddressObject *)self->_geoAddressObject shortAddress];
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"parkingDisplayName"])
  {
    v14 = [(MOEventRoutine *)self formatAddressParkingDisplayNameWithFallback:1];
    goto LABEL_11;
  }

  v22 = [v5 isEqualToString:@"aboveDoorShortAddress"];
  v13 = [(GEOAddressObject *)self->_geoAddressObject aboveDoorShortAddress];
  if ((v22 & 1) == 0)
  {
    v10 = _mo_log_facility_get_os_log(MOLogFacilityEventData);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v11 = NSStringFromSelector(a2);
    v23 = 138412802;
    v24 = v11;
    v25 = 2112;
    v26 = v5;
    v27 = 2112;
    v28 = v13;
    _os_log_error_impl(&dword_22D8C5000, v10, OS_LOG_TYPE_ERROR, "%@, unrecognized format option, %@, will use default, %@", &v23, 0x20u);
LABEL_3:

LABEL_4:
  }

LABEL_12:
  v15 = _mo_log_facility_get_os_log(MOLogFacilityEventData);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v18 = NSStringFromSelector(a2);
    v19 = [(GEOAddressObject *)self->_geoAddressObject address];
    v20 = [v19 structuredAddress];
    v21 = [v20 areaOfInterests];
    v23 = 138413058;
    v24 = v18;
    v25 = 2112;
    v26 = v5;
    v27 = 2112;
    v28 = v13;
    v29 = 2112;
    v30 = v21;
    _os_log_debug_impl(&dword_22D8C5000, v15, OS_LOG_TYPE_DEBUG, "%@, format option, %@, output string, %@, AOI List, %@", &v23, 0x2Au);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)formatLocalityWithFormatOption:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(GEOAddressObject *)self->_geoAddressObject cityDisplayNameWithFallback:1];
  v7 = _mo_log_facility_get_os_log(MOLogFacilityEventData);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromSelector(a2);
    v11 = 138412802;
    v12 = v10;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_debug_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_DEBUG, "%@, format option, %@, output string, %@", &v11, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)formatAdministrativeAreaWithFormatOption:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(RTAddress *)self->_address administrativeArea];
  v7 = _mo_log_facility_get_os_log(MOLogFacilityEventData);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromSelector(a2);
    v11 = 138412802;
    v12 = v10;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_debug_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_DEBUG, "%@, format option, %@, output string, %@", &v11, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)formatCountryWithFormatOption:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(GEOAddressObject *)self->_geoAddressObject countryName];
  v7 = _mo_log_facility_get_os_log(MOLogFacilityEventData);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromSelector(a2);
    v11 = 138412802;
    v12 = v10;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_debug_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_DEBUG, "%@, format option, %@, output string, %@", &v11, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)formatAddressParkingDisplayNameWithFallback:(NSObject *)a3 .cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v7 = 138412802;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  v11 = 1024;
  v12 = 1;
  _os_log_debug_impl(&dword_22D8C5000, a3, OS_LOG_TYPE_DEBUG, "%@, shortAddress output string, %@, fallback, %i", &v7, 0x1Cu);

  v6 = *MEMORY[0x277D85DE8];
}

@end