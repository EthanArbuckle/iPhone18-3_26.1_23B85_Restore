@interface _GEOExperimentServiceRequester
+ (id)sharedInstance;
- (void)startWithRequest:(id)a3 traits:(id)a4 completionHandler:(id)a5;
@end

@implementation _GEOExperimentServiceRequester

- (void)startWithRequest:(id)a3 traits:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = GEOGreenTeaGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO) && [v8 hasGreenTeaWithValue:1])
  {
    GEOGreenTeaLog();
  }

  v12 = +[GEOApplicationAuditToken currentProcessAuditToken];
  v13 = +[_GEOExperimentServiceRequestConfig standardConfig];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007384;
  v15[3] = &unk_100082278;
  v16 = v9;
  v14 = v9;
  [(_GEOExperimentServiceRequester *)self _startWithRequest:v8 traits:v10 auditToken:v12 config:v13 throttleToken:0 options:0 completionHandler:v15];
}

+ (id)sharedInstance
{
  if (qword_100095F78 != -1)
  {
    dispatch_once(&qword_100095F78, &stru_1000817B8);
  }

  v3 = qword_100095F80;

  return v3;
}

@end