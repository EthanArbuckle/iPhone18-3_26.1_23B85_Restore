@interface _GEOLocationShiftRequester
- (_GEOLocationShiftRequester)init;
- (id)_validateResponse:(id)a3;
- (void)startWithRequest:(id)a3 traits:(id)a4 auditToken:(id)a5 completionHandler:(id)a6;
@end

@implementation _GEOLocationShiftRequester

- (id)_validateResponse:(id)a3
{
  v3 = a3;
  v4 = [v3 status];
  if (v4 == 1)
  {
    goto LABEL_5;
  }

  if (v4)
  {
    v5 = [NSError GEOErrorWithCode:-7];
    goto LABEL_7;
  }

  if ([v3 parametersCount] > 8)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = [NSError GEOErrorWithCode:-11 reason:@"Response contains too few parameters"];
LABEL_7:
  v6 = v5;
LABEL_8:

  return v6;
}

- (void)startWithRequest:(id)a3 traits:(id)a4 auditToken:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[_GEOLocationShiftRequestConfig standardConfig];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100025170;
  v16[3] = &unk_100082278;
  v17 = v10;
  v15 = v10;
  [(_GEOLocationShiftRequester *)self _startWithRequest:v13 traits:v12 auditToken:v11 config:v14 throttleToken:0 options:0 completionHandler:v16];
}

- (_GEOLocationShiftRequester)init
{
  v6.receiver = self;
  v6.super_class = _GEOLocationShiftRequester;
  v2 = [(_GEOLocationShiftRequester *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end