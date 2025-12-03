@interface _GEOLocationShiftRequester
- (_GEOLocationShiftRequester)init;
- (id)_validateResponse:(id)response;
- (void)startWithRequest:(id)request traits:(id)traits auditToken:(id)token completionHandler:(id)handler;
@end

@implementation _GEOLocationShiftRequester

- (id)_validateResponse:(id)response
{
  responseCopy = response;
  status = [responseCopy status];
  if (status == 1)
  {
    goto LABEL_5;
  }

  if (status)
  {
    v5 = [NSError GEOErrorWithCode:-7];
    goto LABEL_7;
  }

  if ([responseCopy parametersCount] > 8)
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

- (void)startWithRequest:(id)request traits:(id)traits auditToken:(id)token completionHandler:(id)handler
{
  handlerCopy = handler;
  tokenCopy = token;
  traitsCopy = traits;
  requestCopy = request;
  v14 = +[_GEOLocationShiftRequestConfig standardConfig];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100025170;
  v16[3] = &unk_100082278;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [(_GEOLocationShiftRequester *)self _startWithRequest:requestCopy traits:traitsCopy auditToken:tokenCopy config:v14 throttleToken:0 options:0 completionHandler:v16];
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