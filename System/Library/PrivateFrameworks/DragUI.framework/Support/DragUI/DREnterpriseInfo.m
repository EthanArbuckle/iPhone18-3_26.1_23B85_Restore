@interface DREnterpriseInfo
+ (id)sharedInstance;
- (DREnterpriseInfo)init;
- (void)updateMDMName;
@end

@implementation DREnterpriseInfo

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024C74;
  block[3] = &unk_100056158;
  block[4] = a1;
  if (qword_1000637E8 != -1)
  {
    dispatch_once(&qword_1000637E8, block);
  }

  v2 = qword_1000637E0;

  return v2;
}

- (DREnterpriseInfo)init
{
  v11.receiver = self;
  v11.super_class = DREnterpriseInfo;
  v2 = [(DREnterpriseInfo *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(DREnterpriseInfo *)v2 updateMDMName];
    out_token = 0;
    objc_initWeak(&location, v3);
    v4 = [MDMManagingOrgInfoChangedNotification cStringUsingEncoding:4];
    v5 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100024DE0;
    handler[3] = &unk_100056180;
    objc_copyWeak(&v8, &location);
    notify_register_dispatch(v4, &out_token, &_dispatch_main_q, handler);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)updateMDMName
{
  v6 = +[MCProfileConnection sharedConnection];
  v3 = [v6 managingOrganizationInformation];
  v4 = [v3 objectForKeyedSubscript:kMCCCOrganizationNameKey];
  orgName = self->_orgName;
  self->_orgName = v4;
}

@end