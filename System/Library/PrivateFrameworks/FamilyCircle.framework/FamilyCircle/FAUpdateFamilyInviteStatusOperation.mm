@interface FAUpdateFamilyInviteStatusOperation
- (FAUpdateFamilyInviteStatusOperation)initWithNetworkService:(id)service inviteCode:(id)code inviteStatus:(int64_t)status responseFormat:(int64_t)format additionalRequestParameters:(id)parameters;
- (id)_userActionWithInviteStatus:(int64_t)status;
- (id)updateInviteStatus;
@end

@implementation FAUpdateFamilyInviteStatusOperation

- (FAUpdateFamilyInviteStatusOperation)initWithNetworkService:(id)service inviteCode:(id)code inviteStatus:(int64_t)status responseFormat:(int64_t)format additionalRequestParameters:(id)parameters
{
  codeCopy = code;
  parametersCopy = parameters;
  v18.receiver = self;
  v18.super_class = FAUpdateFamilyInviteStatusOperation;
  v15 = [(FANetworkClient *)&v18 initWithNetworkService:service];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_inviteCode, code);
    v16->_inviteStatus = status;
    objc_storeStrong(&v16->_additionalRequestParameters, parameters);
    v16->_responseFormat = format;
  }

  return v16;
}

- (id)_userActionWithInviteStatus:(int64_t)status
{
  v3 = @"decline";
  if (status != 2)
  {
    v3 = 0;
  }

  if (status == 1)
  {
    return @"accept";
  }

  else
  {
    return v3;
  }
}

- (id)updateInviteStatus
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[NSMutableDictionary dictionary];
  inviteCode = [(FAUpdateFamilyInviteStatusOperation *)self inviteCode];
  [v4 setObject:inviteCode forKeyedSubscript:@"inviteUrl"];

  v6 = [NSURLComponents alloc];
  inviteCode2 = [(FAUpdateFamilyInviteStatusOperation *)self inviteCode];
  v8 = [v6 initWithString:inviteCode2];

  fa_queryItemsDictionary = [v8 fa_queryItemsDictionary];
  v10 = [fa_queryItemsDictionary objectForKeyedSubscript:@"inviteCode"];
  [v4 setObject:v10 forKeyedSubscript:@"inviteCode"];

  [v3 setObject:v4 forKeyedSubscript:@"requestParameters"];
  v11 = [(FAUpdateFamilyInviteStatusOperation *)self _userActionWithInviteStatus:[(FAUpdateFamilyInviteStatusOperation *)self inviteStatus]];
  [v3 setObject:v11 forKeyedSubscript:@"userAction"];

  [v3 addEntriesFromDictionary:self->_additionalRequestParameters];
  v12 = objc_alloc_init(FAURLConfiguration);
  v13 = [v12 URLForEndpoint:FAURLEndpointPendingInviteActionFromMessagesV1];
  then = [v13 then];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100008D44;
  v24 = &unk_1000A6228;
  selfCopy = self;
  v26 = v3;
  v15 = then[2];
  v16 = v3;
  v17 = v15(then, &v21);
  then2 = [v17 then];
  v19 = (then2)[2](then2, &stru_1000A6268);

  return v19;
}

@end