@interface _UIFocusUpdateRequest
+ (id)requestForRemovingFocusInFocusSystem:(id)system;
- (BOOL)canMergeWithRequest:(id)request;
- (BOOL)isValidInFocusSystem:(id)system;
- (UIFocusEnvironment)destinationEnvironment;
- (UIFocusEnvironment)environment;
- (UIFocusSystem)focusSystem;
- (_UIFocusUpdateRequest)init;
- (_UIFocusUpdateRequest)initWithEnvironment:(id)environment;
- (_UIFocusUpdateRequest)initWithFocusSystem:(id)system environment:(id)environment;
- (_UIFocusUpdateRequest)initWithFocusSystem:(id)system environment:(id)environment destinationEnvironment:(id)destinationEnvironment;
- (id)copyWithZone:(_NSZone *)zone;
- (id)requestByMergingWithRequest:(id)request;
- (id)requestByRedirectingRequestToEnvironment:(id)environment;
- (id)requestByRedirectingRequestToNextContainerEnvironment;
- (void)cacheCurrentFocusSystem;
@end

@implementation _UIFocusUpdateRequest

- (_UIFocusUpdateRequest)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:33 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (_UIFocusUpdateRequest)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  if (!environmentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v10.receiver = self;
  v10.super_class = _UIFocusUpdateRequest;
  v6 = [(_UIFocusUpdateRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_focusSystem, 0);
    objc_storeWeak(&v7->_environment, environmentCopy);
    objc_storeWeak(&v7->_destinationEnvironment, environmentCopy);
    v7->_allowsDeferral = 1;
    v7->_allowsOverridingPreferedFocusEnvironments = 1;
  }

  return v7;
}

- (_UIFocusUpdateRequest)initWithFocusSystem:(id)system environment:(id)environment
{
  systemCopy = system;
  environmentCopy = environment;
  v9 = environmentCopy;
  if (systemCopy)
  {
    if (environmentCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"environment"}];

LABEL_3:
  v15.receiver = self;
  v15.super_class = _UIFocusUpdateRequest;
  v10 = [(_UIFocusUpdateRequest *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_focusSystem, systemCopy);
    objc_storeWeak(&v11->_environment, v9);
    objc_storeWeak(&v11->_destinationEnvironment, v9);
    v11->_allowsDeferral = 1;
    v11->_allowsOverridingPreferedFocusEnvironments = 1;
  }

  return v11;
}

- (_UIFocusUpdateRequest)initWithFocusSystem:(id)system environment:(id)environment destinationEnvironment:(id)destinationEnvironment
{
  systemCopy = system;
  environmentCopy = environment;
  destinationEnvironmentCopy = destinationEnvironment;
  if (!destinationEnvironmentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"destinationEnvironment"}];
  }

  if ((_UIFocusEnvironmentIsAncestorOfEnvironment(environmentCopy, destinationEnvironmentCopy) & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusUpdateRequest initWithFocusSystem:environment:destinationEnvironment:]"];
    v18 = destinationEnvironmentCopy;
    if (destinationEnvironmentCopy)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = [v19 stringWithFormat:@"<%@: %p>", v21, v18];
    }

    else
    {
      v22 = @"(nil)";
    }

    v23 = environmentCopy;
    if (v23)
    {
      v24 = MEMORY[0x277CCACA8];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v24 stringWithFormat:@"<%@: %p>", v26, v23];
    }

    else
    {
      v27 = @"(nil)";
    }

    [currentHandler2 handleFailureInFunction:v17 file:@"_UIFocusUpdateRequest.m" lineNumber:67 description:{@"Cannot request a focus update to destinationEnvironment %@ from non-ancestor environment %@", v22, v27}];
  }

  v12 = [(_UIFocusUpdateRequest *)self initWithFocusSystem:systemCopy environment:environmentCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_destinationEnvironment, destinationEnvironmentCopy);
  }

  return v13;
}

+ (id)requestForRemovingFocusInFocusSystem:(id)system
{
  systemCopy = system;
  v4 = [[_UIFocusUpdateRequest alloc] initWithFocusSystem:systemCopy environment:systemCopy];

  v4->_isFocusRemovalRequest = 1;
  v4->_allowsFocusingCurrentItem = 1;

  return v4;
}

- (id)requestByRedirectingRequestToEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = [(_UIFocusUpdateRequest *)self copy];
  objc_storeWeak(v5 + 4, environmentCopy);
  objc_storeWeak(v5 + 2, environmentCopy);

  objc_storeWeak(v5 + 3, 0);

  return v5;
}

- (id)requestByRedirectingRequestToNextContainerEnvironment
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78___UIFocusUpdateRequest_requestByRedirectingRequestToNextContainerEnvironment__block_invoke;
  v6[3] = &unk_279014870;
  v6[4] = self;
  v6[5] = &v7;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(WeakRetained, v6);

  if (v8[5])
  {
    v4 = [(_UIFocusUpdateRequest *)self requestByRedirectingRequestToEnvironment:?];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = [v4 initWithEnvironment:WeakRetained];

  v7 = objc_loadWeakRetained(&self->_focusSystem);
  objc_storeWeak((v6 + 24), v7);

  v8 = objc_loadWeakRetained(&self->_destinationEnvironment);
  objc_storeWeak((v6 + 16), v8);

  *(v6 + 10) = self->_isFocusRemovalRequest;
  *(v6 + 11) = self->_shouldPlayFocusSound;
  *(v6 + 13) = self->_allowsFocusingCurrentItem;
  *(v6 + 9) = self->_allowsDeferral;
  *(v6 + 8) = self->_scrollIfNecessary;
  *(v6 + 14) = self->_allowsOverridingPreferedFocusEnvironments;
  *(v6 + 12) = self->_resetsUpdateThrottle;
  return v6;
}

- (BOOL)canMergeWithRequest:(id)request
{
  requestCopy = request;
  focusSystem = [(_UIFocusUpdateRequest *)self focusSystem];
  focusSystem2 = [requestCopy focusSystem];
  v7 = focusSystem2;
  if (requestCopy)
  {
    v8 = focusSystem == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = v8 || focusSystem == focusSystem2;
  WeakRetained = objc_loadWeakRetained(&self->_destinationEnvironment);
  if (WeakRetained)
  {
    destinationEnvironment = [requestCopy destinationEnvironment];
    if (destinationEnvironment)
    {
      v13 = objc_loadWeakRetained(&self->_destinationEnvironment);
      destinationEnvironment2 = [requestCopy destinationEnvironment];
      v15 = v13 != destinationEnvironment2;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v10)
  {
    v16 = objc_loadWeakRetained(&self->_environment);
    environment = [requestCopy environment];
    if (v16 != environment || v15)
    {
      v18 = 0;
    }

    else
    {
      isFocusRemovalRequest = self->_isFocusRemovalRequest;
      v18 = isFocusRemovalRequest == [requestCopy isFocusRemovalRequest];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)requestByMergingWithRequest:(id)request
{
  requestCopy = request;
  if (![(_UIFocusUpdateRequest *)self canMergeWithRequest:requestCopy])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusUpdateRequest requestByMergingWithRequest:]"];
    [currentHandler handleFailureInFunction:v19 file:@"_UIFocusUpdateRequest.m" lineNumber:149 description:@"Cannot merge focus update requests that are not allowed to be merged."];
  }

  v5 = [_UIFocusUpdateRequest alloc];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v7 = [(_UIFocusUpdateRequest *)v5 initWithEnvironment:WeakRetained];

  v8 = objc_loadWeakRetained(&self->_focusSystem);
  if (v8)
  {
    objc_storeWeak((v7 + 24), v8);
  }

  else
  {
    v9 = objc_loadWeakRetained(requestCopy + 3);
    objc_storeWeak((v7 + 24), v9);
  }

  v10 = objc_loadWeakRetained(&self->_destinationEnvironment);
  if (v10)
  {
    objc_storeWeak((v7 + 16), v10);
  }

  else
  {
    v11 = objc_loadWeakRetained(requestCopy + 2);
    objc_storeWeak((v7 + 16), v11);
  }

  *(v7 + 10) = self->_isFocusRemovalRequest;
  if (self->_allowsDeferral)
  {
    allowsDeferral = [requestCopy allowsDeferral];
  }

  else
  {
    allowsDeferral = 0;
  }

  [v7 setAllowsDeferral:allowsDeferral];
  if (self->_scrollIfNecessary)
  {
    shouldScrollIfNecessary = 1;
  }

  else
  {
    shouldScrollIfNecessary = [requestCopy shouldScrollIfNecessary];
  }

  [v7 setScrollIfNecessary:shouldScrollIfNecessary];
  if (self->_shouldPlayFocusSound)
  {
    shouldPlayFocusSound = 1;
  }

  else
  {
    shouldPlayFocusSound = [requestCopy shouldPlayFocusSound];
  }

  [v7 setShouldPlayFocusSound:shouldPlayFocusSound];
  if (self->_allowsFocusingCurrentItem)
  {
    allowsFocusingCurrentItem = 1;
  }

  else
  {
    allowsFocusingCurrentItem = [requestCopy allowsFocusingCurrentItem];
  }

  [v7 setAllowsFocusingCurrentItem:allowsFocusingCurrentItem];
  if (self->_resetsUpdateThrottle)
  {
    resetsUpdateThrottle = 1;
  }

  else
  {
    resetsUpdateThrottle = [requestCopy resetsUpdateThrottle];
  }

  [v7 setResetsUpdateThrottle:resetsUpdateThrottle];

  return v7;
}

- (UIFocusSystem)focusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_environment);
    if (v6 && ([UIFocusSystem focusSystemForEnvironment:v6], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v7;
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:203 description:@"Unable to find focus system for request. Environment does not appear to be in a valid focus environment chain."];

      v5 = 0;
    }
  }

  return v5;
}

- (void)cacheCurrentFocusSystem
{
  focusSystem = [(_UIFocusUpdateRequest *)self focusSystem];
  objc_storeWeak(&self->_focusSystem, focusSystem);
}

- (BOOL)isValidInFocusSystem:(id)system
{
  systemCopy = system;
  if (!systemCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  if (WeakRetained && ([(_UIFocusUpdateRequest *)self focusSystem], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == systemCopy))
  {
    v9 = [UIFocusSystem focusSystemForEnvironment:WeakRetained];
    v8 = v9 == systemCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (UIFocusEnvironment)destinationEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_destinationEnvironment);

  return WeakRetained;
}

- (UIFocusEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end