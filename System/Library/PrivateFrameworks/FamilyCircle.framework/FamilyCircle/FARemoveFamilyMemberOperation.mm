@interface FARemoveFamilyMemberOperation
- (FARemoveFamilyMemberOperation)initWithNetworkService:(id)a3 dsidOfMemberToRemove:(id)a4;
- (id)removeMember;
@end

@implementation FARemoveFamilyMemberOperation

- (FARemoveFamilyMemberOperation)initWithNetworkService:(id)a3 dsidOfMemberToRemove:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FARemoveFamilyMemberOperation;
  v8 = [(FANetworkClient *)&v11 initWithNetworkService:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dsidOfMemberToRemove, a4);
  }

  return v9;
}

- (id)removeMember
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FARemoveFamilyMemberOperation removeMember request", buf, 2u);
  }

  v4 = +[NSMutableDictionary dictionary];
  v5 = [(NSNumber *)self->_dsidOfMemberToRemove description];
  [v4 setObject:v5 forKeyedSubscript:@"member-dsid"];

  v6 = [(FANetworkClient *)self networkService];
  v7 = [v6 standardPlistRequestWithEndpoint:@"removeFromFamily" method:@"POST" plistBody:v4];
  v8 = [v7 then];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004B80;
  v11[3] = &unk_1000A5ED0;
  v11[4] = self;
  v9 = (v8)[2](v8, v11);

  return v9;
}

@end