@interface HUHomeControlServiceContext
+ (id)_homeInfoFromDefaultActionURL:(id)l;
- (CGRect)animationOriginRect;
- (HUHomeControlServiceContext)initWithAlertConfigurationContext:(id)context;
- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)type defaultActionURL:(id)l;
- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)type home:(id)home accessory:(id)accessory presentingViewController:(id)controller;
- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)type home:(id)home room:(id)room;
- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)type homeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier;
- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)type homeIdentifier:(id)identifier roomIdentifier:(id)roomIdentifier;
- (UIViewController)presentingViewController;
- (id)_initWithUserInfo:(id)info;
- (id)userInfo;
- (void)dealloc;
@end

@implementation HUHomeControlServiceContext

- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)type homeIdentifier:(id)identifier roomIdentifier:(id)roomIdentifier
{
  identifierCopy = identifier;
  roomIdentifierCopy = roomIdentifier;
  v14.receiver = self;
  v14.super_class = HUHomeControlServiceContext;
  v11 = [(HUHomeControlServiceContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_homeIdentifier, identifier);
    objc_storeStrong(&v12->_roomIdentifier, roomIdentifier);
    v12->_serviceType = type;
  }

  return v12;
}

- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)type home:(id)home room:(id)room
{
  homeCopy = home;
  roomCopy = room;
  uniqueIdentifier = [homeCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  uniqueIdentifier2 = [roomCopy uniqueIdentifier];
  uUIDString2 = [uniqueIdentifier2 UUIDString];
  v14 = [(HUHomeControlServiceContext *)self initWithServiceType:type homeIdentifier:uUIDString roomIdentifier:uUIDString2];

  if (v14)
  {
    name = [homeCopy name];
    homeName = v14->_homeName;
    v14->_homeName = name;

    name2 = [roomCopy name];
    roomName = v14->_roomName;
    v14->_roomName = name2;
  }

  return v14;
}

- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)type homeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier
{
  identifierCopy = identifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  v14.receiver = self;
  v14.super_class = HUHomeControlServiceContext;
  v11 = [(HUHomeControlServiceContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_homeIdentifier, identifier);
    objc_storeStrong(&v12->_accessoryIdentifier, accessoryIdentifier);
    v12->_serviceType = type;
  }

  return v12;
}

- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)type home:(id)home accessory:(id)accessory presentingViewController:(id)controller
{
  v35 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  accessoryCopy = accessory;
  controllerCopy = controller;
  uniqueIdentifier = [homeCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  uniqueIdentifier2 = [accessoryCopy uniqueIdentifier];
  uUIDString2 = [uniqueIdentifier2 UUIDString];
  v17 = [(HUHomeControlServiceContext *)self initWithServiceType:type homeIdentifier:uUIDString accessoryIdentifier:uUIDString2];

  if (v17)
  {
    name = [homeCopy name];
    homeName = v17->_homeName;
    v17->_homeName = name;

    name2 = [accessoryCopy name];
    accessoryName = v17->_accessoryName;
    v17->_accessoryName = name2;

    objc_storeWeak(&v17->_presentingViewController, controllerCopy);
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      presentingViewController = [(HUHomeControlServiceContext *)v17 presentingViewController];
      v27 = 138413058;
      v28 = v24;
      v29 = 2112;
      v30 = homeCopy;
      v31 = 2112;
      v32 = accessoryCopy;
      v33 = 2112;
      v34 = presentingViewController;
      _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "Initializing %@ with home %@, accessory name %@, presentingViewController = %@", &v27, 0x2Au);
    }
  }

  return v17;
}

- (HUHomeControlServiceContext)initWithServiceType:(unint64_t)type defaultActionURL:(id)l
{
  lCopy = l;
  v8 = [HUHomeControlServiceContext _homeInfoFromDefaultActionURL:lCopy];
  v9 = [v8 objectForKeyedSubscript:@"home-identifier-key"];
  v10 = [(HUHomeControlServiceContext *)self initWithServiceType:type homeIdentifier:v9 roomIdentifier:0];

  if (v10)
  {
    objc_storeStrong(&v10->_defaultActionURL, l);
    v11 = [v8 objectForKeyedSubscript:@"home-name-key"];
    homeName = v10->_homeName;
    v10->_homeName = v11;
  }

  return v10;
}

- (HUHomeControlServiceContext)initWithAlertConfigurationContext:(id)context
{
  contextCopy = context;
  userInfo = [contextCopy userInfo];
  v6 = [(HUHomeControlServiceContext *)self _initWithUserInfo:userInfo];

  if (v6)
  {
    actions = [contextCopy actions];
    actions = v6->_actions;
    v6->_actions = actions;
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
  homeIdentifier = [(HUHomeControlServiceContext *)self homeIdentifier];

  if (homeIdentifier)
  {
    homeIdentifier2 = [(HUHomeControlServiceContext *)self homeIdentifier];
    [v3 setObject:homeIdentifier2 forKeyedSubscript:@"home-identifier-key"];
  }

  roomIdentifier = [(HUHomeControlServiceContext *)self roomIdentifier];

  if (roomIdentifier)
  {
    roomIdentifier2 = [(HUHomeControlServiceContext *)self roomIdentifier];
    [v3 setObject:roomIdentifier2 forKeyedSubscript:@"room-identifier-key"];
  }

  accessoryIdentifier = [(HUHomeControlServiceContext *)self accessoryIdentifier];

  if (accessoryIdentifier)
  {
    accessoryIdentifier2 = [(HUHomeControlServiceContext *)self accessoryIdentifier];
    [v3 setObject:accessoryIdentifier2 forKeyedSubscript:@"accessory-identifier-key"];
  }

  homeName = [(HUHomeControlServiceContext *)self homeName];

  if (homeName)
  {
    homeName2 = [(HUHomeControlServiceContext *)self homeName];
    [v3 setObject:homeName2 forKeyedSubscript:@"home-name-key"];
  }

  roomName = [(HUHomeControlServiceContext *)self roomName];

  if (roomName)
  {
    roomName2 = [(HUHomeControlServiceContext *)self roomName];
    [v3 setObject:roomName2 forKeyedSubscript:@"room-name-key"];
  }

  accessoryName = [(HUHomeControlServiceContext *)self accessoryName];

  if (accessoryName)
  {
    accessoryName2 = [(HUHomeControlServiceContext *)self accessoryName];
    [v3 setObject:accessoryName2 forKeyedSubscript:@"accessory-name-key"];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HUHomeControlServiceContext serviceType](self, "serviceType")}];
  [v3 setObject:v16 forKeyedSubscript:@"service-type-key"];

  defaultActionURL = [(HUHomeControlServiceContext *)self defaultActionURL];

  if (defaultActionURL)
  {
    defaultActionURL2 = [(HUHomeControlServiceContext *)self defaultActionURL];
    absoluteString = [defaultActionURL2 absoluteString];
    [v3 setObject:absoluteString forKeyedSubscript:@"default-action-url-key"];
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

- (id)_initWithUserInfo:(id)info
{
  v29 = *MEMORY[0x277D85DE8];
  infoCopy = info;
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
  v6 = infoCopy;
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

  serviceType = [(HUHomeControlServiceContext *)v5 serviceType];
  v18 = v15 & v16;
  if (serviceType != 2)
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

+ (id)_homeInfoFromDefaultActionURL:(id)l
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACE0];
  absoluteString = [l absoluteString];
  v5 = [v3 componentsWithString:absoluteString];

  queryItems = [v5 queryItems];
  v7 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = queryItems;
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
        name = [v14 name];
        v16 = [name isEqualToString:v11];

        v17 = @"home-name-key";
        if ((v16 & 1) == 0)
        {
          name2 = [v14 name];
          v19 = [name2 isEqualToString:v12];

          v17 = @"home-identifier-key";
          if (!v19)
          {
            continue;
          }
        }

        value = [v14 value];
        [v7 setObject:value forKey:v17];
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