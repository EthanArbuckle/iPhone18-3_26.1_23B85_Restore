@interface FACancelInvitationOperation
- (FACancelInvitationOperation)initWithNetworkService:(id)service email:(id)email familyID:(id)d;
- (id)cancelInvitation;
@end

@implementation FACancelInvitationOperation

- (FACancelInvitationOperation)initWithNetworkService:(id)service email:(id)email familyID:(id)d
{
  emailCopy = email;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = FACancelInvitationOperation;
  v11 = [(FANetworkClient *)&v14 initWithNetworkService:service];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_email, email);
    objc_storeStrong(&v12->_familyID, d);
  }

  return v12;
}

- (id)cancelInvitation
{
  v3 = +[NSMutableDictionary dictionary];
  email = [(FACancelInvitationOperation *)self email];
  [v3 setObject:email forKeyedSubscript:@"email"];

  familyID = [(FACancelInvitationOperation *)self familyID];
  [v3 setObject:familyID forKeyedSubscript:@"familyId"];

  networkService = [(FANetworkClient *)self networkService];
  v7 = [networkService standardRequestWithEndpoint:FAURLEndpointCancelInvitation method:@"POST" plistBody:v3 requestFormat:2 responseFormat:2];
  then = [v7 then];
  v9 = (then)[2](then, &stru_1000A6B10);

  return v9;
}

@end