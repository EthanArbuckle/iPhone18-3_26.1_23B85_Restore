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
- (HUServiceDetailsAbstractItem)initWithSourceServiceItem:(id)a3 home:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sourceAccessory;
@end

@implementation HUServiceDetailsAbstractItem

- (HUServiceDetailsAbstractItem)initWithSourceServiceItem:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUServiceDetailsAbstractItem;
  v8 = [(HUServiceDetailsAbstractItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HUServiceDetailsAbstractItem *)v8 setSourceServiceItem:v6];
    [(HUServiceDetailsAbstractItem *)v9 setHome:v7];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  v6 = [(HUServiceDetailsAbstractItem *)self home];
  v7 = [v4 initWithSourceServiceItem:v5 home:v6];

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsAbstractItem.m" lineNumber:40 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUServiceDetailsAbstractItem _subclass_updateWithOptions:]", objc_opt_class()}];

  return 0;
}

- (BOOL)isItemGroup
{
  v2 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if ([v2 conformsToProtocol:&unk_28251B268])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 isItemGroup];
  return v5;
}

- (BOOL)isContainedWithinItemGroup
{
  v2 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if ([v2 conformsToProtocol:&unk_28251B268])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 isContainedWithinItemGroup];
  return v5;
}

- (BOOL)isAccessory
{
  v3 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  v4 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
    return 1;
  }

  v6 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) != 0 || [(HUServiceDetailsAbstractItem *)self isMediaAccessory]&& ![(HUServiceDetailsAbstractItem *)self isMediaAccessoryGroup];
}

- (id)sourceAccessory
{
  v2 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  v3 = [v2 accessories];

  if ([v3 count] == 1)
  {
    v4 = [v3 anyObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isMultiServiceAccessory
{
  v2 = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  v3 = [v2 hf_isMultiServiceAccessory];

  return v3;
}

- (BOOL)isService
{
  v2 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isMediaAccessory
{
  v2 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isMediaAccessoryGroup
{
  v3 = [(HUServiceDetailsAbstractItem *)self isMediaAccessory];
  if (v3)
  {

    LOBYTE(v3) = [(HUServiceDetailsAbstractItem *)self isItemGroup];
  }

  return v3;
}

- (BOOL)isCamera
{
  v2 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isNotificationSupportedCamera
{
  objc_opt_class();
  v3 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 profile];

  v7 = [v6 accessory];
  v8 = [v7 hf_isNotificationSupportedCamera];

  return v8;
}

- (BOOL)isBridge
{
  v2 = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  v3 = [v2 hf_isBridge];

  return v3;
}

- (BOOL)isBridged
{
  v2 = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  v3 = [v2 isBridged];

  return v3;
}

- (BOOL)isVisibleAsBridge
{
  v2 = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  v3 = [v2 hf_isVisibleAsBridge];

  return v3;
}

- (BOOL)isAccessoryDisplayedAsIndividualTiles
{
  v2 = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  v3 = [v2 hf_showAsIndividualServices];

  return v3;
}

- (BOOL)isContainedInAParent
{
  if ([(HUServiceDetailsAbstractItem *)self isMediaAccessory])
  {

    LOBYTE(v3) = [(HUServiceDetailsAbstractItem *)self isContainedWithinItemGroup];
  }

  else
  {
    v3 = [(HUServiceDetailsAbstractItem *)self isService];
    if (v3)
    {
      v3 = [(HUServiceDetailsAbstractItem *)self isMultiServiceAccessory];
      if (v3)
      {
        LOBYTE(v3) = ![(HUServiceDetailsAbstractItem *)self isAccessoryDisplayedAsIndividualTiles];
      }
    }
  }

  return v3;
}

- (BOOL)isNetworkRouter
{
  v2 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  v3 = [v2 services];
  v4 = [v3 na_any:&__block_literal_global_205];

  return v4;
}

- (BOOL)isNetworkRouterSatellite
{
  v2 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  v3 = [v2 services];
  v4 = [v3 na_any:&__block_literal_global_66_4];

  return v4;
}

- (BOOL)isSensorService
{
  v2 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)canShowAsIndividualTiles
{
  objc_opt_class();
  v3 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 accessory];
    LOBYTE(v7) = [v6 hf_canShowAsIndividualServices];
  }

  else
  {
    objc_opt_class();
    v6 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v7 = v8;

    if (v7)
    {
      v9 = [v7 service];
      v10 = [v9 accessory];
      LOBYTE(v7) = [v10 hf_canShowAsIndividualServices];
    }

    else
    {
      v6 = 0;
    }
  }

  return v7;
}

- (BOOL)isAudioAnalysisSupportedDevice
{
  objc_opt_class();
  v3 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x277D14810];
    v7 = [v5 mediaProfileContainer];
    v8 = [v6 isAudioAnalysisSupportedDevice:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCHIPAccessory
{
  v2 = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  v3 = [v2 supportsCHIP];

  return v3;
}

@end