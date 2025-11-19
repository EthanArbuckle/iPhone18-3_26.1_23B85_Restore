@interface GEOImageServiceServerRequester
+ (GEOImageServiceServerRequester)sharedRequester;
- (void)startSimpleImageServiceRequest:(id)a3 auditToken:(id)a4 finished:(id)a5 networkActivity:(id)a6 error:(id)a7;
@end

@implementation GEOImageServiceServerRequester

- (void)startSimpleImageServiceRequest:(id)a3 auditToken:(id)a4 finished:(id)a5 networkActivity:(id)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v15)
  {
    v15[2](v15, 1);
  }

  v17 = +[_GEOImageServiceRequestConfig standardConfig];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100043334;
  v21[3] = &unk_100083DD0;
  v22 = v15;
  v23 = v14;
  v24 = v16;
  v18 = v16;
  v19 = v14;
  v20 = v15;
  [(GEOImageServiceServerRequester *)self _startWithRequest:v12 traits:0 auditToken:v13 config:v17 throttleToken:0 options:0 completionHandler:v21];
}

+ (GEOImageServiceServerRequester)sharedRequester
{
  if (qword_100096130 != -1)
  {
    dispatch_once(&qword_100096130, &stru_100083318);
  }

  v3 = qword_100096128;

  return v3;
}

@end