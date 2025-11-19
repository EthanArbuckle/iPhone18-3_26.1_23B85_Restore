@interface MetricsLoggingIOS
- (MetricsLoggingIOS)init;
- (void)recordAssetInfo:(id)a3;
- (void)recordFindResultsMsec:(double)a3 queryType:(unint64_t)a4 requestType:(unint64_t)a5 indexId:(id)a6;
- (void)recordQueryEngagementWithUserInputLength:(unint64_t)a3 completionLength:(unint64_t)a4 result:(id)a5 rank:(unint64_t)a6 indexId:(id)a7 requestType:(unint64_t)a8 logType:(unint64_t)a9;
- (void)recordQueryEventWithLuceneResultCount:(unint64_t)a3 error:(id)a4 requestType:(unint64_t)a5 indexId:(id)a6;
- (void)recordQueryLuceneMsec:(double)a3 queryType:(unint64_t)a4 requestType:(unint64_t)a5 indexId:(id)a6;
- (void)recordTransactionSuccessfulWithUserInputLength:(unint64_t)a3 completionLength:(unint64_t)a4 indexId:(id)a5 requestType:(unint64_t)a6 logType:(unint64_t)a7;
@end

@implementation MetricsLoggingIOS

- (MetricsLoggingIOS)init
{
  v73.receiver = self;
  v73.super_class = MetricsLoggingIOS;
  v2 = [(MetricsLogging *)&v73 _init];
  if (v2)
  {
    v3 = [PETEventProperty freeValuedPropertyWithName:@"index"];
    v4 = [PETEventProperty freeValuedPropertyWithName:@"ab"];
    v72 = [PETEventProperty freeValuedPropertyWithName:@"languageTag"];
    v5 = [PETEventProperty propertyWithName:@"type" range:0 clampValues:22, 0];
    v6 = [PETEventProperty propertyWithName:@"qt" range:0 clampValues:4, 0];
    v68 = [PETEventProperty propertyWithName:@"supported" rangeMin:0 rangeMax:1];
    v69 = [PETEventProperty propertyWithName:@"cold" rangeMin:0 rangeMax:1];
    v7 = [PETDistributionEventTracker alloc];
    v84[0] = v3;
    v84[1] = v4;
    v84[2] = v5;
    v84[3] = v6;
    v8 = v5;
    v70 = v6;
    v9 = [NSArray arrayWithObjects:v84 count:4];
    v10 = [v7 initWithFeatureId:? event:? registerProperties:?];
    findResultsMsec = v2->_findResultsMsec;
    v2->_findResultsMsec = v10;

    v12 = [PETDistributionEventTracker alloc];
    v83[0] = v3;
    v83[1] = v4;
    v83[2] = v8;
    v83[3] = v6;
    v13 = [NSArray arrayWithObjects:v83 count:4];
    v14 = [v12 initWithFeatureId:@"Context" event:@"timing_lucene" registerProperties:v13];
    queryLuceneMsec = v2->_queryLuceneMsec;
    v2->_queryLuceneMsec = v14;

    v16 = [PETDistributionEventTracker alloc];
    v82[0] = v3;
    v82[1] = v4;
    v82[2] = v8;
    v71 = v8;
    v17 = [NSArray arrayWithObjects:v82 count:3];
    v18 = [v16 initWithFeatureId:@"Context" event:@"inputLength" registerProperties:v17];
    inputLength = v2->_inputLength;
    v2->_inputLength = v18;

    v20 = [PETScalarEventTracker alloc];
    v81[0] = v3;
    v81[1] = v4;
    v81[2] = v8;
    v21 = [PETEventProperty propertyWithName:@"num" range:0 clampValues:6, 1];
    v81[3] = v21;
    v22 = [PETEventProperty propertyWithName:@"err" range:0 clampValues:11, 1];
    v81[4] = v22;
    v23 = [NSArray arrayWithObjects:v81 count:5];
    v24 = [v20 initWithFeatureId:@"Context" event:@"queries" registerProperties:v23];
    queryEvent = v2->_queryEvent;
    v2->_queryEvent = v24;

    v26 = [PETScalarEventTracker alloc];
    v80[0] = v3;
    v80[1] = v4;
    v27 = [PETEventProperty propertyWithName:@"num" range:0 clampValues:6, 1];
    v80[2] = v27;
    v28 = [PETEventProperty propertyWithName:@"max" range:0 clampValues:6, 1];
    v80[3] = v28;
    v29 = [PETEventProperty propertyWithName:@"so" range:0 clampValues:2, 1];
    v80[4] = v29;
    v30 = [PETEventProperty propertyWithName:@"uql" range:0 clampValues:6, 1];
    v80[5] = v30;
    v31 = [NSArray arrayWithObjects:v80 count:6];
    v32 = [v26 initWithFeatureId:@"Context" event:@"shown" registerProperties:v31];
    shownEvent = v2->_shownEvent;
    v2->_shownEvent = v32;

    v34 = [PETScalarEventTracker alloc];
    v79[0] = v3;
    v79[1] = v4;
    v35 = [PETEventProperty propertyWithName:@"uql" range:0 clampValues:6, 1];
    v79[2] = v35;
    v36 = [PETEventProperty propertyWithName:@"rank" range:0 clampValues:6, 1];
    v79[3] = v36;
    v37 = [NSArray arrayWithObjects:v79 count:4];
    v38 = [v34 initWithFeatureId:@"Context" event:@"engagement" registerProperties:v37];
    engagementEvent = v2->_engagementEvent;
    v2->_engagementEvent = v38;

    v40 = [PETScalarEventTracker alloc];
    v78[0] = v3;
    v78[1] = v4;
    v41 = [PETEventProperty propertyWithName:@"uql" range:0 clampValues:6, 1];
    v78[2] = v41;
    v42 = [NSArray arrayWithObjects:v78 count:3];
    v43 = [v40 initWithFeatureId:@"Context" event:@"transaction" registerProperties:v42];
    transactionEvent = v2->_transactionEvent;
    v2->_transactionEvent = v43;

    v45 = [PETScalarEventTracker alloc];
    v77[0] = v3;
    v77[1] = v4;
    v77[2] = v71;
    v46 = [PETEventProperty propertyWithName:@"success" rangeMin:0 rangeMax:2];
    v77[3] = v46;
    v47 = [PETEventProperty propertyWithName:@"lookType" rangeMin:0 rangeMax:1];
    v77[4] = v47;
    v48 = [NSArray arrayWithObjects:v77 count:5];
    v49 = [v45 initWithFeatureId:@"Context" event:@"urlLookup" registerProperties:v48];
    urlLookupEvent = v2->_urlLookupEvent;
    v2->_urlLookupEvent = v49;

    v51 = [PETScalarEventTracker alloc];
    v76[0] = v3;
    v76[1] = v4;
    v76[2] = v72;
    v76[3] = v68;
    v52 = [NSArray arrayWithObjects:v76 count:4];
    v53 = [v51 initWithFeatureId:@"Context" event:@"language" registerProperties:v52];
    languageSupportedEvent = v2->_languageSupportedEvent;
    v2->_languageSupportedEvent = v53;

    v55 = [PETScalarEventTracker alloc];
    v75[0] = v3;
    v75[1] = v4;
    v75[2] = v69;
    v56 = [NSArray arrayWithObjects:v75 count:3];
    v57 = [v55 initWithFeatureId:@"Context" event:@"findResultsTimeout" registerProperties:v56];
    findResultsTimeoutEvent = v2->_findResultsTimeoutEvent;
    v2->_findResultsTimeoutEvent = v57;

    v59 = [PETScalarEventTracker alloc];
    v74[0] = v3;
    v74[1] = v4;
    v74[2] = v69;
    v60 = [NSArray arrayWithObjects:v74 count:3];
    v61 = [v59 initWithFeatureId:@"Context" event:@"findResultsSlow" registerProperties:v60];
    findResultsSlowEvent = v2->_findResultsSlowEvent;
    v2->_findResultsSlowEvent = v61;

    v63 = [[_DPStringRecorder alloc] initWithKey:@"com.apple.contextkit.TopicShown"];
    dpShownRecorder = v2->_dpShownRecorder;
    v2->_dpShownRecorder = v63;

    v65 = [[_DPStringRecorder alloc] initWithKey:@"com.apple.contextkit.TopicInteracted"];
    dpEngagedRecorder = v2->_dpEngagedRecorder;
    v2->_dpEngagedRecorder = v65;
  }

  return v2;
}

- (void)recordFindResultsMsec:(double)a3 queryType:(unint64_t)a4 requestType:(unint64_t)a5 indexId:(id)a6
{
  v10 = a6;
  if (a5 != 3)
  {
    v16.receiver = self;
    v16.super_class = MetricsLoggingIOS;
    [(MetricsLogging *)&v16 recordFindResultsMsec:a4 queryType:a5 requestType:v10 indexId:a3];
    if (a5 - 6 >= 3)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10029A494;
      v11[3] = &unk_100483AA0;
      v11[4] = self;
      v12 = v10;
      v13 = a5;
      v14 = a4;
      v15 = a3;
      [(MetricsLogging *)self runInBackground:v11];
    }
  }
}

- (void)recordQueryLuceneMsec:(double)a3 queryType:(unint64_t)a4 requestType:(unint64_t)a5 indexId:(id)a6
{
  v10 = a6;
  if (a5 != 3)
  {
    v16.receiver = self;
    v16.super_class = MetricsLoggingIOS;
    [(MetricsLogging *)&v16 recordQueryLuceneMsec:a4 queryType:a5 requestType:v10 indexId:a3];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10029A72C;
    v11[3] = &unk_100483AA0;
    v11[4] = self;
    v12 = v10;
    v13 = a5;
    v14 = a4;
    v15 = a3;
    [(MetricsLogging *)self runInBackground:v11];
  }
}

- (void)recordQueryEventWithLuceneResultCount:(unint64_t)a3 error:(id)a4 requestType:(unint64_t)a5 indexId:(id)a6
{
  v10 = a4;
  v11 = a6;
  if (a5 != 3)
  {
    v21.receiver = self;
    v21.super_class = MetricsLoggingIOS;
    [(MetricsLogging *)&v21 recordQueryEventWithLuceneResultCount:a3 error:v10 requestType:a5 indexId:v11];
    if (v10)
    {
      v12 = [v10 domain];
      v13 = ContextKitErrorDomain;

      if (v12 == v13)
      {
        v15 = [v10 code];
        if (v15 >= 0)
        {
          v14 = v15;
        }

        else
        {
          v14 = -v15;
        }
      }

      else
      {
        v14 = 8;
      }
    }

    else
    {
      v14 = 0;
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10029ACC4;
    v16[3] = &unk_100483AA0;
    v16[4] = self;
    v17 = v11;
    v18 = a5;
    v19 = a3;
    v20 = v14;
    [(MetricsLogging *)self runInBackground:v16];
  }
}

- (void)recordQueryEngagementWithUserInputLength:(unint64_t)a3 completionLength:(unint64_t)a4 result:(id)a5 rank:(unint64_t)a6 indexId:(id)a7 requestType:(unint64_t)a8 logType:(unint64_t)a9
{
  v15 = a5;
  v16 = a7;
  if (a9)
  {
    v17 = 1;
  }

  else
  {
    v17 = a8 > 0x12;
  }

  if (!v17 && ((1 << a8) & 0x6A807) != 0)
  {
    v25.receiver = self;
    v25.super_class = MetricsLoggingIOS;
    [(MetricsLogging *)&v25 recordQueryEngagementWithUserInputLength:a3 completionLength:a4 result:v15 rank:a6 indexId:v16 requestType:a8 logType:0];
    if (a3 >= 5)
    {
      a3 = 5;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10029B258;
    v19[3] = &unk_100483B18;
    v19[4] = self;
    v20 = v16;
    v22 = a8;
    v23 = a3;
    v24 = a6;
    v21 = v15;
    [(MetricsLogging *)self runInBackground:v19];
  }
}

- (void)recordTransactionSuccessfulWithUserInputLength:(unint64_t)a3 completionLength:(unint64_t)a4 indexId:(id)a5 requestType:(unint64_t)a6 logType:(unint64_t)a7
{
  v12 = a5;
  if (!a7 && a6 <= 0x12 && ((1 << a6) & 0x6A807) != 0)
  {
    v17.receiver = self;
    v17.super_class = MetricsLoggingIOS;
    [(MetricsLogging *)&v17 recordTransactionSuccessfulWithUserInputLength:a3 completionLength:a4 indexId:v12 requestType:a6 logType:0];
    if (a3 >= 5)
    {
      a3 = 5;
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10029B508;
    v13[3] = &unk_100483B40;
    v13[4] = self;
    v14 = v12;
    v15 = a6;
    v16 = a3;
    [(MetricsLogging *)self runInBackground:v13];
  }
}

- (void)recordAssetInfo:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10029B69C;
  v5[3] = &unk_100483B68;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(MetricsLogging *)self runInBackground:v5];
}

@end