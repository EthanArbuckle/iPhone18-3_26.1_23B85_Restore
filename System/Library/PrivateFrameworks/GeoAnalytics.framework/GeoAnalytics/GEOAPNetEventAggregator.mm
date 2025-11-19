@interface GEOAPNetEventAggregator
+ (id)sharedAggregator;
- (void)_computeDistributionStatsOver:(id)a3 statsResultsBlock:(id)a4;
- (void)runAggregation;
- (void)runAggregationForDate:(id)a3;
@end

@implementation GEOAPNetEventAggregator

- (void)runAggregation
{
  v3 = sub_10000776C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "starting aggregation", buf, 2u);
  }

  v4 = +[GEOReferenceTimeManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000077C0;
  v6[3] = &unk_10003C7A0;
  v6[4] = self;
  [v4 referenceTimeResult:v6];

  v5 = sub_10000776C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "finished aggregation", buf, 2u);
  }
}

- (void)runAggregationForDate:(id)a3
{
  v4 = a3;
  v5 = sub_10000776C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v71 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "run aggregation for date '%@'", buf, 0xCu);
  }

  v6 = +[GEOAnalyticsDataService sharedService];
  v7 = [v6 networkEventFileDescriptorForRepresentativeDate:v4];

  if ((v7 & 0x80000000) != 0)
  {
    v8 = sub_10000776C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "no data to aggregate", buf, 2u);
    }
  }

  else
  {
    v8 = [[GEONetworkEventFile alloc] initForReadWithFileDescriptor:v7];
    if (v8)
    {
      v44 = v4;
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_100008424;
      v66[3] = &unk_10003C750;
      v9 = objc_alloc_init(NSMutableDictionary);
      v67 = v9;
      v43 = v8;
      [v8 unsafe_readNetworkEventDataWithVisitorBlock:v66];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v10 = v9;
      v47 = [v10 countByEnumeratingWithState:&v62 objects:v69 count:16];
      if (v47)
      {
        v45 = *v63;
        v46 = v10;
        do
        {
          v11 = 0;
          do
          {
            if (*v63 != v45)
            {
              objc_enumerationMutation(v10);
            }

            v48 = v11;
            v12 = [v10 objectForKeyedSubscript:*(*(&v62 + 1) + 8 * v11)];
            v50 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v13 = v12;
            v51 = [v13 countByEnumeratingWithState:&v58 objects:v68 count:16];
            if (v51)
            {
              v49 = *v59;
              do
              {
                for (i = 0; i != v51; i = i + 1)
                {
                  if (*v59 != v49)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v15 = [v13 objectForKeyedSubscript:*(*(&v58 + 1) + 8 * i)];
                  v16 = objc_alloc_init(GEONetEventDimensionalGrouping);
                  v17 = [v15 objectForKeyedSubscript:@"y"];
                  [v16 setYear:{objc_msgSend(v17, "unsignedIntValue")}];

                  v18 = [v15 objectForKeyedSubscript:@"m"];
                  [v16 setMonth:{objc_msgSend(v18, "unsignedIntValue")}];

                  v19 = [v15 objectForKeyedSubscript:@"d"];
                  [v16 setDay:{objc_msgSend(v19, "unsignedIntValue")}];

                  v20 = [v15 objectForKeyedSubscript:@"c"];
                  [v16 setUsedCellular:{objc_msgSend(v20, "BOOLValue")}];

                  v21 = [v15 objectForKeyedSubscript:@"n"];
                  [v16 setNetworkService:{objc_msgSend(v21, "intValue")}];

                  v22 = [v15 objectForKeyedSubscript:@"raid"];
                  [v16 setRequestingAppId:v22];

                  v23 = [v15 objectForKeyedSubscript:@"aid"];
                  [v16 setAppId:v23];

                  v24 = [v15 objectForKeyedSubscript:@"ip"];
                  [v16 setSvcIp:v24];

                  v25 = [v15 objectForKeyedSubscript:@"ed"];
                  [v16 setErrorDomain:v25];

                  v26 = [v15 objectForKeyedSubscript:@"me"];
                  [v16 setManifestEnv:v26];

                  v27 = [v15 objectForKeyedSubscript:@"cc"];
                  [v16 setCountryCode:v27];

                  v28 = [v15 objectForKeyedSubscript:@"cr"];
                  [v16 setReusedConnection:{objc_msgSend(v28, "BOOLValue")}];

                  v29 = [v15 objectForKeyedSubscript:@"ubu"];
                  [v16 setIsBackground:{objc_msgSend(v29, "BOOLValue")}];

                  v30 = [v15 objectForKeyedSubscript:@"p"];
                  v31 = v30;
                  if (v30)
                  {
                    [v16 setPlaceType:{objc_msgSend(v30, "intValue")}];
                  }

                  v32 = [v15 objectForKeyedSubscript:@"ec"];

                  if (v32)
                  {
                    [v16 setErrorCode:{objc_msgSend(v32, "intValue")}];
                  }

                  v33 = [v15 objectForKeyedSubscript:@"tsi"];

                  if (v33)
                  {
                    [v16 setTileSetId:{objc_msgSend(v33, "unsignedIntValue")}];
                  }

                  v34 = [v15 objectForKeyedSubscript:@"tss"];

                  if (v34)
                  {
                    [v16 setTileSetStyle:{objc_msgSend(v34, "intValue")}];
                  }

                  v35 = [v15 objectForKeyedSubscript:@"hc"];

                  if (v35)
                  {
                    [v16 setHttpResponseCode:{objc_msgSend(v35, "unsignedIntValue")}];
                  }

                  v36 = [v15 objectForKeyedSubscript:@"dsid"];

                  if (v36)
                  {
                    [v16 setDataSetId:{objc_msgSend(v36, "unsignedIntValue")}];
                  }

                  v37 = [v15 objectForKeyedSubscript:@"L"];
                  [v16 setEventCount:{objc_msgSend(v37, "count")}];
                  v56[0] = _NSConcreteStackBlock;
                  v56[1] = 3221225472;
                  v56[2] = sub_100009150;
                  v56[3] = &unk_10003C778;
                  v38 = v16;
                  v57 = v38;
                  [(GEOAPNetEventAggregator *)self _computeDistributionStatsOver:v37 statsResultsBlock:v56];
                  v39 = [v15 objectForKeyedSubscript:@"tx"];
                  v54[0] = _NSConcreteStackBlock;
                  v54[1] = 3221225472;
                  v54[2] = sub_100009318;
                  v54[3] = &unk_10003C778;
                  v40 = v38;
                  v55 = v40;
                  [(GEOAPNetEventAggregator *)self _computeDistributionStatsOver:v39 statsResultsBlock:v54];
                  v41 = [v15 objectForKeyedSubscript:@"rx"];
                  v52[0] = _NSConcreteStackBlock;
                  v52[1] = 3221225472;
                  v52[2] = sub_1000094E0;
                  v52[3] = &unk_10003C778;
                  v53 = v40;
                  v42 = v40;
                  [(GEOAPNetEventAggregator *)self _computeDistributionStatsOver:v41 statsResultsBlock:v52];
                  [v50 addObject:v42];
                }

                v51 = [v13 countByEnumeratingWithState:&v58 objects:v68 count:16];
              }

              while (v51);
            }

            [GEOAPPortal captureNetEventSummaryWithGroups:v50 additionalStates:0 providedDropRate:0 completionQueue:0 completionBlock:0];
            v11 = v48 + 1;
            v10 = v46;
          }

          while ((v48 + 1) != v47);
          v47 = [v46 countByEnumeratingWithState:&v62 objects:v69 count:16];
        }

        while (v47);
      }

      v8 = v43;
      v4 = v44;
    }

    else
    {
      v10 = sub_10000776C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "unable to initialize data", buf, 2u);
      }
    }
  }
}

- (void)_computeDistributionStatsOver:(id)a3 statsResultsBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v5 sortedArrayUsingComparator:&stru_10003C728];
    v8 = [v7 count];
    v9 = [v7 firstObject];
    [v9 doubleValue];
    v39 = v10;

    v11 = [v7 lastObject];
    [v11 doubleValue];
    v38 = v12;

    v13 = [v7 objectAtIndexedSubscript:(v8 * 0.1)];
    [v13 doubleValue];
    v15 = v14;

    v16 = [v7 objectAtIndexedSubscript:{vcvtd_n_f64_u64(v8, 2uLL)}];
    [v16 doubleValue];
    v18 = v17;

    v19 = [v7 objectAtIndexedSubscript:{vcvtd_n_f64_u64(v8, 1uLL)}];
    [v19 doubleValue];
    v21 = v20;

    v22 = [v7 objectAtIndexedSubscript:(v8 * 0.75)];
    [v22 doubleValue];
    v24 = v23;

    v25 = [v7 objectAtIndexedSubscript:(v8 * 0.9)];
    [v25 doubleValue];
    v27 = v26;

    v28 = [v7 objectAtIndexedSubscript:(v8 * 0.99)];
    [v28 doubleValue];
    v30 = v29;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v31 = v5;
    v32 = [v31 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v41;
      v35 = 0.0;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v41 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [*(*(&v40 + 1) + 8 * i) doubleValue];
          v35 = v35 + v37;
        }

        v33 = [v31 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v33);
    }

    else
    {
      v35 = 0.0;
    }

    v6[2](v6, v8, v35 / v8, v39, v38, v15, v18, v21, v24, v27, v30);
  }

  else
  {
    v6[2](v6, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
  }
}

+ (id)sharedAggregator
{
  if (qword_1000530D0 != -1)
  {
    dispatch_once(&qword_1000530D0, &stru_10003C6E8);
  }

  v3 = qword_1000530C8;

  return v3;
}

@end