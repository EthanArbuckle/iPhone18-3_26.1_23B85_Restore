@interface _UIFocusUpdateRequest
+ (id)requestForRemovingFocusInFocusSystem:(id)a3;
- (BOOL)canMergeWithRequest:(id)a3;
- (BOOL)isValidInFocusSystem:(id)a3;
- (UIFocusEnvironment)destinationEnvironment;
- (UIFocusEnvironment)environment;
- (UIFocusSystem)focusSystem;
- (_UIFocusUpdateRequest)init;
- (_UIFocusUpdateRequest)initWithEnvironment:(id)a3;
- (_UIFocusUpdateRequest)initWithFocusSystem:(id)a3 environment:(id)a4;
- (_UIFocusUpdateRequest)initWithFocusSystem:(id)a3 environment:(id)a4 destinationEnvironment:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)requestByMergingWithRequest:(id)a3;
- (id)requestByRedirectingRequestToEnvironment:(id)a3;
- (id)requestByRedirectingRequestToNextContainerEnvironment;
- (void)cacheCurrentFocusSystem;
@end

@implementation _UIFocusUpdateRequest

- (_UIFocusUpdateRequest)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:33 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (_UIFocusUpdateRequest)initWithEnvironment:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v10.receiver = self;
  v10.super_class = _UIFocusUpdateRequest;
  v6 = [(_UIFocusUpdateRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_focusSystem, 0);
    objc_storeWeak(&v7->_environment, v5);
    objc_storeWeak(&v7->_destinationEnvironment, v5);
    v7->_allowsDeferral = 1;
    v7->_allowsOverridingPreferedFocusEnvironments = 1;
  }

  return v7;
}

- (_UIFocusUpdateRequest)initWithFocusSystem:(id)a3 environment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x277CCA890] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"environment"}];

LABEL_3:
  v15.receiver = self;
  v15.super_class = _UIFocusUpdateRequest;
  v10 = [(_UIFocusUpdateRequest *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_focusSystem, v7);
    objc_storeWeak(&v11->_environment, v9);
    objc_storeWeak(&v11->_destinationEnvironment, v9);
    v11->_allowsDeferral = 1;
    v11->_allowsOverridingPreferedFocusEnvironments = 1;
  }

  return v11;
}

- (_UIFocusUpdateRequest)initWithFocusSystem:(id)a3 environment:(id)a4 destinationEnvironment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"destinationEnvironment"}];
  }

  if ((_UIFocusEnvironmentIsAncestorOfEnvironment(v10, v11) & 1) == 0)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusUpdateRequest initWithFocusSystem:environment:destinationEnvironment:]"];
    v18 = v11;
    if (v11)
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

    v23 = v10;
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

    [v16 handleFailureInFunction:v17 file:@"_UIFocusUpdateRequest.m" lineNumber:67 description:{@"Cannot request a focus update to destinationEnvironment %@ from non-ancestor environment %@", v22, v27}];
  }

  v12 = [(_UIFocusUpdateRequest *)self initWithFocusSystem:v9 environment:v10];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_destinationEnvironment, v11);
  }

  return v13;
}

+ (id)requestForRemovingFocusInFocusSystem:(id)a3
{
  v3 = a3;
  v4 = [[_UIFocusUpdateRequest alloc] initWithFocusSystem:v3 environment:v3];

  v4->_isFocusRemovalRequest = 1;
  v4->_allowsFocusingCurrentItem = 1;

  return v4;
}

- (id)requestByRedirectingRequestToEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusUpdateRequest *)self copy];
  objc_storeWeak(v5 + 4, v4);
  objc_storeWeak(v5 + 2, v4);

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

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)canMergeWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusUpdateRequest *)self focusSystem];
  v6 = [v4 focusSystem];
  v7 = v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = v8 || v5 == v6;
  WeakRetained = objc_loadWeakRetained(&self->_destinationEnvironment);
  if (WeakRetained)
  {
    v12 = [v4 destinationEnvironment];
    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_destinationEnvironment);
      v14 = [v4 destinationEnvironment];
      v15 = v13 != v14;
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
    v17 = [v4 environment];
    if (v16 != v17 || v15)
    {
      v18 = 0;
    }

    else
    {
      isFocusRemovalRequest = self->_isFocusRemovalRequest;
      v18 = isFocusRemovalRequest == [v4 isFocusRemovalRequest];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)requestByMergingWithRequest:(id)a3
{
  v4 = a3;
  if (![(_UIFocusUpdateRequest *)self canMergeWithRequest:v4])
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusUpdateRequest requestByMergingWithRequest:]"];
    [v18 handleFailureInFunction:v19 file:@"_UIFocusUpdateRequest.m" lineNumber:149 description:@"Cannot merge focus update requests that are not allowed to be merged."];
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
    v9 = objc_loadWeakRetained(v4 + 3);
    objc_storeWeak((v7 + 24), v9);
  }

  v10 = objc_loadWeakRetained(&self->_destinationEnvironment);
  if (v10)
  {
    objc_storeWeak((v7 + 16), v10);
  }

  else
  {
    v11 = objc_loadWeakRetained(v4 + 2);
    objc_storeWeak((v7 + 16), v11);
  }

  *(v7 + 10) = self->_isFocusRemovalRequest;
  if (self->_allowsDeferral)
  {
    v12 = [v4 allowsDeferral];
  }

  else
  {
    v12 = 0;
  }

  [v7 setAllowsDeferral:v12];
  if (self->_scrollIfNecessary)
  {
    v13 = 1;
  }

  else
  {
    v13 = [v4 shouldScrollIfNecessary];
  }

  [v7 setScrollIfNecessary:v13];
  if (self->_shouldPlayFocusSound)
  {
    v14 = 1;
  }

  else
  {
    v14 = [v4 shouldPlayFocusSound];
  }

  [v7 setShouldPlayFocusSound:v14];
  if (self->_allowsFocusingCurrentItem)
  {
    v15 = 1;
  }

  else
  {
    v15 = [v4 allowsFocusingCurrentItem];
  }

  [v7 setAllowsFocusingCurrentItem:v15];
  if (self->_resetsUpdateThrottle)
  {
    v16 = 1;
  }

  else
  {
    v16 = [v4 resetsUpdateThrottle];
  }

  [v7 setResetsUpdateThrottle:v16];

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
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:203 description:@"Unable to find focus system for request. Environment does not appear to be in a valid focus environment chain."];

      v5 = 0;
    }
  }

  return v5;
}

- (void)cacheCurrentFocusSystem
{
  v3 = [(_UIFocusUpdateRequest *)self focusSystem];
  objc_storeWeak(&self->_focusSystem, v3);
}

- (BOOL)isValidInFocusSystem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  if (WeakRetained && ([(_UIFocusUpdateRequest *)self focusSystem], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v5))
  {
    v9 = [UIFocusSystem focusSystemForEnvironment:WeakRetained];
    v8 = v9 == v5;
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