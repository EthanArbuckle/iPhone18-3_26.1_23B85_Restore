@interface RTBluePOITileParser
- (BOOL)validateTile:(id)a3 outError:(id *)a4;
- (RTBluePOITileParser)initWithFileManager:(id)a3 wkbParser:(id)a4;
- (id)loadProtobufMetadataAtPath:(id)a3 cacheInfo:(id)a4 outError:(id *)a5;
- (id)loadProtobufPOIMetadata:(id)a3 outError:(id *)a4;
- (id)loadProtobufTile:(id)a3 cacheInfo:(id)a4 outError:(id *)a5;
- (id)loadProtobufTileAtPath:(id)a3 cacheInfo:(id)a4 outError:(id *)a5;
- (void)loadProtobufTileAtPath:(id)a3 handler:(id)a4;
@end

@implementation RTBluePOITileParser

- (RTBluePOITileParser)initWithFileManager:(id)a3 wkbParser:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v13 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v12 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: fileManager";
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_9;
  }

  if (!v8)
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
    objc_storeStrong(&v10->_fileManager, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  self = p_isa;
  v12 = self;
LABEL_10:

  return v12;
}

- (id)loadProtobufPOIMetadata:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = [[PBDataReader alloc] initWithData:v5];

  v7 = objc_opt_new();
  v37 = v6;
  [v7 readFrom:v6];
  if ([v7 hasMuid])
  {
    v8 = [v7 muid];
  }

  else
  {
    v8 = 0;
  }

  if ([v7 hasPoiGeometry])
  {
    v9 = [(RTBluePOITileParser *)self wkbParser];
    v10 = [v7 poiGeometry];
    v11 = [v9 parsePolygonsFromData:v10];
    v12 = [v11 firstObject];
  }

  else
  {
    v12 = 0;
  }

  v13 = 0.0;
  v14 = 0.0;
  if ([v7 hasLocation])
  {
    v15 = [v7 location];
    [v15 lat];
    v14 = v16;

    v17 = [v7 location];
    [v17 lng];
    v13 = v18;
  }

  v19 = [[RTLocation alloc] initWithLatitude:0 longitude:v14 horizontalUncertainty:v13 date:-1.0];
  if ([v7 hasIsCategoryFiltered])
  {
    v20 = [v7 isCategoryFiltered];
  }

  else
  {
    v20 = 0;
  }

  if ([v7 hasIsApplePaySupported])
  {
    v21 = [v7 isApplePaySupported];
  }

  else
  {
    v21 = 0;
  }

  if ([v7 hasFullyCoversTile])
  {
    v22 = [v7 fullyCoversTile];
  }

  else
  {
    v22 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v23 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = NSStringFromSelector(a2);
      v25 = [NSNumber numberWithUnsignedLongLong:v8];
      v26 = v25;
      v27 = @"NO";
      *buf = 138413827;
      v40 = v24;
      v41 = 2112;
      if (v21)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v42 = v25;
      if (v20)
      {
        v29 = @"YES";
      }

      else
      {
        v29 = @"NO";
      }

      if (v22)
      {
        v27 = @"YES";
      }

      v43 = 2117;
      v44 = v19;
      v45 = 2112;
      v46 = v28;
      v47 = 2117;
      v48 = v12;
      v49 = 2112;
      v50 = v29;
      v51 = 2112;
      v52 = v27;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%@, muid, %@, location, %{sensitive}@, applePaySupport, %@, polygon, %{sensitive}@, isCategoryFiltered, %@, fullyCoversTile, %@", buf, 0x48u);
    }
  }

  v30 = [RTPointOfInterest alloc];
  v31 = +[NSUUID UUID];
  v32 = [v30 initWithIdentifier:v31 applePaySupport:v21 filtered:v20 fullyCoversTile:v22 location:v19 muid:v8 polygon:v12];

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

  if (a4)
  {
    *a4 = 0;
  }

  return v32;
}

- (BOOL)validateTile:(id)a3 outError:(id *)a4
{
  v5 = a3;
  if (![v5 geoTileKey])
  {
    v21 = [NSError alloc];
    v54 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithFormat:@"invalid geoTileKey data format"];
    v55 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v24 = v21;
    v25 = 103;
LABEL_21:
    v11 = [v24 initWithDomain:@"RTBluePOIErrorDomain" code:v25 userInfo:v23];

    if (a4)
    {
      v29 = v11;
      *a4 = v11;
    }

LABEL_23:

    v20 = 0;
    goto LABEL_24;
  }

  v6 = [v5 hashSalt];

  if (!v6)
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

  v7 = [v5 pointsOfInterest];
  v8 = [v7 count];

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

  v9 = [v5 hashedApToModelMapping];
  v10 = [v9 count];

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
  v11 = [v5 models];
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v47 count:16];
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
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v39 + 1) + 8 * i);
      v17 = [v16 featureToHashedApMapping];
      v18 = [v17 count];

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

        if (a4)
        {
          v38 = v37;
          *a4 = v37;
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

    v13 = [v11 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_14:

  if (a4)
  {
    *a4 = 0;
  }

  v20 = 1;
LABEL_24:

  return v20;
}

- (id)loadProtobufTile:(id)a3 cacheInfo:(id)a4 outError:(id *)a5
{
  v7 = a3;
  v219 = a4;
  v8 = [[PBDataReader alloc] initWithData:v7];
  v9 = objc_opt_new();
  v214 = v8;
  [v9 readFrom:v8];
  if ([v9 hasTileKey])
  {
    v222 = [v9 tileKey];
  }

  else
  {
    v222 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v12 = [NSNumber numberWithUnsignedLongLong:v222];
      v13 = vcvtd_n_f64_u64([v7 length], 0xAuLL);
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
      v318 = v219;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@, geoTileKey, %{sensitive}@, size, %.1f (kB), memory footprint, %.1f, cacheInfo, %@", buf, 0x34u);
    }
  }

  v231 = self;
  v215 = v7;
  v223 = [NSFileManager pathInCacheDirectory:@"BluePOIModels"];
  v257 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v227 = objc_opt_new();
  v218 = v9;
  v221 = v16;
  if ([v9 hasModelTile])
  {
    v17 = [v9 modelTile];
    v18 = [NSMutableArray alloc];
    v19 = [v17 models];
    v256 = [v18 initWithCapacity:{objc_msgSend(v19, "count")}];

    v20 = objc_opt_new();
    v304 = 0u;
    v305 = 0u;
    v306 = 0u;
    v307 = 0u;
    v238 = v17;
    obj = [v17 models];
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
              v212 = [NSNumber numberWithUnsignedLongLong:v222];
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

            if (a5)
            {
              v104 = v103;
              v105 = 0;
              *a5 = v103;
            }

            else
            {
              v105 = 0;
            }

            v106 = v214;
            goto LABEL_213;
          }

          v239 = v22;
          v24 = [NSNumber numberWithUnsignedLongLong:v222];
          v25 = [NSString stringWithFormat:@"%@-%lu.mlmodel", v24, v21];
          v26 = [v223 stringByAppendingPathComponent:v25];

          v249 = v23;
          v27 = [v23 coremlModel];
          v303 = 0;
          [v27 writeToFile:v26 options:1 error:&v303];
          v28 = v303;

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            v29 = sub_1000011A0(&qword_1000B2970);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = NSStringFromSelector(a2);
              v31 = [v23 coremlModel];
              v32 = [v31 length];
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
          v33 = [v249 labels];
          v34 = [v33 countByEnumeratingWithState:&v299 objects:v335 count:16];
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
                  objc_enumerationMutation(v33);
                }

                v38 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(*(&v299 + 1) + 8 * i) longLongValue]);
                v39 = [NSNumber numberWithUnsignedInteger:v21];
                [v20 setObject:v39 forKeyedSubscript:v38];
              }

              v35 = [v33 countByEnumeratingWithState:&v299 objects:v335 count:16];
            }

            while (v35);
          }

          v40 = objc_opt_new();
          v41 = [v249 featuresCount];
          if (v41 == [v249 hashedFeaturesCount])
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
              v54 = [v249 featuresCount];
              v55 = COERCE_DOUBLE([v249 hashedFeaturesCount]);
              *buf = 138412802;
              v310 = v53;
              v311 = 2048;
              v312 = v54;
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
    v240 = [v17 apMappings];
    v56 = [v240 countByEnumeratingWithState:&v295 objects:v332 count:16];
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
            objc_enumerationMutation(v240);
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

          v63 = [v59 accessPoint];
          [v250 setObject:v60 forKeyedSubscript:v63];
        }

        v57 = [v240 countByEnumeratingWithState:&v295 objects:v332 count:16];
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
    v234 = [v238 hashedApMappings];
    v77 = [v234 countByEnumeratingWithState:&v283 objects:v329 count:16];
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
            objc_enumerationMutation(v234);
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

          v84 = [v80 hashedAccessPoint];
          [v252 setObject:v81 forKeyedSubscript:v84];
        }

        v78 = [v234 countByEnumeratingWithState:&v283 objects:v329 count:16];
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

    v216 = [v238 singlePoiMuid];
    if ([v238 hasHashSalt])
    {
      v217 = [v238 hashSalt];
    }

    else
    {
      v217 = 0;
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
          v114 = [v113 allObjects];
          [v221 setObject:v114 forKeyedSubscript:v112];
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

                v126 = [*(*(&v263 + 1) + 8 * kk) unsignedIntegerValue];
                if (v126 < [v98 count])
                {
                  v127 = [v98 objectAtIndexedSubscript:v126];
                  v128 = [v127 identifier];
                  [v120 addObject:v128];

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
    v217 = 0;
    v216 = 0;
    v98 = 0;
  }

  v256 = v98;
  v238 = objc_opt_new();
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  v262 = 0u;
  v237 = [v9 poiMetadatas];
  v129 = [v237 countByEnumeratingWithState:&v259 objects:v323 count:16];
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
          objc_enumerationMutation(v237);
        }

        v132 = *(*(&v259 + 1) + 8 * mm);
        if ([v132 hasMuid])
        {
          v248 = [v132 muid];
        }

        else
        {
          v248 = 0;
        }

        if ([v132 hasPoiGeometry])
        {
          v133 = [(RTBluePOITileParser *)v231 wkbParser];
          v134 = [v132 poiGeometry];
          v135 = [v133 parsePolygonsFromData:v134];
          v255 = [v135 firstObject];
        }

        else
        {
          v255 = 0;
        }

        v136 = 0.0;
        v137 = 0.0;
        if ([v132 hasLocation])
        {
          v138 = [v132 location];
          [v138 lat];
          v136 = v139;

          v140 = [v132 location];
          [v140 lng];
          v137 = v141;
        }

        v142 = COERCE_DOUBLE([[RTLocation alloc] initWithLatitude:0 longitude:v136 horizontalUncertainty:v137 date:-1.0]);
        if ([v132 hasIsCategoryFiltered])
        {
          v143 = [v132 isCategoryFiltered];
        }

        else
        {
          v143 = 0;
        }

        if ([v132 hasIsApplePaySupported])
        {
          v144 = [v132 isApplePaySupported];
        }

        else
        {
          v144 = 0;
        }

        if ([v132 hasFullyCoversTile])
        {
          v145 = [v132 fullyCoversTile];
        }

        else
        {
          v145 = 0;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v146 = sub_1000011A0(&qword_1000B2970);
          if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
          {
            v147 = NSStringFromSelector(a2);
            v148 = [NSNumber numberWithUnsignedLongLong:v248];
            v149 = v148;
            *buf = 138413827;
            v150 = @"NO";
            if (v144)
            {
              v151 = @"YES";
            }

            else
            {
              v151 = @"NO";
            }

            v310 = v147;
            if (v143)
            {
              v152 = @"YES";
            }

            else
            {
              v152 = @"NO";
            }

            v311 = 2112;
            if (v145)
            {
              v150 = @"YES";
            }

            v312 = v148;
            v313 = 2117;
            v314 = v142;
            v315 = 2112;
            v316 = v151;
            v317 = 2117;
            v318 = v255;
            v319 = 2112;
            v320 = v152;
            v321 = 2112;
            v322 = v150;
            _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_INFO, "%@, muid, %@, location, %{sensitive}@, applePaySupport, %@, polygon, %{sensitive}@, isCategoryFiltered, %@, fullyCoversTile, %@", buf, 0x48u);
          }
        }

        v153 = [RTPointOfInterest alloc];
        v154 = +[NSUUID UUID];
        v155 = [v153 initWithIdentifier:v154 applePaySupport:v144 filtered:v143 fullyCoversTile:v145 location:*&v142 muid:v248 polygon:v255];

        if (v155)
        {
          [v238 addObject:v155];
        }
      }

      v130 = [v237 countByEnumeratingWithState:&v259 objects:v323 count:16];
    }

    while (v130);
  }

  v20 = objc_opt_new();
  if ([v218 hasApplePayCalibration])
  {
    v156 = [v218 applePayCalibration];
    v157 = [v156 hasLowThresholdBeforeCalibration];

    if (v157)
    {
      v158 = [v218 applePayCalibration];
      [v158 lowThresholdBeforeCalibration];
      v159 = [NSNumber numberWithDouble:?];
      [v20 setObject:v159 forKeyedSubscript:kRTBluePOITileModelCalibrationLowThresholdBeforeCalibrationApplePay];
    }

    v160 = [v218 applePayCalibration];
    v161 = [v160 hasHighThresholdBeforeCalibration];

    if (v161)
    {
      v162 = [v218 applePayCalibration];
      [v162 highThresholdBeforeCalibration];
      v163 = [NSNumber numberWithDouble:?];
      [v20 setObject:v163 forKeyedSubscript:kRTBluePOITileModelCalibrationHighThresholdBeforeCalibrationApplePay];
    }

    v164 = [v218 applePayCalibration];
    v165 = [v164 hasLowThresholdAfterCalibration];

    if (v165)
    {
      v166 = [v218 applePayCalibration];
      [v166 lowThresholdAfterCalibration];
      v167 = [NSNumber numberWithDouble:?];
      [v20 setObject:v167 forKeyedSubscript:kRTBluePOITileModelCalibrationLowThresholdAfterCalibrationApplePay];
    }

    v168 = [v218 applePayCalibration];
    v169 = [v168 hasHighThresholdAfterCalibration];

    if (v169)
    {
      v170 = [v218 applePayCalibration];
      [v170 highThresholdAfterCalibration];
      v171 = [NSNumber numberWithDouble:?];
      [v20 setObject:v171 forKeyedSubscript:kRTBluePOITileModelCalibrationHighThresholdAfterCalibrationApplePay];
    }

    v172 = [v218 applePayCalibration];
    v173 = [v172 hasHighestScore];

    if (v173)
    {
      v174 = [v218 applePayCalibration];
      [v174 highestScore];
      v175 = [NSNumber numberWithDouble:?];
      [v20 setObject:v175 forKeyedSubscript:kRTBluePOITileModelCalibrationHighestScoreApplePay];
    }
  }

  v16 = v221;
  v103 = v217;
  if ([v218 hasNonApplePayCalibration])
  {
    v176 = [v218 nonApplePayCalibration];
    v177 = [v176 hasLowThresholdBeforeCalibration];

    if (v177)
    {
      v178 = [v218 nonApplePayCalibration];
      [v178 lowThresholdBeforeCalibration];
      v179 = [NSNumber numberWithDouble:?];
      [v20 setObject:v179 forKeyedSubscript:kRTBluePOITileModelCalibrationLowThresholdBeforeCalibrationNonApplePay];
    }

    v180 = [v218 nonApplePayCalibration];
    v181 = [v180 hasHighThresholdBeforeCalibration];

    if (v181)
    {
      v182 = [v218 nonApplePayCalibration];
      [v182 highThresholdBeforeCalibration];
      v183 = [NSNumber numberWithDouble:?];
      [v20 setObject:v183 forKeyedSubscript:kRTBluePOITileModelCalibrationHighThresholdBeforeCalibrationNonApplePay];
    }

    v184 = [v218 nonApplePayCalibration];
    v185 = [v184 hasLowThresholdAfterCalibration];

    if (v185)
    {
      v186 = [v218 nonApplePayCalibration];
      [v186 lowThresholdAfterCalibration];
      v187 = [NSNumber numberWithDouble:?];
      [v20 setObject:v187 forKeyedSubscript:kRTBluePOITileModelCalibrationLowThresholdAfterCalibrationNonApplePay];
    }

    v188 = [v218 nonApplePayCalibration];
    v189 = [v188 hasHighThresholdAfterCalibration];

    if (v189)
    {
      v190 = [v218 nonApplePayCalibration];
      [v190 highThresholdAfterCalibration];
      v191 = [NSNumber numberWithDouble:?];
      [v20 setObject:v191 forKeyedSubscript:kRTBluePOITileModelCalibrationHighThresholdAfterCalibrationNonApplePay];
    }

    v192 = [v218 nonApplePayCalibration];
    v193 = [v192 hasHighestScore];

    if (v193)
    {
      v194 = [v218 nonApplePayCalibration];
      [v194 highestScore];
      v195 = [NSNumber numberWithDouble:?];
      [v20 setObject:v195 forKeyedSubscript:kRTBluePOITileModelCalibrationHighestScoreNonApplePay];
    }
  }

  v308[0] = [v219 externalKey];
  v308[1] = v196;
  obj = [NSData dataWithBytes:v308 length:16];
  v197 = [RTBluePOITile alloc];
  v198 = objc_opt_new();
  v199 = +[NSDate now];
  v200 = [v219 data];
  if ([v256 count])
  {
    v201 = [NSSet setWithArray:v256];
  }

  else
  {
    v201 = objc_opt_new();
  }

  v202 = v201;
  v203 = [v197 initWithIdentifier:v198 apToModelMapping:v221 date:v199 downloadKey:obj geoCacheInfo:v200 geoTileKey:v222 hashedApToModelMapping:-1.0 hashSalt:v227 modelCalibrationParameters:v217 models:v20 modelURLs:v201 pointsOfInterest:0 singlePOIMuid:v238 size:v216];

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
  v206 = [(RTBluePOITileParser *)v231 validateTile:v203 outError:&v258];
  v207 = v258;
  v208 = v207;
  if (v206)
  {
    if (a5)
    {
      *a5 = 0;
    }

    v105 = v203;
  }

  else if (a5)
  {
    v209 = v207;
    v105 = 0;
    *a5 = v208;
  }

  else
  {
    v105 = 0;
  }

LABEL_213:

  return v105;
}

- (id)loadProtobufTileAtPath:(id)a3 cacheInfo:(id)a4 outError:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v32 = 1;
  v11 = [(RTBluePOITileParser *)self fileManager];
  v12 = [v11 fileExistsAtPath:v9 isDirectory:&v32];
  v13 = v32;

  if (!v12 || (v13 & 1) != 0)
  {
    v18 = [NSError alloc];
    v41 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithFormat:@"tile doesn't exist"];
    v42 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v21 = [v18 initWithDomain:@"RTBluePOIErrorDomain" code:101 userInfo:v20];

    if (a5)
    {
      v22 = v21;
      v23 = 0;
      *a5 = v21;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v14 = [(RTBluePOITileParser *)self fileManager];
    v31 = 0;
    v15 = [v14 attributesOfItemAtPath:v9 error:&v31];
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
        v26 = [v17 unsignedIntegerValue];
        *buf = 138413058;
        v34 = v25;
        v35 = 2112;
        v36 = v9;
        v37 = 2048;
        v38 = vcvtd_n_f64_u64(v26, 0xAuLL);
        v39 = 2112;
        v40 = v16;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%@, path, %@, size, %.1f (kB), error, %@", buf, 0x2Au);
      }
    }

    v27 = [NSData dataWithContentsOfFile:v9];
    v30 = v16;
    v23 = [(RTBluePOITileParser *)self loadProtobufTile:v27 cacheInfo:v10 outError:&v30];
    v21 = v30;

    if (a5)
    {
      v28 = v21;
      *a5 = v21;
    }
  }

  return v23;
}

- (void)loadProtobufTileAtPath:(id)a3 handler:(id)a4
{
  v9 = 0;
  v6 = a4;
  v7 = [(RTBluePOITileParser *)self loadProtobufTileAtPath:a3 cacheInfo:0 outError:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (id)loadProtobufMetadataAtPath:(id)a3 cacheInfo:(id)a4 outError:(id *)a5
{
  v9 = a3;
  v67 = a4;
  v10 = [(RTBluePOITileParser *)self fileManager];
  v68 = 0;
  v11 = [v10 attributesOfItemAtPath:v9 error:&v68];
  v66 = v68;

  if (v11)
  {
    v12 = [v11 objectForKey:NSFileSize];
  }

  else
  {
    v12 = 0;
  }

  v13 = [NSData dataWithContentsOfFile:v9];
  v14 = [[PBDataReader alloc] initWithData:v13];
  v15 = objc_opt_new();
  [v15 readFrom:v14];
  if ([v15 hasTileKey])
  {
    v16 = [v15 tileKey];
  }

  else
  {
    v16 = 0;
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
      v20 = v19 = a5;
      [NSNumber numberWithUnsignedLongLong:v16];
      v22 = v21 = a2;
      v23 = vcvtd_n_f64_u64([v12 unsignedIntegerValue], 0xAuLL);
      +[RTRuntime footprint];
      *buf = 138413315;
      v72 = v20;
      v73 = 2112;
      v74 = v9;
      v75 = 2117;
      v76 = v22;
      v77 = 2048;
      v78 = v23;
      v79 = 2048;
      v80 = v24;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@, file, %@, geoTileKey, %{sensitive}@, size, %.1f (kB), memory footprint, %.1f", buf, 0x34u);

      a2 = v21;
      a5 = v19;
      v13 = v18;
      v14 = v61;
      v11 = v63;
    }
  }

  if (v16)
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
    v32 = v31 = a5;
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
      v36 = [v15 globalConfig];
      v37 = [v36 hasXgboostLowThreshold];

      if (v37)
      {
        v38 = [v15 globalConfig];
        [v38 xgboostLowThreshold];
        v39 = [NSNumber numberWithDouble:?];
        [v65 setObject:v39 forKeyedSubscript:kRTBluePOIMetadataModelCalibrationLowThreshold];
      }

      v40 = [v15 globalConfig];
      v41 = [v40 hasXgboostHighThreshold];

      if (v41)
      {
        v42 = [v15 globalConfig];
        [v42 xgboostHighThreshold];
        v43 = [NSNumber numberWithDouble:?];
        [v65 setObject:v43 forKeyedSubscript:kRTBluePOIMetadataModelCalibrationHighThreshold];
      }

      v44 = [v15 globalConfig];
      v45 = [v44 hasLowConfidenceJurassic];

      if (v45)
      {
        v46 = [v15 globalConfig];
        [v46 lowConfidenceJurassic];
        v47 = [NSNumber numberWithDouble:?];
        [v65 setObject:v47 forKeyedSubscript:kRTBluePOIMetadataModelCalibrationLowConfidence];
      }

      v48 = [v15 globalConfig];
      v49 = [v48 hasHigConfidenceJurassic];

      if (v49)
      {
        v50 = [v15 globalConfig];
        [v50 higConfidenceJurassic];
        v51 = [NSNumber numberWithDouble:?];
        [v65 setObject:v51 forKeyedSubscript:kRTBluePOIMetadataModelCalibrationHighConfidence];
      }
    }

    v62 = a5;
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
    v35 = [v55 initWithIdentifier:v56 categoryDenyList:v52 geoCacheInfo:v67 modelCalibrationParameters:v65];

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

    if (v62)
    {
      *v62 = 0;
    }

    v33 = v66;
  }

  return v35;
}

@end