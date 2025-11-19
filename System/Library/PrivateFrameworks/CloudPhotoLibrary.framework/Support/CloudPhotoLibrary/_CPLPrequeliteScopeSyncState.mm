@interface _CPLPrequeliteScopeSyncState
- (_CPLPrequeliteScopeSyncState)init;
@end

@implementation _CPLPrequeliteScopeSyncState

- (_CPLPrequeliteScopeSyncState)init
{
  v2 = [NSNumber numberWithUnsignedInteger:__CPLSupportedFeatureVersion()];
  v3 = +[CPLPrequeliteType integerType];
  v4 = [CPLPrequeliteVariable variableWithName:@"featureVersion" defaultValue:v2 type:v3];

  v5 = +[CPLPrequeliteType integerType];
  obj = [CPLPrequeliteVariable variableWithName:@"droppedSomeRecords" defaultValue:&off_10028EF20 type:v5];

  v6 = +[CPLPrequeliteType dataType];
  v31 = [CPLPrequeliteVariable variableWithName:@"transientSyncAnchor" defaultValue:0 type:v6];

  v7 = +[CPLPrequeliteType dataType];
  v8 = [CPLPrequeliteVariable variableWithName:@"syncAnchor" defaultValue:0 type:v7];

  v9 = +[CPLPrequeliteType dataType];
  v30 = [CPLPrequeliteVariable variableWithName:@"stagedSyncAnchor" defaultValue:0 type:v9];

  v10 = +[CPLPrequeliteType integerType];
  v11 = [CPLPrequeliteVariable variableWithName:@"hasFetchedInitialSyncAnchor" defaultValue:&off_10028EF20 type:v10];

  v12 = +[CPLPrequeliteType dataType];
  v28 = [CPLPrequeliteVariable variableWithName:@"initialSyncAnchor" defaultValue:0 type:v12];

  v13 = +[CPLPrequeliteType stringType];
  v27 = [CPLPrequeliteVariable variableWithName:@"classForInitialQuery" defaultValue:0 type:v13];

  v14 = +[CPLPrequeliteType dataType];
  v26 = [CPLPrequeliteVariable variableWithName:@"uploadTransportGroup" defaultValue:0 type:v14];

  v15 = +[CPLPrequeliteType dataType];
  v16 = [CPLPrequeliteVariable variableWithName:@"downloadTransportGroup" defaultValue:0 type:v15];

  v17 = +[CPLPrequeliteType dateType];
  v18 = [CPLPrequeliteVariable variableWithName:@"lastClearedPush" defaultValue:0 type:v17];

  v19 = +[CPLPrequeliteType dataType];
  v20 = [CPLPrequeliteVariable variableWithName:@"rewindSyncAnchors" defaultValue:0 type:v19];

  v21 = +[CPLPrequeliteType integerType];
  v22 = [CPLPrequeliteVariable variableWithName:@"busyState" defaultValue:&off_10028EF20 type:v21];

  [v20 setShouldNotCacheValue:1];
  v34[0] = v4;
  v34[1] = obj;
  v34[2] = v31;
  v34[3] = v8;
  v34[4] = v30;
  v34[5] = v11;
  v34[6] = v28;
  v34[7] = v27;
  v34[8] = v26;
  v34[9] = v16;
  v34[10] = v18;
  v34[11] = v20;
  v34[12] = v22;
  v23 = [NSArray arrayWithObjects:v34 count:13];
  v33.receiver = self;
  v33.super_class = _CPLPrequeliteScopeSyncState;
  v24 = [(CPLPrequeliteVariableGroup *)&v33 initWithVariables:v23];

  if (v24)
  {
    objc_storeStrong(&v24->_featureVersionVar, v4);
    objc_storeStrong(&v24->_droppedSomeRecordsVar, obj);
    objc_storeStrong(&v24->_transientSyncAnchorVar, v31);
    objc_storeStrong(&v24->_syncAnchorVar, v8);
    objc_storeStrong(&v24->_stagedSyncAnchorVar, v30);
    objc_storeStrong(&v24->_hasFetchedInitialSyncAnchorVar, v11);
    objc_storeStrong(&v24->_initialSyncAnchorVar, v28);
    objc_storeStrong(&v24->_classForInitialQueryVar, v27);
    objc_storeStrong(&v24->_uploadTransportGroupVar, v26);
    objc_storeStrong(&v24->_downloadTransportGroupVar, v16);
    objc_storeStrong(&v24->_lastClearedPushVar, v18);
    objc_storeStrong(&v24->_rewindSyncAnchorsVar, v20);
    objc_storeStrong(&v24->_busyStateVar, v22);
  }

  return v24;
}

@end