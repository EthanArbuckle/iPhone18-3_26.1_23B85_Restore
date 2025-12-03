@interface DRSTaskingEventSubscriber
- (BOOL)isEqual:(id)equal;
- (DRSTaskingEventSubscriber)initWithTeamID:(id)d token:(unint64_t)token;
- (void)dealloc;
@end

@implementation DRSTaskingEventSubscriber

- (DRSTaskingEventSubscriber)initWithTeamID:(id)d token:(unint64_t)token
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13.receiver = self;
  v13.super_class = DRSTaskingEventSubscriber;
  v8 = [(DRSTaskingEventSubscriber *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_teamID, d);
    v9->_token = token;
    v10 = DPLogHandle_ServiceEventPublisher();
    if (os_signpost_enabled(v10))
    {
      *buf = 138543618;
      v15 = dCopy;
      v16 = 2048;
      tokenCopy = token;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EventSubscriberInit", "TeamID: %{public}@ token: %#llx", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = DPLogHandle_ServiceEventPublisher();
  if (os_signpost_enabled(v3))
  {
    teamID = [(DRSTaskingEventSubscriber *)self teamID];
    *buf = 138543618;
    v8 = teamID;
    v9 = 2048;
    token = [(DRSTaskingEventSubscriber *)self token];
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EventSubscriberDealloc", "TeamID: %{public}@ token: %#llx", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = DRSTaskingEventSubscriber;
  [(DRSTaskingEventSubscriber *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      token = [(DRSTaskingEventSubscriber *)self token];
      if (token == [(DRSTaskingEventSubscriber *)v5 token])
      {
        teamID = [(DRSTaskingEventSubscriber *)self teamID];
        teamID2 = [(DRSTaskingEventSubscriber *)v5 teamID];
        v9 = [teamID isEqualToString:teamID2];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end