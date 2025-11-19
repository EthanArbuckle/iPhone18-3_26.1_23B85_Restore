@interface XRMobileAgentTeam
- (XRMobileAgentTeam)init;
- (XRMobileAgentTeam)initWithMembers:(id)a3;
@end

@implementation XRMobileAgentTeam

- (XRMobileAgentTeam)initWithMembers:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = XRMobileAgentTeam;
  v9 = [(XRMobileAgentTeam *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);
    members = v9->_members;
    v9->_members = v10;
  }

  return v9;
}

- (XRMobileAgentTeam)init
{
  v3 = objc_opt_new();
  v7 = objc_msgSend_initWithMembers_(self, v4, v3, v5, v6);

  return v7;
}

@end