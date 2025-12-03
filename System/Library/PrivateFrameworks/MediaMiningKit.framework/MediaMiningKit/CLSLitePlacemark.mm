@interface CLSLitePlacemark
+ (BOOL)_isIslandForGeoMapItem:(id)item;
+ (id)popularityScoresOrderedByAOIFromAdditionalPlaceInfos:(id)infos areasOfInterest:(id)interest;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOcean;
- (CLSLitePlacemark)initWithCLPlacemark:(id)placemark;
- (CLSLitePlacemark)initWithCLPlacemark:(id)placemark popularityScoresOrderedByAOI:(id)i;
- (CLSLitePlacemark)initWithCoder:(id)coder;
- (CLSLitePlacemark)initWithRTMapItem:(id)item;
- (id)description;
- (void)_extractValuesFromGeoMapItem:(id)item;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSLitePlacemark

- (id)description
{
  v3 = [(NSArray *)self->_popularityScoresOrderedByAOI count];
  if (v3 && (v4 = v3, v3 == [(NSArray *)self->_areasOfInterest count]))
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (i = 0; i != v4; ++i)
    {
      v7 = [(NSArray *)self->_popularityScoresOrderedByAOI objectAtIndexedSubscript:i];
      [v7 doubleValue];
      v9 = v8;

      v10 = MEMORY[0x277CCACA8];
      v11 = [(NSArray *)self->_areasOfInterest objectAtIndexedSubscript:i];
      v12 = [v10 stringWithFormat:@"%@: %.3f", v11, v9];
      [v5 addObject:v12];
    }

    v13 = MEMORY[0x277CCACA8];
    v22.receiver = self;
    v22.super_class = CLSLitePlacemark;
    location2 = [(CLSLitePlacemark *)&v22 description];
    location = [(CLSLitePlacemark *)self location];
    region = [(CLSLitePlacemark *)self region];
    v17 = [v5 componentsJoinedByString:{@", "}];
    v18 = [v13 stringWithFormat:@"%@ loc %@, region %@ (score(s): %@)", location2, location, region, v17];
  }

  else
  {
    v19 = MEMORY[0x277CCACA8];
    v21.receiver = self;
    v21.super_class = CLSLitePlacemark;
    v5 = [(CLSLitePlacemark *)&v21 description];
    location2 = [(CLSLitePlacemark *)self location];
    location = [(CLSLitePlacemark *)self region];
    v18 = [v19 stringWithFormat:@"%@ loc %@, region %@", v5, location2, location];
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    location = [(CLSLitePlacemark *)self location];
    [location coordinate];
    v8 = v7;
    v10 = v9;

    location2 = [v5 location];
    [location2 coordinate];
    v13 = v12;
    v15 = v14;

    if (v8 != v13 || v10 != v15)
    {
      goto LABEL_54;
    }

    region = [(CLSLitePlacemark *)self region];
    if (region)
    {
      v18 = region;
      region2 = [(CLSLitePlacemark *)self region];
      region3 = [v5 region];
      v21 = [region2 isEqual:region3];

      if (!v21)
      {
        goto LABEL_54;
      }
    }

    else
    {
      region4 = [v5 region];

      if (region4)
      {
        goto LABEL_54;
      }
    }

    thoroughfare = [(CLSLitePlacemark *)self thoroughfare];
    if (thoroughfare)
    {
      v25 = thoroughfare;
      thoroughfare2 = [(CLSLitePlacemark *)self thoroughfare];
      thoroughfare3 = [v5 thoroughfare];
      v28 = [thoroughfare2 isEqualToString:thoroughfare3];

      if (!v28)
      {
        goto LABEL_54;
      }
    }

    else
    {
      thoroughfare4 = [v5 thoroughfare];

      if (thoroughfare4)
      {
        goto LABEL_54;
      }
    }

    subThoroughfare = [(CLSLitePlacemark *)self subThoroughfare];
    if (subThoroughfare)
    {
      v31 = subThoroughfare;
      subThoroughfare2 = [(CLSLitePlacemark *)self subThoroughfare];
      subThoroughfare3 = [v5 subThoroughfare];
      v34 = [subThoroughfare2 isEqualToString:subThoroughfare3];

      if (!v34)
      {
        goto LABEL_54;
      }
    }

    else
    {
      subThoroughfare4 = [v5 subThoroughfare];

      if (subThoroughfare4)
      {
        goto LABEL_54;
      }
    }

    locality = [(CLSLitePlacemark *)self locality];
    if (locality)
    {
      v37 = locality;
      locality2 = [(CLSLitePlacemark *)self locality];
      locality3 = [v5 locality];
      v40 = [locality2 isEqualToString:locality3];

      if (!v40)
      {
        goto LABEL_54;
      }
    }

    else
    {
      locality4 = [v5 locality];

      if (locality4)
      {
        goto LABEL_54;
      }
    }

    subLocality = [(CLSLitePlacemark *)self subLocality];
    if (subLocality)
    {
      v43 = subLocality;
      subLocality2 = [(CLSLitePlacemark *)self subLocality];
      subLocality3 = [v5 subLocality];
      v46 = [subLocality2 isEqualToString:subLocality3];

      if (!v46)
      {
        goto LABEL_54;
      }
    }

    else
    {
      subLocality4 = [v5 subLocality];

      if (subLocality4)
      {
        goto LABEL_54;
      }
    }

    administrativeArea = [(CLSLitePlacemark *)self administrativeArea];
    if (administrativeArea)
    {
      v49 = administrativeArea;
      administrativeArea2 = [(CLSLitePlacemark *)self administrativeArea];
      administrativeArea3 = [v5 administrativeArea];
      v52 = [administrativeArea2 isEqualToString:administrativeArea3];

      if (!v52)
      {
        goto LABEL_54;
      }
    }

    else
    {
      administrativeArea4 = [v5 administrativeArea];

      if (administrativeArea4)
      {
        goto LABEL_54;
      }
    }

    iSOcountryCode = [(CLSLitePlacemark *)self ISOcountryCode];
    if (iSOcountryCode)
    {
      v55 = iSOcountryCode;
      iSOcountryCode2 = [(CLSLitePlacemark *)self ISOcountryCode];
      iSOcountryCode3 = [v5 ISOcountryCode];
      v58 = [iSOcountryCode2 isEqualToString:iSOcountryCode3];

      if (!v58)
      {
        goto LABEL_54;
      }
    }

    else
    {
      iSOcountryCode4 = [v5 ISOcountryCode];

      if (iSOcountryCode4)
      {
        goto LABEL_54;
      }
    }

    inlandWater = [(CLSLitePlacemark *)self inlandWater];
    if (inlandWater)
    {
      v61 = inlandWater;
      inlandWater2 = [(CLSLitePlacemark *)self inlandWater];
      inlandWater3 = [v5 inlandWater];
      v64 = [inlandWater2 isEqualToString:inlandWater3];

      if (!v64)
      {
        goto LABEL_54;
      }
    }

    else
    {
      inlandWater4 = [v5 inlandWater];

      if (inlandWater4)
      {
        goto LABEL_54;
      }
    }

    areasOfInterest = [(CLSLitePlacemark *)self areasOfInterest];
    if (areasOfInterest)
    {
      v67 = areasOfInterest;
      areasOfInterest2 = [(CLSLitePlacemark *)self areasOfInterest];
      areasOfInterest3 = [v5 areasOfInterest];
      v70 = [areasOfInterest2 isEqual:areasOfInterest3];

      if (!v70)
      {
        goto LABEL_54;
      }
    }

    else
    {
      areasOfInterest4 = [v5 areasOfInterest];

      if (areasOfInterest4)
      {
        goto LABEL_54;
      }
    }

    ocean = [(CLSLitePlacemark *)self ocean];
    if (ocean)
    {
      v73 = ocean;
      ocean2 = [(CLSLitePlacemark *)self ocean];
      ocean3 = [v5 ocean];
      v76 = [ocean2 isEqual:ocean3];

      if (!v76)
      {
        goto LABEL_54;
      }
    }

    else
    {
      ocean4 = [v5 ocean];

      if (ocean4)
      {
        goto LABEL_54;
      }
    }

    isIsland = [(CLSLitePlacemark *)self isIsland];
    if (isIsland == [v5 isIsland])
    {
      revGeoLocationData = [(CLSLitePlacemark *)self revGeoLocationData];
      if (revGeoLocationData)
      {
        v80 = revGeoLocationData;
        revGeoLocationData2 = [(CLSLitePlacemark *)self revGeoLocationData];
        revGeoLocationData3 = [v5 revGeoLocationData];
        v83 = [revGeoLocationData2 isEqual:revGeoLocationData3];

        if (v83)
        {
LABEL_51:
          popularityScoresOrderedByAOI = [(CLSLitePlacemark *)self popularityScoresOrderedByAOI];
          if (popularityScoresOrderedByAOI)
          {
            popularityScoresOrderedByAOI2 = [(CLSLitePlacemark *)self popularityScoresOrderedByAOI];
            popularityScoresOrderedByAOI3 = [v5 popularityScoresOrderedByAOI];
            v22 = [popularityScoresOrderedByAOI2 isEqual:popularityScoresOrderedByAOI3];
          }

          else
          {
            popularityScoresOrderedByAOI2 = [v5 popularityScoresOrderedByAOI];
            v22 = popularityScoresOrderedByAOI2 == 0;
          }

          goto LABEL_55;
        }
      }

      else
      {
        revGeoLocationData4 = [v5 revGeoLocationData];

        if (!revGeoLocationData4)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_54:
    v22 = 0;
LABEL_55:

    goto LABEL_56;
  }

  v22 = 0;
LABEL_56:

  return v22;
}

- (void)_extractValuesFromGeoMapItem:(id)item
{
  itemCopy = item;
  geoAddress = [itemCopy geoAddress];
  structuredAddress = [geoAddress structuredAddress];

  thoroughfare = [structuredAddress thoroughfare];
  thoroughfare = self->_thoroughfare;
  self->_thoroughfare = thoroughfare;

  subThoroughfare = [structuredAddress subThoroughfare];
  subThoroughfare = self->_subThoroughfare;
  self->_subThoroughfare = subThoroughfare;

  locality = [structuredAddress locality];
  locality = self->_locality;
  self->_locality = locality;

  subLocality = [structuredAddress subLocality];
  subLocality = self->_subLocality;
  self->_subLocality = subLocality;

  administrativeArea = [structuredAddress administrativeArea];
  administrativeArea = self->_administrativeArea;
  self->_administrativeArea = administrativeArea;

  subAdministrativeArea = [structuredAddress subAdministrativeArea];
  subAdministrativeArea = self->_subAdministrativeArea;
  self->_subAdministrativeArea = subAdministrativeArea;

  countryCode = [structuredAddress countryCode];
  ISOcountryCode = self->_ISOcountryCode;
  self->_ISOcountryCode = countryCode;

  inlandWater = [structuredAddress inlandWater];
  inlandWater = self->_inlandWater;
  self->_inlandWater = inlandWater;

  ocean = [structuredAddress ocean];
  ocean = self->_ocean;
  self->_ocean = ocean;

  areaOfInterests = [structuredAddress areaOfInterests];
  areasOfInterest = self->_areasOfInterest;
  self->_areasOfInterest = areaOfInterests;

  administrativeAreaCode = [structuredAddress administrativeAreaCode];
  administrativeAreaCode = self->_administrativeAreaCode;
  self->_administrativeAreaCode = administrativeAreaCode;

  self->_isIsland = [objc_opt_class() _isIslandForGeoMapItem:itemCopy];
  v28 = [objc_alloc(MEMORY[0x277D3AD68]) initWithGEOMapItem:itemCopy];

  plistData = [v28 plistData];
  revGeoLocationData = self->_revGeoLocationData;
  self->_revGeoLocationData = plistData;
}

- (BOOL)isOcean
{
  ocean = [(CLSLitePlacemark *)self ocean];
  v3 = [ocean length] != 0;

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  region = self->_region;
  coderCopy = coder;
  [coderCopy encodeObject:region forKey:@"region"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_thoroughfare forKey:@"thoroughfare"];
  [coderCopy encodeObject:self->_subThoroughfare forKey:@"subThoroughfare"];
  [coderCopy encodeObject:self->_locality forKey:@"locality"];
  [coderCopy encodeObject:self->_subLocality forKey:@"subLocality"];
  [coderCopy encodeObject:self->_administrativeArea forKey:@"administrativeArea"];
  [coderCopy encodeObject:self->_subAdministrativeArea forKey:@"subAdministrativeArea"];
  [coderCopy encodeObject:self->_ISOcountryCode forKey:@"ISOCountryCode"];
  [coderCopy encodeObject:self->_inlandWater forKey:@"inlandWater"];
  [coderCopy encodeObject:self->_ocean forKey:@"ocean"];
  [coderCopy encodeObject:self->_areasOfInterest forKey:@"areasOfInterest"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isIsland];
  [coderCopy encodeObject:v5 forKey:@"isIsland"];

  [coderCopy encodeObject:self->_revGeoLocationData forKey:@"revGeoLocationData"];
  [coderCopy encodeObject:self->_geoServiceProvider forKey:@"geoServiceProvider"];
  [coderCopy encodeObject:self->_popularityScoresOrderedByAOI forKey:@"popularityScoresOrderedByAOI"];
}

- (CLSLitePlacemark)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CLSLitePlacemark *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    region = v5->_region;
    v5->_region = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thoroughfare"];
    thoroughfare = v5->_thoroughfare;
    v5->_thoroughfare = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subThoroughfare"];
    subThoroughfare = v5->_subThoroughfare;
    v5->_subThoroughfare = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locality"];
    locality = v5->_locality;
    v5->_locality = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subLocality"];
    subLocality = v5->_subLocality;
    v5->_subLocality = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"administrativeArea"];
    administrativeArea = v5->_administrativeArea;
    v5->_administrativeArea = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subAdministrativeArea"];
    subAdministrativeArea = v5->_subAdministrativeArea;
    v5->_subAdministrativeArea = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ISOCountryCode"];
    ISOcountryCode = v5->_ISOcountryCode;
    v5->_ISOcountryCode = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inlandWater"];
    inlandWater = v5->_inlandWater;
    v5->_inlandWater = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ocean"];
    ocean = v5->_ocean;
    v5->_ocean = v26;

    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"areasOfInterest"];
    areasOfInterest = v5->_areasOfInterest;
    v5->_areasOfInterest = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isIsland"];
    v5->_isIsland = [v33 BOOLValue];

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"revGeoLocationData"];
    revGeoLocationData = v5->_revGeoLocationData;
    v5->_revGeoLocationData = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geoServiceProvider"];
    geoServiceProvider = v5->_geoServiceProvider;
    v5->_geoServiceProvider = v36;

    if ([coderCopy containsValueForKey:@"popularityScoresOrderedByAOI"])
    {
      v38 = MEMORY[0x277CBEB98];
      v39 = objc_opt_class();
      v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
      v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"popularityScoresOrderedByAOI"];
      popularityScoresOrderedByAOI = v5->_popularityScoresOrderedByAOI;
      v5->_popularityScoresOrderedByAOI = v41;

      if (!v5->_popularityScoresOrderedByAOI)
      {
        if (v5->_areasOfInterest)
        {
          v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if ([(NSArray *)v5->_areasOfInterest count])
          {
            v44 = 0;
            do
            {
              [(NSArray *)v43 setObject:&unk_28449B7D0 atIndexedSubscript:v44++];
            }

            while (v44 < [(NSArray *)v5->_areasOfInterest count]);
          }

          v45 = v5->_popularityScoresOrderedByAOI;
          v5->_popularityScoresOrderedByAOI = v43;
        }
      }
    }
  }

  return v5;
}

- (CLSLitePlacemark)initWithRTMapItem:(id)item
{
  v72 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v69.receiver = self;
  v69.super_class = CLSLitePlacemark;
  v5 = [(CLSLitePlacemark *)&v69 init];
  if (v5)
  {
    location = [itemCopy location];
    [location latitude];
    v8 = v7;
    [location longitude];
    v10 = v9;
    [location horizontalUncertainty];
    v12 = v11;
    v13 = objc_alloc(MEMORY[0x277CBFBC8]);
    v14 = CLLocationCoordinate2DMake(v8, v10);
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%+.8f, %+.8f> radius %.2f", *&v8, *&v10, *&v12];
    v16 = [v13 initWithCenter:v15 radius:v14.latitude identifier:{v14.longitude, v12}];
    region = v5->_region;
    v5->_region = v16;

    address = [itemCopy address];
    thoroughfare = [address thoroughfare];
    thoroughfare = v5->_thoroughfare;
    v5->_thoroughfare = thoroughfare;

    locality = [address locality];
    locality = v5->_locality;
    v5->_locality = locality;

    administrativeArea = [address administrativeArea];
    administrativeArea = v5->_administrativeArea;
    v5->_administrativeArea = administrativeArea;

    subAdministrativeArea = [address subAdministrativeArea];
    subAdministrativeArea = v5->_subAdministrativeArea;
    v5->_subAdministrativeArea = subAdministrativeArea;

    countryCode = [address countryCode];
    ISOcountryCode = v5->_ISOcountryCode;
    v5->_ISOcountryCode = countryCode;

    currentRevGeoProvider = [MEMORY[0x277D3AD60] currentRevGeoProvider];
    geoServiceProvider = v5->_geoServiceProvider;
    v5->_geoServiceProvider = currentRevGeoProvider;

    subThoroughfare = [address subThoroughfare];
    subThoroughfare = v5->_subThoroughfare;
    v5->_subThoroughfare = subThoroughfare;

    administrativeAreaCode = [address administrativeAreaCode];
    administrativeAreaCode = v5->_administrativeAreaCode;
    v5->_administrativeAreaCode = administrativeAreaCode;

    inlandWater = [address inlandWater];
    inlandWater = v5->_inlandWater;
    v5->_inlandWater = inlandWater;

    ocean = [address ocean];
    ocean = v5->_ocean;
    v5->_ocean = ocean;

    areasOfInterest = [address areasOfInterest];
    areasOfInterest = v5->_areasOfInterest;
    v5->_areasOfInterest = areasOfInterest;

    v5->_isIsland = [address isIsland];
    mEMORY[0x277D0EBD0] = [MEMORY[0x277D0EBD0] sharedService];
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy__6256;
    v67 = __Block_byref_object_dispose__6257;
    v68 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__6256;
    v61 = __Block_byref_object_dispose__6257;
    v62 = 0;
    areasOfInterest2 = [(CLSLitePlacemark *)v5 areasOfInterest];
    geoMapItemHandle = [itemCopy geoMapItemHandle];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __38__CLSLitePlacemark_initWithRTMapItem___block_invoke;
    v53[3] = &unk_2788A8708;
    v55 = &v63;
    v44 = areasOfInterest2;
    v54 = v44;
    v56 = &v57;
    [mEMORY[0x277D0EBD0] resolveMapItemLocallyFromHandle:geoMapItemHandle completionHandler:v53];

    objc_storeStrong(&v5->_popularityScoresOrderedByAOI, v58[5]);
    v45 = v64[5];
    if (!v45)
    {
      v46 = +[CLSLogging sharedLogging];
      loggingConnection = [v46 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        identifier = [itemCopy identifier];
        uUIDString = [identifier UUIDString];
        *buf = 138412290;
        v71 = uUIDString;
        _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Could not resolve geo map item from handle for map item %@. Using region center as fallback", buf, 0xCu);
      }

      v48 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v8 longitude:v10];
      v49 = v64[5];
      v64[5] = v48;

      v45 = v64[5];
    }

    objc_storeStrong(&v5->_location, v45);

    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v63, 8);
  }

  return v5;
}

void __38__CLSLitePlacemark_initWithRTMapItem___block_invoke(void *a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v15)
  {
    [v15 coordinate];
    v8 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v6 longitude:v7];
    v9 = *(a1[5] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (a1[4])
    {
      v11 = [v15 _additionalPlaceInfos];
      v12 = [CLSLitePlacemark popularityScoresOrderedByAOIFromAdditionalPlaceInfos:v11 areasOfInterest:a1[4]];
      v13 = *(a1[6] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }
  }
}

- (CLSLitePlacemark)initWithCLPlacemark:(id)placemark popularityScoresOrderedByAOI:(id)i
{
  iCopy = i;
  v8 = [(CLSLitePlacemark *)self initWithCLPlacemark:placemark];
  if (v8)
  {
    v9 = [iCopy count];
    areasOfInterest = [(CLSLitePlacemark *)v8 areasOfInterest];
    v11 = [areasOfInterest count];

    if (v9 == v11)
    {
      objc_storeStrong(&v8->_popularityScoresOrderedByAOI, i);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_fault_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "[CLSLitePlacemark] popularityScoresOrderedByAOI is not populated to be the same length as areasOfInterest.", v13, 2u);
    }
  }

  return v8;
}

- (CLSLitePlacemark)initWithCLPlacemark:(id)placemark
{
  placemarkCopy = placemark;
  v19.receiver = self;
  v19.super_class = CLSLitePlacemark;
  v5 = [(CLSLitePlacemark *)&v19 init];
  if (v5)
  {
    region = [placemarkCopy region];
    region = v5->_region;
    v5->_region = region;

    location = [placemarkCopy location];
    location = v5->_location;
    v5->_location = location;

    currentRevGeoProvider = [MEMORY[0x277D3AD60] currentRevGeoProvider];
    geoServiceProvider = v5->_geoServiceProvider;
    v5->_geoServiceProvider = currentRevGeoProvider;

    _geoMapItem = [placemarkCopy _geoMapItem];
    [(CLSLitePlacemark *)v5 _extractValuesFromGeoMapItem:_geoMapItem];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    areasOfInterest = [(CLSLitePlacemark *)v5 areasOfInterest];
    v15 = areasOfInterest;
    if (areasOfInterest)
    {
      if ([areasOfInterest count] && objc_msgSend(v15, "count"))
      {
        v16 = 0;
        do
        {
          [(NSArray *)v13 setObject:&unk_28449B7D0 atIndexedSubscript:v16++];
        }

        while (v16 < [v15 count]);
      }
    }

    else
    {

      v13 = 0;
    }

    popularityScoresOrderedByAOI = v5->_popularityScoresOrderedByAOI;
    v5->_popularityScoresOrderedByAOI = v13;
  }

  return v5;
}

+ (BOOL)_isIslandForGeoMapItem:(id)item
{
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v4 = objc_autoreleasePoolPush();
  areasOfInterest = [itemCopy areasOfInterest];
  v6 = [areasOfInterest count];

  if (!v6)
  {
    goto LABEL_14;
  }

  _additionalPlaceInfos = [itemCopy _additionalPlaceInfos];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [_additionalPlaceInfos countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v8)
  {

LABEL_14:
    _placeType = [itemCopy _placeType];
    goto LABEL_15;
  }

  v9 = v8;
  _placeType = 0;
  v11 = *v16;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(_additionalPlaceInfos);
      }

      placeType = [*(*(&v15 + 1) + 8 * i) placeType];
      if (placeType > _placeType)
      {
        _placeType = placeType;
      }
    }

    v9 = [_additionalPlaceInfos countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v9);

  if (!_placeType)
  {
    goto LABEL_14;
  }

LABEL_15:
  objc_autoreleasePoolPop(v4);

  return _placeType == 11;
}

+ (id)popularityScoresOrderedByAOIFromAdditionalPlaceInfos:(id)infos areasOfInterest:(id)interest
{
  v44 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  interestCopy = interest;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (infosCopy)
  {
    v30 = interestCopy;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = infosCopy;
    v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          if ([v13 placeType] == 8)
          {
            name = [v13 name];
            if (name)
            {
              v15 = MEMORY[0x277CCABB0];
              [v13 photosMemoryScore];
              v16 = [v15 numberWithFloat:?];
              if (v16)
              {
                v17 = v16;
              }

              else
              {
                v17 = &unk_28449B7D0;
              }

              [v7 setObject:v17 forKeyedSubscript:name];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v10);
    }

    interestCopy = v30;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v43 = interestCopy;
    _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[CLSLitePlacemark] additionalPlaceInfos is nil for AOI array %@", buf, 0xCu);
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = interestCopy;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    v23 = MEMORY[0x277D86220];
    v31 = 138477827;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v32 + 1) + 8 * j);
        v26 = [v7 objectForKeyedSubscript:{v25, v31}];
        if (v26)
        {
          v27 = v26;
        }

        else
        {
          v27 = &unk_28449B7D0;
        }

        if (v26)
        {
          v28 = 1;
        }

        else
        {
          v28 = infosCopy == 0;
        }

        if (!v28)
        {
          v27 = &unk_28449B7D0;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = v31;
            v43 = v25;
            _os_log_error_impl(&dword_22F907000, v23, OS_LOG_TYPE_ERROR, "[CLSLitePlacemark] AOI %{private}@ in mapItem.areasOfInterest isn't in mapItem.additionalPlaces.", buf, 0xCu);
            v27 = &unk_28449B7D0;
          }
        }

        [v18 addObject:v27];
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v21);
  }

  return v18;
}

@end