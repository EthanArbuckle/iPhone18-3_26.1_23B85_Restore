@interface HUHomeControlServiceContext
+ (id)_homeInfoFromDefaultActionURL:(id)a3;
- (CGRect)animationOriginRect;
- (HUHomeControlServiceContext)initWithAlertConfigurationContext:(id)a3;
- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)a3 defaultActionURL:(id)a4;
- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)a3 home:(id)a4 accessory:(id)a5 presentingViewController:(id)a6;
- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)a3 home:(id)a4 room:(id)a5;
- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)a3 homeIdentifier:(id)a4 accessoryIdentifier:(id)a5;
- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)a3 homeIdentifier:(id)a4 roomIdentifier:(id)a5;
- (UIViewController)presentingViewController;
- (id)_initWithUserInfo:(id)a3;
- (id)userInfo;
- (void)dealloc;
@end

@implementation HUHomeControlServiceContext

- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)a3 homeIdentifier:(id)a4 roomIdentifier:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HUHomeControlServiceContext;
  v11 = [(HUHomeControlServiceContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_homeIdentifier, a4);
    objc_storeStrong(&v12->_roomIdentifier, a5);
    v12->_serviceType = a3;
  }

  return v12;
}

- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)a3 home:(id)a4 room:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 uniqueIdentifier];
  v11 = [v10 UUIDString];
  v12 = [v9 uniqueIdentifier];
  v13 = [v12 UUIDString];
  v14 = [(HUHomeControlServiceContext *)self initWithServiceType:a3 homeIdentifier:v11 roomIdentifier:v13];

  if (v14)
  {
    v15 = [v8 name];
    homeName = v14->_homeName;
    v14->_homeName = v15;

    v17 = [v9 name];
    roomName = v14->_roomName;
    v14->_roomName = v17;
  }

  return v14;
}

- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)a3 homeIdentifier:(id)a4 accessoryIdentifier:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HUHomeControlServiceContext;
  v11 = [(HUHomeControlServiceContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_homeIdentifier, a4);
    objc_storeStrong(&v12->_accessoryIdentifier, a5);
    v12->_serviceType = a3;
  }

  return v12;
}

- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)a3 home:(id)a4 accessory:(id)a5 presentingViewController:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 uniqueIdentifier];
  v14 = [v13 UUIDString];
  v15 = [v11 uniqueIdentifier];
  v16 = [v15 UUIDString];
  v17 = [(HUHomeControlServiceContext *)self initWithServiceType:a3 homeIdentifier:v14 accessoryIdentifier:v16];

  if (v17)
  {
    v18 = [v10 name];
    homeName = v17->_homeName;
    v17->_homeName = v18;

    v20 = [v11 name];
    accessoryName = v17->_accessoryName;
    v17->_accessoryName = v20;

    objc_storeWeak(&v17->_presentingViewController, v12);
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [(HUHomeControlServiceContext *)v17 presentingViewController];
      v27 = 138413058;
      v28 = v24;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v25;
      _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "Initializing %@ with home %@, accessory name %@, presentingViewController = %@", &v27, 0x2Au);
    }
  }

  return v17;
}

- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)a3 defaultActionURL:(id)a4
{
  v7 = a4;
  v8 = [HUHomeControlServiceContext _homeInfoFromDefaultActionURL:v7];
  v9 = [v8 objectForKeyedSubscript:@"home-identifier-key"];
  v10 = [(HUHomeControlServiceContext *)self initWithServiceType:a3 homeIdentifier:v9 roomIdentifier:0];

  if (v10)
  {
    objc_storeStrong(&v10->_defaultActionURL, a4);
    v11 = [v8 objectForKeyedSubscript:@"home-name-key"];
    homeName = v10->_homeName;
    v10->_homeName = v11;
  }

  return v10;
}

- (HUHomeControlServiceContext)initWithAlertConfigurationContext:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [(HUHomeControlServiceContext *)self _initWithUserInfo:v5];

  if (v6)
  {
    v7 = [v4 actions];
    actions = v6->_actions;
    v6->_actions = v7;
  }

  return v6;
}

- (void)dealloc
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating...", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = HUHomeControlServiceContext;
  [(HUHomeControlServiceContext *)&v4 dealloc];
}

- (id)userInfo
{
  v3 = objc_opt_new();
  v4 = [(HUHomeControlServiceContext *)self homeIdentifier];

  if (v4)
  {
    v5 = [(HUHomeControlServiceContext *)self homeIdentifier];
    [v3 setObject:v5 forKeyedSubscript:@"home-identifier-key"];
  }

  v6 = [(HUHomeControlServiceContext *)self roomIdentifier];

  if (v6)
  {
    v7 = [(HUHomeControlServiceContext *)self roomIdentifier];
    [v3 setObject:v7 forKeyedSubscript:@"room-identifier-key"];
  }

  v8 = [(HUHomeControlServiceContext *)self accessoryIdentifier];

  if (v8)
  {
    v9 = [(HUHomeControlServiceContext *)self accessoryIdentifier];
    [v3 setObject:v9 forKeyedSubscript:@"accessory-identifier-key"];
  }

  v10 = [(HUHomeControlServiceContext *)self homeName];

  if (v10)
  {
    v11 = [(HUHomeControlServiceContext *)self homeName];
    [v3 setObject:v11 forKeyedSubscript:@"home-name-key"];
  }

  v12 = [(HUHomeControlServiceContext *)self roomName];

  if (v12)
  {
    v13 = [(HUHomeControlServiceContext *)self roomName];
    [v3 setObject:v13 forKeyedSubscript:@"room-name-key"];
  }

  v14 = [(HUHomeControlServiceContext *)self accessoryName];

  if (v14)
  {
    v15 = [(HUHomeControlServiceContext *)self accessoryName];
    [v3 setObject:v15 forKeyedSubscript:@"accessory-name-key"];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HUHomeControlServiceContext serviceType](self, "serviceType")}];
  [v3 setObject:v16 forKeyedSubscript:@"service-type-key"];

  v17 = [(HUHomeControlServiceContext *)self defaultActionURL];

  if (v17)
  {
    v18 = [(HUHomeControlServiceContext *)self defaultActionURL];
    v19 = [v18 absoluteString];
    [v3 setObject:v19 forKeyedSubscript:@"default-action-url-key"];
  }

  [(HUHomeControlServiceContext *)self animationOriginRect];
  if (!CGRectEqualToRect(v24, *MEMORY[0x277CBF3A0]))
  {
    [(HUHomeControlServiceContext *)self animationOriginRect];
    v20 = NSStringFromCGRect(v25);
    [v3 setObject:v20 forKeyedSubscript:@"animation-origin-rect-key"];
  }

  v21 = [v3 copy];

  return v21;
}

- (id)_initWithUserInfo:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = HUHomeControlServiceContext;
  v5 = [(HUHomeControlServiceContext *)&v27 init];
  if (!v5)
  {
    goto LABEL_32;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v21 = 0;
    v22 = 0;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:v11];
        if ([v11 isEqualToString:@"home-identifier-key"])
        {
          objc_storeStrong(&v5->_homeIdentifier, v12);
          LOBYTE(v22) = 1;
        }

        if ([v11 isEqualToString:@"room-identifier-key"])
        {
          objc_storeStrong(&v5->_roomIdentifier, v12);
        }

        if ([v11 isEqualToString:@"accessory-identifier-key"])
        {
          objc_storeStrong(&v5->_accessoryIdentifier, v12);
          BYTE4(v22) = 1;
        }

        if ([v11 isEqualToString:@"service-type-key"])
        {
          v5->_serviceType = [v12 unsignedIntValue];
          v21 = 1;
        }

        if ([v11 isEqualToString:@"home-name-key"])
        {
          objc_storeStrong(&v5->_homeName, v12);
        }

        if ([v11 isEqualToString:@"room-name-key"])
        {
          objc_storeStrong(&v5->_roomName, v12);
        }

        if ([v11 isEqualToString:@"accessory-name-key"])
        {
          objc_storeStrong(&v5->_accessoryName, v12);
        }

        if ([v11 isEqualToString:@"default-action-url-key"])
        {
          v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
          defaultActionURL = v5->_defaultActionURL;
          v5->_defaultActionURL = v13;
        }

        if ([v11 isEqualToString:@"animation-origin-rect-key"])
        {
          v5->_animationOriginRect = CGRectFromString(v12);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);

    v15 = v21 & v22;
    v16 = BYTE4(v22);
  }

  else
  {

    v16 = 0;
    v15 = 0;
  }

  v17 = [(HUHomeControlServiceContext *)v5 serviceType];
  v18 = v15 & v16;
  if (v17 != 2)
  {
    v18 = v15;
  }

  if ((v18 & 1) == 0)
  {
    v19 = 0;
  }

  else
  {
LABEL_32:
    v19 = v5;
  }

  return v19;
}

+ (id)_homeInfoFromDefaultActionURL:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACE0];
  v4 = [a3 absoluteString];
  v5 = [v3 componentsWithString:v4];

  v6 = [v5 queryItems];
  v7 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    v11 = *MEMORY[0x277CEAA10];
    v12 = *MEMORY[0x277CEA9F8];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v14 name];
        v16 = [v15 isEqualToString:v11];

        v17 = @"home-name-key";
        if ((v16 & 1) == 0)
        {
          v18 = [v14 name];
          v19 = [v18 isEqualToString:v12];

          v17 = @"home-identifier-key";
          if (!v19)
          {
            continue;
          }
        }

        v20 = [v14 value];
        [v7 setObject:v20 forKey:v17];
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  return v7;
}

- (CGRect)animationOriginRect
{
  x = self->_animationOriginRect.origin.x;
  y = self->_animationOriginRect.origin.y;
  width = self->_animationOriginRect.size.width;
  height = self->_animationOriginRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end