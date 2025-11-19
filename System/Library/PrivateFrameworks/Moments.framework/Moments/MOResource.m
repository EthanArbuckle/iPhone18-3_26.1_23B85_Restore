@interface MOResource
+ (id)describeType:(unint64_t)a3;
+ (id)evergreenTypeStringFromEvergreenType:(unint64_t)a3;
+ (id)getDedupeKeyForResourceData:(id)a3 type:(unint64_t)a4 error:(id *)a5;
+ (id)getDictionaryForData:(id)a3 error:(id *)a4;
+ (unint64_t)evergreenTypeFromEvergreenTypeString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MOResource)initWithCoder:(id)a3;
- (MOResource)initWithEvergreenTypeName:(id)a3 promptIndex:(unint64_t)a4;
- (MOResource)initWithEvergreenTypeName:(id)a3 promptIndexes:(id)a4;
- (MOResource)initWithIdentifier:(id)a3;
- (MOResource)initWithIdentifier:(id)a3 name:(id)a4 type:(unint64_t)a5 assets:(id)a6 data:(id)a7 value:(double)a8 priorityScore:(double)a9 photoCurationScore:(id)a10 photoFaceCount:(unint64_t)a11 photoAssetMediaType:(unint64_t)a12;
- (MOResource)initWithIdentifier:(id)a3 name:(id)a4 type:(unint64_t)a5 assets:(id)a6 data:(id)a7 value:(double)a8 priorityScore:(double)a9 photoCurationScore:(id)a10 photoFaceCount:(unint64_t)a11 photoAssetMediaType:(unint64_t)a12 photoAssetCloudIdentifier:(id)a13;
- (MOResource)initWithName:(id)a3 mapItemHandle:(id)a4 priorityScore:(double)a5;
- (MOResource)initWithName:(id)a3 type:(unint64_t)a4;
- (MOResource)initWithName:(id)a3 type:(unint64_t)a4 assets:(id)a5;
- (MOResource)initWithName:(id)a3 type:(unint64_t)a4 dict:(id)a5 value:(double)a6;
- (MOResource)initWithName:(id)a3 type:(unint64_t)a4 photoAssetCloudIdentifier:(id)a5;
- (MOResource)initWithName:(id)a3 value:(double)a4;
- (MOResource)initWithPerson:(id)a3;
- (MOResource)initWithPlace:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (MOResource)initWithWeather:(id)a3;
- (double)endDate;
- (double)startDate;
- (id)bundleSourceType;
- (id)cityName;
- (id)describeType;
- (id)description;
- (id)enclosingArea;
- (id)getDedupeKeyError:(id *)a3;
- (id)getDictionary;
- (id)location;
- (id)metaData;
- (id)photoLocalDate;
- (id)poiCategory;
- (id)promptIndexes;
- (id)sourceAppBundleIds;
- (id)temperature;
- (id)weatherSummary;
- (id)weatherSymbolName;
- (id)windSpeed;
- (unint64_t)dataAccessTypeFromResourceType:(unint64_t)a3;
- (unint64_t)evergreenType;
- (unint64_t)hash;
- (unint64_t)placeType;
- (unint64_t)placeUserType;
- (unint64_t)promptCount;
- (unint64_t)promptIndex;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOResource

- (MOResource)initWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOResource initWithIdentifier:v6];
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOResource.m" lineNumber:29 description:{@"Invalid parameter not satisfying: identifier (in %s:%d)", "-[MOResource initWithIdentifier:]", 29}];
  }

  v8 = [(MOResource *)self initWithIdentifier:v5 name:@"Resource" type:0 assets:0 data:0 value:0 priorityScore:0.0 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:0];

  return v8;
}

- (MOResource)initWithName:(id)a3 type:(unint64_t)a4 assets:(id)a5
{
  v8 = MEMORY[0x277CCAD78];
  v9 = a5;
  v10 = a3;
  v11 = [v8 UUID];
  v12 = [(MOResource *)self initWithIdentifier:v11 name:v10 type:a4 assets:v9 data:0 value:0 priorityScore:0.0 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:0];

  return v12;
}

- (MOResource)initWithName:(id)a3 type:(unint64_t)a4 photoAssetCloudIdentifier:(id)a5
{
  v8 = MEMORY[0x277CCAD78];
  v9 = a5;
  v10 = a3;
  v11 = [v8 UUID];
  v12 = [(MOResource *)self initWithIdentifier:v11 name:v10 type:a4 assets:0 data:0 value:0 priorityScore:0.0 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:v9];

  return v12;
}

- (MOResource)initWithName:(id)a3 type:(unint64_t)a4
{
  v6 = MEMORY[0x277CCAD78];
  v7 = a3;
  v8 = [v6 UUID];
  v9 = [(MOResource *)self initWithIdentifier:v8 name:v7 type:a4 assets:0 data:0 value:0 priorityScore:0.0 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:0];

  return v9;
}

- (MOResource)initWithName:(id)a3 value:(double)a4
{
  v6 = MEMORY[0x277CCAD78];
  v7 = a3;
  v8 = [v6 UUID];
  v9 = [(MOResource *)self initWithIdentifier:v8 name:v7 type:1 assets:0 data:0 value:0 priorityScore:a4 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:0];

  return v9;
}

- (MOResource)initWithName:(id)a3 type:(unint64_t)a4 dict:(id)a5 value:(double)a6
{
  v10 = a3;
  if (a5)
  {
    v17 = 0;
    a5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a5 options:0 error:&v17];
    v11 = v17;
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = a5 == 0;
    }

    if (v12)
    {
      v13 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [MOResource initWithName:v11 type:v13 dict:? value:?];
      }
    }
  }

  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [(MOResource *)self initWithIdentifier:v14 name:v10 type:a4 assets:0 data:a5 value:0 priorityScore:a6 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:0];

  return v15;
}

- (MOResource)initWithIdentifier:(id)a3 name:(id)a4 type:(unint64_t)a5 assets:(id)a6 data:(id)a7 value:(double)a8 priorityScore:(double)a9 photoCurationScore:(id)a10 photoFaceCount:(unint64_t)a11 photoAssetMediaType:(unint64_t)a12
{
  v19 = MEMORY[0x277CCAD78];
  v20 = a10;
  v21 = a7;
  v22 = a6;
  v23 = a4;
  v24 = [v19 UUID];
  v25 = [(MOResource *)self initWithIdentifier:v24 name:v23 type:a5 assets:v22 data:v21 value:v20 priorityScore:a8 photoCurationScore:a9 photoFaceCount:a11 photoAssetMediaType:a12 photoAssetCloudIdentifier:0];

  return v25;
}

- (MOResource)initWithIdentifier:(id)a3 name:(id)a4 type:(unint64_t)a5 assets:(id)a6 data:(id)a7 value:(double)a8 priorityScore:(double)a9 photoCurationScore:(id)a10 photoFaceCount:(unint64_t)a11 photoAssetMediaType:(unint64_t)a12 photoAssetCloudIdentifier:(id)a13
{
  v22 = a3;
  v23 = a4;
  v30 = a6;
  v29 = a7;
  v28 = a10;
  v27 = a13;
  v31.receiver = self;
  v31.super_class = MOResource;
  v24 = [(MOResource *)&v31 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_identifier, a3);
    objc_storeStrong(&v25->_name, a4);
    v25->_type = a5;
    objc_storeStrong(&v25->_assets, a6);
    objc_storeStrong(&v25->_data, a7);
    v25->_value = a8;
    v25->_priorityScore = a9;
    objc_storeStrong(&v25->_photoCurationScore, a10);
    v25->_photoFaceCount = a11;
    v25->_photoAssetMediaType = a12;
    objc_storeStrong(&v25->_photoAssetCloudIdentifier, a13);
    v25->_sourceEventAccessType = [(MOResource *)v25 dataAccessTypeFromResourceType:a5];
  }

  return v25;
}

- (unint64_t)dataAccessTypeFromResourceType:(unint64_t)a3
{
  if (a3 > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_22D931C30[a3];
  }
}

+ (id)getDictionaryForData:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v14 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v14];
    v7 = v14;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
  }

  if ([v6 count])
  {
    v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_INFO, "resource data dictionary , %@", buf, 0xCu);
    }

    v6 = v6;
    v7 = 0;
    v9 = v6;
    goto LABEL_15;
  }

  v7 = 0;
LABEL_10:
  v10 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [MOResource getDictionaryForData:v7 error:v10];
  }

  if (a4)
  {
    v11 = v7;
    v9 = 0;
    *a4 = v7;
  }

  else
  {
    v9 = 0;
  }

LABEL_15:

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)getDictionary
{
  v3 = objc_opt_class();
  v4 = [(MOResource *)self data];
  v5 = [v3 getDictionaryForData:v4 error:0];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MOResource *)self identifier];
  v5 = [(MOResource *)self name];
  v6 = [v5 mask];
  v7 = [(MOResource *)self type];
  v8 = [(MOResource *)self assets];
  v9 = [(MOResource *)self photoAssetCloudIdentifier];
  v10 = [(MOResource *)self data];
  v11 = [v10 length];
  [(MOResource *)self value];
  v13 = [v3 stringWithFormat:@"<MOResource identifier, %@, name, %@, type, %lu, assets, %@, photoAssetCloudIdentifier, %@, data.length, %lu, value, %f", v4, v6, v7, v8, v9, v11, v12];

  return v13;
}

+ (id)describeType:(unint64_t)a3
{
  if (a3 > 0x11)
  {
    return @"Invalid";
  }

  else
  {
    return off_278773130[a3];
  }
}

- (id)describeType
{
  v2 = [(MOResource *)self type];

  return [MOResource describeType:v2];
}

- (MOResource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [(MOResource *)self initWithIdentifier:v5];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
      name = v6->_name;
      v6->_name = v7;

      v6->_type = [v4 decodeInt64ForKey:@"type"];
      [v4 decodeDoubleForKey:@"value"];
      v6->_value = v9;
      [v4 decodeDoubleForKey:@"priorityScore"];
      v6->_priorityScore = v10;
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoCurationScore"];
      photoCurationScore = v6->_photoCurationScore;
      v6->_photoCurationScore = v11;

      v6->_photoFaceCount = [v4 decodeInt64ForKey:@"photoFaceCount"];
      v6->_photoAssetMediaType = [v4 decodeInt64ForKey:@"photoAssetMediaType"];
      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoCreationDate"];
      photoCreationDate = v6->_photoCreationDate;
      v6->_photoCreationDate = v13;

      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PhotoAssetCloudIdentifier"];
      photoAssetCloudIdentifier = v6->_photoAssetCloudIdentifier;
      v6->_photoAssetCloudIdentifier = v15;

      v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Assets"];
      assets = v6->_assets;
      v6->_assets = v17;

      v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
      data = v6->_data;
      v6->_data = v19;

      v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceEventIdentifier"];
      sourceEventIdentifier = v6->_sourceEventIdentifier;
      v6->_sourceEventIdentifier = v21;

      v6->_sourceEventAccessType = [v4 decodeInt64ForKey:@"sourceEventAccessType"];
    }

    self = v6;
    v23 = self;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeInt64:self->_type forKey:@"type"];
  [v5 encodeDouble:@"value" forKey:self->_value];
  [v5 encodeDouble:@"priorityScore" forKey:self->_priorityScore];
  [v5 encodeObject:self->_photoCurationScore forKey:@"photoCurationScore"];
  [v5 encodeInt64:self->_photoFaceCount forKey:@"photoFaceCount"];
  [v5 encodeInt64:self->_photoAssetMediaType forKey:@"photoAssetMediaType"];
  [v5 encodeObject:self->_photoCreationDate forKey:@"photoCreationDate"];
  [v5 encodeObject:self->_photoAssetCloudIdentifier forKey:@"PhotoAssetCloudIdentifier"];
  [v5 encodeObject:self->_assets forKey:@"Assets"];
  [v5 encodeObject:self->_data forKey:@"data"];
  [v5 encodeInt64:self->_sourceEventAccessType forKey:@"sourceEventAccessType"];
  [v5 encodeObject:self->_sourceEventIdentifier forKey:@"sourceEventIdentifier"];
}

- (unint64_t)hash
{
  v2 = [(MOResource *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(MOResource *)self identifier];
        if (v8 || ([(MOResource *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(MOResource *)self identifier];
          v10 = [(MOResource *)v7 identifier];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

+ (id)getDedupeKeyForResourceData:(id)a3 type:(unint64_t)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    a4 = 0;
    goto LABEL_20;
  }

  if (a4 == 6)
  {
    v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v34 = [v7 length];
      _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_INFO, "Using for the dedupe key the map item handler , %lu", buf, 0xCu);
    }

    a4 = v7;
    v9 = 0;
    goto LABEL_6;
  }

  v32 = 0;
  v9 = [MOResource getDictionaryForData:v7 error:&v32];
  v10 = v32;
  if (v10 || ![v9 count])
  {
    if (a5)
    {
      v11 = v10;
      a4 = 0;
      *a5 = v10;
      goto LABEL_19;
    }

LABEL_18:
    a4 = 0;
    goto LABEL_19;
  }

  if (a4 > 0x11)
  {
    goto LABEL_31;
  }

  if (((1 << a4) & 0x3DBB8) != 0)
  {
    goto LABEL_14;
  }

  if (a4 != 10)
  {
    if (a4 == 13)
    {
      v15 = [v9 allKeys];
      if ([v15 containsObject:@"MOActivityMetaDataMotionType"])
      {
        v16 = [v9 allKeys];
        if ([v16 containsObject:@"MOActivityMetaDataKeyStartDate"])
        {
          v17 = [v9 allKeys];
          v18 = [v17 containsObject:@"MOActivityMetaDataKeyEndDate"];

          if (v18)
          {
            a4 = [MEMORY[0x277CBEB38] dictionary];
            v19 = [v9 objectForKeyedSubscript:@"MOActivityMetaDataMotionType"];
            [a4 setObject:v19 forKey:@"MOActivityMetaDataMotionType"];

            v20 = [v9 objectForKeyedSubscript:@"MOActivityMetaDataKeyStartDate"];
            [a4 setObject:v20 forKey:@"MOActivityMetaDataKeyStartDate"];

            v21 = [v9 objectForKeyedSubscript:@"MOActivityMetaDataKeyEndDate"];
            [a4 setObject:v21 forKey:@"MOActivityMetaDataKeyEndDate"];

            v22 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v34 = a4;
              _os_log_impl(&dword_22D8C5000, v22, OS_LOG_TYPE_INFO, "Using for the dedupe key the dictionary, %@", buf, 0xCu);
            }

            goto LABEL_6;
          }

          goto LABEL_48;
        }
      }

LABEL_48:
      v31 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        +[MOResource getDedupeKeyForResourceData:type:error:];
      }

      goto LABEL_17;
    }

LABEL_31:
    if (a4 < 2)
    {
LABEL_14:
      v12 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MOResource getDedupeKeyForResourceData:a4 type:? error:?];
      }

LABEL_16:

LABEL_17:
      v10 = 0;
      goto LABEL_18;
    }

    if (a4 != 2)
    {
      v10 = 0;
      goto LABEL_19;
    }

    v23 = [v9 allKeys];
    v24 = @"MOPhotoResourceLocalIdentifier";
    v25 = [v23 containsObject:@"MOPhotoResourceLocalIdentifier"];

    v26 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    v12 = v26;
    if (!v25)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        +[MOResource getDedupeKeyForResourceData:type:error:];
      }

      goto LABEL_16;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v9 objectForKeyedSubscript:@"MOPhotoResourceLocalIdentifier"];
      *buf = 138412290;
      v34 = v27;
LABEL_40:
      _os_log_impl(&dword_22D8C5000, v12, OS_LOG_TYPE_INFO, "Using for the dedupe key, %@", buf, 0xCu);

      goto LABEL_41;
    }

    goto LABEL_41;
  }

  v28 = [v9 allKeys];
  v24 = @"MOWorkoutMetaDataKeyWorkoutID";
  v29 = [v28 containsObject:@"MOWorkoutMetaDataKeyWorkoutID"];

  v30 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  v12 = v30;
  if (!v29)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      +[MOResource getDedupeKeyForResourceData:type:error:];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v27 = [v9 objectForKeyedSubscript:@"MOWorkoutMetaDataKeyWorkoutID"];
    *buf = 138412290;
    v34 = v27;
    goto LABEL_40;
  }

LABEL_41:

  a4 = [v9 objectForKeyedSubscript:v24];
LABEL_6:
  v10 = 0;
LABEL_19:

LABEL_20:
  v13 = *MEMORY[0x277D85DE8];

  return a4;
}

- (id)getDedupeKeyError:(id *)a3
{
  v5 = objc_opt_class();
  v6 = [(MOResource *)self data];
  v7 = [v5 getDedupeKeyForResourceData:v6 type:-[MOResource type](self error:{"type"), a3}];

  return v7;
}

- (MOResource)initWithPerson:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCAD78];
  v6 = [v4 contactIdentifier];
  v7 = [v5 uuidFromString:v6];

  v8 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(MOResource(MOPerson) *)v7 initWithPerson:v4, v8];
  }

  v9 = [v4 name];
  v10 = [v4 contactIdentifier];
  [v4 priorityScore];
  v12 = [(MOResource *)self initWithIdentifier:v7 name:v9 type:11 assets:v10 data:0 value:0 priorityScore:0.0 photoCurationScore:v11 photoFaceCount:0 photoAssetMediaType:0];

  return v12;
}

- (id)sourceAppBundleIds
{
  v3 = [(MOResource *)self type];
  if (v3 == 17)
  {
    v11 = [(MOResource *)self data];

    if (v11)
    {
      v12 = MEMORY[0x277CCAAA0];
      v13 = [(MOResource *)self data];
      v16 = 0;
      v7 = [v12 JSONObjectWithData:v13 options:0 error:&v16];
      v8 = v16;

      if (v8 || !v7)
      {
        v9 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [MOResource(Source) sourceAppBundleIds];
        }

        goto LABEL_27;
      }

      v9 = [v7 objectForKeyedSubscript:@"appBundle"];
      if (!v9)
      {
        v10 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [MOResource(Source) sourceAppBundleIds];
        }

        goto LABEL_26;
      }

LABEL_13:
      v14 = [MEMORY[0x277CBEB98] setWithObject:v9];
LABEL_28:

      goto LABEL_29;
    }

    v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MOResource(Source) sourceAppBundleIds];
    }
  }

  else
  {
    if (v3 != 3)
    {
      v14 = 0;
      goto LABEL_30;
    }

    v4 = [(MOResource *)self data];

    if (v4)
    {
      v5 = MEMORY[0x277CCAAA0];
      v6 = [(MOResource *)self data];
      v17 = 0;
      v7 = [v5 JSONObjectWithData:v6 options:0 error:&v17];
      v8 = v17;

      if (v8 || !v7)
      {
        v9 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [MOResource(Source) sourceAppBundleIds];
        }

        goto LABEL_27;
      }

      v9 = [v7 objectForKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerBundleID"];
      if (!v9)
      {
        v10 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [MOResource(Source) sourceAppBundleIds];
        }

LABEL_26:

LABEL_27:
        v14 = 0;
        goto LABEL_28;
      }

      goto LABEL_13;
    }

    v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MOResource(Source) sourceAppBundleIds];
    }
  }

  v14 = 0;
LABEL_29:

LABEL_30:

  return v14;
}

- (id)bundleSourceType
{
  v2 = [(MOResource *)self type]- 2;
  if (v2 <= 0xF && ((0xEF93u >> v2) & 1) != 0)
  {
    v3 = *off_2787732A0[v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)photoLocalDate
{
  v2 = [(MOResource *)self data];
  v3 = [MODictionaryEncoder decodeToDictionary:v2];

  v4 = [v3 objectForKeyedSubscript:@"MOPhotoResourceLocalTime"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v6];

  return v7;
}

- (MOResource)initWithWeather:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 startDate];
  [v7 timeIntervalSinceReferenceDate];
  v8 = [v6 numberWithDouble:?];
  [v5 setObject:v8 forKeyedSubscript:@"MOWeatherMetaDataKeyStartDate"];

  v9 = MEMORY[0x277CCABB0];
  v10 = [v4 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v11 = [v9 numberWithDouble:?];
  [v5 setObject:v11 forKeyedSubscript:@"MOWeatherMetaDataKeyEndDate"];

  v12 = [v4 weatherSummary];
  [v5 setObject:v12 forKeyedSubscript:@"MOWeatherMetaDataKeyWeatherSummary"];

  v13 = [v4 weatherSymbolName];
  [v5 setObject:v13 forKeyedSubscript:@"MOWeatherMetaDataKeySymbolName"];

  v14 = [v4 temperature];

  if (v14)
  {
    v15 = MEMORY[0x277CCABB0];
    v16 = [v4 temperature];
    [v16 doubleValue];
    v17 = [v15 numberWithDouble:?];
    [v5 setObject:v17 forKeyedSubscript:@"MOWeatherMetaDataKeyTemperatureValue"];

    v18 = [v4 temperature];
    v19 = [v18 unit];
    v20 = [v19 symbol];
    [v5 setObject:v20 forKeyedSubscript:@"MOWeatherMetaDataKeyTemperatureUnitSymbol"];
  }

  v21 = [v4 windSpeed];

  if (v21)
  {
    v22 = MEMORY[0x277CCABB0];
    v23 = [v4 windSpeed];
    [v23 doubleValue];
    v24 = [v22 numberWithDouble:?];
    [v5 setObject:v24 forKeyedSubscript:@"MOWeatherMetaDataKeyWindSpeedValue"];

    v25 = [v4 windSpeed];
    v26 = [v25 unit];
    v27 = [v26 symbol];
    [v5 setObject:v27 forKeyedSubscript:@"MOWeatherMetaDataKeyWindSpeedUnitSymbol"];
  }

  v28 = [MODictionaryEncoder encodeDictionary:v5];
  v29 = [MEMORY[0x277CCAD78] UUID];
  v30 = [(MOResource *)self initWithIdentifier:v29 name:@"Weather" type:14 assets:0 data:v28 value:0 priorityScore:0.0 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0];

  return v30;
}

- (double)endDate
{
  v3 = [(MOResource *)self metaData];

  if (!v3)
  {
    return 0.0;
  }

  v4 = [(MOResource *)self metaData];
  v5 = [v4 objectForKeyedSubscript:@"MOWeatherMetaDataKeyEndDate"];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (double)startDate
{
  v3 = [(MOResource *)self metaData];

  if (!v3)
  {
    return 0.0;
  }

  v4 = [(MOResource *)self metaData];
  v5 = [v4 objectForKeyedSubscript:@"MOWeatherMetaDataKeyStartDate"];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (id)temperature
{
  v3 = [(MOResource *)self metaData];

  if (v3 && (-[MOResource metaData](self, "metaData"), v4 = objc_claimAutoreleasedReturnValue(), [v4 objectForKeyedSubscript:@"MOWeatherMetaDataKeyTemperatureValue"], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = objc_alloc(MEMORY[0x277CCAB10]);
    v7 = [(MOResource *)self metaData];
    v8 = [v7 objectForKeyedSubscript:@"MOWeatherMetaDataKeyTemperatureValue"];
    [v8 doubleValue];
    v10 = v9;
    v11 = objc_alloc(MEMORY[0x277CCAE48]);
    v12 = [(MOResource *)self metaData];
    v13 = [v12 objectForKeyedSubscript:@"MOWeatherMetaDataKeyTemperatureUnitSymbol"];
    v14 = [v11 initWithSymbol:v13];
    v15 = [v6 initWithDoubleValue:v14 unit:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)weatherSummary
{
  v3 = [(MOResource *)self metaData];

  if (v3)
  {
    v4 = [(MOResource *)self metaData];
    v5 = [v4 objectForKeyedSubscript:@"MOWeatherMetaDataKeyWeatherSummary"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)weatherSymbolName
{
  v3 = [(MOResource *)self metaData];

  if (v3)
  {
    v4 = [(MOResource *)self metaData];
    v5 = [v4 objectForKeyedSubscript:@"MOWeatherMetaDataKeySymbolName"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)windSpeed
{
  v3 = [(MOResource *)self metaData];

  if (v3 && (-[MOResource metaData](self, "metaData"), v4 = objc_claimAutoreleasedReturnValue(), [v4 objectForKeyedSubscript:@"MOWeatherMetaDataKeyWindSpeedValue"], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = objc_alloc(MEMORY[0x277CCAB10]);
    v7 = [(MOResource *)self metaData];
    v8 = [v7 objectForKeyedSubscript:@"MOWeatherMetaDataKeyWindSpeedValue"];
    [v8 doubleValue];
    v10 = v9;
    v11 = objc_alloc(MEMORY[0x277CCAD98]);
    v12 = [(MOResource *)self metaData];
    v13 = [v12 objectForKeyedSubscript:@"MOWeatherMetaDataKeyWindSpeedUnitSymbol"];
    v14 = [v11 initWithSymbol:v13];
    v15 = [v6 initWithDoubleValue:v14 unit:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (MOResource)initWithPlace:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "placeType")}];
  [v11 setObject:v12 forKeyedSubscript:@"placeType"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "placeUserType")}];
  [v11 setObject:v13 forKeyedSubscript:@"placeUserType"];

  v14 = [v8 location];
  v15 = [v14 dictionary];
  [v11 setObject:v15 forKeyedSubscript:@"location"];

  v16 = [v8 poiCategory];
  [v11 setObject:v16 forKeyedSubscript:@"poiCategory"];

  if ([v8 placeType] != 101 && objc_msgSend(v8, "placeType") != 102)
  {
    v17 = [v8 enclosingArea];
    [v11 setObject:v17 forKeyedSubscript:@"cityName"];
  }

  v18 = [v8 enclosingArea];
  [v11 setObject:v18 forKeyedSubscript:@"enclosingArea"];

  if (v9)
  {
    v19 = MEMORY[0x277CCABB0];
    [v9 timeIntervalSinceReferenceDate];
    v20 = [v19 numberWithDouble:?];
    [v11 setObject:v20 forKeyedSubscript:@"startDate"];
  }

  if (v10)
  {
    v21 = MEMORY[0x277CCABB0];
    [v10 timeIntervalSinceReferenceDate];
    v22 = [v21 numberWithDouble:?];
    [v11 setObject:v22 forKeyedSubscript:@"endDate"];
  }

  v23 = [MODictionaryEncoder encodeDictionary:v11];
  v24 = [v8 identifier];
  v25 = [v8 placeName];
  [v8 placeNameConfidence];
  v27 = v26;
  [v8 priorityScore];
  v29 = [(MOResource *)self initWithIdentifier:v24 name:v25 type:12 assets:0 data:v23 value:0 priorityScore:v27 photoCurationScore:v28 photoFaceCount:0 photoAssetMediaType:0];

  return v29;
}

- (MOResource)initWithName:(id)a3 mapItemHandle:(id)a4 priorityScore:(double)a5
{
  v8 = MEMORY[0x277CCAD78];
  v9 = a4;
  v10 = a3;
  v11 = [v8 UUID];
  v12 = [(MOResource *)self initWithIdentifier:v11 name:v10 type:6 assets:0 data:v9 value:0 priorityScore:0.0 photoCurationScore:a5 photoFaceCount:0 photoAssetMediaType:0];

  return v12;
}

- (id)metaData
{
  v2 = [(MOResource *)self data];
  v3 = [MODictionaryEncoder decodeToDictionary:v2];

  return v3;
}

- (id)cityName
{
  v3 = [(MOResource *)self metaData];

  if (v3)
  {
    v4 = [(MOResource *)self metaData];
    v5 = [v4 objectForKeyedSubscript:@"cityName"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)enclosingArea
{
  v3 = [(MOResource *)self metaData];

  if (v3)
  {
    v4 = [(MOResource *)self metaData];
    v5 = [v4 objectForKeyedSubscript:@"enclosingArea"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)placeUserType
{
  v3 = [(MOResource *)self metaData];

  if (!v3)
  {
    return 0;
  }

  v4 = [(MOResource *)self metaData];
  v5 = [v4 objectForKeyedSubscript:@"placeUserType"];
  v6 = [v5 intValue];

  return v6;
}

- (unint64_t)placeType
{
  v3 = [(MOResource *)self metaData];

  if (!v3)
  {
    return 0;
  }

  v4 = [(MOResource *)self metaData];
  v5 = [v4 objectForKeyedSubscript:@"placeType"];
  v6 = [v5 intValue];

  return v6;
}

- (id)location
{
  v3 = [(MOResource *)self metaData];

  if (v3)
  {
    v4 = [(MOResource *)self metaData];
    v5 = [v4 objectForKeyedSubscript:@"location"];

    v6 = [MEMORY[0x277D01160] locationFromDictionary:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)poiCategory
{
  v3 = [(MOResource *)self metaData];

  if (v3)
  {
    v4 = [(MOResource *)self metaData];
    v5 = [v4 objectForKeyedSubscript:@"poiCategory"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MOResource)initWithEvergreenTypeName:(id)a3 promptIndex:(unint64_t)a4
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MOResource evergreenTypeFromEvergreenTypeString:v6];
  v14[0] = @"evergreen_type";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v15[0] = v8;
  v14[1] = @"evergreen_index";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v11 = [(MOResource *)self initWithName:v6 type:9 dict:v10 value:a4];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (MOResource)initWithEvergreenTypeName:(id)a3 promptIndexes:(id)a4
{
  v16[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [MOResource evergreenTypeFromEvergreenTypeString:v7];
  v15[0] = @"evergreen_type";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v16[0] = v9;
  v16[1] = v6;
  v15[1] = @"evergreen_indexes";
  v15[2] = @"evergreen_count";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
  v16[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v12 = [(MOResource *)self initWithName:v7 type:9 dict:v11 value:0.0];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (unint64_t)evergreenType
{
  v3 = [(MOResource *)self getDictionary];

  if (!v3)
  {
    return 0;
  }

  v4 = [(MOResource *)self getDictionary];
  v5 = [v4 objectForKeyedSubscript:@"evergreen_type"];
  v6 = [v5 intValue];

  return v6;
}

- (unint64_t)promptIndex
{
  v3 = [(MOResource *)self getDictionary];

  if (v3)
  {
    v4 = [(MOResource *)self getDictionary];
    v5 = [v4 objectForKeyedSubscript:@"evergreen_index"];
    v6 = [v5 intValue];
  }

  else
  {
    [(MOResource *)self value];
    return v7;
  }

  return v6;
}

- (id)promptIndexes
{
  v3 = [(MOResource *)self getDictionary];

  if (v3)
  {
    v4 = [(MOResource *)self getDictionary];
    v5 = [v4 objectForKeyedSubscript:@"evergreen_indexes"];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (unint64_t)promptCount
{
  v3 = [(MOResource *)self getDictionary];

  if (v3)
  {
    v4 = [(MOResource *)self getDictionary];
    v5 = [v4 objectForKeyedSubscript:@"evergreen_count"];
    v6 = [v5 intValue];
  }

  else
  {
    [(MOResource *)self value];
    return v7;
  }

  return v6;
}

+ (id)evergreenTypeStringFromEvergreenType:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_278775E40[a3 - 1];
  }

  return v4;
}

+ (unint64_t)evergreenTypeFromEvergreenTypeString:(id)a3
{
  v3 = a3;
  if ([@"WISDOM" isEqualToString:v3])
  {
    v4 = 1;
  }

  else if ([@"PURPOSE" isEqualToString:v3])
  {
    v4 = 4;
  }

  else if ([@"KINDNESS" isEqualToString:v3])
  {
    v4 = 3;
  }

  else if ([@"GRATITUDE" isEqualToString:v3])
  {
    v4 = 2;
  }

  else if ([@"CREATIVITY" isEqualToString:v3])
  {
    v4 = 6;
  }

  else if ([@"RESILIENCE" isEqualToString:v3])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)initWithIdentifier:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[MOResource initWithIdentifier:]";
  v4 = 1024;
  v5 = 29;
  _os_log_error_impl(&dword_22D8C5000, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", &v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithName:(uint64_t)a1 type:(NSObject *)a2 dict:value:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_DEBUG, "Error when serialization to json, %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)getDictionaryForData:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_ERROR, "Unable to deserialize data to dictionary, %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)getDedupeKeyForResourceData:(uint64_t)a1 type:error:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [MOResource getStringTypeForResources:a1];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)getDedupeKeyForResourceData:type:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v7 = *MEMORY[0x277D85DE8];
  v6 = [MOResource getStringTypeForResources:13];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x34u);

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getDedupeKeyForResourceData:type:error:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MOResource getStringTypeForResources:10];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)getDedupeKeyForResourceData:type:error:.cold.4()
{
  OUTLINED_FUNCTION_2();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MOResource getStringTypeForResources:2];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

@end