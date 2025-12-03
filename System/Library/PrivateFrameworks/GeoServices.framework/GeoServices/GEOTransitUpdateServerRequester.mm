@interface GEOTransitUpdateServerRequester
+ (GEOTransitUpdateServerRequester)sharedRequester;
- (void)startSimpleTransitRouteUpdateRequest:(id)request auditToken:(id)token networkActivity:(id)activity completion:(id)completion;
@end

@implementation GEOTransitUpdateServerRequester

- (void)startSimpleTransitRouteUpdateRequest:(id)request auditToken:(id)token networkActivity:(id)activity completion:(id)completion
{
  requestCopy = request;
  tokenCopy = token;
  activityCopy = activity;
  completionCopy = completion;
  if (activityCopy)
  {
    activityCopy[2](activityCopy, 1);
  }

  v14 = +[_GEOTransitRouteUpdateRequestConfig standardConfig];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100051D40;
  v17[3] = &unk_100083CE0;
  v18 = activityCopy;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = activityCopy;
  [(GEOTransitUpdateServerRequester *)self _startWithRequest:requestCopy traits:0 auditToken:tokenCopy config:v14 throttleToken:0 options:0 completionHandler:v17];
}

+ (GEOTransitUpdateServerRequester)sharedRequester
{
  if (qword_1000961B0 != -1)
  {
    dispatch_once(&qword_1000961B0, &stru_100083CB8);
  }

  v3 = qword_1000961A8;

  return v3;
}

@end