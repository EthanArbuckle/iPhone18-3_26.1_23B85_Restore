@interface FCUIFocusEnablementIndicatorSystemApertureManager
+ (id)managerWithSystemApertureElementRegistrar:(id)a3;
- (BOOL)shouldKeepPresentingAfterActiveActivityDidChange:(id)a3 lastActivity:(id)a4;
- (id)_initWithSystemApertureElementRegistrar:(id)a3;
- (id)postPersistentActivity:(id)a3 enabled:(BOOL)a4 systemApertureElementProvider:(id)a5 pickerPresentation:(BOOL)a6;
- (void)postActivity:(id)a3 enabled:(BOOL)a4;
- (void)revokeWithReason:(id)a3;
@end

@implementation FCUIFocusEnablementIndicatorSystemApertureManager

+ (id)managerWithSystemApertureElementRegistrar:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) _initWithSystemApertureElementRegistrar:v3];

  return v4;
}

- (id)_initWithSystemApertureElementRegistrar:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCUIFocusEnablementIndicatorSystemApertureManager;
  v6 = [(FCUIFocusEnablementIndicatorManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elementRegistrar, a3);
  }

  return v7;
}

- (BOOL)shouldKeepPresentingAfterActiveActivityDidChange:(id)a3 lastActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_registeredPersistentElementAssertion);
  if (([WeakRetained isValid] & 1) == 0)
  {

    v9 = 0;
    goto LABEL_7;
  }

  v9 = objc_loadWeakRetained(&self->_lastPresentedPersistentElement);

  if (!v9 || v6 && ([v9 activityDescription], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v6, "isEqual:", v10), v10, !v11))
  {
LABEL_7:
    if ([(SAInvalidatable *)self->_registeredElementAssertion isValid])
    {
      v13 = objc_loadWeakRetained(&self->_lastPresentedElement);
      if (v13)
      {
        if (!v6 || ([v6 isEqual:v7] & 1) != 0 || (objc_msgSend(v13, "activityDescription"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v6, "isEqual:", v14), v14, v15))
        {
          [v13 setActivityEnabled:v6 != 0];
          v12 = 1;
LABEL_15:

          goto LABEL_16;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v12 = 0;
    goto LABEL_15;
  }

  [v9 setActivityEnabled:v6 != 0];
  v12 = 1;
LABEL_16:

  return v12;
}

- (void)revokeWithReason:(id)a3
{
  v4 = a3;
  if ([(SAInvalidatable *)self->_registeredElementAssertion isValid])
  {
    [(SAInvalidatable *)self->_registeredElementAssertion invalidateWithReason:v4];
  }
}

- (void)postActivity:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[FCUIFocusEnablementIndicatorSystemApertureElement alloc] initWithActivityDescription:v6 enabled:v4];
  if (self->_registeredElementAssertion)
  {
    [(FCUIFocusEnablementIndicatorSystemApertureManager *)self revokeWithReason:@"Activity Changed"];
  }

  v8 = [(SAElementRegistering *)self->_elementRegistrar registerElement:v7];
  registeredElementAssertion = self->_registeredElementAssertion;
  self->_registeredElementAssertion = v8;

  objc_initWeak(&location, self);
  v10 = self->_registeredElementAssertion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__FCUIFocusEnablementIndicatorSystemApertureManager_postActivity_enabled___block_invoke;
  v11[3] = &unk_27901A6F8;
  objc_copyWeak(&v12, &location);
  [(SAInvalidatable *)v10 addInvalidationBlock:v11];
  objc_storeWeak(&self->_lastPresentedElement, v7);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __74__FCUIFocusEnablementIndicatorSystemApertureManager_postActivity_enabled___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[6];
    if (v5 == v6)
    {
      WeakRetained[6] = 0;

      objc_storeWeak(v4 + 7, 0);
    }
  }
}

- (id)postPersistentActivity:(id)a3 enabled:(BOOL)a4 systemApertureElementProvider:(id)a5 pickerPresentation:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = a3;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_registeredPersistentElementAssertion);
  if ([WeakRetained isValid])
  {
    v13 = objc_loadWeakRetained(&self->_lastPresentedPersistentElement);
    v14 = [v13 activityDescription];
    v15 = [v14 isEqual:v10];

    if (v15)
    {
      v16 = WeakRetained;
      goto LABEL_17;
    }

    [WeakRetained invalidateWithReason:@"Persistent Activity Changed"];
  }

  if (v11)
  {
    if (!v6)
    {
      v17 = [v11 createPersistentFocusElementForActivityDescription:v10 enabled:v8];
      goto LABEL_15;
    }

    if (objc_opt_respondsToSelector())
    {
      v17 = [v11 createPersistentFocusPickerElementForActivityDescription:v10 enabled:v8];
LABEL_15:
      v18 = v17;
      goto LABEL_16;
    }
  }

  else
  {
    if (!v6)
    {
      v17 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)[FCUIFocusEnablementIndicatorSystemApertureActivityElement alloc] initWithActivityDescription:v10 enabled:v8];
      goto LABEL_15;
    }

    if (objc_opt_respondsToSelector())
    {
      v17 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)[FCUIFocusEnablementIndicatorSystemApertureActivityElement alloc] initForPickerWithActivityDescription:v10 enabled:v8];
      goto LABEL_15;
    }
  }

  v18 = 0;
LABEL_16:
  objc_storeWeak(&self->_lastPresentedPersistentElement, v18);
  v16 = [(SAElementRegistering *)self->_elementRegistrar registerElement:v18];
  objc_storeWeak(&self->_registeredPersistentElementAssertion, v16);
  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __133__FCUIFocusEnablementIndicatorSystemApertureManager_postPersistentActivity_enabled_systemApertureElementProvider_pickerPresentation___block_invoke;
  v20[3] = &unk_27901A6F8;
  objc_copyWeak(&v21, &location);
  [v16 addInvalidationBlock:v20];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

LABEL_17:

  return v16;
}

void __133__FCUIFocusEnablementIndicatorSystemApertureManager_postPersistentActivity_enabled_systemApertureElementProvider_pickerPresentation___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 8);

    if (v5 == v6)
    {
      objc_storeWeak(v4 + 8, 0);
      objc_storeWeak(v4 + 9, 0);
    }
  }
}

@end