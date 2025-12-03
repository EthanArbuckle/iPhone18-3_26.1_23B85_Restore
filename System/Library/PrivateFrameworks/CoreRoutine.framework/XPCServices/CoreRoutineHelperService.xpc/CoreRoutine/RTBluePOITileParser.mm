@interface RTBluePOITileParser
- (BOOL)validateTile:(id)tile outError:(id *)error;
- (RTBluePOITileParser)initWithFileManager:(id)manager wkbParser:(id)parser;
- (id)loadProtobufMetadataAtPath:(id)path cacheInfo:(id)info outError:(id *)error;
- (id)loadProtobufPOIMetadata:(id)metadata outError:(id *)error;
- (id)loadProtobufTile:(id)tile cacheInfo:(id)info outError:(id *)error;
- (id)loadProtobufTileAtPath:(id)path cacheInfo:(id)info outError:(id *)error;
- (void)loadProtobufTileAtPath:(id)path handler:(id)handler;
@end

@implementation RTBluePOITileParser

- (RTBluePOITileParser)initWithFileManager:(id)manager wkbParser:(id)parser
{
  managerCopy = manager;
  parserCopy = parser;
  v9 = parserCopy;
  if (!managerCopy)
  {
    v13 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: fileManager";
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_9;
  }

  if (!parserCopy)
  {
    v13 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: wkbParser";
    goto LABEL_12;
  }

  v16.receiver = self;
  v16.super_class = RTBluePOITileParser;
  v10 = [(RTBluePOITileParser *)&v16 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_fileManager, manager);
    objc_storeStrong(p_isa + 2, parser);
  }

  self = p_isa;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (id)loadProtobufPOIMetadata:(id)metadata outError:(id *)error
{
  metadataCopy = metadata;
  v6 = [[PBDataReader alloc] initWithData:metadataCopy];

  v7 = objc_opt_new();
  v37 = v6;
  [v7 readFrom:v6];
  if ([v7 hasMuid])
  {
    muid = [v7 muid];
  }

  else
  {
    muid = 0;
  }

  if ([v7 hasPoiGeometry])
  {
    wkbParser = [(RTBluePOITileParser *)self wkbParser];
    poiGeometry = [v7 poiGeometry];
    v11 = [wkbParser parsePolygonsFromData:poiGeometry];
    firstObject = [v11 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v13 = 0.0;
  v14 = 0.0;
  if ([v7 hasLocation])
  {
    location = [v7 location];
    [location lat];
    v14 = v16;

    location2 = [v7 location];
    [location2 lng];
    v13 = v18;
  }

  v19 = [[RTLocation alloc] initWithLatitude:0 longitude:v14 horizontalUncertainty:v13 date:-1.0];
  if ([v7 hasIsCategoryFiltered])
  {
    isCategoryFiltered = [v7 isCategoryFiltered];
  }

  else
  {
    isCategoryFiltered = 0;
  }

  if ([v7 hasIsApplePaySupported])
  {
    isApplePaySupported = [v7 isApplePaySupported];
  }

  else
  {
    isApplePaySupported = 0;
  }

  if ([v7 hasFullyCoversTile])
  {
    fullyCoversTile = [v7 fullyCoversTile];
  }

  else
  {
    fullyCoversTile = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v23 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = NSStringFromSelector(a2);
      v25 = [NSNumber numberWithUnsignedLongLong:muid];
      v26 = v25;
      v27 = @"NO";
      *buf = 138413827;
      v40 = v24;
      v41 = 2112;
      if (isApplePaySupported)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v42 = v25;
      if (isCategoryFiltered)
      {
        v29 = @"YES";
      }

      else
      {
        v29 = @"NO";
      }

      if (fullyCoversTile)
      {
        v27 = @"YES";
      }

      v43 = 2117;
      v44 = v19;
      v45 = 2112;
      v46 = v28;
      v47 = 2117;
      v48 = firstObject;
      v49 = 2112;
      v50 = v29;
      v51 = 2112;
      v52 = v27;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%@, muid, %@, location, %{sensitive}@, applePaySupport, %@, polygon, %{sensitive}@, isCategoryFiltered, %@, fullyCoversTile, %@", buf, 0x48u);
    }
  }

  v30 = [RTPointOfInterest alloc];
  v31 = +[NSUUID UUID];
  v32 = [v30 initWithIdentifier:v31 applePaySupport:isApplePaySupported filtered:isCategoryFiltered fullyCoversTile:fullyCoversTile location:v19 muid:muid polygon:firstObject];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v33 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = NSStringFromSelector(a2);
      *buf = 138412547;
      v40 = v34;
      v41 = 2117;
      v42 = v32;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%@, create POI metadata, %{sensitive}@", buf, 0x16u);
    }
  }

  if (error)
  {
    *error = 0;
  }

  return v32;
}

- (BOOL)validateTile:(id)tile outError:(id *)error
{
  tileCopy = tile;
  if (![tileCopy geoTileKey])
  {
    v21 = [NSError alloc];
    v54 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithFormat:@"invalid geoTileKey data format"];
    v55 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v24 = v21;
    v25 = 103;
LABEL_21:
    models = [v24 initWithDomain:@"RTBluePOIErrorDomain" code:v25 userInfo:v23];

    if (error)
    {
      v29 = models;
      *error = models;
    }

LABEL_23:

    v20 = 0;
    goto LABEL_24;
  }

  hashSalt = [tileCopy hashSalt];

  if (!hashSalt)
  {
    v26 = [NSError alloc];
    v52 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithFormat:@"invalid hash salt"];
    v53 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v24 = v26;
    v25 = 104;
    goto LABEL_21;
  }

  pointsOfInterest = [tileCopy pointsOfInterest];
  v8 = [pointsOfInterest count];

  if (!v8)
  {
    v27 = [NSError alloc];
    v50 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithFormat:@"invalid POI metadata"];
    v51 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v24 = v27;
    v25 = 108;
    goto LABEL_21;
  }

  hashedApToModelMapping = [tileCopy hashedApToModelMapping];
  v10 = [hashedApToModelMapping count];

  if (!v10)
  {
    v28 = [NSError alloc];
    v48 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithFormat:@"invalid hashedApToModelMapping"];
    v49 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v24 = v28;
    v25 = 107;
    goto LABEL_21;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  models = [tileCopy models];
  v12 = [models countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
  v14 = *v40;
  while (2)
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v40 != v14)
      {
        objc_enumerationMutation(models);
      }

      v16 = *(*(&v39 + 1) + 8 * i);
      featureToHashedApMapping = [v16 featureToHashedApMapping];
      v18 = [featureToHashedApMapping count];

      if (!v18)
      {
        v31 = [NSError alloc];
        v45 = NSLocalizedDescriptionKey;
        v32 = [NSString stringWithFormat:@"invalid hashed feature list"];
        v46 = v32;
        v33 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v34 = v31;
        v35 = 106;
LABEL_27:
        v37 = [v34 initWithDomain:@"RTBluePOIErrorDomain" code:v35 userInfo:v33];

        if (error)
        {
          v38 = v37;
          *error = v37;
        }

        goto LABEL_23;
      }

      v19 = [v16 url];

      if (!v19)
      {
        v36 = [NSError alloc];
        v43 = NSLocalizedDescriptionKey;
        v32 = [NSString stringWithFormat:@"failed to write CoreML model to disk"];
        v44 = v32;
        v33 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v34 = v36;
        v35 = 100;
        goto LABEL_27;
      }
    }

    v13 = [models countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_14:

  if (error)
  {
    *error = 0;
  }

  v20 = 1;
LABEL_24:

  return v20;
}

- (id)loadProtobufTile:(id)tile cacheInfo:(id)info outError:(id *)error
{
  tileCopy = tile;
  infoCopy = info;
  v8 = [[PBDataReader alloc] initWithData:tileCopy];
  v9 = objc_opt_new();
  v214 = v8;
  [v9 readFrom:v8];
  if ([v9 hasTileKey])
  {
    tileKey = [v9 tileKey];
  }

  else
  {
    tileKey = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v12 = [NSNumber numberWithUnsignedLongLong:tileKey];
      v13 = vcvtd_n_f64_u64([tileCopy length], 0xAuLL);
      +[RTRuntime footprint];
      *buf = 138413315;
      v310 = v11;
      v311 = 2117;
      v312 = v12;
      v313 = 2048;
      v314 = v13;
      v315 = 2048;
      v316 = v14;
      v317 = 2112;
      v318 = infoCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@, geoTileKey, %{sensitive}@, size, %.1f (kB), memory footprint, %.1f, cacheInfo, %@", buf, 0x34u);
    }
  }

  selfCopy = self;
  v215 = tileCopy;
  v223 = [NSFileManager pathInCacheDirectory:@"BluePOIModels"];
  v257 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v227 = objc_opt_new();
  v218 = v9;
  v221 = v16;
  if ([v9 hasModelTile])
  {
    modelTile = [v9 modelTile];
    v18 = [NSMutableArray alloc];
    models = [modelTile models];
    v256 = [v18 initWithCapacity:{objc_msgSend(models, "count")}];

    v20 = objc_opt_new();
    v304 = 0u;
    v305 = 0u;
    v306 = 0u;
    v307 = 0u;
    v238 = modelTile;
    obj = [modelTile models];
    v228 = [obj countByEnumeratingWithState:&v304 objects:v336 count:16];
    if (v228)
    {
      v21 = 0;
      v225 = *v305;
      while (2)
      {
        v22 = 0;
        do
        {
          if (*v305 != v225)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v304 + 1) + 8 * v22);
          if (![v23 hasCoremlModel])
          {
            v99 = sub_1000011A0(&qword_1000B2970);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              v211 = NSStringFromSelector(a2);
              v212 = [NSNumber numberWithUnsignedLongLong:tileKey];
              *buf = 138412547;
              v310 = v211;
              v311 = 2117;
              v312 = v212;
              _os_log_error_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "%@, CoreML model not found, geoTileKey, %{sensitive}@", buf, 0x16u);
            }

            v100 = [NSError alloc];
            v333 = NSLocalizedDescriptionKey;
            v101 = [NSString stringWithFormat:@"missing CoreML model"];
            v334 = v101;
            v102 = [NSDictionary dictionaryWithObjects:&v334 forKeys:&v333 count:1];
            v103 = [v100 initWithDomain:@"RTBluePOIErrorDomain" code:102 userInfo:v102];

            if (error)
            {
              v104 = v103;
              v105 = 0;
              *error = v103;
            }

            else
            {
              v105 = 0;
            }

            v106 = v214;
            goto LABEL_213;
          }

          v239 = v22;
          v24 = [NSNumber numberWithUnsignedLongLong:tileKey];
          v25 = [NSString stringWithFormat:@"%@-%lu.mlmodel", v24, v21];
          v26 = [v223 stringByAppendingPathComponent:v25];

          v249 = v23;
          coremlModel = [v23 coremlModel];
          v303 = 0;
          [coremlModel writeToFile:v26 options:1 error:&v303];
          v28 = v303;

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            v29 = sub_1000011A0(&qword_1000B2970);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = NSStringFromSelector(a2);
              coremlModel2 = [v23 coremlModel];
              v32 = [coremlModel2 length];
              *buf = 138413058;
              v310 = v30;
              v311 = 2112;
              v312 = v26;
              v313 = 2048;
              v314 = vcvtd_n_f64_u64(v32, 0xAuLL);
              v315 = 2112;
              v316 = v28;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%@, dump CoreML model, URL, %@, model size, %.1f (kB), error, %@", buf, 0x2Au);
            }
          }

          v232 = v28;
          if (v28)
          {

            v245 = 0;
          }

          else
          {
            v245 = v26;
          }

          v301 = 0u;
          v302 = 0u;
          v299 = 0u;
          v300 = 0u;
          labels = [v249 labels];
          v34 = [labels countByEnumeratingWithState:&v299 objects:v335 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v300;
            do
            {
              for (i = 0; i != v35; i = i + 1)
              {
                if (*v300 != v36)
                {
                  objc_enumerationMutation(labels);
                }

                v38 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(*(&v299 + 1) + 8 * i) longLongValue]);
                v39 = [NSNumber numberWithUnsignedInteger:v21];
                [v20 setObject:v39 forKeyedSubscript:v38];
              }

              v35 = [labels countByEnumeratingWithState:&v299 objects:v335 count:16];
            }

            while (v35);
          }

          v40 = objc_opt_new();
          featuresCount = [v249 featuresCount];
          if (featuresCount == [v249 hashedFeaturesCount])
          {
            if ([v249 featuresCount])
            {
              v42 = 0;
              do
              {
                v43 = [v249 featureAtIndex:v42];
                v44 = [v249 hashedFeatureAtIndex:v42];
                v45 = v44;
                if (v43 && v44)
                {
                  [v40 setObject:v44 forKey:v43];
                }

                ++v42;
              }

              while (v42 < [v249 featuresCount]);
            }
          }

          else
          {
            v46 = sub_1000011A0(&qword_1000B2970);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              v53 = NSStringFromSelector(a2);
              featuresCount2 = [v249 featuresCount];
              v55 = COERCE_DOUBLE([v249 hashedFeaturesCount]);
              *buf = 138412802;
              v310 = v53;
              v311 = 2048;
              v312 = featuresCount2;
              v313 = 2048;
              v314 = v55;
              _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%@, features and hashed features are not aligned, feature count, %lu, hashed feature count, %lu", buf, 0x20u);
            }
          }

          v47 = [RTBluePOIModel alloc];
          v48 = +[NSUUID UUID];
          v49 = v245;
          v50 = [v47 initWithIdentifier:v48 featureToHashedApMapping:v40 url:v245];

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            v51 = sub_1000011A0(&qword_1000B2970);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              v52 = NSStringFromSelector(a2);
              *buf = 138412546;
              v310 = v52;
              v311 = 2112;
              v312 = v50;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%@, CoreML model, %@", buf, 0x16u);
            }

            v49 = v245;
          }

          v16 = v221;
          if (v50)
          {
            [v256 addObject:v50];
          }

          ++v21;
          v22 = v239 + 1;
        }

        while (v239 + 1 != v228);
        v228 = [obj countByEnumeratingWithState:&v304 objects:v336 count:16];
        if (v228)
        {
          continue;
        }

        break;
      }
    }

    v250 = objc_opt_new();
    v295 = 0u;
    v296 = 0u;
    v297 = 0u;
    v298 = 0u;
    apMappings = [modelTile apMappings];
    v56 = [apMappings countByEnumeratingWithState:&v295 objects:v332 count:16];
    if (v56)
    {
      v57 = v56;
      v246 = *v296;
      do
      {
        for (j = 0; j != v57; j = j + 1)
        {
          if (*v296 != v246)
          {
            objc_enumerationMutation(apMappings);
          }

          v59 = *(*(&v295 + 1) + 8 * j);
          v60 = objc_opt_new();
          if ([v59 muidsCount])
          {
            v61 = 0;
            do
            {
              v62 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v59 muidAtIndex:v61]);
              [v60 addObject:v62];

              ++v61;
            }

            while ([v59 muidsCount] > v61);
          }

          accessPoint = [v59 accessPoint];
          [v250 setObject:v60 forKeyedSubscript:accessPoint];
        }

        v57 = [apMappings countByEnumeratingWithState:&v295 objects:v332 count:16];
      }

      while (v57);
    }

    v293 = 0u;
    v294 = 0u;
    v291 = 0u;
    v292 = 0u;
    v247 = v250;
    v241 = [v247 countByEnumeratingWithState:&v291 objects:v331 count:16];
    if (v241)
    {
      v233 = *v292;
      do
      {
        v64 = 0;
        do
        {
          if (*v292 != v233)
          {
            objc_enumerationMutation(v247);
          }

          v251 = v64;
          v65 = *(*(&v291 + 1) + 8 * v64);
          v287 = 0u;
          v288 = 0u;
          v289 = 0u;
          v290 = 0u;
          v66 = [v247 objectForKeyedSubscript:v65];
          v67 = [v66 countByEnumeratingWithState:&v287 objects:v330 count:16];
          if (v67)
          {
            v68 = v67;
            v69 = *v288;
            do
            {
              for (k = 0; k != v68; k = k + 1)
              {
                if (*v288 != v69)
                {
                  objc_enumerationMutation(v66);
                }

                v71 = *(*(&v287 + 1) + 8 * k);
                v72 = [v20 objectForKey:v71];

                if (v72)
                {
                  v73 = [v20 objectForKeyedSubscript:v71];
                  v74 = [v257 objectForKey:v65];

                  if (!v74)
                  {
                    v75 = objc_opt_new();
                    [v257 setObject:v75 forKeyedSubscript:v65];
                  }

                  v76 = [v257 objectForKeyedSubscript:v65];
                  [v76 addObject:v73];
                }
              }

              v68 = [v66 countByEnumeratingWithState:&v287 objects:v330 count:16];
            }

            while (v68);
          }

          ++v64;
        }

        while ((v251 + 1) != v241);
        v241 = [v247 countByEnumeratingWithState:&v291 objects:v331 count:16];
      }

      while (v241);
    }

    v252 = objc_opt_new();
    v283 = 0u;
    v284 = 0u;
    v285 = 0u;
    v286 = 0u;
    hashedApMappings = [v238 hashedApMappings];
    v77 = [hashedApMappings countByEnumeratingWithState:&v283 objects:v329 count:16];
    if (v77)
    {
      v78 = v77;
      v242 = *v284;
      do
      {
        for (m = 0; m != v78; m = m + 1)
        {
          if (*v284 != v242)
          {
            objc_enumerationMutation(hashedApMappings);
          }

          v80 = *(*(&v283 + 1) + 8 * m);
          v81 = objc_opt_new();
          if ([v80 muidsCount])
          {
            v82 = 0;
            do
            {
              v83 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v80 muidAtIndex:v82]);
              [v81 addObject:v83];

              ++v82;
            }

            while ([v80 muidsCount] > v82);
          }

          hashedAccessPoint = [v80 hashedAccessPoint];
          [v252 setObject:v81 forKeyedSubscript:hashedAccessPoint];
        }

        v78 = [hashedApMappings countByEnumeratingWithState:&v283 objects:v329 count:16];
      }

      while (v78);
    }

    v281 = 0u;
    v282 = 0u;
    v279 = 0u;
    v280 = 0u;
    v243 = v252;
    v235 = [v243 countByEnumeratingWithState:&v279 objects:v328 count:16];
    if (v235)
    {
      v229 = *v280;
      do
      {
        v85 = 0;
        do
        {
          if (*v280 != v229)
          {
            objc_enumerationMutation(v243);
          }

          v253 = v85;
          v86 = *(*(&v279 + 1) + 8 * v85);
          v275 = 0u;
          v276 = 0u;
          v277 = 0u;
          v278 = 0u;
          v87 = [v243 objectForKeyedSubscript:v86];
          v88 = [v87 countByEnumeratingWithState:&v275 objects:v327 count:16];
          if (v88)
          {
            v89 = v88;
            v90 = *v276;
            do
            {
              for (n = 0; n != v89; n = n + 1)
              {
                if (*v276 != v90)
                {
                  objc_enumerationMutation(v87);
                }

                v92 = *(*(&v275 + 1) + 8 * n);
                v93 = [v20 objectForKey:v92];

                if (v93)
                {
                  v94 = [v20 objectForKeyedSubscript:v92];
                  v95 = [v15 objectForKey:v86];

                  if (!v95)
                  {
                    v96 = objc_opt_new();
                    [v15 setObject:v96 forKeyedSubscript:v86];
                  }

                  v97 = [v15 objectForKeyedSubscript:v86];
                  [v97 addObject:v94];
                }
              }

              v89 = [v87 countByEnumeratingWithState:&v275 objects:v327 count:16];
            }

            while (v89);
          }

          v85 = v253 + 1;
        }

        while ((v253 + 1) != v235);
        v235 = [v243 countByEnumeratingWithState:&v279 objects:v328 count:16];
      }

      while (v235);
    }

    singlePoiMuid = [v238 singlePoiMuid];
    if ([v238 hasHashSalt])
    {
      hashSalt = [v238 hashSalt];
    }

    else
    {
      hashSalt = 0;
    }

    v273 = 0u;
    v274 = 0u;
    v271 = 0u;
    v272 = 0u;
    v107 = v257;
    v108 = [v107 countByEnumeratingWithState:&v271 objects:v326 count:16];
    if (v108)
    {
      v109 = v108;
      v110 = *v272;
      do
      {
        for (ii = 0; ii != v109; ii = ii + 1)
        {
          if (*v272 != v110)
          {
            objc_enumerationMutation(v107);
          }

          v112 = *(*(&v271 + 1) + 8 * ii);
          v113 = [v107 objectForKeyedSubscript:v112];
          allObjects = [v113 allObjects];
          [v221 setObject:allObjects forKeyedSubscript:v112];
        }

        v109 = [v107 countByEnumeratingWithState:&v271 objects:v326 count:16];
      }

      while (v109);
    }

    v269 = 0u;
    v270 = 0u;
    v267 = 0u;
    v268 = 0u;
    v236 = v15;
    v98 = v256;
    v115 = &NSClassFromString_ptr;
    v230 = [v236 countByEnumeratingWithState:&v267 objects:v325 count:16];
    if (v230)
    {
      v226 = *v268;
      do
      {
        for (jj = 0; jj != v230; jj = jj + 1)
        {
          if (*v268 != v226)
          {
            objc_enumerationMutation(v236);
          }

          v117 = *(*(&v267 + 1) + 8 * jj);
          v118 = objc_alloc(v115[335]);
          v119 = [v236 objectForKeyedSubscript:v117];
          v120 = [v118 initWithCapacity:{objc_msgSend(v119, "count")}];

          v265 = 0u;
          v266 = 0u;
          v263 = 0u;
          v264 = 0u;
          v254 = v117;
          v121 = [v236 objectForKeyedSubscript:v117];
          v122 = [v121 countByEnumeratingWithState:&v263 objects:v324 count:16];
          if (v122)
          {
            v123 = v122;
            v124 = *v264;
            do
            {
              for (kk = 0; kk != v123; kk = kk + 1)
              {
                if (*v264 != v124)
                {
                  objc_enumerationMutation(v121);
                }

                unsignedIntegerValue = [*(*(&v263 + 1) + 8 * kk) unsignedIntegerValue];
                if (unsignedIntegerValue < [v98 count])
                {
                  v127 = [v98 objectAtIndexedSubscript:unsignedIntegerValue];
                  identifier = [v127 identifier];
                  [v120 addObject:identifier];

                  v98 = v256;
                }
              }

              v123 = [v121 countByEnumeratingWithState:&v263 objects:v324 count:16];
            }

            while (v123);
          }

          [v227 setObject:v120 forKeyedSubscript:v254];
          v115 = &NSClassFromString_ptr;
        }

        v230 = [v236 countByEnumeratingWithState:&v267 objects:v325 count:16];
      }

      while (v230);
    }

    v9 = v218;
  }

  else
  {
    hashSalt = 0;
    singlePoiMuid = 0;
    v98 = 0;
  }

  v256 = v98;
  v238 = objc_opt_new();
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  v262 = 0u;
  poiMetadatas = [v9 poiMetadatas];
  v129 = [poiMetadatas countByEnumeratingWithState:&v259 objects:v323 count:16];
  if (v129)
  {
    v130 = v129;
    v244 = *v260;
    do
    {
      for (mm = 0; mm != v130; mm = mm + 1)
      {
        if (*v260 != v244)
        {
          objc_enumerationMutation(poiMetadatas);
        }

        v132 = *(*(&v259 + 1) + 8 * mm);
        if ([v132 hasMuid])
        {
          muid = [v132 muid];
        }

        else
        {
          muid = 0;
        }

        if ([v132 hasPoiGeometry])
        {
          wkbParser = [(RTBluePOITileParser *)selfCopy wkbParser];
          poiGeometry = [v132 poiGeometry];
          v135 = [wkbParser parsePolygonsFromData:poiGeometry];
          firstObject = [v135 firstObject];
        }

        else
        {
          firstObject = 0;
        }

        v136 = 0.0;
        v137 = 0.0;
        if ([v132 hasLocation])
        {
          location = [v132 location];
          [location lat];
          v136 = v139;

          location2 = [v132 location];
          [location2 lng];
          v137 = v141;
        }

        v142 = COERCE_DOUBLE([[RTLocation alloc] initWithLatitude:0 longitude:v136 horizontalUncertainty:v137 date:-1.0]);
        if ([v132 hasIsCategoryFiltered])
        {
          isCategoryFiltered = [v132 isCategoryFiltered];
        }

        else
        {
          isCategoryFiltered = 0;
        }

        if ([v132 hasIsApplePaySupported])
        {
          isApplePaySupported = [v132 isApplePaySupported];
        }

        else
        {
          isApplePaySupported = 0;
        }

        if ([v132 hasFullyCoversTile])
        {
          fullyCoversTile = [v132 fullyCoversTile];
        }

        else
        {
          fullyCoversTile = 0;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v146 = sub_1000011A0(&qword_1000B2970);
          if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
          {
            v147 = NSStringFromSelector(a2);
            v148 = [NSNumber numberWithUnsignedLongLong:muid];
            v149 = v148;
            *buf = 138413827;
            v150 = @"NO";
            if (isApplePaySupported)
            {
              v151 = @"YES";
            }

            else
            {
              v151 = @"NO";
            }

            v310 = v147;
            if (isCategoryFiltered)
            {
              v152 = @"YES";
            }

            else
            {
              v152 = @"NO";
            }

            v311 = 2112;
            if (fullyCoversTile)
            {
              v150 = @"YES";
            }

            v312 = v148;
            v313 = 2117;
            v314 = v142;
            v315 = 2112;
            v316 = v151;
            v317 = 2117;
            v318 = firstObject;
            v319 = 2112;
            v320 = v152;
            v321 = 2112;
            v322 = v150;
            _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_INFO, "%@, muid, %@, location, %{sensitive}@, applePaySupport, %@, polygon, %{sensitive}@, isCategoryFiltered, %@, fullyCoversTile, %@", buf, 0x48u);
          }
        }

        v153 = [RTPointOfInterest alloc];
        v154 = +[NSUUID UUID];
        v155 = [v153 initWithIdentifier:v154 applePaySupport:isApplePaySupported filtered:isCategoryFiltered fullyCoversTile:fullyCoversTile location:*&v142 muid:muid polygon:firstObject];

        if (v155)
        {
          [v238 addObject:v155];
        }
      }

      v130 = [poiMetadatas countByEnumeratingWithState:&v259 objects:v323 count:16];
    }

    while (v130);
  }

  v20 = objc_opt_new();
  if ([v218 hasApplePayCalibration])
  {
    applePayCalibration = [v218 applePayCalibration];
    hasLowThresholdBeforeCalibration = [applePayCalibration hasLowThresholdBeforeCalibration];

    if (hasLowThresholdBeforeCalibration)
    {
      applePayCalibration2 = [v218 applePayCalibration];
      [applePayCalibration2 lowThresholdBeforeCalibration];
      v159 = [NSNumber numberWithDouble:?];
      [v20 setObject:v159 forKeyedSubscript:kRTBluePOITileModelCalibrationLowThresholdBeforeCalibrationApplePay];
    }

    applePayCalibration3 = [v218 applePayCalibration];
    hasHighThresholdBeforeCalibration = [applePayCalibration3 hasHighThresholdBeforeCalibration];

    if (hasHighThresholdBeforeCalibration)
    {
      applePayCalibration4 = [v218 applePayCalibration];
      [applePayCalibration4 highThresholdBeforeCalibration];
      v163 = [NSNumber numberWithDouble:?];
      [v20 setObject:v163 forKeyedSubscript:kRTBluePOITileModelCalibrationHighThresholdBeforeCalibrationApplePay];
    }

    applePayCalibration5 = [v218 applePayCalibration];
    hasLowThresholdAfterCalibration = [applePayCalibration5 hasLowThresholdAfterCalibration];

    if (hasLowThresholdAfterCalibration)
    {
      applePayCalibration6 = [v218 applePayCalibration];
      [applePayCalibration6 lowThresholdAfterCalibration];
      v167 = [NSNumber numberWithDouble:?];
      [v20 setObject:v167 forKeyedSubscript:kRTBluePOITileModelCalibrationLowThresholdAfterCalibrationApplePay];
    }

    applePayCalibration7 = [v218 applePayCalibration];
    hasHighThresholdAfterCalibration = [applePayCalibration7 hasHighThresholdAfterCalibration];

    if (hasHighThresholdAfterCalibration)
    {
      applePayCalibration8 = [v218 applePayCalibration];
      [applePayCalibration8 highThresholdAfterCalibration];
      v171 = [NSNumber numberWithDouble:?];
      [v20 setObject:v171 forKeyedSubscript:kRTBluePOITileModelCalibrationHighThresholdAfterCalibrationApplePay];
    }

    applePayCalibration9 = [v218 applePayCalibration];
    hasHighestScore = [applePayCalibration9 hasHighestScore];

    if (hasHighestScore)
    {
      applePayCalibration10 = [v218 applePayCalibration];
      [applePayCalibration10 highestScore];
      v175 = [NSNumber numberWithDouble:?];
      [v20 setObject:v175 forKeyedSubscript:kRTBluePOITileModelCalibrationHighestScoreApplePay];
    }
  }

  v16 = v221;
  v103 = hashSalt;
  if ([v218 hasNonApplePayCalibration])
  {
    nonApplePayCalibration = [v218 nonApplePayCalibration];
    hasLowThresholdBeforeCalibration2 = [nonApplePayCalibration hasLowThresholdBeforeCalibration];

    if (hasLowThresholdBeforeCalibration2)
    {
      nonApplePayCalibration2 = [v218 nonApplePayCalibration];
      [nonApplePayCalibration2 lowThresholdBeforeCalibration];
      v179 = [NSNumber numberWithDouble:?];
      [v20 setObject:v179 forKeyedSubscript:kRTBluePOITileModelCalibrationLowThresholdBeforeCalibrationNonApplePay];
    }

    nonApplePayCalibration3 = [v218 nonApplePayCalibration];
    hasHighThresholdBeforeCalibration2 = [nonApplePayCalibration3 hasHighThresholdBeforeCalibration];

    if (hasHighThresholdBeforeCalibration2)
    {
      nonApplePayCalibration4 = [v218 nonApplePayCalibration];
      [nonApplePayCalibration4 highThresholdBeforeCalibration];
      v183 = [NSNumber numberWithDouble:?];
      [v20 setObject:v183 forKeyedSubscript:kRTBluePOITileModelCalibrationHighThresholdBeforeCalibrationNonApplePay];
    }

    nonApplePayCalibration5 = [v218 nonApplePayCalibration];
    hasLowThresholdAfterCalibration2 = [nonApplePayCalibration5 hasLowThresholdAfterCalibration];

    if (hasLowThresholdAfterCalibration2)
    {
      nonApplePayCalibration6 = [v218 nonApplePayCalibration];
      [nonApplePayCalibration6 lowThresholdAfterCalibration];
      v187 = [NSNumber numberWithDouble:?];
      [v20 setObject:v187 forKeyedSubscript:kRTBluePOITileModelCalibrationLowThresholdAfterCalibrationNonApplePay];
    }

    nonApplePayCalibration7 = [v218 nonApplePayCalibration];
    hasHighThresholdAfterCalibration2 = [nonApplePayCalibration7 hasHighThresholdAfterCalibration];

    if (hasHighThresholdAfterCalibration2)
    {
      nonApplePayCalibration8 = [v218 nonApplePayCalibration];
      [nonApplePayCalibration8 highThresholdAfterCalibration];
      v191 = [NSNumber numberWithDouble:?];
      [v20 setObject:v191 forKeyedSubscript:kRTBluePOITileModelCalibrationHighThresholdAfterCalibrationNonApplePay];
    }

    nonApplePayCalibration9 = [v218 nonApplePayCalibration];
    hasHighestScore2 = [nonApplePayCalibration9 hasHighestScore];

    if (hasHighestScore2)
    {
      nonApplePayCalibration10 = [v218 nonApplePayCalibration];
      [nonApplePayCalibration10 highestScore];
      v195 = [NSNumber numberWithDouble:?];
      [v20 setObject:v195 forKeyedSubscript:kRTBluePOITileModelCalibrationHighestScoreNonApplePay];
    }
  }

  v308[0] = [infoCopy externalKey];
  v308[1] = v196;
  obj = [NSData dataWithBytes:v308 length:16];
  v197 = [RTBluePOITile alloc];
  v198 = objc_opt_new();
  v199 = +[NSDate now];
  data = [infoCopy data];
  if ([v256 count])
  {
    v201 = [NSSet setWithArray:v256];
  }

  else
  {
    v201 = objc_opt_new();
  }

  v202 = v201;
  v203 = [v197 initWithIdentifier:v198 apToModelMapping:v221 date:v199 downloadKey:obj geoCacheInfo:data geoTileKey:tileKey hashedApToModelMapping:-1.0 hashSalt:v227 modelCalibrationParameters:hashSalt models:v20 modelURLs:v201 pointsOfInterest:0 singlePOIMuid:v238 size:singlePoiMuid];

  v106 = v214;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v204 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v204, OS_LOG_TYPE_INFO))
    {
      v205 = NSStringFromSelector(a2);
      *buf = 138412547;
      v310 = v205;
      v311 = 2117;
      v312 = v203;
      _os_log_impl(&_mh_execute_header, v204, OS_LOG_TYPE_INFO, "%@, create BluePOI tile, %{sensitive}@", buf, 0x16u);
    }
  }

  v258 = 0;
  v206 = [(RTBluePOITileParser *)selfCopy validateTile:v203 outError:&v258];
  v207 = v258;
  v208 = v207;
  if (v206)
  {
    if (error)
    {
      *error = 0;
    }

    v105 = v203;
  }

  else if (error)
  {
    v209 = v207;
    v105 = 0;
    *error = v208;
  }

  else
  {
    v105 = 0;
  }

LABEL_213:

  return v105;
}

- (id)loadProtobufTileAtPath:(id)path cacheInfo:(id)info outError:(id *)error
{
  pathCopy = path;
  infoCopy = info;
  v32 = 1;
  fileManager = [(RTBluePOITileParser *)self fileManager];
  v12 = [fileManager fileExistsAtPath:pathCopy isDirectory:&v32];
  v13 = v32;

  if (!v12 || (v13 & 1) != 0)
  {
    v18 = [NSError alloc];
    v41 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithFormat:@"tile doesn't exist"];
    v42 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v21 = [v18 initWithDomain:@"RTBluePOIErrorDomain" code:101 userInfo:v20];

    if (error)
    {
      v22 = v21;
      v23 = 0;
      *error = v21;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    fileManager2 = [(RTBluePOITileParser *)self fileManager];
    v31 = 0;
    v15 = [fileManager2 attributesOfItemAtPath:pathCopy error:&v31];
    v16 = v31;

    if (v15)
    {
      v17 = [v15 objectForKey:NSFileSize];
    }

    else
    {
      v17 = 0;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v24 = sub_1000011A0(&qword_1000B2970);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = NSStringFromSelector(a2);
        unsignedIntegerValue = [v17 unsignedIntegerValue];
        *buf = 138413058;
        v34 = v25;
        v35 = 2112;
        v36 = pathCopy;
        v37 = 2048;
        v38 = vcvtd_n_f64_u64(unsignedIntegerValue, 0xAuLL);
        v39 = 2112;
        v40 = v16;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%@, path, %@, size, %.1f (kB), error, %@", buf, 0x2Au);
      }
    }

    v27 = [NSData dataWithContentsOfFile:pathCopy];
    v30 = v16;
    v23 = [(RTBluePOITileParser *)self loadProtobufTile:v27 cacheInfo:infoCopy outError:&v30];
    v21 = v30;

    if (error)
    {
      v28 = v21;
      *error = v21;
    }
  }

  return v23;
}

- (void)loadProtobufTileAtPath:(id)path handler:(id)handler
{
  v9 = 0;
  handlerCopy = handler;
  v7 = [(RTBluePOITileParser *)self loadProtobufTileAtPath:path cacheInfo:0 outError:&v9];
  v8 = v9;
  handlerCopy[2](handlerCopy, v7, v8);
}

- (id)loadProtobufMetadataAtPath:(id)path cacheInfo:(id)info outError:(id *)error
{
  pathCopy = path;
  infoCopy = info;
  fileManager = [(RTBluePOITileParser *)self fileManager];
  v68 = 0;
  v11 = [fileManager attributesOfItemAtPath:pathCopy error:&v68];
  v66 = v68;

  if (v11)
  {
    v12 = [v11 objectForKey:NSFileSize];
  }

  else
  {
    v12 = 0;
  }

  v13 = [NSData dataWithContentsOfFile:pathCopy];
  v14 = [[PBDataReader alloc] initWithData:v13];
  v15 = objc_opt_new();
  [v15 readFrom:v14];
  if ([v15 hasTileKey])
  {
    tileKey = [v15 tileKey];
  }

  else
  {
    tileKey = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v17 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      NSStringFromSelector(a2);
      v61 = v14;
      v63 = v11;
      v18 = v13;
      v20 = v19 = error;
      [NSNumber numberWithUnsignedLongLong:tileKey];
      v22 = v21 = a2;
      v23 = vcvtd_n_f64_u64([v12 unsignedIntegerValue], 0xAuLL);
      +[RTRuntime footprint];
      *buf = 138413315;
      v72 = v20;
      v73 = 2112;
      v74 = pathCopy;
      v75 = 2117;
      v76 = v22;
      v77 = 2048;
      v78 = v23;
      v79 = 2048;
      v80 = v24;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@, file, %@, geoTileKey, %{sensitive}@, size, %.1f (kB), memory footprint, %.1f", buf, 0x34u);

      a2 = v21;
      error = v19;
      v13 = v18;
      v14 = v61;
      v11 = v63;
    }
  }

  if (tileKey)
  {
    v64 = v11;
    v25 = v14;
    v26 = v13;
    v27 = v12;
    v28 = [NSError alloc];
    v29 = RTErrorDomain;
    v69 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithFormat:@"invalid metadata"];
    v70 = v30;
    [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    v32 = v31 = error;
    v33 = [v28 initWithDomain:v29 code:0 userInfo:v32];

    if (v31)
    {
      v34 = v33;
      v35 = 0;
      *v31 = v33;
    }

    else
    {
      v35 = 0;
    }

    v12 = v27;
    v13 = v26;
    v14 = v25;
    v11 = v64;
  }

  else
  {
    aSelector = a2;
    v65 = objc_opt_new();
    if ([v15 hasGlobalConfig])
    {
      globalConfig = [v15 globalConfig];
      hasXgboostLowThreshold = [globalConfig hasXgboostLowThreshold];

      if (hasXgboostLowThreshold)
      {
        globalConfig2 = [v15 globalConfig];
        [globalConfig2 xgboostLowThreshold];
        v39 = [NSNumber numberWithDouble:?];
        [v65 setObject:v39 forKeyedSubscript:kRTBluePOIMetadataModelCalibrationLowThreshold];
      }

      globalConfig3 = [v15 globalConfig];
      hasXgboostHighThreshold = [globalConfig3 hasXgboostHighThreshold];

      if (hasXgboostHighThreshold)
      {
        globalConfig4 = [v15 globalConfig];
        [globalConfig4 xgboostHighThreshold];
        v43 = [NSNumber numberWithDouble:?];
        [v65 setObject:v43 forKeyedSubscript:kRTBluePOIMetadataModelCalibrationHighThreshold];
      }

      globalConfig5 = [v15 globalConfig];
      hasLowConfidenceJurassic = [globalConfig5 hasLowConfidenceJurassic];

      if (hasLowConfidenceJurassic)
      {
        globalConfig6 = [v15 globalConfig];
        [globalConfig6 lowConfidenceJurassic];
        v47 = [NSNumber numberWithDouble:?];
        [v65 setObject:v47 forKeyedSubscript:kRTBluePOIMetadataModelCalibrationLowConfidence];
      }

      globalConfig7 = [v15 globalConfig];
      hasHigConfidenceJurassic = [globalConfig7 hasHigConfidenceJurassic];

      if (hasHigConfidenceJurassic)
      {
        globalConfig8 = [v15 globalConfig];
        [globalConfig8 higConfidenceJurassic];
        v51 = [NSNumber numberWithDouble:?];
        [v65 setObject:v51 forKeyedSubscript:kRTBluePOIMetadataModelCalibrationHighConfidence];
      }
    }

    errorCopy = error;
    v52 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v15, "deniedMuidCategorysCount")}];
    if ([v15 deniedMuidCategorysCount] && objc_msgSend(v15, "deniedMuidCategorysCount"))
    {
      v53 = 0;
      do
      {
        v54 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v15 deniedMuidCategoryAtIndex:{v53, aSelector}]);
        [v52 addObject:v54];

        ++v53;
      }

      while ([v15 deniedMuidCategorysCount] > v53);
    }

    v55 = [RTBluePOIMetadata alloc];
    v56 = +[NSUUID UUID];
    v35 = [v55 initWithIdentifier:v56 categoryDenyList:v52 geoCacheInfo:infoCopy modelCalibrationParameters:v65];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v57 = sub_1000011A0(&qword_1000B2970);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        v58 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        v72 = v58;
        v73 = 2112;
        v74 = v35;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%@, create BluePOI metadata, %@", buf, 0x16u);
      }
    }

    if (errorCopy)
    {
      *errorCopy = 0;
    }

    v33 = v66;
  }

  return v35;
}

@end