@interface DRSTaskingEventSubscriber
- (BOOL)isEqual:(id)a3;
- (DRSTaskingEventSubscriber)initWithTeamID:(id)a3 token:(unint64_t)a4;
- (void)dealloc;
@end

@implementation DRSTaskingEventSubscriber

- (DRSTaskingEventSubscriber)initWithTeamID:(id)a3 token:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v13.receiver = self;
  v13.super_class = DRSTaskingEventSubscriber;
  v8 = [(DRSTaskingEventSubscriber *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_teamID, a3);
    v9->_token = a4;
    v10 = DPLogHandle_ServiceEventPublisher();
    if (os_signpost_enabled(v10))
    {
      *buf = 138543618;
      v15 = v7;
      v16 = 2048;
      v17 = a4;
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
    v4 = [(DRSTaskingEventSubscriber *)self teamID];
    *buf = 138543618;
    v8 = v4;
    v9 = 2048;
    v10 = [(DRSTaskingEventSubscriber *)self token];
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EventSubscriberDealloc", "TeamID: %{public}@ token: %#llx", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = DRSTaskingEventSubscriber;
  [(DRSTaskingEventSubscriber *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DRSTaskingEventSubscriber *)self token];
      if (v6 == [(DRSTaskingEventSubscriber *)v5 token])
      {
        v7 = [(DRSTaskingEventSubscriber *)self teamID];
        v8 = [(DRSTaskingEventSubscriber *)v5 teamID];
        v9 = [v7 isEqualToString:v8];
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