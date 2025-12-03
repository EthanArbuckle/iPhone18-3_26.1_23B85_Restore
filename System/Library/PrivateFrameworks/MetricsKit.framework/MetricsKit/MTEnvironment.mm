@interface MTEnvironment
- (BOOL)isAnonymous;
- (MTEnvironmentDelegate)delegate;
- (id)app;
- (id)appVersion;
- (id)capacityData;
- (id)capacityDataAvailable;
- (id)capacityDisk;
- (id)capacitySystem;
- (id)capacitySystemAvailable;
- (id)connectionType;
- (id)cookies;
- (id)dsId;
- (id)environmentBuild;
- (id)environmentDataCenter;
- (id)environmentInstance;
- (id)hardwareFamily;
- (id)hardwareModel;
- (id)hostApp;
- (id)hostAppVersion;
- (id)os;
- (id)osBuildNumber;
- (id)osLanguages;
- (id)osVersion;
- (id)pageUrl;
- (id)parentPageUrl;
- (id)pixelRatio;
- (id)resourceRevNum;
- (id)screenHeight;
- (id)screenWidth;
- (id)storeFrontHeader;
- (id)userAgent;
- (id)windowInnerHeight;
- (id)windowInnerWidth;
- (id)windowOuterHeight;
- (id)windowOuterWidth;
- (void)setDelegate:(id)delegate;
@end

@implementation MTEnvironment

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_storeWeak(&self->_delegate, delegateCopy);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    metricsKit = [(MTObject *)self metricsKit];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setMetricsKit:metricsKit];
  }
}

- (BOOL)isAnonymous
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(MTEnvironment *)self delegate];
  isAnonymous = [delegate2 isAnonymous];

  return isAnonymous;
}

- (id)app
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    v13 = [delegate2 app];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment app]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)appVersion
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    appVersion = [delegate2 appVersion];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment appVersion]", v5, v6, v7, v8, v9, v10, v11);
    appVersion = 0;
  }

  return appVersion;
}

- (id)capacityData
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    capacityData = [delegate2 capacityData];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment capacityData]", v5, v6, v7, v8, v9, v10, v11);
    capacityData = 0;
  }

  return capacityData;
}

- (id)capacityDataAvailable
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    capacityDataAvailable = [delegate2 capacityDataAvailable];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment capacityDataAvailable]", v5, v6, v7, v8, v9, v10, v11);
    capacityDataAvailable = 0;
  }

  return capacityDataAvailable;
}

- (id)capacityDisk
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    capacityDisk = [delegate2 capacityDisk];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment capacityDisk]", v5, v6, v7, v8, v9, v10, v11);
    capacityDisk = 0;
  }

  return capacityDisk;
}

- (id)capacitySystem
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    capacitySystem = [delegate2 capacitySystem];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment capacitySystem]", v5, v6, v7, v8, v9, v10, v11);
    capacitySystem = 0;
  }

  return capacitySystem;
}

- (id)capacitySystemAvailable
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    capacitySystemAvailable = [delegate2 capacitySystemAvailable];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment capacitySystemAvailable]", v5, v6, v7, v8, v9, v10, v11);
    capacitySystemAvailable = 0;
  }

  return capacitySystemAvailable;
}

- (id)connectionType
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    connectionType = [delegate2 connectionType];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment connectionType]", v5, v6, v7, v8, v9, v10, v11);
    connectionType = 0;
  }

  return connectionType;
}

- (id)cookies
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    cookies = [delegate2 cookies];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment cookies]", v5, v6, v7, v8, v9, v10, v11);
    cookies = 0;
  }

  return cookies;
}

- (id)dsId
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    dsId = [delegate2 dsId];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment dsId]", v5, v6, v7, v8, v9, v10, v11);
    dsId = 0;
  }

  return dsId;
}

- (id)environmentBuild
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    environmentBuild = [delegate2 environmentBuild];
  }

  else
  {
    environmentBuild = 0;
  }

  return environmentBuild;
}

- (id)environmentDataCenter
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    environmentDataCenter = [delegate2 environmentDataCenter];
  }

  else
  {
    environmentDataCenter = 0;
  }

  return environmentDataCenter;
}

- (id)environmentInstance
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    environmentDataCenter = [delegate2 environmentDataCenter];
  }

  else
  {
    environmentDataCenter = 0;
  }

  return environmentDataCenter;
}

- (id)hardwareFamily
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    hardwareFamily = [delegate2 hardwareFamily];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment hardwareFamily]", v5, v6, v7, v8, v9, v10, v11);
    hardwareFamily = 0;
  }

  return hardwareFamily;
}

- (id)hardwareModel
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    hardwareModel = [delegate2 hardwareModel];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment hardwareModel]", v5, v6, v7, v8, v9, v10, v11);
    hardwareModel = 0;
  }

  return hardwareModel;
}

- (id)hostApp
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    hostApp = [delegate2 hostApp];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment hostApp]", v5, v6, v7, v8, v9, v10, v11);
    hostApp = 0;
  }

  return hostApp;
}

- (id)hostAppVersion
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    hostAppVersion = [delegate2 hostAppVersion];
  }

  else
  {
    hostAppVersion = 0;
  }

  return hostAppVersion;
}

- (id)os
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    v13 = [delegate2 os];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment os]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)osBuildNumber
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    osBuildNumber = [delegate2 osBuildNumber];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment osBuildNumber]", v5, v6, v7, v8, v9, v10, v11);
    osBuildNumber = 0;
  }

  return osBuildNumber;
}

- (id)osLanguages
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    osLanguages = [delegate2 osLanguages];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment osLanguages]", v5, v6, v7, v8, v9, v10, v11);
    osLanguages = 0;
  }

  return osLanguages;
}

- (id)osVersion
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    osVersion = [delegate2 osVersion];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment osVersion]", v5, v6, v7, v8, v9, v10, v11);
    osVersion = 0;
  }

  return osVersion;
}

- (id)pageUrl
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    pageUrl = [delegate2 pageUrl];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment pageUrl]", v5, v6, v7, v8, v9, v10, v11);
    pageUrl = 0;
  }

  return pageUrl;
}

- (id)parentPageUrl
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    parentPageUrl = [delegate2 parentPageUrl];
  }

  else
  {
    parentPageUrl = 0;
  }

  return parentPageUrl;
}

- (id)pixelRatio
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    pixelRatio = [delegate2 pixelRatio];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment pixelRatio]", v5, v6, v7, v8, v9, v10, v11);
    pixelRatio = 0;
  }

  return pixelRatio;
}

- (id)resourceRevNum
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    resourceRevNum = [delegate2 resourceRevNum];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment resourceRevNum]", v5, v6, v7, v8, v9, v10, v11);
    resourceRevNum = 0;
  }

  return resourceRevNum;
}

- (id)screenHeight
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    screenHeight = [delegate2 screenHeight];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment screenHeight]", v5, v6, v7, v8, v9, v10, v11);
    screenHeight = 0;
  }

  return screenHeight;
}

- (id)screenWidth
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    screenWidth = [delegate2 screenWidth];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment screenWidth]", v5, v6, v7, v8, v9, v10, v11);
    screenWidth = 0;
  }

  return screenWidth;
}

- (id)storeFrontHeader
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    storeFrontHeader = [delegate2 storeFrontHeader];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment storeFrontHeader]", v5, v6, v7, v8, v9, v10, v11);
    storeFrontHeader = 0;
  }

  return storeFrontHeader;
}

- (id)userAgent
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    userAgent = [delegate2 userAgent];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment userAgent]", v5, v6, v7, v8, v9, v10, v11);
    userAgent = 0;
  }

  return userAgent;
}

- (id)windowInnerHeight
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    windowInnerHeight = [delegate2 windowInnerHeight];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment windowInnerHeight]", v5, v6, v7, v8, v9, v10, v11);
    windowInnerHeight = 0;
  }

  return windowInnerHeight;
}

- (id)windowInnerWidth
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    windowInnerWidth = [delegate2 windowInnerWidth];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment windowInnerWidth]", v5, v6, v7, v8, v9, v10, v11);
    windowInnerWidth = 0;
  }

  return windowInnerWidth;
}

- (id)windowOuterHeight
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    windowOuterHeight = [delegate2 windowOuterHeight];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment windowOuterHeight]", v5, v6, v7, v8, v9, v10, v11);
    windowOuterHeight = 0;
  }

  return windowOuterHeight;
}

- (id)windowOuterWidth
{
  delegate = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEnvironment *)self delegate];
    windowOuterWidth = [delegate2 windowOuterWidth];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment windowOuterWidth]", v5, v6, v7, v8, v9, v10, v11);
    windowOuterWidth = 0;
  }

  return windowOuterWidth;
}

- (MTEnvironmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end