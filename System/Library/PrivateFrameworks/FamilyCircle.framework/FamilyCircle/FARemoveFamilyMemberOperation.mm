@interface FARemoveFamilyMemberOperation
- (FARemoveFamilyMemberOperation)initWithNetworkService:(id)service dsidOfMemberToRemove:(id)remove;
- (id)removeMember;
@end

@implementation FARemoveFamilyMemberOperation

- (FARemoveFamilyMemberOperation)initWithNetworkService:(id)service dsidOfMemberToRemove:(id)remove
{
  removeCopy = remove;
  v11.receiver = self;
  v11.super_class = FARemoveFamilyMemberOperation;
  v8 = [(FANetworkClient *)&v11 initWithNetworkService:service];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dsidOfMemberToRemove, remove);
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

  networkService = [(FANetworkClient *)self networkService];
  v7 = [networkService standardPlistRequestWithEndpoint:@"removeFromFamily" method:@"POST" plistBody:v4];
  then = [v7 then];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004B80;
  v11[3] = &unk_1000A5ED0;
  v11[4] = self;
  v9 = (then)[2](then, v11);

  return v9;
}

@end