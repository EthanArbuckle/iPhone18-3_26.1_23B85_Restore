@interface HUServiceDetailsAbstractItem
- (BOOL)canShowAsIndividualTiles;
- (BOOL)isAccessory;
- (BOOL)isAccessoryDisplayedAsIndividualTiles;
- (BOOL)isAudioAnalysisSupportedDevice;
- (BOOL)isBridge;
- (BOOL)isBridged;
- (BOOL)isCHIPAccessory;
- (BOOL)isCamera;
- (BOOL)isContainedInAParent;
- (BOOL)isContainedWithinItemGroup;
- (BOOL)isItemGroup;
- (BOOL)isMediaAccessory;
- (BOOL)isMediaAccessoryGroup;
- (BOOL)isMultiServiceAccessory;
- (BOOL)isNetworkRouter;
- (BOOL)isNetworkRouterSatellite;
- (BOOL)isNotificationSupportedCamera;
- (BOOL)isSensorService;
- (BOOL)isService;
- (BOOL)isVisibleAsBridge;
- (HUServiceDetailsAbstractItem)initWithSourceServiceItem:(id)item home:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sourceAccessory;
@end

@implementation HUServiceDetailsAbstractItem

- (HUServiceDetailsAbstractItem)initWithSourceServiceItem:(id)item home:(id)home
{
  itemCopy = item;
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HUServiceDetailsAbstractItem;
  v8 = [(HUServiceDetailsAbstractItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HUServiceDetailsAbstractItem *)v8 setSourceServiceItem:itemCopy];
    [(HUServiceDetailsAbstractItem *)v9 setHome:homeCopy];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  home = [(HUServiceDetailsAbstractItem *)self home];
  v7 = [v4 initWithSourceServiceItem:sourceServiceItem home:home];

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsAbstractItem.m" lineNumber:40 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUServiceDetailsAbstractItem _subclass_updateWithOptions:]", objc_opt_class()}];

  return 0;
}

- (BOOL)isItemGroup
{
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if ([sourceServiceItem conformsToProtocol:&unk_28251B268])
  {
    v3 = sourceServiceItem;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  isItemGroup = [v4 isItemGroup];
  return isItemGroup;
}

- (BOOL)isContainedWithinItemGroup
{
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if ([sourceServiceItem conformsToProtocol:&unk_28251B268])
  {
    v3 = sourceServiceItem;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  isContainedWithinItemGroup = [v4 isContainedWithinItemGroup];
  return isContainedWithinItemGroup;
}

- (BOOL)isAccessory
{
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  sourceServiceItem2 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
    return 1;
  }

  sourceServiceItem3 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) != 0 || [(HUServiceDetailsAbstractItem *)self isMediaAccessory]&& ![(HUServiceDetailsAbstractItem *)self isMediaAccessoryGroup];
}

- (id)sourceAccessory
{
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  accessories = [sourceServiceItem accessories];

  if ([accessories count] == 1)
  {
    anyObject = [accessories anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (BOOL)isMultiServiceAccessory
{
  sourceAccessory = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  hf_isMultiServiceAccessory = [sourceAccessory hf_isMultiServiceAccessory];

  return hf_isMultiServiceAccessory;
}

- (BOOL)isService
{
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isMediaAccessory
{
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isMediaAccessoryGroup
{
  isMediaAccessory = [(HUServiceDetailsAbstractItem *)self isMediaAccessory];
  if (isMediaAccessory)
  {

    LOBYTE(isMediaAccessory) = [(HUServiceDetailsAbstractItem *)self isItemGroup];
  }

  return isMediaAccessory;
}

- (BOOL)isCamera
{
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isNotificationSupportedCamera
{
  objc_opt_class();
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = sourceServiceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  profile = [v5 profile];

  accessory = [profile accessory];
  hf_isNotificationSupportedCamera = [accessory hf_isNotificationSupportedCamera];

  return hf_isNotificationSupportedCamera;
}

- (BOOL)isBridge
{
  sourceAccessory = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  hf_isBridge = [sourceAccessory hf_isBridge];

  return hf_isBridge;
}

- (BOOL)isBridged
{
  sourceAccessory = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  isBridged = [sourceAccessory isBridged];

  return isBridged;
}

- (BOOL)isVisibleAsBridge
{
  sourceAccessory = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  hf_isVisibleAsBridge = [sourceAccessory hf_isVisibleAsBridge];

  return hf_isVisibleAsBridge;
}

- (BOOL)isAccessoryDisplayedAsIndividualTiles
{
  sourceAccessory = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  hf_showAsIndividualServices = [sourceAccessory hf_showAsIndividualServices];

  return hf_showAsIndividualServices;
}

- (BOOL)isContainedInAParent
{
  if ([(HUServiceDetailsAbstractItem *)self isMediaAccessory])
  {

    LOBYTE(isService) = [(HUServiceDetailsAbstractItem *)self isContainedWithinItemGroup];
  }

  else
  {
    isService = [(HUServiceDetailsAbstractItem *)self isService];
    if (isService)
    {
      isService = [(HUServiceDetailsAbstractItem *)self isMultiServiceAccessory];
      if (isService)
      {
        LOBYTE(isService) = ![(HUServiceDetailsAbstractItem *)self isAccessoryDisplayedAsIndividualTiles];
      }
    }
  }

  return isService;
}

- (BOOL)isNetworkRouter
{
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  services = [sourceServiceItem services];
  v4 = [services na_any:&__block_literal_global_205];

  return v4;
}

- (BOOL)isNetworkRouterSatellite
{
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  services = [sourceServiceItem services];
  v4 = [services na_any:&__block_literal_global_66_4];

  return v4;
}

- (BOOL)isSensorService
{
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)canShowAsIndividualTiles
{
  objc_opt_class();
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = sourceServiceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    accessory = [v5 accessory];
    LOBYTE(v7) = [accessory hf_canShowAsIndividualServices];
  }

  else
  {
    objc_opt_class();
    accessory = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
    if (objc_opt_isKindOfClass())
    {
      v8 = accessory;
    }

    else
    {
      v8 = 0;
    }

    v7 = v8;

    if (v7)
    {
      service = [v7 service];
      accessory2 = [service accessory];
      LOBYTE(v7) = [accessory2 hf_canShowAsIndividualServices];
    }

    else
    {
      accessory = 0;
    }
  }

  return v7;
}

- (BOOL)isAudioAnalysisSupportedDevice
{
  objc_opt_class();
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = sourceServiceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x277D14810];
    mediaProfileContainer = [v5 mediaProfileContainer];
    v8 = [v6 isAudioAnalysisSupportedDevice:mediaProfileContainer];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCHIPAccessory
{
  sourceAccessory = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  supportsCHIP = [sourceAccessory supportsCHIP];

  return supportsCHIP;
}

@end