@interface FAUpdateFamilyInviteStatusOperation
- (FAUpdateFamilyInviteStatusOperation)initWithNetworkService:(id)a3 inviteCode:(id)a4 inviteStatus:(int64_t)a5 responseFormat:(int64_t)a6 additionalRequestParameters:(id)a7;
- (id)_userActionWithInviteStatus:(int64_t)a3;
- (id)updateInviteStatus;
@end

@implementation FAUpdateFamilyInviteStatusOperation

- (FAUpdateFamilyInviteStatusOperation)initWithNetworkService:(id)a3 inviteCode:(id)a4 inviteStatus:(int64_t)a5 responseFormat:(int64_t)a6 additionalRequestParameters:(id)a7
{
  v13 = a4;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = FAUpdateFamilyInviteStatusOperation;
  v15 = [(FANetworkClient *)&v18 initWithNetworkService:a3];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_inviteCode, a4);
    v16->_inviteStatus = a5;
    objc_storeStrong(&v16->_additionalRequestParameters, a7);
    v16->_responseFormat = a6;
  }

  return v16;
}

- (id)_userActionWithInviteStatus:(int64_t)a3
{
  v3 = @"decline";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
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
  v5 = [(FAUpdateFamilyInviteStatusOperation *)self inviteCode];
  [v4 setObject:v5 forKeyedSubscript:@"inviteUrl"];

  v6 = [NSURLComponents alloc];
  v7 = [(FAUpdateFamilyInviteStatusOperation *)self inviteCode];
  v8 = [v6 initWithString:v7];

  v9 = [v8 fa_queryItemsDictionary];
  v10 = [v9 objectForKeyedSubscript:@"inviteCode"];
  [v4 setObject:v10 forKeyedSubscript:@"inviteCode"];

  [v3 setObject:v4 forKeyedSubscript:@"requestParameters"];
  v11 = [(FAUpdateFamilyInviteStatusOperation *)self _userActionWithInviteStatus:[(FAUpdateFamilyInviteStatusOperation *)self inviteStatus]];
  [v3 setObject:v11 forKeyedSubscript:@"userAction"];

  [v3 addEntriesFromDictionary:self->_additionalRequestParameters];
  v12 = objc_alloc_init(FAURLConfiguration);
  v13 = [v12 URLForEndpoint:FAURLEndpointPendingInviteActionFromMessagesV1];
  v14 = [v13 then];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100008D44;
  v24 = &unk_1000A6228;
  v25 = self;
  v26 = v3;
  v15 = v14[2];
  v16 = v3;
  v17 = v15(v14, &v21);
  v18 = [v17 then];
  v19 = (v18)[2](v18, &stru_1000A6268);

  return v19;
}

@end