@interface GEOImageServiceServerRequester
+ (GEOImageServiceServerRequester)sharedRequester;
- (void)startSimpleImageServiceRequest:(id)request auditToken:(id)token finished:(id)finished networkActivity:(id)activity error:(id)error;
@end

@implementation GEOImageServiceServerRequester

- (void)startSimpleImageServiceRequest:(id)request auditToken:(id)token finished:(id)finished networkActivity:(id)activity error:(id)error
{
  requestCopy = request;
  tokenCopy = token;
  finishedCopy = finished;
  activityCopy = activity;
  errorCopy = error;
  if (activityCopy)
  {
    activityCopy[2](activityCopy, 1);
  }

  v17 = +[_GEOImageServiceRequestConfig standardConfig];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100043334;
  v21[3] = &unk_100083DD0;
  v22 = activityCopy;
  v23 = finishedCopy;
  v24 = errorCopy;
  v18 = errorCopy;
  v19 = finishedCopy;
  v20 = activityCopy;
  [(GEOImageServiceServerRequester *)self _startWithRequest:requestCopy traits:0 auditToken:tokenCopy config:v17 throttleToken:0 options:0 completionHandler:v21];
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