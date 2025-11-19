@interface GEOTransitUpdateServerRequester
+ (GEOTransitUpdateServerRequester)sharedRequester;
- (void)startSimpleTransitRouteUpdateRequest:(id)a3 auditToken:(id)a4 networkActivity:(id)a5 completion:(id)a6;
@end

@implementation GEOTransitUpdateServerRequester

- (void)startSimpleTransitRouteUpdateRequest:(id)a3 auditToken:(id)a4 networkActivity:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12)
  {
    v12[2](v12, 1);
  }

  v14 = +[_GEOTransitRouteUpdateRequestConfig standardConfig];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100051D40;
  v17[3] = &unk_100083CE0;
  v18 = v12;
  v19 = v13;
  v15 = v13;
  v16 = v12;
  [(GEOTransitUpdateServerRequester *)self _startWithRequest:v10 traits:0 auditToken:v11 config:v14 throttleToken:0 options:0 completionHandler:v17];
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