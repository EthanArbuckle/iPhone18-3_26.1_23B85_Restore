@interface FADeleteFamilyOperation
- (FADeleteFamilyOperation)initWithNetworkService:(id)service;
- (id)deleteFamily;
@end

@implementation FADeleteFamilyOperation

- (FADeleteFamilyOperation)initWithNetworkService:(id)service
{
  v4.receiver = self;
  v4.super_class = FADeleteFamilyOperation;
  return [(FANetworkClient *)&v4 initWithNetworkService:service];
}

- (id)deleteFamily
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FADeleteFamilyOperation deleteFamily request", v11, 2u);
  }

  v4 = +[AAURLConfiguration urlConfiguration];
  v5 = [v4 urlForEndpoint:@"deleteFamily"];

  networkService = [(FANetworkClient *)self networkService];
  v7 = [networkService standardPlistRequestWithUrl:v5 method:@"POST" plistBody:0];
  then = [v7 then];
  v9 = (then)[2](then, &stru_1000A62A0);

  return v9;
}

@end