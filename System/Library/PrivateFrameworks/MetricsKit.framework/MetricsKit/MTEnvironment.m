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
- (void)setDelegate:(id)a3;
@end

@implementation MTEnvironment

- (void)setDelegate:(id)a3
{
  v8 = a3;
  v4 = objc_storeWeak(&self->_delegate, v8);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(MTObject *)self metricsKit];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setMetricsKit:v6];
  }
}

- (BOOL)isAnonymous
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(MTEnvironment *)self delegate];
  v6 = [v5 isAnonymous];

  return v6;
}

- (id)app
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 app];
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
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 appVersion];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment appVersion]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)capacityData
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 capacityData];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment capacityData]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)capacityDataAvailable
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 capacityDataAvailable];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment capacityDataAvailable]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)capacityDisk
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 capacityDisk];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment capacityDisk]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)capacitySystem
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 capacitySystem];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment capacitySystem]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)capacitySystemAvailable
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 capacitySystemAvailable];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment capacitySystemAvailable]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)connectionType
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 connectionType];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment connectionType]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)cookies
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 cookies];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment cookies]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)dsId
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 dsId];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment dsId]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)environmentBuild
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEnvironment *)self delegate];
    v6 = [v5 environmentBuild];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)environmentDataCenter
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEnvironment *)self delegate];
    v6 = [v5 environmentDataCenter];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)environmentInstance
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEnvironment *)self delegate];
    v6 = [v5 environmentDataCenter];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)hardwareFamily
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 hardwareFamily];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment hardwareFamily]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)hardwareModel
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 hardwareModel];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment hardwareModel]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)hostApp
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 hostApp];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment hostApp]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)hostAppVersion
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEnvironment *)self delegate];
    v6 = [v5 hostAppVersion];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)os
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 os];
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
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 osBuildNumber];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment osBuildNumber]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)osLanguages
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 osLanguages];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment osLanguages]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)osVersion
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 osVersion];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment osVersion]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)pageUrl
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 pageUrl];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment pageUrl]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)parentPageUrl
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEnvironment *)self delegate];
    v6 = [v5 parentPageUrl];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pixelRatio
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 pixelRatio];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment pixelRatio]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)resourceRevNum
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 resourceRevNum];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment resourceRevNum]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)screenHeight
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 screenHeight];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment screenHeight]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)screenWidth
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 screenWidth];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment screenWidth]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)storeFrontHeader
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 storeFrontHeader];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment storeFrontHeader]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)userAgent
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 userAgent];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment userAgent]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)windowInnerHeight
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 windowInnerHeight];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment windowInnerHeight]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)windowInnerWidth
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 windowInnerWidth];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment windowInnerWidth]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)windowOuterHeight
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 windowOuterHeight];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment windowOuterHeight]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (id)windowOuterWidth
{
  v3 = [(MTEnvironment *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(MTEnvironment *)self delegate];
    v13 = [v12 windowOuterWidth];
  }

  else
  {
    v14 = MTUndelegatedMethodError("[MTEnvironment windowOuterWidth]", v5, v6, v7, v8, v9, v10, v11);
    v13 = 0;
  }

  return v13;
}

- (MTEnvironmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end