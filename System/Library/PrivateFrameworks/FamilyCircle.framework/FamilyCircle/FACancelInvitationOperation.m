@interface FACancelInvitationOperation
- (FACancelInvitationOperation)initWithNetworkService:(id)a3 email:(id)a4 familyID:(id)a5;
- (id)cancelInvitation;
@end

@implementation FACancelInvitationOperation

- (FACancelInvitationOperation)initWithNetworkService:(id)a3 email:(id)a4 familyID:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = FACancelInvitationOperation;
  v11 = [(FANetworkClient *)&v14 initWithNetworkService:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_email, a4);
    objc_storeStrong(&v12->_familyID, a5);
  }

  return v12;
}

- (id)cancelInvitation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(FACancelInvitationOperation *)self email];
  [v3 setObject:v4 forKeyedSubscript:@"email"];

  v5 = [(FACancelInvitationOperation *)self familyID];
  [v3 setObject:v5 forKeyedSubscript:@"familyId"];

  v6 = [(FANetworkClient *)self networkService];
  v7 = [v6 standardRequestWithEndpoint:FAURLEndpointCancelInvitation method:@"POST" plistBody:v3 requestFormat:2 responseFormat:2];
  v8 = [v7 then];
  v9 = (v8)[2](v8, &stru_1000A6B10);

  return v9;
}

@end