@interface CLSLitePlacemark
+ (BOOL)_isIslandForGeoMapItem:(id)a3;
+ (id)popularityScoresOrderedByAOIFromAdditionalPlaceInfos:(id)a3 areasOfInterest:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOcean;
- (CLSLitePlacemark)initWithCLPlacemark:(id)a3;
- (CLSLitePlacemark)initWithCLPlacemark:(id)a3 popularityScoresOrderedByAOI:(id)a4;
- (CLSLitePlacemark)initWithCoder:(id)a3;
- (CLSLitePlacemark)initWithRTMapItem:(id)a3;
- (id)description;
- (void)_extractValuesFromGeoMapItem:(id)a3;
- (void)encodeWithCoder:(id)a3;
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
    v14 = [(CLSLitePlacemark *)&v22 description];
    v15 = [(CLSLitePlacemark *)self location];
    v16 = [(CLSLitePlacemark *)self region];
    v17 = [v5 componentsJoinedByString:{@", "}];
    v18 = [v13 stringWithFormat:@"%@ loc %@, region %@ (score(s): %@)", v14, v15, v16, v17];
  }

  else
  {
    v19 = MEMORY[0x277CCACA8];
    v21.receiver = self;
    v21.super_class = CLSLitePlacemark;
    v5 = [(CLSLitePlacemark *)&v21 description];
    v14 = [(CLSLitePlacemark *)self location];
    v15 = [(CLSLitePlacemark *)self region];
    v18 = [v19 stringWithFormat:@"%@ loc %@, region %@", v5, v14, v15];
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CLSLitePlacemark *)self location];
    [v6 coordinate];
    v8 = v7;
    v10 = v9;

    v11 = [v5 location];
    [v11 coordinate];
    v13 = v12;
    v15 = v14;

    if (v8 != v13 || v10 != v15)
    {
      goto LABEL_54;
    }

    v17 = [(CLSLitePlacemark *)self region];
    if (v17)
    {
      v18 = v17;
      v19 = [(CLSLitePlacemark *)self region];
      v20 = [v5 region];
      v21 = [v19 isEqual:v20];

      if (!v21)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v23 = [v5 region];

      if (v23)
      {
        goto LABEL_54;
      }
    }

    v24 = [(CLSLitePlacemark *)self thoroughfare];
    if (v24)
    {
      v25 = v24;
      v26 = [(CLSLitePlacemark *)self thoroughfare];
      v27 = [v5 thoroughfare];
      v28 = [v26 isEqualToString:v27];

      if (!v28)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v29 = [v5 thoroughfare];

      if (v29)
      {
        goto LABEL_54;
      }
    }

    v30 = [(CLSLitePlacemark *)self subThoroughfare];
    if (v30)
    {
      v31 = v30;
      v32 = [(CLSLitePlacemark *)self subThoroughfare];
      v33 = [v5 subThoroughfare];
      v34 = [v32 isEqualToString:v33];

      if (!v34)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v35 = [v5 subThoroughfare];

      if (v35)
      {
        goto LABEL_54;
      }
    }

    v36 = [(CLSLitePlacemark *)self locality];
    if (v36)
    {
      v37 = v36;
      v38 = [(CLSLitePlacemark *)self locality];
      v39 = [v5 locality];
      v40 = [v38 isEqualToString:v39];

      if (!v40)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v41 = [v5 locality];

      if (v41)
      {
        goto LABEL_54;
      }
    }

    v42 = [(CLSLitePlacemark *)self subLocality];
    if (v42)
    {
      v43 = v42;
      v44 = [(CLSLitePlacemark *)self subLocality];
      v45 = [v5 subLocality];
      v46 = [v44 isEqualToString:v45];

      if (!v46)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v47 = [v5 subLocality];

      if (v47)
      {
        goto LABEL_54;
      }
    }

    v48 = [(CLSLitePlacemark *)self administrativeArea];
    if (v48)
    {
      v49 = v48;
      v50 = [(CLSLitePlacemark *)self administrativeArea];
      v51 = [v5 administrativeArea];
      v52 = [v50 isEqualToString:v51];

      if (!v52)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v53 = [v5 administrativeArea];

      if (v53)
      {
        goto LABEL_54;
      }
    }

    v54 = [(CLSLitePlacemark *)self ISOcountryCode];
    if (v54)
    {
      v55 = v54;
      v56 = [(CLSLitePlacemark *)self ISOcountryCode];
      v57 = [v5 ISOcountryCode];
      v58 = [v56 isEqualToString:v57];

      if (!v58)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v59 = [v5 ISOcountryCode];

      if (v59)
      {
        goto LABEL_54;
      }
    }

    v60 = [(CLSLitePlacemark *)self inlandWater];
    if (v60)
    {
      v61 = v60;
      v62 = [(CLSLitePlacemark *)self inlandWater];
      v63 = [v5 inlandWater];
      v64 = [v62 isEqualToString:v63];

      if (!v64)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v65 = [v5 inlandWater];

      if (v65)
      {
        goto LABEL_54;
      }
    }

    v66 = [(CLSLitePlacemark *)self areasOfInterest];
    if (v66)
    {
      v67 = v66;
      v68 = [(CLSLitePlacemark *)self areasOfInterest];
      v69 = [v5 areasOfInterest];
      v70 = [v68 isEqual:v69];

      if (!v70)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v71 = [v5 areasOfInterest];

      if (v71)
      {
        goto LABEL_54;
      }
    }

    v72 = [(CLSLitePlacemark *)self ocean];
    if (v72)
    {
      v73 = v72;
      v74 = [(CLSLitePlacemark *)self ocean];
      v75 = [v5 ocean];
      v76 = [v74 isEqual:v75];

      if (!v76)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v77 = [v5 ocean];

      if (v77)
      {
        goto LABEL_54;
      }
    }

    v78 = [(CLSLitePlacemark *)self isIsland];
    if (v78 == [v5 isIsland])
    {
      v79 = [(CLSLitePlacemark *)self revGeoLocationData];
      if (v79)
      {
        v80 = v79;
        v81 = [(CLSLitePlacemark *)self revGeoLocationData];
        v82 = [v5 revGeoLocationData];
        v83 = [v81 isEqual:v82];

        if (v83)
        {
LABEL_51:
          v84 = [(CLSLitePlacemark *)self popularityScoresOrderedByAOI];
          if (v84)
          {
            v85 = [(CLSLitePlacemark *)self popularityScoresOrderedByAOI];
            v86 = [v5 popularityScoresOrderedByAOI];
            v22 = [v85 isEqual:v86];
          }

          else
          {
            v85 = [v5 popularityScoresOrderedByAOI];
            v22 = v85 == 0;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v87 = [v5 revGeoLocationData];

        if (!v87)
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

- (void)_extractValuesFromGeoMapItem:(id)a3
{
  v4 = a3;
  v5 = [v4 geoAddress];
  v31 = [v5 structuredAddress];

  v6 = [v31 thoroughfare];
  thoroughfare = self->_thoroughfare;
  self->_thoroughfare = v6;

  v8 = [v31 subThoroughfare];
  subThoroughfare = self->_subThoroughfare;
  self->_subThoroughfare = v8;

  v10 = [v31 locality];
  locality = self->_locality;
  self->_locality = v10;

  v12 = [v31 subLocality];
  subLocality = self->_subLocality;
  self->_subLocality = v12;

  v14 = [v31 administrativeArea];
  administrativeArea = self->_administrativeArea;
  self->_administrativeArea = v14;

  v16 = [v31 subAdministrativeArea];
  subAdministrativeArea = self->_subAdministrativeArea;
  self->_subAdministrativeArea = v16;

  v18 = [v31 countryCode];
  ISOcountryCode = self->_ISOcountryCode;
  self->_ISOcountryCode = v18;

  v20 = [v31 inlandWater];
  inlandWater = self->_inlandWater;
  self->_inlandWater = v20;

  v22 = [v31 ocean];
  ocean = self->_ocean;
  self->_ocean = v22;

  v24 = [v31 areaOfInterests];
  areasOfInterest = self->_areasOfInterest;
  self->_areasOfInterest = v24;

  v26 = [v31 administrativeAreaCode];
  administrativeAreaCode = self->_administrativeAreaCode;
  self->_administrativeAreaCode = v26;

  self->_isIsland = [objc_opt_class() _isIslandForGeoMapItem:v4];
  v28 = [objc_alloc(MEMORY[0x277D3AD68]) initWithGEOMapItem:v4];

  v29 = [v28 plistData];
  revGeoLocationData = self->_revGeoLocationData;
  self->_revGeoLocationData = v29;
}

- (BOOL)isOcean
{
  v2 = [(CLSLitePlacemark *)self ocean];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  region = self->_region;
  v6 = a3;
  [v6 encodeObject:region forKey:@"region"];
  [v6 encodeObject:self->_location forKey:@"location"];
  [v6 encodeObject:self->_thoroughfare forKey:@"thoroughfare"];
  [v6 encodeObject:self->_subThoroughfare forKey:@"subThoroughfare"];
  [v6 encodeObject:self->_locality forKey:@"locality"];
  [v6 encodeObject:self->_subLocality forKey:@"subLocality"];
  [v6 encodeObject:self->_administrativeArea forKey:@"administrativeArea"];
  [v6 encodeObject:self->_subAdministrativeArea forKey:@"subAdministrativeArea"];
  [v6 encodeObject:self->_ISOcountryCode forKey:@"ISOCountryCode"];
  [v6 encodeObject:self->_inlandWater forKey:@"inlandWater"];
  [v6 encodeObject:self->_ocean forKey:@"ocean"];
  [v6 encodeObject:self->_areasOfInterest forKey:@"areasOfInterest"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isIsland];
  [v6 encodeObject:v5 forKey:@"isIsland"];

  [v6 encodeObject:self->_revGeoLocationData forKey:@"revGeoLocationData"];
  [v6 encodeObject:self->_geoServiceProvider forKey:@"geoServiceProvider"];
  [v6 encodeObject:self->_popularityScoresOrderedByAOI forKey:@"popularityScoresOrderedByAOI"];
}

- (CLSLitePlacemark)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CLSLitePlacemark *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    region = v5->_region;
    v5->_region = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thoroughfare"];
    thoroughfare = v5->_thoroughfare;
    v5->_thoroughfare = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subThoroughfare"];
    subThoroughfare = v5->_subThoroughfare;
    v5->_subThoroughfare = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locality"];
    locality = v5->_locality;
    v5->_locality = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subLocality"];
    subLocality = v5->_subLocality;
    v5->_subLocality = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"administrativeArea"];
    administrativeArea = v5->_administrativeArea;
    v5->_administrativeArea = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subAdministrativeArea"];
    subAdministrativeArea = v5->_subAdministrativeArea;
    v5->_subAdministrativeArea = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ISOCountryCode"];
    ISOcountryCode = v5->_ISOcountryCode;
    v5->_ISOcountryCode = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inlandWater"];
    inlandWater = v5->_inlandWater;
    v5->_inlandWater = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ocean"];
    ocean = v5->_ocean;
    v5->_ocean = v26;

    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"areasOfInterest"];
    areasOfInterest = v5->_areasOfInterest;
    v5->_areasOfInterest = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isIsland"];
    v5->_isIsland = [v33 BOOLValue];

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"revGeoLocationData"];
    revGeoLocationData = v5->_revGeoLocationData;
    v5->_revGeoLocationData = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"geoServiceProvider"];
    geoServiceProvider = v5->_geoServiceProvider;
    v5->_geoServiceProvider = v36;

    if ([v4 containsValueForKey:@"popularityScoresOrderedByAOI"])
    {
      v38 = MEMORY[0x277CBEB98];
      v39 = objc_opt_class();
      v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
      v41 = [v4 decodeObjectOfClasses:v40 forKey:@"popularityScoresOrderedByAOI"];
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

- (CLSLitePlacemark)initWithRTMapItem:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v69.receiver = self;
  v69.super_class = CLSLitePlacemark;
  v5 = [(CLSLitePlacemark *)&v69 init];
  if (v5)
  {
    v6 = [v4 location];
    [v6 latitude];
    v8 = v7;
    [v6 longitude];
    v10 = v9;
    [v6 horizontalUncertainty];
    v12 = v11;
    v13 = objc_alloc(MEMORY[0x277CBFBC8]);
    v14 = CLLocationCoordinate2DMake(v8, v10);
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%+.8f, %+.8f> radius %.2f", *&v8, *&v10, *&v12];
    v16 = [v13 initWithCenter:v15 radius:v14.latitude identifier:{v14.longitude, v12}];
    region = v5->_region;
    v5->_region = v16;

    v18 = [v4 address];
    v19 = [v18 thoroughfare];
    thoroughfare = v5->_thoroughfare;
    v5->_thoroughfare = v19;

    v21 = [v18 locality];
    locality = v5->_locality;
    v5->_locality = v21;

    v23 = [v18 administrativeArea];
    administrativeArea = v5->_administrativeArea;
    v5->_administrativeArea = v23;

    v25 = [v18 subAdministrativeArea];
    subAdministrativeArea = v5->_subAdministrativeArea;
    v5->_subAdministrativeArea = v25;

    v27 = [v18 countryCode];
    ISOcountryCode = v5->_ISOcountryCode;
    v5->_ISOcountryCode = v27;

    v29 = [MEMORY[0x277D3AD60] currentRevGeoProvider];
    geoServiceProvider = v5->_geoServiceProvider;
    v5->_geoServiceProvider = v29;

    v31 = [v18 subThoroughfare];
    subThoroughfare = v5->_subThoroughfare;
    v5->_subThoroughfare = v31;

    v33 = [v18 administrativeAreaCode];
    administrativeAreaCode = v5->_administrativeAreaCode;
    v5->_administrativeAreaCode = v33;

    v35 = [v18 inlandWater];
    inlandWater = v5->_inlandWater;
    v5->_inlandWater = v35;

    v37 = [v18 ocean];
    ocean = v5->_ocean;
    v5->_ocean = v37;

    v39 = [v18 areasOfInterest];
    areasOfInterest = v5->_areasOfInterest;
    v5->_areasOfInterest = v39;

    v5->_isIsland = [v18 isIsland];
    v41 = [MEMORY[0x277D0EBD0] sharedService];
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
    v42 = [(CLSLitePlacemark *)v5 areasOfInterest];
    v43 = [v4 geoMapItemHandle];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __38__CLSLitePlacemark_initWithRTMapItem___block_invoke;
    v53[3] = &unk_2788A8708;
    v55 = &v63;
    v44 = v42;
    v54 = v44;
    v56 = &v57;
    [v41 resolveMapItemLocallyFromHandle:v43 completionHandler:v53];

    objc_storeStrong(&v5->_popularityScoresOrderedByAOI, v58[5]);
    v45 = v64[5];
    if (!v45)
    {
      v46 = +[CLSLogging sharedLogging];
      v47 = [v46 loggingConnection];

      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v51 = [v4 identifier];
        v52 = [v51 UUIDString];
        *buf = 138412290;
        v71 = v52;
        _os_log_error_impl(&dword_22F907000, v47, OS_LOG_TYPE_ERROR, "Could not resolve geo map item from handle for map item %@. Using region center as fallback", buf, 0xCu);
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

- (CLSLitePlacemark)initWithCLPlacemark:(id)a3 popularityScoresOrderedByAOI:(id)a4
{
  v7 = a4;
  v8 = [(CLSLitePlacemark *)self initWithCLPlacemark:a3];
  if (v8)
  {
    v9 = [v7 count];
    v10 = [(CLSLitePlacemark *)v8 areasOfInterest];
    v11 = [v10 count];

    if (v9 == v11)
    {
      objc_storeStrong(&v8->_popularityScoresOrderedByAOI, a4);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_fault_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "[CLSLitePlacemark] popularityScoresOrderedByAOI is not populated to be the same length as areasOfInterest.", v13, 2u);
    }
  }

  return v8;
}

- (CLSLitePlacemark)initWithCLPlacemark:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CLSLitePlacemark;
  v5 = [(CLSLitePlacemark *)&v19 init];
  if (v5)
  {
    v6 = [v4 region];
    region = v5->_region;
    v5->_region = v6;

    v8 = [v4 location];
    location = v5->_location;
    v5->_location = v8;

    v10 = [MEMORY[0x277D3AD60] currentRevGeoProvider];
    geoServiceProvider = v5->_geoServiceProvider;
    v5->_geoServiceProvider = v10;

    v12 = [v4 _geoMapItem];
    [(CLSLitePlacemark *)v5 _extractValuesFromGeoMapItem:v12];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [(CLSLitePlacemark *)v5 areasOfInterest];
    v15 = v14;
    if (v14)
    {
      if ([v14 count] && objc_msgSend(v15, "count"))
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

+ (BOOL)_isIslandForGeoMapItem:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 areasOfInterest];
  v6 = [v5 count];

  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = [v3 _additionalPlaceInfos];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v8)
  {

LABEL_14:
    v10 = [v3 _placeType];
    goto LABEL_15;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v16;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = [*(*(&v15 + 1) + 8 * i) placeType];
      if (v13 > v10)
      {
        v10 = v13;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v9);

  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_15:
  objc_autoreleasePoolPop(v4);

  return v10 == 11;
}

+ (id)popularityScoresOrderedByAOIFromAdditionalPlaceInfos:(id)a3 areasOfInterest:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v5)
  {
    v30 = v6;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = v5;
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
            v14 = [v13 name];
            if (v14)
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

              [v7 setObject:v17 forKeyedSubscript:v14];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v10);
    }

    v6 = v30;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v43 = v6;
    _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[CLSLitePlacemark] additionalPlaceInfos is nil for AOI array %@", buf, 0xCu);
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = v6;
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
          v28 = v5 == 0;
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